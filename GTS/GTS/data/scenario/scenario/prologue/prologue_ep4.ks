;[�Ó]]
[SetupMessageWindow]
[call target="*Debug"]
�������āA�D���Ŋw�Z�ɍs���Ȃ��Ȃ����킯����Ȃ��B[plc]


�w���Z�Ȃ�Ă�����Ȃ��x�Ȃ�āA�o�J�o�J�������������z�����邯�ǁA���͂����͎v���Ă͂��Ȃ������B[plc]

���ԓI�ɂ���ϓI�ɂ��A[r]
�ǂ��������������Ȃ�ď펯�͂킫�܂��Ă���肾�B[plc]

�ŏ��͍s�����Ǝv�������A�s�����������B[plc]


������ǂ��A����������Ȃ��B[l][r]
�����Ă���Ȃ��B[plc]

��ΓI�Ȋ����Ă��̂��A���̒�����Ǝv���B[plc]



;[�Ó]����]

@strans storage="school-cafeteria01"

@fadeinbgm storage="daily1 bgm" time="500"
@playse storage="ambientA@08"
�\�\�U���U���U���b�B[plc]


[gaia_stand face="futsu" size="l" time="200"]
[quake time="300"]
�u�悤�A�Z��I�v[plc]

[dis_all_chara]
���x�݁B[l]�o���Ȃ��l�ɐH���ɗ����̂����A[lr]
�ǂ���疳�ʂȓw�͂������炵���B[plc]


�ǂ�����Ƃ��Ȃ����ꂽ���K�l�u�^���A[r]
�ǂ�����Ɖ��ׂ̗ɍ������낵���B[plc]

[shownametag name="���" visible=true]
�u�悤�A�u�^�B���a��͂�������Ȃ����v[plc]

[gaia_stand face="yorokobi" size="l"]
[shownametag name="�K�C�A" visible=true ]
�u�͂́A���ς�炸�u���U�[�̈���\���͐h煂��ȁv[plc]


����ƒ����ŁA�w���ׂ̗ɍ���ȁx[r]
�ƌ��������肾�������A�������Ⴂ�Ȃ��B[plc]

[dis_all_chara]

@strans storage="black" time="1000"
[shownametag name="���" visible=true]�u�c�c�v[plc]

;���w�i�����G
[gaia_stand face="futsu" size="l" namevisible="false"]
�����̖��O�́A[ruby text="����"]��[ruby text="��"]��@[ruby text="�K"]�b[ruby text="�C"]��[ruby text="�A"]���B[l][r]
�F�l����Ȃ��B[plc]

@dis_all_chara
@strans storage="school-cafeteria01"

[gaia_stand face="odoroki" size="l"]
[shownametag name="�K�C�A" visible=true]
�u���������A�u���U�[�B[lr]
�@��̐e�F�ɑ΂��āA�Љ���񂴂������₵�Ȃ����H�v[plc]


[shownametag name="���" visible=true]�u�c�c�v[plc]


���邹���ȁB[plc]

[orutega_stand face="keikai" size="l"]
�u�j���j�����I�H�@���u�ł͂ɂႢ���I[lr]
�@�������ł������̂��˂��I�H�v[plc]

[shownametag name="���" visible=true]�u�c�c�v[plc]

[mash_stand face="odoroki" size="l"]
�u�J�������I�H�@�����̂̕��͂�낵���̂��I�I�H�v[plc]

@dis_all_chara
[shownametag name="���" visible=true]�u�c�c�v[plc]

�������Ă���ƁA���X�Ƃ��邹���̂��W�܂��Ă��āB[l][r]
�����A��������������B[plc]

[strans storage="black"]
@backlay
[image storage="l_gaia_pose1_n_yorokobi" layer="2" visible="true" page="back"]
[image storage="l_mash_pose1_n_yorokobi" layer="1" left=-400 visible="true" page="back"]
[image storage="l_orutega_pose1_n_futsu" layer="0" left=400 visible="true" page="back"]
@trans method="crossfade" time="500"
@wt
������́A������[r]
���v ���C�i���́j�E���� �b�㘱�i���́j�E���c �D���i���́j�Ƃ����B[plc]
;[�K���E���K�l�E�f�u]
�S�����O�Ɂw���x���t���̂ŁA�^�A�j���ɏK���Ė{�l�B�͎����B���w�����O�A���x�Ǝ��̂��Ă��邪�A�ܘ_�N�������͌Ă΂Ȃ��B[plc]

�w�Z�ł��L���ȁA�L���I�^�R�c�ł���B[plc]
@dis_all_chara

*Debug
[setup_debug bgm="daily1 bgm"]

�����āA[plc]
@strans storage="school-cafeteria01"
@playse storage="ambientA@08"
[shownametag name="�����kA" visible=true]
�u�˂��˂��A���āB�܂��A�������悠�̃L���I�^[font size=50]�S�l�I[font size=32]�v[plc]
;[�S�l�@�̓f�J����]

[shownametag name="�����kB" visible=true]
�u�L�b���`���I�I�v[plc]

[shownametag name="�j�q���k" visible=true]
�u�c�c�����A����[font size=50]�S�l[font size=32]�v[plc]
;[�S�l�@�̓f�J����]

[shownametag name="�j�q���k" visible=true]
�u����ȁA�ڂ�����v[plc]


�ΊO�I�ɂ́A���������Ɋ܂܂��B[plc]


[image storage="l_gaia_pose1_n_yorokobi" layer="2" visible="true"]
[shownametag name="�K�C�A" visible=true]�u�����u���U�[�v[plc]

[image storage="l_mash_pose1_n_yorokobi" layer="1" left=-400 visible="true"]
[shownametag name="�}�b�V��" visible=true]�u�v���Ԃ�ɑ������َҒB�Ɂv[plc]

[image storage="l_orutega_pose1_n_keikai" layer="0" left=400 visible="true"]
[shownametag name="�I���e�K" visible=true]�u���L�͔���A�Y�L�͐K���ۂ߂Ă�j�����v[plc]


[shownametag name="���" visible=true]�u�c�c���O��A���t���Ă�̂��H�v[plc]


�K���ȓz�炾�B[plc]
[dis_all_chara]

[shownametag name="���" visible=true]�u�c�c�v[plc]


�������ꂭ�炢�c�c�B[plc]

[shownametag name="���" visible=true]
�u�c�c�n���ȁv[plc]


���蓾�Ȃ��B[plc]

[gaia_stand face="yorokobi" size="l"]
[shownametag name="�K�C�A" visible=true]
�u�������A�Z��B�񃖌��Ԃ肶��Ȃ����v[plc]


[shownametag name="���" visible=true]
�u�c�c�܂��ȁv[plc]


�w������x�ƌ����Ă������Ă���Ȃ������Ȃ̂ŁA[lr]
�K���ɂ���������B[plc]

;���ǂ�̈ꖇ�G�E�E�E�H(�n��������)
���ǂ񂪐L�т��炩�Ȃ�Ȃ��B[plc]

[gaia_stand face="futsu" size="l"]
[shownametag name="�K�C�A" visible=true]
�u�c�c���������ȁv[plc]

�m���ɁA�����������ȁB[l][r]
��Ȃ���A�悭�܂����񂾂��x�񂾂��񂾁B[plc]

�����āA�悭�܂���������������o�Ă����B[plc]


����Ȏ���肤�ǂ񂾁B[l][r]
�L�т���A�T����������Ȃ��Ă͂��ǂ�̔����������\�\[plc]

@fadebgm time="500" volume="50"
[gaia_stand face="futsuAri" size="l"]
�u�c�c�ǂ����āA����C�ɂȂ����H�v[plc]

@playse storage="ohashi"
[shownametag name="���" visible=true]�u�c�c�v[plc]
[dis_all_chara]
�\�\�����A�~�߂Ă��܂����B[plc]


[shownametag name="���" visible=true]�u�c�c���ꕷ�����H�v[plc]


���ǂ�́A�܂������ȏ�c���Ă��邪�B[l][r]
�����H����ȁB[plc]

[gaia_stand face="yorokobi" size="l"]
[shownametag name="�K�C�A" visible=true]
�u���ꂵ���������ƂȂ�ĂȂ����낤�H�v[plc]


����グ��ƁA���ς�炸�̃L���ʂ������ɂ����āB[plc]


[shownametag name="���" visible=true]
�u���ɂ��������Ƃ���񂶂�Ȃ����H�v[plc]

[dis_all_chara]

���̊Ԃɂ��A���̓�l�͂��Ȃ��Ȃ��Ă����B[l][r]
�w����������������A���������낤�ȁB[plc]

@fadebgm time="500" volume="100"
[gaia_stand face="aisyu" size="l"]
�u�c�c������m�����Ƃ���ŁA�Ώ��̂��悤���Ȃ�����ȁv[plc]


���������āA�K�C�A�͏΂��B[plc]


[shownametag name="���" visible=true]�u�c�c�v[plc]

[dis_all_chara]

�w�����͂��O����x[plc]

����������΁A���������̂�������Ȃ��B[lr]
���A[plc]

@dis_all_chara_fade
@playse storage="isu"
[shownametag name="���" visible=true]
�u�����Ă���v[plc]


���������āA�����オ��B[l][r]
����A�����������ɁA�K�C�A�ɔw���������B[plc]

[gaia_stand face="ikariAri" size="l"]
[shownametag name="�K�C�A" visible=true]�u�Z��\�v[plc]


[shownametag name="���" visible=true]�u�c�c���O�́A����A�v[plc]

[dis_all_chara]
[shownametag name="���" visible=true]�u���͂��O��̒��Ԃ���ˁ[����ȁv[plc]


�Ղ�l�ɂ����ꂢ�āA[lr]
���͂��̂܂ܐH������ɂ����̂������B[plc]
@fadeoutbgm time="1000"
@JumpChapter storage="prologue_ep5.ks"

;[��z�ɓ���悤�ȉ��o]
;[������A�Ƃ��ǂ��o���W�[]
