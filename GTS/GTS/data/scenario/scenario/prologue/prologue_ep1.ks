@SetupMessageWindow
;[�֑�L�����o]

;�����I�t����
[fadeinbgm storage=seitokai.ogg time=500]
[current layer="message0"]
[glyph line="LineBreak" page="PageBreak" fix="false"]
[dis_all_chara]
[dis_all_message]
[backlay]
[image layer="12" left=352 top=180 visible="true" page="back" storage="letter"]
[trans method="crossfade" time="2000"]
[wt]

[backlay]
[position layer="message0" width=1180 left=50 height=620 top=50 opacity="128" page="back" visible="true"]
[trans method="crossfade" time="1500"]
[wt]

[font size=32]
�j���䗦�P�F�X�@�I�I�I[l][r][r]

�����A�������Z�B[r]
�n���P�O�O���N���������閼��Z�ł���B[l][r][r]

���k�̂X���͏����k�ŁA���������b�N�X�̃��x���͍����B[r]
�܌��������t���A����������ȍZ�����Ӗ��s���ȓ`���������B[l][r][r]

���k�̎��含�̖��̉��ɁA���ł���肽������o����B[l][r]
���Ɏ��R�B[l]���Ɋy���B[plc]

[font size=32]
[locate x=200 y=280]
�\�\�����́A�N�������A�[�ɂȂ��[ruby text="�܂Ȃ�"]�w[ruby text="��"]�ɁB[plc]
;[���r:�܂Ȃт�]

;[���o�I]
@fadebgm volume="80" time="500"
[backlay]
[layopt layer=12 visible="false" page="back"]
[trans layer="base" method="crossfade" time="3000"]
[wt]

[font size=24]
[backlay]
[position layer="message0" page="back" visible="false"]
[image layer=7 top=470 opacity=256 storage="message_window" page="back" visible="true"]
[strans storage="black" noclear=true]
[SetupMessageWindow]
�����A����Ȃǂ����̍��\�L���̗l�Ȋw�Z�Љ�������̂́A[lr]
���w3�N�������I��낤���Ƃ������������B[plc]

���́c�c�Ȃ񂾂낤�B[plc]


�����A���̕��͂ɁA[lr]
���t�ł͌����\���Ȃ��w�g�L���L�x�݂����ȕ����������񂾁B[plc]

���ꂩ�牴�̓l�b�g��F�l�⋳�t�A[lr]
���ۂɌ��n�ɍs�����肵�Ē��ׂ����A[plc]

���̏Љ�ɉR��������Ă��Ȃ������m���߂��B[plc]

���̍��ɂ́A[lr]
���́w�g�L���L�x�́w����x�ւƃN���X�`�F���W���Ă��āB[plc]

[shownametag name="���" visible=true]
�u������A�׋����悤�I�v[plc]


�����ꂢ�āA[lr]
10�ȏ㑫��Ȃ������΍��l���グ��̂ɂ����قǋ�J�͂��Ȃ������B[plc]

��]���Ă̂́A�P�n�͂��Ȃ��l�Ԃ�[r]
�u�ԓI�ɂP���n�͂ɂ����肷����񂾁B[plc]

��肭�����Ƃ��́A�����O�܂ł̑傫�ȏ�Q��[r]
���[�̐΂��냌�x���Ƀn�[�h�������������������B[plc]

�c�c�ł��A�o���Ă��ė~�����B[plc]


��肭�����Ƃ��́A�K�����Ƃ���������B[plc]

�����A���͗��Ƃ����Ɉ����������Ă����B[lr]
����������ƑO�ɁB[plc]

@fadeoutbgm time="2000"
[backlay]
[image layer="12" left=352 top=180 visible="true" page="back" storage="letter"]
[trans method="crossfade" time="2000"]
[wt]

����A�X�}�i�C�B���̏Љ�Ȃ񂾁B[lr]
���̏Љ�ɁA������R���������Ă��B[plc]

�w�����k�X���x���A�w���b�N�X�̃��x���������x���������B[plc]

�Ƃ����΁A����1���낤�H[plc]

@backlay
@layopt layer=12 page="back" visible="false"
@image layer="base" page="back" storage="black" visible="true"
@trans layer="base" time="1000" method="crossfade"
@wt

�����A�����́\�\[plc]
@fadeinbgm storage="serious1-2" time="1000"
@fadebgm time=1 volume="100"
@strans storage="kyositu_m" time="2000"
@showstandimage who=gaia size=m pose=1 face=normal layer=3
[shownametag name="�L����A" visible=true bust="�K�C�A"]
�u�₟�A�J���N���������ȁH�@�ׁA�ǂ����ȁH�v[plc]


[shownametag name="���" visible=true]
�u�c�c��H�v[plc]

@showstandimage who=mash size=m pose=1 face=doya pos=l layer=1
[shownametag name="�L����B" visible=true bust="�}�b�V��"]
�u�ł́A�َ҂͂����ɂ��悤�v[plc]

@showstandimage who=orutega size=m pose=1 face=normal2 pos=r layer=2
[shownametag name="�L����C" visible=true bust="�I���e�K"]
�u�l�`���͂����ɂ���i���v[plc]


[shownametag name="���" visible=true]
�u���H�@�c�c�����I�H�v[plc]


[shownametag name="�L����A" visible=true bust="�K�C�A"]
@showstandimage who=gaia size=m pose=1 face=egao pos=c layer=3
�u�ӂӁA���������Ȃ��ėǂ��B[lr]
���̓K�C�A�A����������C�ɐD���Ƃ����v[plc]

[shownametag name="�K�C�A" visible=true]
�u�b���̂́A���ꂪ�͂��߂Ă��������ȁH[lr]
���v���A�N���X���C�g����Ȃ����v[plc]

[shownametag name="�K�C�A" visible=true]
�u�����A���̗͂𔲂����܂��\�\�v[plc]


@playse storage="syakeeen"
@backlay
@showstandimage layer=3 pos=c who="gaia"    pose=1 face=egao   visible="true" size=l notrans=true page=back
@showstandimage layer=1 pos=l who="mash"    pose=1 face=normal visible="true" size=l notrans=true page=back
@showstandimage layer=2 pos=r who="orutega" pose=1 face=normal visible="true" size=l notrans=true page=back
@trans method="crossfade" time="500"
@wt
[shownametag name="�K�E�}�E�I" bust="�K�C�A" visible=true]
�u�u�u�\�\�u���U�[�I�I�I�I�v�v�v[plc]

[shownametag name="���" visible=true]
�u���A���킟�������������������������������I�I�I�I�I�v[plc]
;[���̑䎌�͗v����]

@fadebgm time="500" volume="50"
@strans storage="black" time="1000"



�\�\���w���X�A�w����̃L���I�^�R�c�ɓ�����\�\[plc]



@fadebgm time="500" volume="100"
@playse storage="ambientA@08"
@strans storage="kyositu_m" time="1000"

[shownametag name="���qA"]
�u������A�J���w���؁x���Ƙb���Ă�B�L���I�^�������v[plc]


[shownametag name="���qB"]
�u�w�A�j���Ƃ��͕�����܂���i�΁j�x�Ƃ������Ă��ȂɁv[plc]


[shownametag name="���qC"]
�u�ǂ��񂶂�ȁ`���H�@�g�̏�ɂ����Ă񂶂��B��I�ɁH�v[plc]

[shownametag name="���qA"]
�u��΂��A�����������ƂR�b�ȏ�b����������B���ꂽ�킟�`�v[plc]

[shownametag name="A�EB�EC"]
�u�u�u�A�n�n�n�n�n�n�n�n�n�b�I�v�v�v[plc]



@fadebgm time="500" volume="50"
@strans storage="black" time="500"
�\�\�����Ƃ����ԂɃN���X�̍ŉ��w�ɗ��Ƃ���\�\[plc]



@fadebgm time="500" volume="100"
@strans storage="kyositu_m" time="500"
[shownametag name="����"]
�u�����A�J���B���O�A�r�߂Ă�̂��H�@�Q�w���ɂ��Ȃ��āw�������|��������܂���x�Ƃ��A�ӂ����񂶂�˂����I�v[plc]

[shownametag name="����" visible=true]
�u���O�A�������炿���Ƃ������̂����I�H�v[plc]


@fadebgm time="500" volume="50"
@strans storage="black" time="500"
�\�\���͈����\�\[plc]


@fadebgm time="500" volume="100"
@strans storage="artroom_dt"
[shownametag name="���p���̐�y"]
�u��[����@�P���Ԃ�������[�B���������炢�͏o�����[�H�v[plc]

[shownametag name="���" visible=true]�u����A���́c�c�v[plc]


[shownametag name="���p���̐�y"]
�u��[�ƁA����͌������H�v[plc]


[shownametag name="���" visible=true]
�u���ł��v[plc]


[shownametag name="���p���̐�y"]
�u�N�r���v[plc]


@fadebgm time="500" volume="0"
@strans storage="black" time="500"
�\�\���̍˔\���Ȃ��\�\[plc]


@playse storage="bird"
@strans storage="senro_zoi_dt" time="500"
[shownametag name="���" visible=true]
�u�\�\����ȓz�ł����A�[�ɂȂ��ꏊ����Ȃ������񂾂�I�v[quake time="300"][plc]

�v���Ԃ�����ł݂āA�T�ɂȂ����B[plc]


�V�C�́A���̋C���ɔ����Č��₩�Ȃقǐ���₩�ŁA[lr]
��ɂ̓`�����`�����Ɛ��Ȃ񂩂����ł���B[plc]

@quake time="300"
[shownametag name="���" visible=true]
�u�N�\�����I�v[plc]


�{���Ă݂邪�A�󋵂͉��P����킯���Ȃ��B[plc]


���ꂩ��c�c���w���Ă���A�͂��N�B[plc]


��������Ƌx�e���B�O�������Ƌx�݁B[l][r]
��T�Ԃ΂���ƕa�����āB[plc]

�C�t���΁A[plc]


[shownametag name="���" visible=true]
�u�c�c�񃖌�����v[plc]


�ǂ��ɏo���Ă��p���������A���h�ȕs�o�Z�ɂȂ��Ă����B[plc]


@quake time="500"
[shownametag name="���" visible=true]
�u�������������A�������I�v[plc]


�X���Ă݂�B[l][r]
�߂��ɂ�����w���r�r��B[plc]

@stopse
@strans storage="black" time=500
����Ȓn���̂悤�ȏ󋵂ł��A���͑ς����B[l][r]
�ς��ɑς����B��N���ς����B[plc]

��N���ς��āA��]�����o�����̂��B[l][r]
����̓N���X�ւ��B[plc]

��蒼����B���Q�f�r���[���o����I[plc]


�����v���Ă����B�v���Ă������A[plc]


@backlay
@showstandimage layer=3 pos=c who="gaia"    pose=1 face=egao   visible="true" size=l notrans=true page=back
@showstandimage layer=1 pos=l who="mash"    pose=1 face=normal visible="true" size=l notrans=true page=back
@showstandimage layer=2 pos=r who="orutega" pose=1 face=normal visible="true" size=l notrans=true page=back
@image storage="kyositu_m" layer="base" page="back" visible="true"
@trans method="crossfade" time="500"
@wt

@fadese volume="100" time=1
@playse storage="syakeeen" 
[shownametag name="�K�C�A" visible="true"]
�u�悤�A�Z��I�@�܂������������N���X���ȁI[r]
�}�b�V���ƃI���e�K���ꏏ���I�I�v[plc]


@strans storage="black"

�����������B[lr]
���̊�]�͙R���������B[plc]


�����āA���ꂪ���E�ŁB[plc]

@fadeinbgm storage="prologue" time="500"
@fadebgm volume="100" time="1"
@strans storage="senro_zoi_dt"
[shownametag name="���" visible=true]
�u�}�W�����A������������������v[plc]


�����瓦���o�����Ƃ����킯�ł���B[plc]


[shownametag name="���" visible=true]
�u��A�ł��Ȃ��`�v[plc]


�����A�ł��ł���B[lr]
�����o�����Ƃ���ŁA�����͐h���B[plc]

���͂��܁A�q�G�����L�[�I�ɂ̓{�b�`��肵���̕s�o�Z�B[lr]
���Ԉ�ʂ��炷��΁A�Љ�̃S�~�N�Y�ɓ������c�c�B[plc]

[shownametag name="���" visible=true]�u�c�c���[�A�_�����B�T�ɂȂ�A���ʁv[plc]


�_�����B����ȕ��Ɏ����Ŏ�����ǂ�����ł͑ʖڂ��B[l][r]
���̂��߂ɓ����o�����̂�������Ȃ��B[plc]

[shownametag name="���" visible=true]�u�C����ς��Ȃ�����v[plc]


�����������A�ӎ��𖾌���̕����ɏW���������B[plc]


[shownametag name="���" visible=true]
�u�܂��̓R���r�j�B�P�O���܂ł����ɂ��āA���ꂩ��Ö{���ŗ����ǂ݁B�S���߂����牺�Z���̓z��ƍ����B���̂܂܋A��v[plc]

�����̗\����������ށB[plc]


�������B�܂��Ƀp�[�t�F�N�g���B[l][r]
�񃖌����e�ɓ����ŕs�o�Z����Ă����̌v�搫�͈ɒB����Ȃ����B[plc]

[shownametag name="���" visible=true]�u�͂��͂��͂��v[plc]

@stopbgm
�]�v�T�ɂȂ����B[plc]

@playbgm storage="happy bgm"
@quake hmax=0 vmax="5" time=10000000000000000
[shownametag name="���" visible=true]�u���������������I�H�@�ʖڂ��@�����������������I�I�I�I�v[plc]

@stopquake
�E�l�b���B[l][r]
���тE�l�b���B[plc]

�`�����Ŕ������E�l�b���B[plc]

@quake hmax=0 vmax="5" time=10000000000000000
[shownametag name="���" visible=true]�u�����������������������I�H�v[plc]

@shownametag name="��w"
�u�Ђ����������������I�v[plc]

@shownametag name="�L"
�u�t�V���@�[�b�I�v[plc]

@strans storage="black" method="universal" rule="101" time="300"
@strans storage="jyuutaku_dt" method="universal" rule="101" time="300"
���]�Ԃ��V�����V���������Ȃ���A�E�l�E�l�g�̂����˂炷���B[lr]
�F���l�ł��������̗l�ɋ��Ԃ��΂����B�Њd���ē����o����ǔL�B[plc]

�������傤�A�w�Z�ǂ��납�H��ł����l�Ԉ�������ĂȂ��B[plc]

@quake hmax=0 vmax="5" time=10000000000000000
[shownametag name="���" visible=true]
�u���������傧�������������I�v[plc]

@strans storage="black" method="universal" rule="101" time="300"
�������A�݂�Ȃ��āI[lr]
�݂�Ȃ��ăI����n���ɂ��Ă��I�I[plc]

@strans storage="jyuutakuti_dt" method="universal" rule="101" time="300"
[shownametag name="���" visible=true]
�u�����@���������������������I�v[plc]


�����������B�S��瀂��E���Ă��I[lr]
�Ƃ肠�����l�Ԃ���Ȃ��ĔL�ł��I�I[plc]

[shownametag name="���" visible=true]�u���˂�A���炟���������������I�v[plc]


��������B[l][r]
�y�_�������E�܂ŉ�]�����A���˂�悤�ɓ�����L��ǂ�������B[plc]

@shownametag name="�L"
�u�E�j���b�I�v[plc]


[shownametag name="���" visible=true]
�u�҂Ă�A�l�R�ڃl�R�ȃl�R�������������������I�I�I�v[plc]

@strans storage="black" method="universal" rule="101" time="300"
��ꂽ�^�o�R��𔲂��A[l]�~���|�X�g���R���΂��A[lr]
�N���̉Ƃ̃`���C����炵�āA[l]�N�����Ȃ��H�n��˂��؂��ā\�\[plc]

[stopquake]
@strans storage="roji_dt" method="universal" rule="101" time="300"
@showstandimage who=haruka pose=1 face=odoroki visible="true" size=s
@shownametag name="�����k" bust="��y" visible=true
�u�c�c���I�H�v[plc]
;[��y]

@showstandimage who=haruka pose=1 face=odoroki visible="true" size=l
�\�\���āA�N�����邶�����I�H[plc]

@playse storage="car_crash"
@strans storage="black" time="800"
@fadeoutbgm time="2000"
;[���ˉ�]

���̂܂܁A�I���͂��̒N���ɓ˂����񂾁B[plc]
@stopbgm

;[��z����o�߂�悤�ȉ��o]
;[���s�����Ȗڊo��]

;[��EP2��]
[JumpChapter storage="prologue_ep2.ks"]
