[iscript]
//! @brief �e��{�����[���ݒ�̓ǂݍ���
function ApplyVolume()
{
	var per = sf.masterVolume / 100;
	kag.bgm.buf1.volume2 = sf.bgmVolume * per;
	kag.se[0].volume2 	 = sf.seVolume * per;
}

function OnChangeVolumeInSlider(vol, isDrag)
{
	global.ApplyVolume();
}

//! @brief �Ō�̃N���b�N���ꂽ�{�^���̃q���g�e�L�X�g����N���b�N���ꂽ�{�^���q���g���擾����
//! @param[in] typeName �{�^���̎��
//! @return �{�^���ԍ��B������Ȃ��Ƃ���-1��Ԃ�
function GetLastClickedButtonIndex(buttonTypeName, layer)
{
	//! �N���b�N�����{�^�������b�Z�[�W���C�����猟������
	var lastclicklink = kag.fore.messages[layer].lastProcessLink;
	if(lastclicklink < 0) return -1;

	//! �N���b�N�����{�^�����擾
	var lastClicked = kag.fore.messages[layer].links[lastclicklink];

	//! �{���Ƀ{�^�����ǂ����`�F�b�N
	if(lastClicked.type == 2)
	{
		//! "XXX_���l" �� [0]"XXX" [1]"���l"
		var hint_str = lastClicked.object.hint;
		var hint_array = hint_str.split(tf.BUTTON_HINT_SEPARATOR, true);
		if(hint_array.length == 2)
		{
			//! �^�C�v�`�F�b�N
			if(hint_array[0] == buttonTypeName)
			{
				//! �^�C�v�������Ă���ΐ��l��Ԃ�
				return hint_array[1];
			}
		}
	}
	
	//! ������Ȃ������ꍇ��-1
	return -1;
}

/* �{�^���������ꂽ�Ƃ��̋��� */

//! @brief ���݂̃^�u�������ꂽ�{�^���ɂ���ĕύX����
//! @note  �Z�[�u�E���[�h��ʂŃ^�u�{�^�����N���b�N���ꂽ�Ƃ����s����܂�
function ChangeTab(layerNo, type)
{
	//!< �Ō�ɃN���b�N���ꂽ�{�^���̔ԍ����擾����
	var buttonIndex = global.GetLastClickedButtonIndex(type, layerNo);
	if(buttonIndex >= 0)
	{
		tf.currentTab = buttonIndex;
	}
}

function MiniWindowAction(layerNo, storage, label)
{
	//! �܂��{�^���ԍ������
	var buttonIndex = global.GetLastClickedButtonIndex(tf.SW_HINT_NAME, layerNo);

	//! �Z�[�u
	if(tf.CurrentScene == tf.SCENE_SAVE)
	{
		global.SaveAction(buttonIndex);
	}

	//! ���[�h
	else if(tf.CurrentScene == tf.SCENE_LOAD)
	{
		global.LoadAction(buttonIndex);
	}

	//! �w�肳�ꂽ�V�i���I�փW�����v����
	kag.process(storage, label);
}

function SaveAction(num)
{
	//! Yes No�₢���킹��Z�[�u���Ă�
	if(num >= 0)
	{	
		var result = kag.saveBookMarkWithAsk(num);

		if(result == true)
		{
			sf.LatestTab = num \ tf.MAX_MINIWINDOW_NUM; //!< �Z�[�u�ɐ��������Ƃ��̃^�u�ԍ���ۑ�
		}
;	}
	else
	{
		System.inform("�Z�[�u�Ɏ��s���܂���");
	}
}

function LoadAction(num)
{
	//! Yes No�₢���킹�郍�[�h���Ă�
	if(num >= 0)
	{
		kag.loadBookMarkWithAsk(num);
	}
	else
	{
		System.inform("���[�h�Ɏ��s���܂���");
	}
}

function DeleteAction(storage, label)
{
	//! �܂��{�^���ԍ������
	var buttonIndex = global.GetLastClickedButtonIndex(tf.DL_HINT_NAME, tf.DL_MESSAGE_LAYER);

	//! YESNO�\��
	var message = "�f�[�^:%d���폜���܂�".sprintf(buttonIndex);
	var result = askYesNo(message);

	if(result == 1)
	{
		//! �폜API���Ă�
		kag.eraseBookMark(buttonIndex);
	}
	
	//! �w�肳�ꂽ�V�i���I�փW�����v����
	kag.process(storage, label);
}
/* �\���ʒu�擾�n */

//! @brief �^�u�{�^���̕\���ʒu���擾����
//! @param[in] position �c���ǂ��炩�B0�ŉ��ʒu 1�ŏc�ʒu
//! @param[in] num ���ڂ̃{�^����
//! @return �ʒu(����)
function GetTabButtonPosition(position, num)
{
	var returnPos = 0;
	var base = 0;
	var addition = 0;

	if(position >= 2)
	{
		return 0;
	}

	if(position == 0)
	{
		base = tf.BUTTON_BASE_X;
		addition = tf.BUTTON_BASE_X;
	}
	else if(position == 1)
	{
		base = tf.BUTTON_BASE_Y;
		addition = 0;
	}

	returnPos = base + (addition * num);
	return returnPos;
}

//! @brief ���E�B���h�E�̕\���ʒu���擾����
//! @param[in] position �c���ǂ��炩�B0�ŉ��ʒu 1�ŏc�ʒu
//! @param[in] sort �c���т������т��B0�ŉ����� 1�ŏc����
//! @param[in] max �ő剽�\������邩
//! @param[in] num ���ڂ̃{�^����
//! @return �ʒu(����)
function GetMiniWindowPosition(position, sort, max, num)
{
	var returnPos = 0;
	var base = 0;
	var addition = 0;

	if(position >= 2 || sort >= 2)
	{
		return 0;
	}

	if(position == 0)
	{
		base = tf.MINIWINDOW_BASE_X;
		addition = tf.MINIWINDOW_SIZE_W;
	}
	else if(position == 1)
	{
		base = tf.MINIWINDOW_BASE_Y;
		addition = tf.MINIWINDOW_SIZE_H;
	}
	
	if(sort == 0)
	{
		returnPos = base + ( addition * (num % max) );
	}
	else if(sort == 1)
	{
		returnPos = base + ( addition * (num \ max) );
	}

	return returnPos;
}


/* ���O�擾�n */

//! @brief �^�u�̉摜�����擾����
//! @param[in] num ���ʂ̃{�^����
function GetTabGraphicName(num)
{
	var returnName;

	if(num == tf.currentTab)
	{
		returnName = "tab_switch_current";
	}
	else
	{
		returnName = "tab_switch_other";
	}
	
	return returnName;
}

//! @brief �{�^���p�q���g�����擾����
//! @param[in] hint �q���g��
//! @param[in] hint ���ڂ̃{�^����
//! @return �q���g��
function CreateButtonHintName(hint, num)
{
	var returnName = hint + tf.BUTTON_HINT_SEPARATOR + num;
	return returnName;
}

function GetStandFileInfo(who, pose, face, size, pos, tere)
{
	//! ���O�Ɠn���ꂽ��񂩂�\�����ׂ������G�ɂ܂��S�����v�Z
	//! left = �ʒu/�ʒu�̕����� * ( (��ʉ��T�C�Y - 2�}�[�W��) - �����G�̉��T�C�Y ) - �����G�̗]�� + �}�[�W��
	var left = tf.StandLeftParam;
	var tops = tf.StandTopMap[who];
	var mag = tf.PosToNum[pos] / (left["split"] - 1);
	var rect = tf.RectSize - (left["margin"] * 2);
	var pos_left = (rect - left[size]["width"]) * mag - left[size]["space"] + left["margin"];
	
	//! top = �摜���ƂɈႤ�̂Ōv�Z�ς�(�|�[�Y�A�T�C�Y��)
	var pos_top = tops[pose][size];

	//! �摜���̓p�����[�^����v�Z
	var filename = "";
	
	if(tere == "true") {
		filename = size + "_" + who + "_" + "pose" + pose + "_tere_" + face + ".png";
	} else {
		filename = size + "_" + who + "_" + "pose" + pose + "_" + face + ".png";
	}

	//! Dictionary�ŏ����܂Ƃ߂ĕԂ�
	var info = %["file"=>filename.toLowerCase(), "left"=>pos_left, "top"=>pos_top];
	return info;
}

function SaveStandInfo(who, pose, face)
{
	var dispname = tf.CharaNameKanziMap[who];
	delete(f.lastShowStandImageinfo[dispname]);
	f.lastShowStandImageinfo[dispname] = new global.StandImageInfo(who, pose, face);
}

function DeleteStandInfo(who)
{
	var dispname = tf.CharaNameKanziMap[who];
	delete f.lastShowStandImageinfo[dispname];
}

function GetBustUpImageNameFromStandInfo(who)
{
	var info = f.lastShowStandImageinfo[who];

	if(info != void) {
		return global.GetStandFileName(info.name, info.pause, info.face, "S"/*B���v��*/);
	}
	
	return null;
}

function ClearSystemMessage()
{
	var elm = new Dictionary();
	while(tf.currentLayer >= 21)
	{
		elm["layer"] = "%d".sprintf(tf.currentLayer);
		elm["visible"] = false;
		kag.getHandlers()["layopt"](elm);
		tf.currentLayer -= 1;
	}
}

//-----------------
//! �f�o�b�O�p�֐�
//-----------------
function ShowDialog(val)
{
	System.inform( val );
}

function DebugJump(storage)
{
	try { kag.process(storage, "*debug"); }
	catch{ kag.process(storage, ""); }
}
[endscript]



[return]
