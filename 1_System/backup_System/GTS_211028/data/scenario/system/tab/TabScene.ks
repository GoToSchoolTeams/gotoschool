;�E�N���b�N�̋֎~
[rclick enabled="false"]
;�V�X�e���{�^���̔�\��
[sysbtopt forevisible="false" backvisible="false"]
;���O���̔�\��
[layopt layer="message1" visible="false"]
;�e�L�X�g�̔�\��
[layopt layer="message0" visible="false"]
;���b�Z�[�W�{�b�N�X�̔�\��
[layopt layer="9" visible="false"]

;�V�X�e����ʂ̏�����
[call storage="InitSys.ks"]

;�^�u�{�^���ɂ���ăV�i���I��ǂݒ�������t���O�����낷
[eval exp="tf.IsChangeBack=0"]

;�w�i�̓ǂݍ���
[eval exp="tf.currentLayer=21"]
[image storage="&tf.TabInfo.base" layer="&tf.currentLayer" visible="true" left=200 top=50]


;�y�{�^���̋@�\�쐬�z
;�{�^���̉��n�摜�ǂݍ���
;�{�^���̓��b�Z�[�W���C���ł����g���Ȃ��̂ŁA���b�Z�[�W���C���̐���
[position layer="message8"  height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="0"]
[position layer="message9"  height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="0"]
[position layer="message10" height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="0"]

[current layer="message8"]

; BACK�{�^���ɉ������������S
[locate x="80" y="400"]
[button graphic="EXIT_button_message" storage="title.ks"]

;���[�v�p�J�E���^
[eval exp="tf.counter=0"]

;�^�u�{�^�����N���b�N���ꂽ���ǂ���
[eval exp="tf.isClickedTab=0"]

*Tab
[if exp="tf.counter != tf.TabInfo.pages.count"]
	;page���
	[eval exp="tf.page = tf.TabInfo.pages[tf.counter]"]

	;���b�Z�[�W���C���̕ύX
	[current layer="message8"]

	;�^�u�{�^���̈ʒu�v�Z
	[eval exp="tf.temp_x = global.GetTabButtonPosition(0, tf.counter)"]
	[eval exp="tf.temp_y = global.GetTabButtonPosition(1, tf.counter)"]
	[locate x="&tf.temp_x" y="&tf.temp_y"]

	;�^�u�{�^���쐬
	[eval exp="tf.TabName = global.CreateButtonHintName(tf.TabInfo.name, tf.counter)"]

	;���ݑI������Ă�����̂������łȂ����ŉ摜��؂�ւ���
	[if exp="tf.counter == tf.currentTab"]
		[button graphic="&tf.page.current" hint="&tf.TabName" target="*TabClick" exp="tf.isClickedTab=1"]
	[else]
		[button graphic="&tf.page.other" hint="&tf.TabName" target="*TabClick" exp="tf.isClickedTab=1"]
	[endif]

	;�J�E���^�̍X�V
	[eval exp="++tf.counter"]

	;���[�v�n�_�܂Ŗ߂�
	[jump target="*Tab"]
[else]
	;���[�v�̍Ō�ŃJ�E���^�[���Z�b�g
	[eval exp="tf.counter = 0"]
[endif]

*TabClick
[if exp="tf.isClickedTab == 1"]
;�^�u�{�^����MessageLayer8�ɂ����Ă���
[eval exp="global.ChangeTab(8, tf.TabInfo.name)"]
;�^�u�ύX�ɂ���ăV�i���I��ǂݒ�������t���O�𗧂Ă�
[eval exp="tf.IsChangeBack=1"]
[jump target="*Return"]
[endif]


*BrunchTabMenu
[call storage="&tf.TabInfo.pages[tf.currentTab].content"]

*Return
;�g�p�����ϐ����J�����A�܂��\���҂��𕜊������ăR���t�B�O�V�[���ɖ߂�
[if exp="tf.isClickedTab == 1"]
	;Layer�̔�\��
	[eval exp="global.ClearSystemMessage()"]
	[jump storage="&tf.TabInfo.orig"]
[endif]
