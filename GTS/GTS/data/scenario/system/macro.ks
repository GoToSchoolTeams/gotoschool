
;�y������Aplc�}�N���B���y�[�W�i���j�A�Z�[�u���x���A�N���A�[���b�Z�[�W�B�z
[macro name="plc"]
[p]
[shownametag visible=false]
[label]
[cm]
[endmacro]

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

;�e��p�[�c��
[layopt layer=7 page="fore" visible="false"]
[layopt layer=8 page="fore" visible="false"]
[layopt layer=9 page="fore" visible="false"]

[backlay]

[endmacro]

;;�g�����W�V�����}�N��\n
;;�p��:@strans storage="�w�i��" method=crossfade time=1500
;;storage=�w�i�摜���w�肷��\n�f�t�H���g��black, �摜�t�@�C����
;;method=�g�����W�V�������@\n�f�t�H���g��crossfade, �g�����W�V�����^�C�v
;;rule=���[���摜, �摜�t�@�C����
;;time=�g�����W�V��������\n�f�t�H���g��1000, �~���b����
;;vague=�����܂��̈�l\n���j�o�[�T���g�����W�V�����ɓK�p���� �����܂��̈�l���w�肵�܂�, 0�ȏ�̒l
;;from=�X�N���[����������\n�X�N���[���g�����W�V�����ɂ����āA���y�[�W�̉摜���ǂ̕������猻��Ă��邩���w�肵�܂�, left;top;right;bottom
;;canskip=��΂��邩�ǂ���, �_���l
;;�y�w�i��ς���}�N���z
@macro name=strans
@backlay
@dis_all_chara page=back
@image layer="base" storage=%storage|black page="back" visible="true" rgamma="%rgamma" ggamma="%ggamma" bgamma="%bgamma" fliplr="%fliplr" flipud="%flipud" mcolor="%mcolor" mopacity="%mopacity" clipheight="%clipheight" clipleft="%clipleft" cliptop="%cliptop" clipwidth="%clipwidth"
@trans method=%method|crossfade rule=%rule from=%from stay=%stay time=%time|1000 vague=%vague layer="base"
@wt canskip=%canskip
@endmacro

;;���b�Z�[�W���C���̏�����
;;�V�i���I�\���O�ɌĂяo���Ă�������
[macro name="SetupMessageWindow"]
	;�S�폜
	[dis_all_message]
	[dis_all_chara]
	[eval exp="global.ClearSystemMessage()"]
	[backlay]

	;���b�Z�[�W���C���ݒ�
	[current layer="message1"]
	[deffont size=32]
	[current layer="message0"]
	[deffont size=32]

	;�������C���͕\��
	[image layer=7 top=500 left=40 opacity=128 storage="temp_message" page="fore" visible="true"]
	[position layer="message0" top=500 left=180 width=1080 height=200 opacity=0 visible="true" page="fore"]
	
	;���O���C���͈�U��\��
	[image layer=8 top=380 left=70 opacity=128 storage="temp_name" page="fore" visible="false"]
	[position layer="message1" top=358 left=50 width=400 height=200 opacity=0 visible="false" ]
	
	;�烌�C������U��\��
	[layopt layer=9 top=420 left="-50" page="fore" visible="false"]
	
	;���ɂ��K�p
	[backlay]

	;BGM��SE�̃{�����[�������Ƃɖ߂�
	[fadebgm volume="100" time="1"]
	[fadese volume="100" time="1"]

[endmacro]

[macro name="SetupSelectWindow"]
	;���b�Z�[�W�n�͉B��
	[position layer="message0" visible="false"]
	[position layer="message1" visible="false"]
	
	
[endmacro]

;;�V�X�e�����C����ON�EOFF
;; flag��true false���w�肵�Ă�������
[macro name="SystemMessageVisible"]
	[position layer="message8"  visible="%flag"]
	[position layer="message9"  visible="%flag"]
	[position layer="message10" visible="%flag"]
[endmacro]

;;�����G�\���̃}�N��
;;who=�l����(������ ex.gaia, senpai...)
;;pause=�|�[�Y�ԍ�
;;face=�\��ԍ�
;;layer=�\���������O�i���C���ԍ�, �O�i���C��
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, ���C���ʒu
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;grayscale=�摜���O���[�X�P�[���ɂ��邩\nlayer , �_���l
;;index=�d�ˍ��킹����\n�w�i���C���ɂ͎w�肵�Ȃ��ł�������, 1�ȏ�̒l
;;opacity=�s�����x\nlayer �����Ŏw�肵�����C���̕s�����x���w�肵�܂�, 256�l
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;zoom=�g�嗦\n�g�嗦���w�肵�܂�, �p�[�Z���g�l
;;notrans=�g�����W�V�����̗L��, �_���l
;;big=�Y�[���摜��
[macro name="showstandimage"]
	[backlay cond="mp.notrans != 'true'"]
	;�\�����������G����ۑ��E�폜����
	[if exp=" mp.visible == 'true' "]
		[eval exp="tf.filename = global.GetStandFileName(mp.who, mp.pause, mp.face, false, mp.big)"]
		[image storage="&tf.filename" layer=%layer|0 pos=%pos|center visible=%visible|true index=%index|1 opacity=%opacity|255 page=back zoom=%zoom|100 grayscale=%grayscale]
		[layopt layer=0 top="100" left="200" page="back" cond="mp.big == 'true'"]
		[eval exp="global.SaveStandInfo(mp.who, mp.pause, mp.face)"]
	[else]
		[layopt layer=0 visible="false" page="back"]
		[eval exp="global.DeleteStandInfo(mp.who)"]
	[endif]
	[if exp="mp.notrans != 'true'"]
		[trans time=%time|500 method="crossfade"]
		[wt]
	[endif]
[endmacro]

;;���O����\������
;;bust=���O���̖��O�ƃo�X�g�A�b�v�摜�̖��O��������Ƃ��Ɏw�肷��
[macro name="shownametag"]
	[if exp="mp.noBust != 'true'"]
		[showlastbustup name=%name visible=%visible force=%bust]
	[endif]
	[layopt layer=8 visible=%visible|true]
	[position layer="message1" visible=%visible|true]
	[if exp="mp.visible != 'false'"]
		[nowait]
		[current layer="message1"]
		[emb exp="mp.name"]
		[current layer="message0"]
		[endnowait]
	[endif]
[endmacro]

;;�����G��񂩂�o�X�g�A�b�v�摜��\������
;;name=�K�{
[macro name="showlastbustup"]
	;��l���̓J�I�i�V
	[if exp="mp.name != '���'"]
		;�ʖ����\������邱�Ƃ�����̂ŁA�ʂɖ��O�w�肪�������炻���K�p����
		[if exp="mp.force != void"]
			[eval exp="mp.name = mp.force"]
		[endif]
		[if exp="mp.visible == 'true'"]
			; ��ʂɕ\�����ꂽ���Ƃ̂���L�����̏����擾���ĕ\��
			[if exp="f.lastShowStandImageinfo[mp.name] != void"]
				[eval exp="mp.who   = f.lastShowStandImageinfo[mp.name].name"]
				[eval exp="mp.pause = f.lastShowStandImageinfo[mp.name].pause"]
				[eval exp="mp.face  = f.lastShowStandImageinfo[mp.name].face"]
				[image layer=9 storage="&global.GetStandFileName(mp.who, mp.pause, mp.face, 'true', 'false')" visible=%visible]
			[endif]
		[else]
			[layopt layer=9 page="fore" visible=%visible]
		[endif]
	[endif]
[endmacro]

;;�w�肵���V�i���I�ɃW�����v����(�f�o�b�O���Ȃ�`���v�^�[�I����ʂɔ��)
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
[macro name="JumpChapter"]
[if exp="tf.isDebug == true"]
	[jump storage="debug.ks"]
[else]
	[jump storage=%storage]
[endif]
[endmacro]

[macro name="SetupBrunch"]
@dis_all_message
@position layer="message0" width=800 height=120 top=20  left=240 opacity="128" page="fore" visible="false"
@position layer="message1" width=800 height=120 top=160 left=240 opacity="128" page="fore" visible="false"
@position layer="message2" width=800 height=120 top=300 left=240 opacity="128" page="fore" visible="false"
@position layer="message3" width=800 height=120 top=440 left=240 opacity="128" page="fore" visible="false"
@position layer="message4" width=800 height=120 top=560 left=240 opacity="128" page="fore" visible="false"
@eval exp="f.Brunch[mp.name] = 0"
@eval exp="tf.Brunch.clear()"
[endmacro]

[macro name="AddBrunch"]
@eval exp="tf.temp = new Dictionary()"
@eval exp="tf.temp['text'] = mp.text"
@eval exp="tf.temp['storage'] = mp.storage"
@eval exp="tf.temp['target'] = mp.target"
@eval exp="tf.Brunch.add(tf.temp)""
[endmacro]

[macro name="ShowBrunch"]
[if exp="tf.Brunch.count == 1"]
	@RenderBruch layer="message2" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
[elsif exp="tf.Brunch.count == 2"]
	@RenderBruch layer="message1" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message3" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
[elsif exp="tf.Brunch.count == 3"]
	@RenderBruch layer="message1" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message2" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
	@RenderBruch layer="message3" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target"
[elsif exp="tf.Brunch.count == 4"]
	@RenderBruch layer="message0" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message1" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
	@RenderBruch layer="message2" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target"
	@RenderBruch layer="message3" text="&tf.Brunch[3].text" storage="&tf.Brunch[3].storage" target="&tf.Brunch[3].target"
[elsif exp="tf.Brunch.count == 5"]
	@RenderBruch layer="message0" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message1" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
	@RenderBruch layer="message2" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target"
	@RenderBruch layer="message3" text="&tf.Brunch[3].text" storage="&tf.Brunch[3].storage" target="&tf.Brunch[3].target"
	@RenderBruch layer="message4" text="&tf.Brunch[4].text" storage="&tf.Brunch[4].storage" target="&tf.Brunch[4].target"
[endif]
[endmacro]

[macro name="RenderBruch"]
	@nowait
	@position layer="%layer" visible="true"
	@current layer="%layer"
	@font size=32
	@style align="center"
	@link storage="%storage" target="%target"
	@emb exp="mp.text"
	@endlink
	@endnowait
[endnowait]


[endmacro]

[return]
