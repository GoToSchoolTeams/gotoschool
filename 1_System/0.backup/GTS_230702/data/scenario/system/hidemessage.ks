*rclick
;�y���b�Z�[�W�{�b�N�X�̏����z
;�E�N���b�N���̔����̕ύX�i���b�Z�W���������b�Z�W�����ցj
[rclick enabled="true" jump="true" storage="hidemessage.ks" target="*showmessage"]

;�V�X�e���{�^���̔�\��
[sysbtopt forevisible="false" backvisible="false"]
;���O���̔�\��
[layopt layer="message1" visible="false"]
;�e�L�X�g�̔�\��
[layopt layer="message0" visible="false"]
;���b�Z�[�W�{�b�N�X�̔�\��
[layopt layer="7" visible="false"]


[s]


*showmessage
;�y���b�Z�[�W�{�b�N�X�̕\���z
;�V�X�e���{�^���̕\��

[sysbtopt forevisible="true" backvisible="false"]
;���O���̕\��
[layopt layer="message1" visible="true"]
;�e�L�X�g�̕\��
[layopt layer="message0" visible="true"]
;���b�Z�[�W�{�b�N�X�̕\��
[layopt layer="7" visible="true"]


;�܂��E�N���b�N�����������悤�ɂ���B
[rclick call="true" storage="hidemessage.ks" target="*rclick" enabled="true"]

[return]
