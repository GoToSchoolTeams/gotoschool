;!--------------------------------------------------------------------------
;! @brief �V���[�g�J�b�g�L�[�̓��͊Ď��Ɠo�^�֐����܂Ƃ߂��\�[�X�R�[�h�ł�
;!        �ϐ���`��scenario/scripts/properties.ks���Q�Ƃ��Ă�������
;!--------------------------------------------------------------------------
[iscript]
//�V���[�g�J�b�g�̋@�\�ꗗ(ENUM���g�����...!)
tf.SC_SKIP   = 0;
tf.SC_AUTO   = 1;
tf.SC_LOG    = 2;
tf.SC_SAVE   = 3;
tf.SC_LOAD   = 4;
tf.SC_HIDE   = 5;
tf.SC_CONFIG = 6;
tf.SC_MAX 	 = 7;

sf.shortCutDic = new Array(); //!< �V���[�g�J�b�g�L�[�̑g�ݍ��킹(���g�͔z��ɂ�����)

tf.targetFunc = -1; //!< �V���[�g�J�b�g�L�[��ύX�������@�\(0�`5)
tf.updateTarget = null; //!< �V���[�g�J�b�g�L�[�ύX���ɓǂݒ��������V�i���I�t�@�C����
tf.isKeyUpdateNow = false; //!< ���݃L�[�̕ύX�����ǂ���

function InitShortCut()
{
	//! ����N�����̃f�t�H���g�V���[�g�J�b�g�ǂݍ���
	if(sf.shortCutDic.count == 0)
	{
		RegDefaultShortCut();
	}

	//!< �V���[�g�J�b�g�p�t�b�N�֐���o�^
	global.RegShortCut();
}

function RegDefaultShortCut()
{
	for(var i = 0; i < tf.SC_MAX; i++)
	{
		var key, shift;
		
		switch(i)
		{
			case tf.SC_SKIP:
				key = VK_A;
				shift = 0;
				break;
			case tf.SC_AUTO:
				key = VK_S;
				shift = 0;
				break;
			case tf.SC_LOG:
				key = VK_D;
				shift = 0;
				break;
			case tf.SC_SAVE:
				key = VK_F;
				shift = 0;
				break;
			case tf.SC_LOAD:
				key = VK_G;
				shift = 0;
				break;
			case tf.SC_HIDE:
				key = VK_H;
				shift = 0;
				break;
			case tf.SC_CONFIG:
				key = VK_J;
				shift = 0;
				break;
			default:
				break;
		}
		global.Reg(key, shift, i);
	}
}

function RegShortCut()
{
	kag.keyDownHook.add(global.ShortCutKeyDownHook);
}

function UnRegShortCut()
{
	kag.keyDownHook.remove(global.ShortCutKeyDownHook);
}

function RegKey(target, updateTarget)
{
	//! �o�^����@�\��ۑ�
	tf.targetFunc = target;
	tf.updateTarget = updateTarget;
	tf.isKeyUpdateNow = true;

	//! �V���[�g�J�b�g�L�[���ꎞ������
	global.UnRegShortCut();
	
	//! �L�[�o�^�p�֐����t�b�N
	kag.keyDownHook.add(global.RegShortCutKey);
	
	//! �ϐ��ɍX�V������̂ŃA�b�v�f�[�g��������
	kag.process(tf.updateTarget);
}

function UnRegKey()
{
	//! �L�[�o�^�p�֐����폜
	kag.keyDownHook.remove(global.RegShortCutKey);
	
	//! �V���[�g�J�b�g�L�[���ēx�L����
	global.RegShortCut();
}

//! �V���[�g�J�b�g���s�p�t�b�N�֐�
function ShortCutKeyDownHook(key, shift)
{
	var max = sf.shortCutDic.count;

	//! ���͂��ꂽ�L�[���V���[�g�J�b�g�ɓo�^����Ă��邩�ǂ�������
	for(var i = 0; i < max; i++)
	{
		//! �S�V���[�g�J�b�g�R�}���h������
		var keyArray = sf.shortCutDic[i]; //!< �R�}���h������V���[�g�J�b�g�R�}���h���擾
		
		//! �V���[�g�J�b�g�L�[�̏ƍ�(�V���[�g�J�b�g��key+shift��2�L�[����)
		if( key == keyArray[0] && shift == keyArray[1] )
		{
			DoCommand(i);
		}
		
	}
}

//! �R�}���h�̒��g
function DoCommand(command)
{
	System.inform( "Command:%d".sprintf(command) );
	switch(command)
	{
		case tf.SC_SKIP:
			break;
		case tf.SC_AUTO:
			break;
		case tf.SC_LOG:
			break;
		case tf.SC_SAVE:
			break;
		case tf.SC_LOAD:
			break;
		case tf.SC_HIDE:
			break;
		case tf.SC_CONFIG:
			break;
		default:
			break;
	}
}

//! �V���[�g�J�b�g�L�[�o�^�p�t�b�N�֐�
function RegShortCutKey(key, shift)
{
	var isComplete = false;

	//! Esc��������I��
	if(key == VK_ESCAPE)
	{
		global.UnRegKey();
		isComplete = true;
	}
	//! Esc������܂�key, shift��Ώۂ̔z��ɕۑ���������
	else
	{
		if(global.IsEnableKey(key) == false) return; //!< �����L�[�������炻�̏��Return

		global.Reg(key, shift, tf.targetFunc);
	}

	//! ��ʍX�V�̂��ߎw�肳�ꂽ�V�i���I��ǂݒ���
	kag.process(tf.updateTarget);
	
	if(isComplete)
	{
		tf.targetFunc = -1;
		tf.updateTarget = null;
		tf.isKeyUpdateNow = false;
	}
}

function Reg(key, shift, target)
{
	var saveKeyArray = new Array();
	saveKeyArray[0] = key;
	saveKeyArray[1] = shift;
		
	sf.shortCutDic[target] = saveKeyArray;
}

function IsEnableKey(key)
{
	var enabled = false;
	switch(key)
	{
		case VK_TAB:     enabled = true; break;
		case VK_SHIFT:   enabled = true; break;
		case VK_CONTROL: enabled = true; break;
		case VK_MENU:    enabled = true; break;
	}
	if(enabled == false)
	{
		if(VK_0 <= key && key <= VK_9){
			 enabled = true;
		}
		if(VK_A <= key && key <= VK_Z){
			 enabled = true;
		}
	}
	return enabled;
}

function GetCommandString(command)
{
	var returnStr;
	
	var commandArray = sf.shortCutDic[command];
	var key   = commandArray[0];
	var shift = commandArray[1];

	//! key�𕶎��ɕϊ��B�L���L�[�̂�
	switch(key)
	{
		case VK_TAB:     returnStr += "Tab"; break;
		case VK_SHIFT:   returnStr += "Shift"; break;
		case VK_CONTROL: returnStr += "Ctrl"; break;
		case VK_MENU:    returnStr += "Alt"; break;
		case VK_0:		 returnStr += "0"; break;
		case VK_1:		 returnStr += "1"; break;
		case VK_2:		 returnStr += "2"; break;
		case VK_3:		 returnStr += "3"; break;
		case VK_4:		 returnStr += "4"; break;
		case VK_5:		 returnStr += "5"; break;
		case VK_6:		 returnStr += "6"; break;
		case VK_7:		 returnStr += "7"; break;
		case VK_8:		 returnStr += "8"; break;
		case VK_9:		 returnStr += "9"; break;
		case VK_A:		 returnStr += "A"; break;
		case VK_B:		 returnStr += "B"; break;
		case VK_C:		 returnStr += "C"; break;
		case VK_D:		 returnStr += "D"; break;
		case VK_E:		 returnStr += "E"; break;
		case VK_F:		 returnStr += "F"; break;
		case VK_G:		 returnStr += "G"; break;
		case VK_H:		 returnStr += "H"; break;
		case VK_I:		 returnStr += "I"; break;
		case VK_J:		 returnStr += "J"; break;
		case VK_K:		 returnStr += "K"; break;
		case VK_L:		 returnStr += "L"; break;
		case VK_M:		 returnStr += "M"; break;
		case VK_N:		 returnStr += "N"; break;
		case VK_O:		 returnStr += "O"; break;
		case VK_P:		 returnStr += "P"; break;
		case VK_Q:		 returnStr += "Q"; break;
		case VK_R:		 returnStr += "R"; break;
		case VK_S:		 returnStr += "S"; break;
		case VK_T:		 returnStr += "T"; break;
		case VK_U:		 returnStr += "U"; break;
		case VK_V:		 returnStr += "V"; break;
		case VK_W:		 returnStr += "W"; break;
		case VK_X:		 returnStr += "X"; break;
		case VK_Y:		 returnStr += "Y"; break;
		case VK_Z:		 returnStr += "Z"; break;
	}

	//! shift�𕶎��ϊ�(������������Alt�AShift�ACtrl�̂�)
	if( (shift & ssAlt) != 0)
	{
		if(key != VK_MENU)
		{
			returnStr += " + Alt";
		}
	}
	if( (shift & ssShift) != 0)
	{
		if(key != VK_SHIFT)
		{
			returnStr += " + Shift";
		}
	}
	if( (shift & ssCtrl) != 0)
	{
		if(key != VK_CONTROL)
		{
			returnStr += " + Ctrl";
		}
	}
	return returnStr;
}

function GetCommandName(index)
{
	var name = "unknown";
	switch(index)
	{
		case tf.SC_SKIP:   name="Skip";   break;
		case tf.SC_AUTO:   name="Auto";   break;
		case tf.SC_LOG:    name="Log";    break;
		case tf.SC_SAVE:   name="Save";   break;
		case tf.SC_LOAD:   name="Load";   break;
		case tf.SC_HIDE:   name="Hide";   break;
		case tf.SC_CONFIG: name="Config"; break;
		default: break;
	}
	return name;
}

[endscript]

[return]
