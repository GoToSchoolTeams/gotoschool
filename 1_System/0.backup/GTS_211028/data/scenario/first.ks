;�f�o�b�O�t���O
[eval exp="tf.isDebug = true"]

;���T���l�C���̕ۑ����[�h�@8��24
[eval exp="kag.numBookMarks = 18"]

;�y�O�i���C�����̕ύX�z
[laycount layers="34"]

;�y���b�Z�[�W���C�����̕ύX�z
[laycount messages="20"]

;-------------------------
;�ǂݍ��݃t�H���_�̊g��
;-------------------------
;���C���V�i���I
[eval exp="Storages.addAutoPath('scenario/main/')"]
[eval exp="Storages.addAutoPath('scenario/main/senpai/')"]
[eval exp="Storages.addAutoPath('scenario/main/nazimi/')"]
[eval exp="Storages.addAutoPath('scenario/main/common/')"]
[eval exp="Storages.addAutoPath('scenario/main/debug/')"]

;�V�X�e��
[eval exp="Storages.addAutoPath('scenario/system/')"]
[eval exp="Storages.addAutoPath('scenario/system/import/')"]
[eval exp="Storages.addAutoPath('scenario/system/config/')"]
[eval exp="Storages.addAutoPath('scenario/system/saveload/')"]
[eval exp="Storages.addAutoPath('scenario/system/scripts/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/')"]

;�V�X�e���摜
[eval exp="Storages.addAutoPath('image/system/')"]
[eval exp="Storages.addAutoPath('image/system/tab/')"]
[eval exp="Storages.addAutoPath('image/title/')"]
[eval exp="Storages.addAutoPath('image/old_system/')"]
[eval exp="Storages.addAutoPath('image/message/')"]

;���b�Z�[�W���C���p�o�X�g�A�b�v�摜
[eval exp="Storages.addAutoPath('image/message/bustup/gaia/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/gaia/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/mash/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/mash/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/nazimi/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/nazimi/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/nazimi/p3/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/orutega/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/orutega/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/satori/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/senpai/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/senpai/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/naruse/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/naruse/p2/')"]
;�����G
[eval exp="Storages.addAutoPath('fgimage/stand/gaia/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/gaia/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/mash/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/mash/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/nazimi/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/nazimi/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/nazimi/p3/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/orutega/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/orutega/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/satori/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p1/big/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p2/big/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p1/big/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p2/big/')"]

;-------------------------
; ����
;-------------------------
;�v���O�C���̓���
[call storage="plugin.ks"]

;�}�N���̓���
[call storage="macro.ks"]

;���색�C�u�����̓ǂݍ���
[call storage="SystemLib.ks"]
[call storage="ShortCutController.ks"]
[eval exp="global.InitShortCut()"]

;�}�X�^�[�{�����[���̓K�p
[eval exp="global.ApplyVolume()"]

;�ꉞ����������
[call storage="Initialize.ks"]

*start|�X�^�[�g
[startanchor]

;���ݒn���ꎟ�ϐ��ɕۑ�
[eval exp="tf.back_place='first'"]

;SaveLoad�ϐ��̏�����
[eval exp="tf.savedata=0"]
[eval exp="tf.loaddata=0"]

;BGM��SE���ʂ̃Z�b�e�B���O
;����̂�
[if exp="sf.first!=1"]
	[eval exp="sf.sound=60000"]
	[eval exp="sf.se=60000"]
	[eval exp="sf.LatestTab=0"]
	[eval exp="sf.first=1"]
[endif]

;�ŐV�̃^�u�ԍ���I�𒆂̃^�u�ԍ���
[eval exp="tf.currentTab = sf.LatestTab"]

;BGM���ʂ�SE���ʂ̏�����
[eval exp="kag.bgm.buf1.volume2=sf.sound"]
[eval exp="kag.se[0].volume2=sf.se"]

;title��ʂ�
[jump storage="title.ks"]

