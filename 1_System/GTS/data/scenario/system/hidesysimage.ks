;�y�V�E�X�e����ʂ̏I�������z

;�V�X�e����ʂ̔�\��
[eval exp="tf.counter=8"]

*Return_visible_off
[if exp="tf.counter < 34"]
[layopt layer="&tf.counter" visible="false"]
[eval exp="tf.counter += 1"]
[jump target="*Return_visible_off"]
[endif]

;�V�X�e����ʂ̃��b�Z�[�W���C���̔�\��
[layopt layer="message8" page="fore" visible="false"]
[layopt layer="message9" page="fore" visible="false"]
[layopt layer="message10" page="fore" visible="false"]

;�y�V�X�e����ʂ̏����@�I���z



;�y�V�i���I��ʂւ̕��A�����z
;�V�X�e���{�^���̕\��
[sysbtopt forevisible="true" backvisible="false"]
;���O���̕\��
[layopt layer="message1" visible="true"]
;�e�L�X�g�̕\��
[layopt layer="message0" visible="true"]
;���b�Z�[�W�{�b�N�X�̕\��
[layopt layer="7" visible="true"]
;�����Ώۂ̃��b�Z�[�W���C���[�����ɖ߂�
[current layer="message0" page="fore"]
;�E�N���b�N�̋���
[rclick call="true" storage="hidemessage.ks" target="*rclick" enabled="true"]
;systembutton����R�[���Ŕ��ł���̂ŁB
[return]
