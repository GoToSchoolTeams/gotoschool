*�y�@�\�n�}�N���z
;;[bust�摜�������Ȃ�plc]
[macro name="plk"]
[p]
[shownametag visible=false]
;[layopt layer=9 visible="false"]
[label]
[current layer="message1"]
[er]
[current layer="message0"]
[er]
[endmacro]
;;[�V�����V�[�����n�߂�}�N��]
;;storage=�w�i�摜, �摜�t�@�C����
[macro name="StartNewScene"]
[dis_all_chara]
[SetupMessageWindow hide_window="true"]
[fadeoutbgm time="1000"]
[strans storage="white"]
[strans storage="%storage"]
[kagtag strage="%storage"]
[endmacro]


*�y�V�t�H�[�}�b�g�����G�z
;;[��]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, ai;akire;bibiri;do;do_kuchiake;do_shizuka;doya;futsu;ki;metoji;metoji_kuchiake;odoroki;raku
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;nopos=�|�W�V������K�p���Ȃ�, �_���l
[macro name="najimi_stand"]
[showstandimage who="najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|true"]
[kagtag who="najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|true"]
[endmacro]
;;[����]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, ai;akire;bibiri;do;do_kuchiake;do_shizuka;doya;futsu;ki;metoji;metoji_kuchiake;odoroki;raku
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;nopos=�|�W�V������K�p���Ȃ�, �_���l
[macro name="najimi_face"]
[showbustup who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[����]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, ai;akire;do;doya;futsu;hohoho;ki;odoroki;raku
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
[macro name="naruse_stand"]
[showstandimage who="naruse" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="true"]
[kagtag who="naruse" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[������]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, ai;akire;do;doya;futsu;hohoho;ki;odoroki;raku
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
[macro name="naruse_face"]
[showbustup who="naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[��]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, ki;do;ai;raku;doya;odoroki;futsu;akire;naki;otyokuri
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;nopos=�|�W�V������K�p���Ȃ�, �_���l
[macro name="satori_stand"]
[showstandimage who="satori" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[endmacro]
;;[���]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, ki;do;ai;raku;doya;odoroki;futsu;akire;naki;otyokuri
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
[macro name="satori_face"]
[showbustup who="satori" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[����]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, kokotsu;kogeki;gekido;kokai;hitan;kyotan;shinrai;futsu
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;nopos=�|�W�V������K�p���Ȃ�, �_���l
[macro name="matsudo_stand"]
[showstandimage who="matsudo" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[endmacro]
;;[���ˊ�]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, kokotsu;kogeki;gekido;kokai;hitan;kyotan;shinrai;futsu
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
[macro name="matsudo_face"]
[showbustup who="matsudo" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[���q]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, magao
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;nopos=�|�W�V������K�p���Ȃ�, �_���l
[macro name="sakurako_stand"]
[showstandimage who="sakurako" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[endmacro]
;;[���q��]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, magao
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
[macro name="sakurako_face"]
[showbustup who="sakurako" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]


*�yold�����G�z
;;[old�y��]
;;face=�\�, magao;ki;do;ai;raku;jitome;keibetsu;kuno;niyaniya;odoroki;suttoboke
;;grayscale=�摜���O���[�X�P�[���ɂ��邩\nlayer , �_���l
[macro name="old_haruka_stand"]
[showstandimage who="haruka_old" pose="%pose|1"  face="%face|magao" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" grayscale="%grayscale|false"]
[kagtag who="haruka_old" pose="%pose|1"  face="%face|magao" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old�y����]
;;face=�\�, magao;ki;do;ai;raku;jitome;keibetsu;kuno;niyaniya;odoroki;suttoboke
[macro name="old_haruka_face"]
[showbustup who="haruka_old" face="%face|magao" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="haruka_old" face="%face|magao" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old��]
[macro name="old_najimi_stand"]
[showstandimage who="najimi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[kagtag who="najimi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[endmacro]
;;[old����]
[macro name="old_najimi_face"]
[showbustup who="najimi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[kagtag who="najimi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[endmacro]
;;[old����]
;;grayscale=�摜���O���[�X�P�[���ɂ��邩\nlayer , �_���l
[macro name="old_naruse_stand"]
[showstandimage who="naruse_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false" grayscale="%grayscale|false"]
[kagtag who="naruse_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[endmacro]
;;[old������]
[macro name="old_naruse_face"]
[showbustup who="naruse_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[kagtag who="naruse_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[endmacro]
;;[old�K�C�A]
;;face=�\�, egao;kangaeru;komari;normal;normal2;odoroki;serious
[macro name="old_gaia_stand"]
[showstandimage who="gaia_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old�K�C�A��]
;;face=�\�, egao;kangaeru;komari;normal;normal2;odoroki;serious
[macro name="old_gaia_face"]
[showbustup who="gaia_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old�}�b�V��]
;;face=�\�, doya;ikari;normal;odoroki
[macro name="old_mash_stand"]
[showstandimage who="mash_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old�}�b�V����]
;;face=�\�, doya;ikari;normal;odoroki
[macro name="old_mash_face"]
[showbustup who="mash_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[�I���e�K]
;;face=�\�, kanasii;normal;normal2;odoroki
[macro name="old_orutega_stand"]
[showstandimage who="orutega_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[�I���e�K��]
;;face=�\�, kanasii;normal;normal2;odoroki
[macro name="old_orutega_face"]
[showbustup who="orutega_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old�\��P]
;;face=�\�, futsu
[macro name="old_miyabi_stand"]
[showstandimage who="miyabi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old�\��P��]
;;face=�\�, futsu
[macro name="old_miyabi_face"]
[showbustup who="miyabi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old����]
;;face=�\�, futsu
[macro name="old_takahashi_stand"]
[showstandimage who="takahashi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old������]
;;face=�\�, futsu
[macro name="old_takahashi_face"]
[showbustup who="takahashi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
*

[return]
