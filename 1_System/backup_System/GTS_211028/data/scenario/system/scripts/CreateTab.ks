;;�^�u�𐶐�����T�u���[�`��
;;tf.currentTab�ɃO���[�o���ϐ����i�[��
;;tf.sceneName�ɌĂяo�����̃t�@�C����
;;tf.sceneTarget�ɌĂяo�����̞x��������


*TabButton
;�^�u�̐��������[�v
[if exp="tf.counter != tf.MAX_TAB_NUM"]

	;�{�^���\���ʒu�̌v�Z
	[eval exp="tf.temp_x = global.GetTabButtonPosition(0, tf.counter)"]
	[eval exp="tf.temp_y = global.GetTabButtonPosition(1, tf.counter)"]
	
	;�{�^���\���ʒu�̌���
	[current layer="message8"]
	[locate x="&tf.temp_x" y="&tf.temp_y"]
	
	;�{�^���\��
	[eval exp="tf.Tabbuttonname = global.CreateButtonHintName(tf.TAB_HINT_NAME,tf.counter)"]
	[eval exp="tf.TabGraphicName = global.GetTabGraphicName(tf.counter)"]
	[button graphic="&tf.TabGraphicName" target="*TabClicked" hint="&tf.Tabbuttonname" exp="tf.isClickedTab=1"]
	
	;�J�E���^�̍X�V
	[eval exp="++tf.counter"]

	;���[�v�n�_�܂Ŗ߂�
	[jump target="*TabButton"]

[else]
;���[�v�̍Ō�ŃJ�E���^�[���Z�b�g
[eval exp="tf.counter = 0"]
[endif]

*TabClicked
[if exp="tf.isClickedTab == 1"]
[eval exp="global.ChangeCurrentTab()"]
[jump target="*Return"]
[endif]

[return]
