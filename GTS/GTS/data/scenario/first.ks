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
[eval exp="Storages.addAutoPath('scenario/scenario/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/haruka/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/nazimi/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/prologue/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/debug/')"]

;�V�X�e��
[eval exp="Storages.addAutoPath('scenario/system/')"]
[eval exp="Storages.addAutoPath('scenario/system/import/')"]
[eval exp="Storages.addAutoPath('scenario/system/tjs/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/config/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/saveload/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/debug/')"]

;�V�X�e���摜
[eval exp="Storages.addAutoPath('image/system/')"]
[eval exp="Storages.addAutoPath('image/system/tab/')"]
[eval exp="Storages.addAutoPath('image/title/')"]
[eval exp="Storages.addAutoPath('image/message/')"]
[eval exp="Storages.addAutoPath('image/old_image/')"]

;�����G
[eval exp="Storages.addAutoPath('fgimage/1.haruka/')"]
[eval exp="Storages.addAutoPath('fgimage/2.najimi/')"]
[eval exp="Storages.addAutoPath('fgimage/3.naruse/')"]
[eval exp="Storages.addAutoPath('fgimage/4.satori/')"]
[eval exp="Storages.addAutoPath('fgimage/5.gaia/')"]
[eval exp="Storages.addAutoPath('fgimage/6.mash/')"]
[eval exp="Storages.addAutoPath('fgimage/7.orutega/')"]
[eval exp="Storages.addAutoPath('fgimage/8.sakurako/')"]
[eval exp="Storages.addAutoPath('fgimage/9.takahashi/')"]
[eval exp="Storages.addAutoPath('fgimage/10.matsudo/')"]
[eval exp="Storages.addAutoPath('fgimage/11.miyabi/')"]
[eval exp="Storages.addAutoPath('fgimage/12.maru/')"]


;�o�X�g�A�b�v�摜
[eval exp="Storages.addAutoPath('fcimage/')"]
[eval exp="Storages.addAutoPath('fcimage/faceCheck')"]
[eval exp="Storages.addAutoPath('fcimage/0_face_old')"]

;�w�i
[eval exp="Storages.addAutoPath('bgimage/event_cg/')"]
[eval exp="Storages.addAutoPath('bgimage/tuning/')"]
[eval exp="Storages.addAutoPath('bgimage/0_bg_old/')"]
[eval exp="Storages.addAutoPath('bgimage/0_bg_old/event_cg/')"]
[eval exp="Storages.addAutoPath('bgimage/0_bg_old/tuning/')"]

;BGM
[eval exp="Storages.addAutoPath('bgm/0_bgm_old/')"]

;Sound
[eval exp="Storages.addAutoPath('sound/0_se_old/')"]


;ImageDebug�p(by Mahiro)
;data�t�H���_��ImageDebug�ɑf�ނ��X�N���v�g���S������܂��B�i��ŏ����₷���悤�j
[eval exp="Storages.addAutoPath('ImageDebug/')"]

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
[call storage="fgimage_tuning.ks"]
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
	[eval exp="sf.sound=100000"]
	[eval exp="sf.se=100000"]
	[eval exp="sf.LatestTab=0"]
	[eval exp="sf.first=1"]
[endif]

;�ŐV�̃^�u�ԍ���I�𒆂̃^�u�ԍ���
[eval exp="tf.currentTab = sf.LatestTab"]

;BGM���ʂ�SE���ʂ̏�����
[eval exp="kag.bgm.buf1.volume2=sf.sound"]
[eval exp="kag.se[0].volume2=sf.se"]

;�N�����ɃE�B���h�E�T�C�Y�����Z�b�g����
[iscript]
//kag.setInnerSize(1280,720);
[endscript]

;title��ʂ�
[jump storage="title.ks"]
