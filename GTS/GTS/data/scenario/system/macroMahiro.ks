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
;;face=�\�, yorokobi;shinrai;fuan;hoshin;odoroki;aisyu;aisyu2;ikarinaki;ikarinaki2;akire;unzari;iradachi;ikari;kitai;futsu;metoji;metoji2;doya;bibiri;fukigen
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;namevisible=���O��\�����邩���Ȃ���, �_���l
[macro name="najimi_stand"]
[showstandimage who="najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="true"]
[shownametag name="��" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[����]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, yorokobi;shinrai;fuan;hoshin;odoroki;aisyu;aisyu2;ikari;ikarinaki;ikarinaki2;akire;unzari;iradachi;kitai;futsu;metoji;metoji2;doya;bibiri;gekido;keibetsu;ai;kyofu;kyozetsu;hitan;kokai;seido
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;namevisible=���O��\�����邩���Ȃ���, �_���l
[macro name="najimi_face"]
[showbustup who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="��" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[��]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, yorokobi;shinrai;naki;hoshin;odoroki;kanashimi;akire;unzari;iradachi;kitai;fuan;futsu;futsu2
;;size=�T�C�Y, s;m;l
;;nobust=�o�X�g�摜���o���Ȃ�, �_���l
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, l;c;r
;;layer=�\���������O�i���C���ԍ�, �O�i���C��;0;1;2
;;page=���\n�w�肵�Ȃ��ꍇ��back, fore;back
;;time=�g�����W�V��������\n�f�t�H���g��500, �~���b����
;;notrans=�g�����W�V�����̗L��, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;namevisible=���O��\�����邩���Ȃ���, �_���l
[macro name="satori_stand"]
[showstandimage who="satori" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[shownametag name="��" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[���]
;;pose=�|�[�Y�ԍ�, 1;2;3
;;face=�\�, yorokobi;shinrai;osore;hoshin;odoroki;kanashimi;akire;unzari;iradachi;kitai;futsu;futsu2;hitan;fuan;doya;otyokuri;ai
;;tere=�Ƃ�Ă邩�ǂ���, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;namevisible=���O��\�����邩���Ȃ���, �_���l
[macro name="satori_face"]
[showbustup who="satori" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="��" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]


;;�}�N���̏I��
[return]
