;;�y���b�Z�[�W���C���̏������z
;;�V�i���I�\���O�ɌĂяo���Ă��������B
;;left_chara=�����G�̏������s��Ȃ�, 1;0
;;hide_window=���b�Z�[�W�E�B���h�E���B��, �_���l
;;vol_noreset=�{�����[���̃��Z�b�g�����Ȃ�, �_���l
[macro name="SetupMessageWindow"]
	;�S�폜
	[dis_all_message]
	[if exp="mp.left_chara!=1"]
		[dis_all_chara]
	[endif]
	[eval exp="global.ClearSystemMessage()"]
	[backlay]
	;���b�Z�[�W���C���摜�\��
	[image layer=7 top=470 opacity=256 storage="message_window" page="fore" visible="true"]
	;���O���C���͈�U��\��
	[position layer="message1" top=528 left=300 width=700 height=200 opacity=0 visible="false" page="fore" marginb="0" marginl="0" marginr="0" margint="0"]
	;�������C���͕\��
	[position layer="message0" top=567 left=310 width=970 height=153 opacity=0 visible="true"  page="fore" marginb="0" marginl="0" marginr="182" margint="0"]
	;�{�^�����C�����\��
	[position layer="message2" top="0" left="0" width="1280" height=720 opacity=0 visible="true" page="fore" marginb="0" marginl="0" marginr="0" margint="0"]
	[current layer="message2"]
	[locate x=1205 y=685]
	[button graphic="x" exp="global.toggleMessage()"]
	[locate x=1098 y=685]
	[button graphic="system"]
	[locate x=991 y=685]
	[button graphic="log"]
	[locate x=884 y=685]
	[button graphic="skip"]
	[locate x=777 y=685]
	[button graphic="auto" exp="global.toggleAutoMode()"]
	[locate x=670 y=685]
	[button graphic="load"]
	[locate x=563 y=685]
	[button graphic="save"]
	;�烌�C������U��\��
	[layopt layer=9 top=0 left=0 page="fore" visible="false"]
	;���b�Z�[�W���C���ݒ�
	[current layer="message1"]
	[deffont size=30]
	[current layer="message0"]
	[deffont size=26]
	[font size=26]
	;�N���b�N�҂��O���t�ύX
	[glyph line="sakura" page="sakura" fix="true" top=48 left=810]
	;���ɂ��K�p
	[backlay]
	;BGM��SE�̃{�����[�������Ƃɖ߂�
	[if exp="mp.vol_noreset != 'true'"]
		[fadebgm volume="100" time="1"]
		[fadese volume="100" time="1"]
	[endif]
	;history��L��������
	[history enabled="true" output="true"]
	[if exp="mp.hide_window == 'true'"]
		[dis_all_message]
	[endif]
	[kagtag left_chara=%left_chara|1 hide_window=%hide_window vol_noreset=%vol_noreset]
[endmacro]



;�y������Aplc�}�N���B���y�[�W�i���j�A�Z�[�u���x���A�N���A�[���b�Z�[�W�B�z
[macro name="plc"]
[p]
[shownametag visible=false]
[layopt layer=9 visible="false"]
[freeimage layer=9]
[label]
[current layer="message1"]
[er]
[current layer="message0"]
[er]
[endmacro]


;PLC2
[macro name="plc2"]
[p]
[shownametag visible=false]
;[layopt layer=9 visible="false"]
[label]
[current layer="message1"]
[er]
[current layer="message0"]
[er]
[endmacro]


;�N���b�N�҂�&���s(���s�̓N���b�N��)
[macro name="lr"]
[l][r]
[endmacro]

;�y�����G�S�����z
;�L�����𗧂����郌�C����0~6
[macro name="dis_all_chara"]
[backlay]
[layopt layer="0" page=%page|fore visible="false"]
[layopt layer="1" page=%page|fore visible="false"]
[layopt layer="2" page=%page|fore visible="false"]
[layopt layer="3" page=%page|fore visible="false"]
[layopt layer="4" page=%page|fore visible="false"]
[layopt layer="5" page=%page|fore visible="false"]
[layopt layer="6" page=%page|fore visible="false"]
[image layer=9 storage="f_Invisible" visible=true]
[wt]
[endmacro]

;�y�����G�S����(�N���X�t�F�[�h)�z
;�L�����𗧂����郌�C����0~6
[macro name="dis_all_chara_fade"]
[backlay]
[layopt layer="0" page="back" visible="false"]
[layopt layer="1" page="back" visible="false"]
[layopt layer="2" page="back" visible="false"]
[layopt layer="3" page="back" visible="false"]
[layopt layer="4" page="back" visible="false"]
[layopt layer="5" page="back" visible="false"]
[layopt layer="6" page="back" visible="false"]
[trans method="crossfade" time=%time|500]
[wt]
[endmacro]

;�y�����G�S����(�N���X�t�F�[�h) + ���b�Z�[�W���C���̏����z
;�L�����𗧂����郌�C����0~6
[macro name="dis_all_chara_fade_message"]
[backlay]
[layopt layer="message0" visible="false" page="back"]
[layopt layer="message1" visible="false" page="back"]
[layopt layer="message2" visible="false" page="back"]
[layopt layer=7 page="back" visible="false"]
[layopt layer=8 page="back" visible="false"]
[layopt layer=9 page="back" visible="false"]
[layopt layer="0" page="back" visible="false"]
[layopt layer="1" page="back" visible="false"]
[layopt layer="2" page="back" visible="false"]
[layopt layer="3" page="back" visible="false"]
[layopt layer="4" page="back" visible="false"]
[layopt layer="5" page="back" visible="false"]
[layopt layer="6" page="back" visible="false"]
[trans method="crossfade" time=%time|500]
[wt]
[endmacro]

;;�y�G�t�F�N�g�}�N���z
;;��u�����摜��\��\n
;;storage=�w�i�摜���w�肷��\n, �摜�t�@�C����
;;time=�\������defalt100\n, �~���b����
[macro name="effect"]
[image storage="%storage" layer="6" visible="true"]
[wait time="%time|100"]
[layopt layer="6" visible="false"]
[endmacro]

;�y���b�Z�[�W���C���̑S�폜�z
[macro name="dis_all_message"]
;�������Ă郁�b�Z�[�W���C�������ׂĔ�\����
[layopt layer="message0" page=fore visible=false]
[layopt layer="message1" page=fore visible=false]
[layopt layer="message2" page=fore visible=false]
[layopt layer="message3" page=fore visible=false]
[layopt layer="message4" page=fore visible=false]
[layopt layer="message5" page=fore visible=false]
[layopt layer="message6" page=fore visible=false]
[layopt layer="message7" page=fore visible=false]
[layopt layer="message8" page=fore visible=false]
[layopt layer="message9" page=fore visible=false]
[layopt layer="message10" page=fore visible=false]
[layopt layer="message11" page=fore visible=false]
[layopt layer="message12" page=fore visible=false]
;�e��p�[�c��
[layopt layer=7 page="fore" visible="false"]
[layopt layer=8 page="fore" visible="false"]
[layopt layer=9 page="fore" visible="false"]
;[backlay]
[endmacro]

;�y���b�Z�[�W���C���̑S�폜�z
[macro name="dis_all_message_fade"]
	[backlay]
	;�������Ă郁�b�Z�[�W���C�������ׂĔ�\����
	[layopt layer="message0" page=back visible=false]
	[layopt layer="message1" page=back visible=false]
	[layopt layer="message2" page=back visible=false]
	[layopt layer="message3" page=back visible=false]
	[layopt layer="message4" page=back visible=false]
	[layopt layer="message5" page=back visible=false]
	[layopt layer="message6" page=back visible=false]
	[layopt layer="message7" page=back visible=false]
	[layopt layer="message8" page=back visible=false]
	[layopt layer="message9" page=back visible=false]
	[layopt layer="message10" page=back visible=false]
	[layopt layer="message11" page=back visible=false]
	;�e��p�[�c��
	[layopt layer=7 page="back" visible="false"]
	[layopt layer=8 page="back" visible="false"]
	[layopt layer=9 page="back" visible="false"]
	[trans method="crossfade" time=%time|500]
	[wt]
[endmacro]

[macro name="show_message"]
[layopt layer="message0" visible="true" page="fore"]
[layopt layer="message1" visible="true" page="fore"]
[layopt layer="message2" visible="true" page="fore"]
[layopt layer=7 page="fore" visible="true"]
[layopt layer=9 page="fore" visible="true"]
[endmacro]

;;�y���b�Z�[�W�E�B���h�E���t�F�[�h�C���ŕ\������zdis_all_message�ŉB�������C����\���������Ƃ��Ɏg���Ă�������
;;time=�g�����W�V��������\n�f�t�H���g��1000, �~���b����
[macro name="show_message_fade"]
[backlay]
[layopt layer="message0" visible="true" page="back"]
[layopt layer="message1" visible="true" page="back"]
[layopt layer="message2" visible="true" page="back"]
[layopt layer=7 page="back" visible="true"]
[layopt layer=8 page="back" visible="true"]
[layopt layer=9 page="back" visible="true"]
[trans layer="base" method="crossfade" time=%time|1000]
[wt]
[SetupMessageWindow vol_noreset="true" left_chara="1"]
[endmacro]

;;�y�g�����W�V�����}�N���z\n
;;�p��:@strans storage="�w�i��" method=crossfade time=1500
;;storage=�w�i�摜���w�肷��\n�f�t�H���g��black, �摜�t�@�C����
;;method=�g�����W�V�������@\n�f�t�H���g��crossfade, �g�����W�V�����^�C�v
;;rule=���[���摜, �摜�t�@�C����
;;time=�g�����W�V��������\n�f�t�H���g��1000, �~���b����
;;vague=�����܂��̈�l\n���j�o�[�T���g�����W�V�����ɓK�p���� �����܂��̈�l���w�肵�܂�, 0�ȏ�̒l
;;from=�X�N���[����������\n�X�N���[���g�����W�V�����ɂ����āA���y�[�W�̉摜���ǂ̕������猻��Ă��邩���w�肵�܂�, left;top;right;bottom
;;canskip=��΂��邩�ǂ���, �_���l
;;blur=�u���[�������邩�ǂ���, �_���l
;;noclear=�L�������������邩�ǂ���, �_���l
;;�y�w�i��ς���}�N���z
[macro name=strans]
[if exp="mp.noclear != 'true'"]
	[backlay]
	[dis_all_chara page=back]
[endif]
[image layer="base" storage=%storage|black page="back" visible="true" rgamma="%rgamma" ggamma="%ggamma" bgamma="%bgamma" fliplr="%fliplr" flipud="%flipud" mcolor="%mcolor" mopacity="%mopacity" clipheight="%clipheight" clipleft="%clipleft" cliptop="%cliptop" clipwidth="%clipwidth" grayscale="%grayscale" zoom="%zoom" left="%left" top="%top"]
[if exp="mp.blur == 'true'"]
	[layer_blur a="10" b="10" layer="base" page="back"]
[endif]
[trans method=%method|crossfade rule=%rule from=%from stay=%stay time=%time|1000 vague=%vague layer="base"]
[wt canskip=%canskip]
[kagtag noclear=%noclear blur=%blur]
[endmacro]




;;�y�V�X�e�����C����ON�EOFF�z
;; flag��true false���w�肵�Ă�������
[macro name="SystemMessageVisible"]
	[position layer="message8"  visible="%flag"]
	[position layer="message9"  visible="%flag"]
	[position layer="message10" visible="%flag"]
[endmacro]

;;�y�����G�\���̃}�N���z
;;who=�l����, haruka;najimi;naruse;gaia;orutega;mash;satori;sakurako
;;pose=�|�[�Y�ԍ�, 1;2
;;face=�\�, �摜�t�@�C����
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;layer=�\���������O�i���C���ԍ�, �O�i���C��
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;lc;c;rc;r
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;grayscale=�摜���O���[�X�P�[���ɂ��邩\nlayer , �_���l
;;index=�d�ˍ��킹����\n�w�i���C���ɂ͎w�肵�Ȃ��ł�������, 1�ȏ�̒l
;;opacity=�s�����x\nlayer �����Ŏw�肵�����C���̕s�����x���w�肵�܂�, 256�l
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;zoom=�g�嗦\n�g�嗦���w�肵�܂�, �p�[�Z���g�l
;;notrans=�g�����W�V�����̗L��, �_���l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;size=�T�C�Y, s;m;l
;;nopos=�|�W�V������K�p���Ȃ�, �_���l
[macro name="showstandimage"]
	;�g�����W�V�����̗L���ɂ���ăp�����[�^��؂�ւ�
	[if exp="mp.notrans != 'true'"]
		[eval exp="mp.page='back'"]
		[backlay]
	[endif]
	;�f�t�H���g�����̐ݒ�
	[eval exp="mp.pose='1'" cond="mp.pose == ''"]
	[eval exp="mp.size='m'" cond="mp.size == ''"]
	[eval exp="mp.pos='c'" cond="mp.pos == ''"]
	[eval exp="mp.tere='false'" cond="mp.tere == ''"]
	;�\�����������G�����擾����
	[eval exp="tf.stand_name = global.GetStandFileName(mp.who, mp.pose, mp.face, mp.size, mp.tere)"]
	[eval exp="tf.stand_left = global.GetStandLeft(mp.pos)"]
	;�擾�������ɏ]���ė����G��\��
	[image storage="&tf.stand_name" left="&tf.stand_left" layer=%layer|0 visible="true" index=%index|1 opacity=%opacity|255 page="&mp.page" grayscale=%grayscale]
	;�g�����W�V����(�L���Ȃ�)
	[if exp="mp.notrans != 'true'"]
		[trans time=%time|500 method="crossfade"]
		[wt]
	[endif]
	;���b�Z�[�W�E�B���h�E�Ƀo�X�g�A�b�v�\��(�L���Ȃ�)
	[if exp="mp.nobust != 'true'"]
		[showbustup who="&mp.who" pose="&mp.pose" face="&mp.face" tere="&mp.tere" visible=true]
	[endif]
	[kagtag nopos=%nopos who=%who pose=%pose|1 face=%face notrans=%notrans tere=%tere page=%page size=%size nobust=%nobust|false pos="%pos|c" layer="%layer|0" visible="%visible|true"]
[endmacro]

;;;�y���O����\������z
;;;bust=�o�X�g�A�b�v�摜�̗L��, �_���l
;[macro name="shownametag"]
;	[position layer="message1" visible=%visible|true]
;	[if exp="mp.visible != 'false'"]
;		[nowait]
;		[current layer="message1"]
;		[emb exp="mp.name"]
;		[current layer="message0"]
;		[if exp="mp.bust != 'false' && mp.name != '���'"]
;			[layopt layer=9 visible="true"]
;		[endif]
;		[endnowait]
;	[endif]
;[kagtag bust=%bust]
;[endmacro]

;;�y���O���̕\����؂�ւ���(�o�X�g�A�b�vOFF)�z
;;visible=���O����\�����邩�ǂ���, �_���l
[macro name="shownametag"]
	[position layer="message1" visible=%visible|true]
	[if exp="mp.visible != 'false'"]
		[nowait]
		[current layer="message1"]
		[emb exp="mp.name"]
		[current layer="message0"]
		[endnowait]
	[endif]
[kagtag name=%name visible=%visible|true]
[endmacro]

;;�y�o�X�g�A�b�v�摜��\������z
;;who=�l����, haruka;najimi;naruse;gaia;orutega;mash;satori
;;pose=�|�[�Y�ԍ�, 1;2
;;face=�\�, �摜�t�@�C����
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
[macro name="showbustup"]
	[layopt layer=9 visible=%visible]
	[if exp="mp.visible != 'false'"]
		[eval exp="tf.face_g = 'f_' + mp.who + '_' + 'pose' + mp.pose + '_n_' + mp.face + '.png'"]
		[if exp="mp.tere == 'true'"]
			[eval exp="tf.face_g = 'f_' + mp.who + '_' + 'pose' + mp.pose + '_tere_' + mp.face + '.png'"]
		[endif]
		[image layer=9 storage="&tf.face_g" visible=true]
	[else]
		[freeimage layer=9]
	[endif]
	[kagtag who=%who pose=%pose|1 face=%face tere=%tere]
[endmacro]

;;�y�o�X�g�A�b�v�摜���\���ɂ���z
[macro name="hidebust"]
	[layopt layer=9 page="fore" visible=%visible]
[endmacro]

;;�y�w�肵���V�i���I�ɃW�����v����(�f�o�b�O���Ȃ�`���v�^�[�I����ʂɔ��)�z
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
[macro name="JumpChapter"]
[if exp="tf.isDebug == true"]
	[jump storage="debug.ks"]
[else]
	[jump storage=%storage]
[endif]
[endmacro]

;;�y�u�����`�����H�z
[macro name="SetupBrunch"]
@dis_all_message
@position layer="message0" width=800 height=120 top=20  left=240 opacity="128" page="fore" visible="false" margint="40"
@position layer="message1" width=800 height=120 top=160 left=240 opacity="128" page="fore" visible="false" margint="40"
@position layer="message2" width=800 height=120 top=300 left=240 opacity="128" page="fore" visible="false" margint="40"
@position layer="message3" width=800 height=120 top=440 left=240 opacity="128" page="fore" visible="false" margint="40"
@position layer="message4" width=800 height=120 top=560 left=240 opacity="128" page="fore" visible="false" margint="40"
@eval exp="tf.Brunch.clear()"
[kagtag name=%name]
[endmacro]

;;�y�I������ǉ�����z
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
[macro name="AddBrunch"]
@eval exp="tf.temp = new Dictionary()"
@eval exp="tf.temp['text'] = mp.text"
@eval exp="tf.temp['storage'] = mp.storage"
@eval exp="tf.temp['target'] = mp.target"
@eval exp="tf.temp['disable'] = mp.disable"
@eval exp="tf.Brunch.add(tf.temp)"
[kagtag text="%text" storage=%storage target=%target disable=%disable]
[endmacro]

[macro name="ShowBrunch"]
[if exp="tf.Brunch.count == 1"]
	@RenderBruch layer="message2" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target" disable="&tf.Brunch[0].disable"
[elsif exp="tf.Brunch.count == 2"]
	@RenderBruch layer="message1" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target" disable="&tf.Brunch[0].disable"
	@RenderBruch layer="message3" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target" disable="&tf.Brunch[1].disable"
[elsif exp="tf.Brunch.count == 3"]
	@RenderBruch layer="message1" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target" disable="&tf.Brunch[0].disable"
	@RenderBruch layer="message2" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target" disable="&tf.Brunch[1].disable"
	@RenderBruch layer="message3" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target" disable="&tf.Brunch[2].disable"
[elsif exp="tf.Brunch.count == 4"]
	@RenderBruch layer="message0" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target" disable="&tf.Brunch[0].disable"
	@RenderBruch layer="message1" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target" disable="&tf.Brunch[1].disable"
	@RenderBruch layer="message2" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target" disable="&tf.Brunch[2].disable"
	@RenderBruch layer="message3" text="&tf.Brunch[3].text" storage="&tf.Brunch[3].storage" target="&tf.Brunch[3].target" disable="&tf.Brunch[3].disable"
[elsif exp="tf.Brunch.count == 5"]
	@RenderBruch layer="message0" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target" disable="&tf.Brunch[0].disable"
	@RenderBruch layer="message1" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target" disable="&tf.Brunch[1].disable"
	@RenderBruch layer="message2" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target" disable="&tf.Brunch[2].disable"
	@RenderBruch layer="message3" text="&tf.Brunch[3].text" storage="&tf.Brunch[3].storage" target="&tf.Brunch[3].target" disable="&tf.Brunch[3].disable"
	@RenderBruch layer="message4" text="&tf.Brunch[4].text" storage="&tf.Brunch[4].storage" target="&tf.Brunch[4].target" disable="&tf.Brunch[4].disable"
[endif]
[endmacro]

[macro name="RenderBruch"]
	@nowait
	@position layer="%layer" visible="true"
	@current layer="%layer"
	@font size=32
	@style align="center"
	[if exp="mp.disable == 'true'"]
		[font color="0xFF0000"]
		@emb exp="mp.text"
	[else]
		@link storage="%storage" target="%target"
		@emb exp="mp.text"
		@endlink
	[endif]
	@endnowait
[endnowait]
[kagtag disable=%disable]
[endmacro]

;;�摜�ڂ���
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;layer=[�K�{] �O�i���C���܂��͔w�i���C�����w�肵�܂�, �O�i���C��;�w�i���C��
;;a=[�K�{] �ڂ����̋���\n5���x�Ŋ��Ƃڂ₯��, 0;5;10
;;b=[�K�{] �ڂ����̋���\n5���x�Ŋ��Ƃڂ₯��, 0;5;10
[macro name=layer_blur]
[eval exp="kag.fore.layers[mp.layer].doBoxBlur(mp.a, mp.b)" cond="mp.page=='fore'&&mp.layer!='base'"]
[eval exp="kag.back.layers[mp.layer].doBoxBlur(mp.a, mp.b)" cond="mp.page!='fore'&&mp.layer!='base'"]
[eval exp="kag.fore.base.doBoxBlur(mp.a, mp.b)" cond="mp.page=='fore'&&mp.layer=='base'"]
[eval exp="kag.back.base.doBoxBlur(mp.a, mp.b)" cond="mp.page!='fore'&&mp.layer=='base'"]
[kagtag page=%page layer=%layer a=%a b=%b]
[endmacro]


;;�V�l�}��
;;time=����
[macro name=cinema]
[image layer=5 page="fore" top=720 storage="black" visible="true"]
[image layer=6 page="fore" top=-720 storage="black" visible="true"]
[move layer=6 accel="-6" page="fore" path=(0,-620,255) time=%time]
[move layer=5 accel="-6" page="fore" path=(0,620,255) time=%time]
[wm canskip="false"]
[endmacro]

[macro name=cinema_off]
[image layer=5 page="fore" top=620 storage="black" visible="true"]
[image layer=6 page="fore" top=-620 storage="black" visible="true"]
[move layer=5 accel="-6" page="fore" path=(0,720,255) time=%time]
[move layer=6 accel="-6" page="fore" path=(0,-720,255) time=%time]
[wm canskip="false"]
[endmacro]
;;time=�g�����W�V�����ɂ����鎞��
;;layer=�Ώۃ��C��\n�ΏۂƂȂ郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��;���b�Z�[�W���C��
;;staff=�\�����������X�^�b�t�̖��O
;;size=�����T�C�Y
;;transbase=�w�i�g�����W�V�������s�����ǂ���
[macro name=staff_show]
[backlay]
[position layer="message4" page="back" visible="true" width=1280 height=720 top="0" left="0"]
[current layer="message4" page="back" withback="false"]
[style align="center"]
[font size=%size|35 color=%color|0xFFFFFF shadowcolor=%shadowcolor|0x000000]
[locate y=%y|285]
[emb exp="mp.staff"]
[if exp="mp.transbase == 'true'"]
	[trans method="crossfade" time=%time|500]
[else]
	[trans method="crossfade" time=%time|500 layer="message4"]
[endif]
[wt canskip="false"]
[wait time=%showtime|2000 canskip="false"]
[backlay]
[current layer="message4" page="back"]
[er]
[trans method="crossfade" time=%time|500 layer="message4"]
[wt canskip="false"]
[kagtag staff=%staff transbase=%transbase|false]
[endmacro]

;;gadget�̕\���E��\��
;;storage=�w�i�摜���w�肷��\n�f�t�H���g��black, �摜�t�@�C����
;;time=�g�����W�V��������\n�f�t�H���g��1000, �~���b����
;;show=�K�W�F�b�g��\�����邩���Ȃ������w�肵�܂�, �_���l
[macro name=gadget]
[backlay]
[if exp="mp.show == 'true'"]
	[image layer="12" left=352 top=180 visible="true" page="back" storage=%storage]
[else]
	[layopt layer=12 page="back" visible="false"]
[endif]
[trans layer="base" time=%time|1000 method="crossfade"]
[wt]
[kagtag show=%show]
[endmacro]



;;���C�v
;;time=�g�����W�V�����ɂ����鎞��
;;storage=�w�i�摜���w�肷��\n�f�t�H���g��white, �摜�t�@�C����
;;hidemes=���b�Z�[�W�E�B���h�E��\�����邩�ǂ���, �_���l
[macro name=wipe]
[fadebgm volume="0" time="500" cond="mp.fadebgm == 'true'"]
[dis_all_chara_fade_message time=500]
[strans storage="black" method="universal" rule="left_right" time="250"]
[strans storage="eyecatch" method="universal" rule="left_right" time="250"]
[wait time=%time|1000 canskip="false"]
[strans storage=%storage method="universal" rule="left_right" time="250"]
[if exp="mp.hidemes != 'true'"]
	[SetupMessageWindow]
[endif]
[fadebgm volume="100" time="500" cond="mp.fadebgm == 'true'"]
[kagtag fadebgm=%fadebgm hidemes=%hidemes]
[endmacro]


;;�f�o�b�O�W�����v�̕⍲�}�N��
;;bg=[�K�{] �w�i�摜���w�肷��\n�f�t�H���g��black, �摜�t�@�C����
;;bgm=[�K�{] �Đ������\n���t���� BGM �t�@�C�����܂��� CD �g���b�N�ԍ����w�肵�܂�, BGM�t�@�C����;1�ȏ�̒l
[macro name=setup_debug]
[SetupMessageWindow]
[if exp="mp.bg != ''"]
	[strans storage=%bg]
[endif]

[if exp="mp.bgm != ''"]
	[playbgm storage=%bgm]
[endif]
[endmacro]


;;���������̉��o��������
[macro name=filter]
[endmacro]


;;/*�����G�p�̃��b�p�[�}�N��*/
[call storage="macroMahiro.ks"]


;EOF
[return]
