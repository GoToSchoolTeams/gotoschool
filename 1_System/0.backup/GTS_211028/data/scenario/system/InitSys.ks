;�V�X�e����ʂ̔�\��
[eval exp="tf.counter=8"]
[cm]

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

[return]
