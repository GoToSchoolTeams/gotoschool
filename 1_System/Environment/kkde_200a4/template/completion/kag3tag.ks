;kag3tag.ks
;KKDE KAG3���͕⊮��`�t�@�C�� KAG 3.30 Rev.2��

;;[���C������] �A�j���[�V�����̊J�n
;;�A�j���[�V�������A�w�肵���Z�O�����g�ŁA�w�肵�����x������J�n���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�A�j���[�V�������J�n���郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;seg=[�K�{] �Z�O�����g\n���̑����Ŏw�肵���Z�O�����g�ԍ��ŃA�j���[�V�������J�n���܂�, 1�ȏ�̒l
;;target=[�K�{] �J�n���x��\n�A�j���[�V�������J�n���邽�߂� asd �t�@�C�����̃��x�����w�肵�܂�, ASD���x����
[macro name="animstart"]
[kagtag cond=%cond layer=%layer page=%page seg=%seg target=%target]
[endmacro]

;;[���C������] �A�j���[�V�����̒�~
;;�C�ӂ̃Z�O�����g�̃A�j���[�V�������~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�A�j���[�V�������~���郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;seg=[�K�{] �Z�O�����g\n���̑����Ŏw�肵���Z�O�����g�ԍ��̃A�j���[�V�������~���܂�, 1�ȏ�̒l
[macro name="animstop"]
[kagtag cond=%cond layer=%layer page=%page seg=%seg]
[endmacro]

;;[�V�X�e������] �����E�F�C�g
;;����̕����̌�Ɏw�蕶�������̃E�F�C�g�����邱�Ƃ��ł��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;enabled=�����E�F�C�g��L���ɂ��邩\n�����E�F�C�g��L���ɂ���ꍇ�� true ���A�����ɂ���ɂ� false ���w�肵�܂�, �_���l
;;ch=�����E�F�C�g�����镶��\n�����E�F�C�g�����镶�����w�肵�܂�, �C�ӕ�����
;;time=�E�F�C�g\n�����E�F�C�g�����鎞�Ԃ𕶎����P�ʂŎw�肵�܂�, 1�ȏ�̒l
[macro name="autowc"]
[kagtag cond=%cond enabled=%enabled ch=%ch time=%time]
[endmacro]

;;[���C������] ���C�����̕\�y�[�W���痠�y�[�W�ւ̃R�s�[
;;�w�肵�����C���A���邢�͂��ׂẴ��C���̏����A�\�y�[�W���痠�y�[�W�ɃR�s�[���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=�Ώۃ��C��\n�ΏۂƂȂ郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��;���b�Z�[�W���C��
[macro name="backlay"]
[kagtag cond=%cond layer=%layer]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �̐ݒ�
;;BGM �̂��܂��܂Ȑݒ��ύX���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;volume=����\nBGM �̉��ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
;;gvolume=��批��\nBGM �̑�批�ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
[macro name="bgmopt"]
[kagtag cond=%cond volume=%volume gvolume=%gvolume]
[endmacro]

;;[���x���E�W�����v����] �O���t�B�J���{�^��
;;���݂̃��b�Z�[�W���C����� link �^�O�Ɠ��l�Ƀ����N���쐬���܂����A�摜��p�����{�^�����쐬���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;graphic=[�K�{] �{�^���ɂ���摜\n�{�^���ɂ���摜���w�肵�܂�, �摜�t�@�C����
;;graphickey=�摜�̃J���[�L�[\n�{�^���ɂ���摜�̃J���[�L�[���w�肵�܂�, RGB�l;256�l;adapt
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�W�����v��̃��x�����w�肵�܂�, ���x����
;;recthit=��`�œ����蔻����s�����ǂ���\n��`�œ����蔻����s�����ǂ������w�肵�܂�, �_���l
;;exp=TJS ��\n�N���b�N���ꂽ�Ƃ��Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;hint=�c�[���`�b�v�q���g\n�����N��I�����A�}�E�X�J�[�\����Î~�������Ƃ��ɕ\�������c�[���`�b�v�q���g���w�肵�܂�, �C�ӕ�����
;;onenter=�}�E�X�i����\n�{�^�����Ƀ}�E�X�J�[�\���������Ă����Ƃ��Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;onleave=�}�E�X�ޏo��\n�{�^��������}�E�X�J�[�\�����o�Ă��������Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;countpage=���̃W�����v���u�ǂ񂾁v�ƌ��Ȃ���\n�{�^����I�����đ��̃��x���Ɉڍs����Ƃ��ɁA���̃����N�̂���ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂�, �_���l
;;clickse=�N���b�N���̌��ʉ�\n�N���b�N���ꂽ�Ƃ��ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;clicksebuf=�N���b�N���̌��ʉ��̃o�b�t�@�ԍ�\nclickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;enterse=�}�E�X�i�����̌��ʉ�\n�}�E�X���i�������Ƃ��ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;entersebuf=�}�E�X�i�����̌��ʉ��̃o�b�t�@�ԍ�\nenterse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;leavese=�}�E�X�ޏo���̌��ʉ�\n�}�E�X���ޏo�����Ƃ��ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;leavesebuf=�}�E�X�ޏo���̌��ʉ��̃o�b�t�@�ԍ�\nleavese �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
[macro name="button"]
[kagtag cond=%cond graphic=%graphic graphickey=%graphickey storage=%storage target=%target recthit=%recthit exp=%exp hint=%hint onenter=%onenter onleave=%onleave countpage=%countpage clickse=%clickse clicksebuf=%clicksebuf enterse=%enterse entersebuf=%entersebuf leavese=%leavese leavesebuf=%leavesebuf]
[endmacro]

;;[���x���E�W�����v����] �T�u���[�`���̌Ăяo��
;;�w�肳�ꂽ�V�i���I�t�@�C���̎w�肳�ꂽ���x���Ŏ������T�u���[�`�����Ăяo���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�V�i���I�t�@�C����\n�Ăяo�������T�u���[�`���̂���̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�Ăяo���T�u���[�`���̃��x�����w�肵�܂�, ���x����
;;countpage=���̃W�����v���u�ǂ񂾁v�ƌ��Ȃ���\n���̃��x���Ɉڍs����Ƃ��ɁA���̃^�O�̂���ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂�, �_���l
[macro name="call"]
[kagtag cond=%cond storage=%storage target=%target countpage=%countpage]
[endmacro]

;;[���b�Z�[�W����] �u�����I�ɓǂݐi�ށv�̉���
;;�u�����I�ɓǂݐi�ށv�������I�ɉ������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="cancelautomode"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W����] �X�L�b�v�̉���
;;�X�L�b�v��Ԃ̉������s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="cancelskip"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �s���I�h�C�x���g�̉���
;;videoevent�^�O�Őݒ肵���s���I�h�C�x���g���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="cancelvideoevent"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�̃Z�O�����g���[�v�Đ��̉���
;;videosegloop�^�O�Őݒ肵���Z�O�����g���[�v���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="cancelvideosegloop"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[���x���E�W�����v����] �N���b�N�҂�����
;;click �Ō��݂̃��b�Z�[�W���C���ɑ΂��ēo�^���ꂽ�N���b�N�҂����������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="cclick"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W����] ������\������
;;������ current �^�O�Ŏw�肵�����b�Z�[�W���C���ɕ\�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;text=[�K�{] �\�����镶��\n�����Ŏw�肵���������\������܂�, �C�ӕ�����
[macro name="ch"]
[kagtag cond=%cond text=%text]
[endmacro]

;;[�t�H�[������] �`�F�b�N�{�b�N�X�̍쐬
;;���ݑ���ΏۂɂȂ��Ă��郁�b�Z�[�W���C���́A���݂̈ʒu�ɁA�`�F�b�N�{�b�N�X���쐬���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] �ϐ���\n�`�F�b�N�{�b�N�X�̏�Ԃ��i�[����ϐ����w�肵�܂�, �C�ӕ�����
;;bgcolor=�w�i�F\n�w�i�F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;opacity=�w�i�F�̕s�����x\nbgcolor �����Ŏw�肵���w�i�F�̕s�����x�� 0 �` 255 �Ŏw�肵�܂�, 256�l
;;color=�`�F�b�N�}�[�N�̐F\n�`�F�b�N�}�[�N�̐F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
[macro name="checkbox"]
[kagtag cond=%cond name=%name bgcolor=%bgcolor opacity=%opacity color=%color]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �̃��x���ʉߏ����̉���
;;setbgmlabel�̎w����N���A���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="clearbgmlabel"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �̒�~�����̉���
;;setbgmstop�̎w����N���A���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="clearbgmstop"]
[kagtag cond=%cond]
[endmacro]

;;[�V�X�e������] �V�X�e���ϐ��̑S����
;;�V�X�e���ϐ������ׂď������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="clearsysvar"]
[kagtag cond=%cond]
[endmacro]

;;[�ϐ��ETJS ����] �Q�[���ϐ��̑S����
;;�Q�[���ϐ������ׂď������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="clearvar"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I���C������
;;videolayer�^�O�Őݒ肵�����C�����������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;channel=[�K�{] �`�����l��\n���C���`�惂�[�h�ɂ��`��������������`�����l�����w�肵�܂�, 1;2
[macro name="clearvideolayer"]
[kagtag cond=%cond slot=%slot channel=%channel]
[endmacro]

;;[���x���E�W�����v����] �N���b�N�҂��W�����v
;;���݂̃��b�Z�[�W���C���ɑ΂��ăN���b�N�҂���o�^���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�W�����v��̃��x�����w�肵�܂�, ���x����
;;exp=TJS ��\n�N���b�N���Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;se=�N���b�N���̌��ʉ�\n�N���b�N���ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;sebuf=�N���b�N���̌��ʉ��̃o�b�t�@�ԍ�\nclickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
[macro name="click"]
[kagtag cond=%cond storage=%storage target=%target exp=%exp se=%se sebuf=%sebuf]
[endmacro]

;;[�V�X�e������] �N���b�N�X�L�b�v�̐ݒ�
;;�N���b�N�X�L�b�v�Ƃ́A���b�Z�[�W�\���r���ŉ�ʂ��N���b�N���邱�Ƃɂ��A�g�����W�V�����⎩���ړ��𒆒f������A�N���b�N�҂��܂ň�C�ɕ��͂�\������@�\�ł�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;enabled=[�K�{] �L���E�����̐ݒ�\n�N���b�N�X�L�b�v�@�\��L���ɂ���ꍇ�� true�A�����ɂ���ꍇ��false ���w�肵�܂�, �_���l
[macro name="clickskip"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[�V�X�e������] �E�B���h�E�����
;;�E�B���h�E����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;ask=�m�F�����邩\ntrue ���w�肷��ƁA�I�����邩�ǂ����̊m�F�����܂�, �_���l
[macro name="close"]
[kagtag cond=%cond ask=%ask]
[endmacro]

;;[���b�Z�[�W����] ���ׂẴ��b�Z�[�W���C���̃N���A
;;���ׂẴ��b�Z�[�W���C���̃N���A���s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="cm"]
[kagtag cond=%cond]
[endmacro]

;;[�t�H�[������] �t�H�[�����e�̊m��
;;���ݑ���ΏۂɂȂ��Ă��郁�b�Z�[�W���C����̂��ׂẴG�f�B�b�g��`�F�b�N�{�b�N�X�Ȃǂ́u�t�H�[���v�f�v�̓��e���m�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="commit"]
[kagtag cond=%cond]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̃R�s�[
;;��t���[�Z�[�u���[�h�ɂ����āAfrom �����Ŏw�肳�ꂽ�ԍ��̞x���� to �����Ŏw�肳�ꂽ�ԍ��̞x�֓��e�̃R�s�[���s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;from=[�K�{] �R�s�[���̞x�ԍ�\n�R�s�[���̞x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
;;to=[�K�{] �R�s�[��̞x�ԍ�\n�R�s�[��̞x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
[macro name="copybookmark"]
[kagtag cond=%cond from=%from to=%to]
[endmacro]

;;[���C������] ���C�����̃R�s�[
;;�w�肵�����C���̏����R�s�[���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;srclayer=[�K�{] �R�s�[�����C��\n�R�s�[���ƂȂ郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��;���b�Z�[�W���C��
;;destlayer=[�K�{] �R�s�[�惌�C��\n�R�s�[��ƂȂ郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��;���b�Z�[�W���C��
;;srcpage=�R�s�[���y�[�W\n�R�s�[���ƂȂ�y�[�W���w�肵�܂�, ���C���[�y�[�W
;;destpage=�R�s�[��y�[�W\n�R�s�[��ƂȂ�y�[�W���w�肵�܂�, ���C���[�y�[�W
[macro name="copylay"]
[kagtag cond=%cond srclayer=%srclayer destlayer=%destlayer srcpage=%srcpage destpage=%destpage]
[endmacro]

;;[���b�Z�[�W����] ���b�Z�[�W���C���̃��Z�b�g
;;���b�Z�[�W���C�������Z�b�g���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="ct"]
[kagtag cond=%cond]
[endmacro]

;;[���x���E�W�����v����] �^�C���A�E�g�҂�����
;;timeout �Ō��݂̃��b�Z�[�W���C���ɑ΂��ēo�^���ꂽ�^�C���A�E�g���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="ctimeout"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W����] ����Ώۂ̃��b�Z�[�W���C���̎w��
;;����ΏۂƂ��郁�b�Z�[�W���C�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=���C����\n����ΏۂƂ��郁�b�Z�[�W���C�����w�肵�܂�, ���b�Z�[�W���C��
;;page=�y�[�W\n�\(fore)��ʂ̃��C����ΏۂƂ��邩�A��(back)��ʂ̃��C����ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;withback=���y�[�W�ɂ��`�悷�邩\n�\�y�[�W���Ώۂ̏ꍇ�A���y�[�W�ɂ����l�ɕ�����`�悷�邩���w�肵�܂�, �_���l
[macro name="current"]
[kagtag cond=%cond layer=%layer page=%page withback=%withback]
[endmacro]

;;[�V�X�e������] �}�E�X�J�[�\���̕ύX
;;�}�E�X�J�[�\����ύX���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;default=�ʏ�̃}�E�X�J�[�\��\n�ʏ�̃}�E�X�J�[�\�����w�肵�܂�, �J�[�\���萔;�J�[�\���t�@�C����
;;pointed=�|�C���g�������̃}�E�X�J�[�\��\n�����N��{�^�����|�C���g�����Ƃ��̃}�E�X�J�[�\�����w�肵�܂�, �J�[�\���萔;�J�[�\���t�@�C����
;;click=�N���b�N�҂��̃}�E�X�J�[�\��\n�N���b�N�҂��̃}�E�X�J�[�\�����w�肵�܂�, �J�[�\���萔;�J�[�\���t�@�C����
;;draggable=�h���b�O�\�̎��̃}�E�X�J�[�\��\nposition �^�O�� draggable=true �Ƃ����Ƃ��ɁA�}�E�X�����b�Z�[�W���C�����h���b�O�\�Ȉʒu�ɗ����Ƃ��ɕ\�������}�E�X�J�[�\�����w�肵�܂�, �J�[�\���萔;�J�[�\���t�@�C����
[macro name="cursor"]
[kagtag cond=%cond default=%default pointed=%pointed click=%click draggable=%draggable]
[endmacro]

;;[���x���E�W�����v����] �z�C�[���҂�����
;;wheel �Ō��݂̃��b�Z�[�W���C���ɑ΂��ēo�^���ꂽ�z�C�[���҂����������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="cwheel"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W����] �f�t�H���g�̕��������ݒ�
;;���ݑ���Ώۂ̃��b�Z�[�W���C���ɑ΂���A�f�t�H���g�̕����������w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;size=�����T�C�Y\n�f�t�H���g�̕����T�C�Y���w�肵�܂�, 1�ȏ�̒l
;;face=�t�H���g��\n�f�t�H���g�̃t�H���g�����w�肵�܂�, �t�H���g��;user
;;color=�����F\n�f�t�H���g�̕����F���w�肵�܂�, RGB�l
;;rubysize=���r�̃T�C�Y\n�f�t�H���g�̃��r�̕����̃T�C�Y���w�肵�܂�, 1�ȏ�̒l
;;rubyoffset=���r�̕\���ʒu\n�f�t�H���g�̃��r�̕\���I�t�Z�b�g���w�肵�܂�, 1�ȏ�̒l
;;shadow=�e��\�����邩\n�f�t�H���g�ŕ����ɉe�����邩���w�肵�܂�, �_���l
;;edge=�ܕ����ɂ��邩\n�f�t�H���g�ŕ�����ܕ��� ( ����蕶�� ) �ɂ��邩���w�肵�܂�, �_���l
;;edgecolor=�ܕ����̑܂̐F\n�f�t�H���g�̕����̑܂̐F���w�肵�܂�, RGB�l
;;shadowcolor=�e�̐F\n�f�t�H���g�̉e�̐F���w�肵�܂�, RGB�l
;;bold=�������ɂ��邩\n�f�t�H���g�ŕ����𑾕����ɂ��邩���w�肵�܂�, �_���l
[macro name="deffont"]
[kagtag cond=%cond size=%size face=%face color=%color rubysize=%rubysize rubyoffset=%rubyoffset shadow=%shadow edge=%edge edgecolor=%edgecolor shadowcolor=%shadowcolor bold=%bold]
[endmacro]

;;[���b�Z�[�W����] �f�t�H���g�̃X�^�C���̐ݒ�
;;���ݑ���Ώۂ̃��b�Z�[�W���C���ɑ΂���A�f�t�H���g�̍s�̃X�^�C�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;linespacing=�s��\n�f�t�H���g�̍s�Ԃ��w�肵�܂�, 1�ȏ�̒l
;;pitch=����\n�f�t�H���g�̎��Ԃ̃I�t�Z�b�g�� pixel �P�ʂŎw�肵�܂�, 1�ȏ�̒l
;;linesize=�����T�C�Y�̗\��T�C�Y\n�f�t�H���g�̍s�̕����w�肵�܂�, 1�ȏ�̒l
[macro name="defstyle"]
[kagtag cond=%cond linespacing=%linespacing pitch=%pitch linesize=%linesize]
[endmacro]

;;[���b�Z�[�W����] �����̕\�����x�̐ݒ�
;;�����̕\�����x���w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;speed=[�K�{] �����E�F�C�g\n"nowait" ���w�肷��ƁA�����̕\���ɃE�F�C�g���������ɁA��C�ɕ������\������܂�, nowait;user;�~���b����
[macro name="delay"]
[kagtag cond=%cond speed=%speed]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̋@�\�̈ꎞ�I�Ȏg�p�s��
;;�u�x���͂��ށv�̋@�\���ꎞ�I�Ɏg�p�s�\�ɂ��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;store=�u�x���͂��ށv�̋@�\\n�u�x���͂��ށv�̋@�\���g�p�s�ɂ��邩���w�肵�܂�, �_���l
;;restore=�u�x�����ǂ�v�̋@�\\n�u�x�����ǂ�v�̋@�\���g�p�s�ɂ��邩���w�肵�܂�, �_���l
[macro name="disablestore"]
[kagtag cond=%cond store=%store restore=%restore]
[endmacro]

;;[�t�H�[������] �P��s�G�f�B�b�g�̍쐬
;;���ݑ���ΏۂɂȂ��Ă��郁�b�Z�[�W���C���́A���݂̈ʒu�ɁA���݂̃t�H���g�ŁA��s�݂̂̕������ҏW�ł�����͗�(�G�f�B�b�g)���쐬���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] �ϐ���\n���͂�����������i�[����ϐ����w�肵�܂�, �C�ӕ�����
;;length=��\n�P��s�G�f�B�b�g�̕� ( �c�����̏ꍇ�͍��� ) ���s�N�Z���P�ʂŎw�肵�܂�, 1�ȏ�̒l
;;bgcolor=�w�i�F\n�w�i�F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;opacity=�w�i�F�̕s�����x\nbgcolor �����Ŏw�肵���w�i�F�̕s�����x�� 0 �` 255 �Ŏw�肵�܂�, 256�l
;;color=�����F\n�����F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;maxchars=�ő啶����\n���͂ł���ő啶�������w�肵�܂�, 0�ȏ�̒l
[macro name="edit"]
[kagtag cond=%cond name=%name length=%length bgcolor=%bgcolor opacity=%opacity color=%color maxchars=%maxchars]
[endmacro]

;;[�ϐ��ETJS ����] if �̒��g�����s����Ȃ������Ƃ��Ɏ��s
;;if �^�O�������� elsif �^�O�� endif �^�O�̊Ԃŗp�����܂�
[macro name="else"]
[kagtag]
[endmacro]

;;[�ϐ��ETJS ����] ����܂ł� if �̒��g�����s����Ă��Ȃ������Ƃ��ɁA�����t���Ŏ��s
;;if �^�O�� endif �^�O�̊Ԃŗp�����܂�
;;exp=[�K�{] TJS ��\n�]������ TJS �����w�肵�܂�, TJS��
[macro name="elsif"]
[kagtag exp=%exp]
[endmacro]

;;[�ϐ��ETJS ����] ���]�����ʂ̖��ߍ���
;;exp �Ŏ����ꂽ����]��(���s)���A���̌��ʂ𖄂ߍ��݂܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;exp=[�K�{] TJS ��\n�]������ TJS �����w�肵�܂�, TJS��
[macro name="emb"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[���b�Z�[�W���𑀍�] ���b�Z�[�W�����A�N�V�����̏I��
;;hact �^�O�Őݒ肵�����b�Z�[�W�����A�N�V�������I��(�ݒ���N���A)���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="endhact"]
[kagtag cond=%cond]
[endmacro]

;;[�ϐ��ETJS ����] �����ɂ��V�i���I�����s(�̏I��)
;;if �^�O�̏I���������܂�
[macro name="endif"]
[kagtag]
[endmacro]

;;[�ϐ��ETJS ����] �����ɂ��V�i���I�𖳎�(�̏I��)
;;ignore �^�O�̏I���������܂�
[macro name="endignore"]
[kagtag]
[endmacro]

;;[���b�Z�[�W����] �C���f���g�̉���
;;indent �^�O�Őݒ肵���C���f���g���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="endindent"]
[kagtag cond=%cond]
[endmacro]

;;[���x���E�W�����v����] �n�C�p�[�����N(�̏I��)
;;link �^�O�ŊJ�n�����n�C�p�[�����N�̏I���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="endlink"]
[kagtag cond=%cond]
[endmacro]

;;[�}�N������] �}�N���̋L�q(�̏I��)
;;macro �^�O�ŋL�q���J�n�����}�N���̏I���������܂�
[macro name="endmacro"]
[kagtag]
[endmacro]

;;[���b�Z�[�W����] �����\���m�[�E�F�C�g(�̏I��)
;;�����̕\�����x���Anowait �^�O�Ńm�[�E�F�C�g�ɂ��钼�O�̕����\�����x�ɖ߂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="endnowait"]
[kagtag cond=%cond]
[endmacro]

;;[�ϐ��ETJS ����] TJS �X�N���v�g�̋L�q(�̏I��)
;;[iscript] �ŋL�q�����X�N���v�g�̋L�q�̏I���������܂�
[macro name="endscript"]
[kagtag]
[endmacro]

;;[���b�Z�[�W����] ���b�Z�[�W���C���̕����̏���
;;���݂̑���Ώۂ̃��b�Z�[�W���C����̕������������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="er"]
[kagtag cond=%cond]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̏���
;;��t���[�Z�[�u���[�h�ɂ����āA�w�肵���ԍ��̞x���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;place=��������x�̔ԍ�\n�x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
[macro name="erasebookmark"]
[kagtag cond=%cond place=%place]
[endmacro]

;;[�}�N������] �}�N���̏���
;;macro �^�O�ŋL�q�����}�N�����������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] �^�O��\n��������^�O���w�肵�܂�, �}�N����
[macro name="erasemacro"]
[kagtag cond=%cond name=%name]
[endmacro]

;;[�ϐ��ETJS ����] ���̕]��
;;exp �Ŏ����ꂽ����]�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;exp=[�K�{] TJS ��\n�]������ TJS �����w�肵�܂�, TJS��
[macro name="eval"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM�̃t�F�[�h
;;���݉��t���� BGM ���w�艹�ʂ܂Ńt�F�[�h���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;volume=[�K�{] ����\n�t�F�[�h��ɓ��B������ BGM �̉��ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
;;time=[�K�{] �t�F�[�h����\n�t�F�[�h���s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂�, �~���b����
[macro name="fadebgm"]
[kagtag cond=%cond volume=%volume time=%time]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �t�F�[�h�C�����Ȃ����BGM�Đ��J�n
;;BGM �t�@�C�������t���܂����A�Ȃ̐擪�Ńt�F�[�h�C�����s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] �Đ������\n���t���� BGM �t�@�C�����܂��� CD �g���b�N�ԍ����w�肵�܂�, BGM�t�@�C����;1�ȏ�̒l
;;start=BGM �J�n�ʒu�w��\n���[�v�`���[�i�Ŏw�肵�����x���� BGM �̍Đ��J�n�ʒu���w�肵�܂�, 0�ȏ�̒l
;;loop=���[�v���邩\nBGM �����[�v���邩���w�肵�܂�, �_���l
;;time=[�K�{] �t�F�[�h����\n�t�F�[�h�C�����s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂�, �~���b����
[macro name="fadeinbgm"]
[kagtag cond=%cond storage=%storage start=%start loop=%loop time=%time]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��̃t�F�[�h�C���Đ�
;;���ʉ����t�F�[�h�C�����Ȃ���Đ����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n���ʉ����Đ�����o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;storage=[�K�{] ���ʉ��t�@�C����\n���t������ʉ��t�@�C�������w�肵�܂�, ���ʉ��t�@�C����
;;start=SE �J�n�ʒu�w��\n���[�v�`���[�i�Ŏw�肵�����x���� SE �̍Đ��J�n�ʒu���w�肵�܂�, 0�ȏ�̒l
;;time=[�K�{] �t�F�[�h�C������\n�t�F�[�h�C�����s���Ă��鎞�Ԃ��~���b�P�ʂŎw�肵�܂�, �~���b����
;;loop=�J��Ԃ��Đ����s����\n���ʉ����J��Ԃ��Đ����邩�ǂ������w�肵�܂�, �_���l
[macro name="fadeinse"]
[kagtag cond=%cond buf=%buf storage=%storage start=%start time=%time loop=%loop]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM�̃t�F�[�h�A�E�g
;;���݉��t���� BGM ���t�F�[�h�A�E�g���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;time=[�K�{] �t�F�[�h����\n�t�F�[�h�A�E�g���s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂�, �~���b����
[macro name="fadeoutbgm"]
[kagtag cond=%cond time=%time]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��̃t�F�[�h�A�E�g
;;���ʉ����t�F�[�h�A�E�g���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n���ʉ����t�F�[�h�A�E�g����o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;time=[�K�{] �t�F�[�h�A�E�g����\n�t�F�[�h�A�E�g���s���Ă��鎞�Ԃ��~���b�P�ʂŎw�肵�܂�, �~���b����
[macro name="fadeoutse"]
[kagtag cond=%cond buf=%buf time=%time]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM ���t�̃t�F�[�h�A�E�g���Ȃ���̈ꎞ��~
;;BGM ���t���t�F�[�h�A�E�g���Ȃ���ꎞ��~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;time=[�K�{] �t�F�[�h����\n�t�F�[�h�A�E�g���s���Ă��鎞�Ԃ� ms �P�ʂŎw�肵�܂�, �~���b����
[macro name="fadepausebgm"]
[kagtag cond=%cond time=%time]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��̃t�F�[�h
;;���ʉ����w��̓��B���ʂ܂Ńt�F�[�h���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n���ʉ����t�F�[�h����o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;time=[�K�{] �t�F�[�h����\n�t�F�[�h���s���Ă��鎞�Ԃ��~���b�P�ʂŎw�肵�܂�, �~���b����
;;volume=[�K�{] ���B����\n�t�F�[�h�̓��B���ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
[macro name="fadese"]
[kagtag cond=%cond buf=%buf time=%time volume=%volume]
[endmacro]

;;[���b�Z�[�W����] ���������ݒ�
;;�����̗l�X�ȑ������w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;size=�����T�C�Y\n�����T�C�Y�� pixel �P�ʂŎw�肵�܂�, 1�ȏ�̒l;default
;;face=�t�H���g��\n�t�H���g�����w�肵�܂�, �t�H���g��;default;user
;;color=�����F\n�����F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l;default
;;italic=�Α̂ɂ��邩\n�������Α̂ɂ��邩�ǂ������w�肵�܂�, �_���l;default
;;rubysize=���r�̃T�C�Y\n���r(�ǂ݉���)�̕����̃T�C�Y�� pixel �P�ʂŎw�肵�܂�, 1�ȏ�̒l;default
;;rubyoffset=���r�̕\���ʒu\n���r�̕\���I�t�Z�b�g�� pixel �P�ʂŎw�肵�܂�, 1�ȏ�̒l;default
;;shadow=�e��\�����邩\n�����ɉe�����邩���w�肵�܂�, �_���l;default
;;edge=�ܕ����ɂ��邩\n������ܕ��� ( ����蕶�� ) �ɂ��邩���w�肵�܂�, �_���l;default
;;edgecolor=�ܕ����̑܂̐F\n�����̑܂̐F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l;default
;;shadowcolor=�e�̐F\n�e�̐F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l;default
;;bold=�������ɂ��邩\n�����𑾕����ɂ��邩���w�肵�܂�, �_���l;default
[macro name="font"]
[kagtag cond=%cond size=%size face=%face color=%color italic=%italic rubysize=%rubysize rubyoffset=%rubyoffset shadow=%shadow edge=%edge edgecolor=%edgecolor shadowcolor=%shadowcolor bold=%bold]
[endmacro]

;;[���C������] ���C���摜�̉��
;;���C���̉摜��������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�摜��������郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
[macro name="freeimage"]
[kagtag cond=%cond layer=%layer page=%page]
[endmacro]

;;[���b�Z�[�W����] �N���b�N�҂��L���̎w��
;;�N���b�N�҂��ɗp����摜���w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;line=�s���N���b�N�҂��L��\n�s���N���b�N�҂��L���摜�̃t�@�C�������w�肵�܂�, �摜�t�@�C����
;;linekey=�s���N���b�N�҂��L���̃J���[�L�[\n�J���[�L�[���w�肵�܂�, RGB�l;256�l;adapt
;;page=���y�[�W�N���b�N�҂��L��\n���y�[�W�҂��L���摜�̃t�@�C�������w�肵�܂�, �摜�t�@�C����
;;pagekey=���y�[�W�N���b�N�҂��L���̃J���[�L�[\n�J���[�L�[���w�肵�܂�, RGB�l;256�l;adapt
;;fix=�L���\���ʒu���Œ肷�邩\n�L���\���ʒu���w��ʒu�ɌŒ肷�邩�ǂ������w�肵�܂�, �_���l
;;left=�L���\���ʒu���Œ肷�邩\nfix ������ true �ɂ����Ƃ��ɋL����\������ʒu�̂����A���[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;top=�L���\���ʒu���Œ肷�邩\nfix ������ true �ɂ����Ƃ��ɋL����\������ʒu�̂����A��[�ʒu���w�肵�܂�, 0�ȏ�̒l
[macro name="glyph"]
[kagtag cond=%cond line=%line linekey=%linekey page=%page pagekey=%pagekey fix=%fix left=%left top=%top]
[endmacro]

;;[�x�E�ʉߋL�^����] �O�ɖ߂�
;;���j���[���� �V�X�e��|�O�ɖ߂� ��I�������Ƃ��Ɠ�����������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;ask=�m�F�����邩\ntrue ���w�肷��ƁA�O�ɖ߂邩�ǂ����̊m�F�����܂�, �_���l
[macro name="goback"]
[kagtag cond=%cond ask=%ask]
[endmacro]

;;[�x�E�ʉߋL�^����] �ŏ��ɖ߂�
;;startanchor �^�O�Ŏw�肳�ꂽ�ꏊ�ɖ߂�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;ask=�m�F�����邩\ntrue ���w�肷��ƁA�ŏ��ɖ߂邩�ǂ����̊m�F�����܂�, �_���l
[macro name="gotostart"]
[kagtag cond=%cond ask=%ask]
[endmacro]

;;[���b�Z�[�W����] �C�����C���摜�\��
;;�C�ӂ̉摜�����b�Z�[�W���C���̕����ʒu�ɕ\�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] �摜�t�@�C����\n�\�����������摜�t�@�C�������w�肵�܂�, �摜�t�@�C����
;;key=�J���[�L�[\n�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂�, RGB�l;256�l;adapt
;;char=�����Ƃ��ď������邩\ntrue ���w�肷��ƁA�摜��font �^�O�Ŏw�肵���F�A�e�A�ܕ����̏�Ԃ��A�������l�ɕ\������܂�, �_���l
;;alt=��֕���\n���b�Z�[�W�����ɕ\������A���̉摜�̑�֕������w�肵�܂�, �C�ӕ�����
[macro name="graph"]
[kagtag cond=%cond storage=%storage key=%key char=%char alt=%alt]
[endmacro]

;;[���b�Z�[�W���𑀍�] ���b�Z�[�W�����A�N�V����
;;���b�Z�[�W�����ɑ΂���A�N�V�������w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;exp=[�K�{] ���s���鎮\n���b�Z�[�W���N���b�N�����Ƃ��Ɏ��s���� TJS �����w�肵�܂�, TJS��
[macro name="hact"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[���b�Z�[�W����] �c������\������
;;�c���� ( �c�������ɎZ�p�����Q���������悤�ȏꍇ�ɂ��������������ɂ��鏑���� ) �ŕ�����\�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;text=[�K�{] �\�����镶��\n�����Ŏw�肵�����������������������ŕ\������܂�, �C�ӕ�����
;;expand=�s�Ԃ��g�����邩\ntrue ���w�肷��ƁA�����c������`�悵�悤�Ƃ����Ƃ��ɍs�Ԃ������I�Ɋg�����܂�, �_���l
[macro name="hch"]
[kagtag cond=%cond text=%text expand=%expand]
[endmacro]

;;[�V�X�e������] ���b�Z�[�W������
;;���b�Z�[�W���C�����ꎞ�I�ɉB���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="hidemessage"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W���𑀍�] ���b�Z�[�W�����̐ݒ�
;;���b�Z�[�W�����̋@�\�Ɋւ���ݒ���s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;output=�������̏o��\n���b�Z�[�W�����ւ̕������̏o�͂����邩�ǂ������w�肵�܂�, �_���l
;;enabled=���b�Z�[�W�����̕\���\�E�s�\\n���b�Z�[�W������\���\���ǂ������w�肵�܂�, �_���l
[macro name="history"]
[kagtag cond=%cond output=%output enabled=%enabled]
[endmacro]

;;[���b�Z�[�W���𑀍�] ���b�Z�[�W�����̉��s/���y�[�W
;;���b�Z�[�W���������s�܂��͉��y�[�W���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;repage=���y�[�W���ǂ���\n���y�[�W���s�����ǂ������w�肵�܂�, �_���l
[macro name="hr"]
[kagtag cond=%cond repage=%repage]
[endmacro]

;;[�ϐ��ETJS ����] �����ɂ��V�i���I�����s
;;����]�����A���̌��ʂ� true ( �܂��� 0 �ȊO ) �Ȃ�΁Aelsif�Eelse�Eendif �̂����ꂩ�܂łɂ��镶�͂�^�O�����s���A�����łȂ��ꍇ�͖������܂�
;;exp=[�K�{] TJS ��\n�]������ TJS �����w�肵�܂�, TJS��
[macro name="if"]
[kagtag exp=%exp]
[endmacro]

;;[�ϐ��ETJS ����] �����ɂ��V�i���I�𖳎�
;;����]�����A���̌��ʂ� true ( �܂��� 0 �ȊO ) �Ȃ�΁Aendignore �^�O�܂łɂ��镶�͂�^�O����������܂�
;;exp=[�K�{] TJS ��\n�]������ TJS �����w�肵�܂�, TJS��
[macro name="ignore"]
[kagtag exp=%exp]
[endmacro]

;;[���C������] �摜�̓ǂݍ���
;;�摜��ǂݍ��݂܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] �摜�t�@�C����\n�ǂݍ��݂����摜���w�肵�܂�, �摜�t�@�C����
;;layer=[�K�{] �Ώۃ��C��\n�摜��ǂݍ��ރ��C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;key=�J���[�L�[\n�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂�, RGB�l;256�l;adapt
;;mode=�O�i���C�����߃��[�h\n�O�i���C���̓��߃��[�h���w�肵�܂�, alpha;transp;opaque;rect;add;sub;mul;dodge;darken;lighten;screen;psadd;pssub;psmul;psscreen;psoverlay;pshlight;psslight;psdodge;psdodge5;psburn;pslighten;psdarken;psdiff;psdiff5;psexcl
;;grayscale=�摜���O���[�X�P�[���ɂ��邩\n�摜���O���[�X�P�[���ɂ��邩�ǂ������w�肵�܂�, �_���l
;;rgamma=�K���}�␳�l\nr (��) �Ag (��) �A b (��) �̊e�����̃K���}�l���w�肵�܂�, �����l
;;ggamma=�K���}�␳�l\nr (��) �Ag (��) �A b (��) �̊e�����̃K���}�l���w�肵�܂�, �����l
;;bgamma=�K���}�␳�l\nr (��) �Ag (��) �A b (��) �̊e�����̃K���}�l���w�肵�܂�, �����l
;;rfloor=�P�x�Œ�l\n�e�����̋P�x�Œ�l���w�肵�܂�, 256�l
;;gfloor=�P�x�Œ�l\n�e�����̋P�x�Œ�l���w�肵�܂�, 256�l
;;bfloor=�P�x�Œ�l\n�e�����̋P�x�Œ�l���w�肵�܂�, 256�l
;;rceil=�P�x�ō��l\n�e�����̋P�x�ō��l���w�肵�܂�, 256�l
;;gceil=�P�x�ō��l\n�e�����̋P�x�ō��l���w�肵�܂�, 256�l
;;bceil=�P�x�ō��l\n�e�����̋P�x�ō��l���w�肵�܂�, 256�l
;;mcolor=�u�����h�F\n�F�u�����h�ɂ��F�����ʂɂ����āA�u�����h����F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;mopacity=�u�����h�F�Z�x\n�F�u�����h�ɂ��F�����ʂŁAmcolor �Ŏw�肵���F���ǂꂮ�炢�̕s�����x�Ńu�����h���邩���w�肵�܂�, 256�l
;;clipleft=�N���b�v��`���[�ʒu\n�摜�N���b�v��`�̍��[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;cliptop=�N���b�v��`��[�ʒu\n�摜�N���b�v��`�̏�[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;clipwidth=�N���b�v��`��\n�摜�N���b�v��`�̕����w�肵�܂�, 1�ȏ�̒l
;;clipheight=�N���b�v��`����\n�摜�N���b�v��`�̍������w�肵�܂�, 1�ȏ�̒l
;;flipud=�㉺���]\n�摜�̏㉺���]���s�������ꍇ�� true ���w�肵�܂�, �_���l
;;fliplr=���E���]\n�摜�̍��E���]���s�������ꍇ�� true ���w�肵�܂�, �_���l
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;left=���C�����[�ʒu\nlayer �����Ŏw�肵�����C���̍��[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;top=���C����[�ʒu\nlayer �����Ŏw�肵�����C���̏�[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;pos=�O�i���C���ʒu\n���C���ʒu�������I�Ɍ��肵�܂�, ���C���ʒu
;;opacity=�s�����x\nlayer �����Ŏw�肵�����C���̕s�����x���w�肵�܂�, 256�l
;;mapimage=�̈�摜\n�N���b�J�u���}�b�v�ɗp����̈�摜���w�肵�܂�, �摜�t�@�C����
;;mapaction=�̈�A�N�V������`�t�@�C��\n�N���b�J�u���}�b�v�ɗp����̈�A�N�V������`�t�@�C�����w�肵�܂�, �̈�A�N�V������`�t�@�C����
;;index=�d�ˍ��킹����\n�w�i���C���ɂ͎w�肵�Ȃ��ł�������, 1�ȏ�̒l
[macro name="image"]
[kagtag cond=%cond storage=%storage layer=%layer page=%page key=%key mode=%mode grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma rfloor=%rfloor gfloor=%gfloor bfloor=%bfloor rceil=%rceil gceil=%gceil bceil=%bceil mcolor=%mcolor mopacity=%mopacity clipleft=%clipleft cliptop=%cliptop clipwidth=%clipwidth clipheight=%clipheight flipud=%flipud fliplr=%fliplr visible=%visible left=%left top=%top pos=%pos opacity=%opacity mapimage=%mapimage mapaction=%mapaction index=%index]
[endmacro]

;;[���b�Z�[�W����] �C���f���g�̐ݒ�
;;���̃^�O�̈ʒu�ɍ��C���f���g ( �c�����̏ꍇ�͓��C���f���g ) ��ݒ肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="indent"]
[kagtag cond=%cond]
[endmacro]

;;[�ϐ��ETJS ����] ������̓���
;;���������͂��邽�߂Ƀ_�C�A���O�{�b�N�X���J���A���[�U�[�ɓ��͂����߂܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] �ϐ���\n���͂�������������i�[����ϐ����w�肵�܂�, �C�ӕ�����
;;prompt=�v�����v�g\n�_�C�A���O�{�b�N�X�̃v�����v�g ( ���͗��̂�����ɕ\������镶���� ) ���w�肵�܂�, �C�ӕ�����
;;title=�^�C�g��\n�_�C�A���O�{�b�N�X�̃^�C�g�����w�肵�܂�, �C�ӕ�����
[macro name="input"]
[kagtag cond=%cond name=%name prompt=%prompt title=%title]
[endmacro]

;;[�ϐ��ETJS ����] TJS �X�N���v�g�̋L�q
;;[iscript] �݂̂̍s�ƁA[endscript] �݂̂̍s�ň͂܂ꂽ������ TJS �X�N���v�g���������ނ��Ƃ��o���܂�
[macro name="iscript"]
[kagtag]
[endmacro]

;;[���x���E�W�����v����] �V�i���I�̃W�����v
;;�w�肳�ꂽ�V�i���I�t�@�C���̎w�肳�ꂽ���x���ɃW�����v���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�W�����v��̃��x�����w�肵�܂�, ���x����
;;countpage=���̃W�����v���u�ǂ񂾁v�ƌ��Ȃ���\n���̃��x���Ɉڍs����Ƃ��ɁA���̃^�O�̂���ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂�, �_���l
[macro name="jump"]
[kagtag cond=%cond storage=%storage target=%target countpage=%countpage]
[endmacro]

;;[���b�Z�[�W����] �s���N���b�N�҂�
;;�s���̃N���b�N�҂����s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="l"]
[kagtag cond=%cond]
[endmacro]

;;[���C������] ���C���̐��̕ύX
;;�O�i���C���܂��̓��b�Z�[�W���C���̐���ύX���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layers=�O�i���C���̐�\n�O�i���C���̐����w�肵�܂�, 0�ȏ�̒l
;;messages=���b�Z�[�W���C���̐�\n���b�Z�[�W���C���̐����w�肵�܂�, 1�ȏ�̒l
[macro name="laycount"]
[kagtag cond=%cond layers=%layers messages=%messages]
[endmacro]

;;[���C������] ���C���̑���
;;���C���̑������w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�ΏۂƂȂ�O�i���C���܂��̓��b�Z�[�W���C�����w�肵�܂�, �O�i���C��;���b�Z�[�W���C��
;;page=�y�[�W\n�\(fore)��ʂ̃��C����ΏۂƂ��邩�A��(back)��ʂ̃��C����ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;visible=���C���̉��E�s��\nlayer �����Ŏw�肵�����C����\�����邩�A���Ȃ������w�肵�܂�, �_���l
;;left=���C�����[�ʒu\nlayer �����Ŏw�肵�����C���̍��[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;top=���C����[�ʒu\nlayer �����Ŏw�肵�����C���̏�[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;opacity=�s�����x\n���C���̕s�����x���w�肵�܂�, 256�l
;;autohide=���b�Z�[�W���C���ƂƂ��ɉB����\n�O�i���C���ȊO�ɂ͎w�肵�Ȃ��ł�������, �_���l
;;index=�d�ˍ��킹����\n�w�i���C���ɂ͎w�肵�Ȃ��ł�������, 1�ȏ�̒l
[macro name="layopt"]
[kagtag cond=%cond layer=%layer page=%page visible=%visible left=%left top=%top opacity=%opacity autohide=%autohide index=%index]
[endmacro]

;;[���x���E�W�����v����] �n�C�p�[�����N
;;link �^�O�� endlink �^�O�ň͂܂ꂽ�����̕��͂��A�}�E�X��L�[�{�[�h�őI���\�ɂ��A�����ŃN���b�N���ꂽ��L�[�������ꂽ�Ƃ��ɁA�W�����v�������w��ł��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�W�����v��̃��x�����w�肵�܂�, ���x����
;;exp=TJS ��\n�N���b�N���ꂽ�Ƃ��Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;color=�����N�̋����F\n�����N���I�����ꂽ�Ƃ��ɏo�锼�����̋�`�̐F���w�肵�܂�, RGB�l
;;hint=�c�[���`�b�v�q���g\n�����N��I�����A�}�E�X�J�[�\����Î~�������Ƃ��ɕ\�������c�[���`�b�v�q���g���w�肵�܂�, �C�ӕ�����
;;onenter=�}�E�X�i����\n�����N���Ƀ}�E�X�J�[�\���������Ă����Ƃ��Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;onleave=�}�E�X�ޏo��\n�����N������}�E�X�J�[�\�����o�Ă��������Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;countpage=���̃W�����v���u�ǂ񂾁v�ƌ��Ȃ���\n�����N��I�����đ��̃��x���Ɉڍs����Ƃ��ɁA���̃����N�̂���ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂�, �_���l
;;clickse=�N���b�N���̌��ʉ�\n�N���b�N���ꂽ�Ƃ��ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;clicksebuf=�N���b�N���̌��ʉ��̃o�b�t�@�ԍ�\nclickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;enterse=�}�E�X�i�����̌��ʉ�\n�}�E�X���i�������Ƃ��ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;entersebuf=�}�E�X�i�����̌��ʉ��̃o�b�t�@�ԍ�\nenterse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;leavese=�}�E�X�ޏo���̌��ʉ�\n�}�E�X���ޏo�����Ƃ��ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;leavesebuf=�}�E�X�ޏo���̌��ʉ��̃o�b�t�@�ԍ�\nleavese �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
[macro name="link"]
[kagtag cond=%cond storage=%storage target=%target exp=%exp color=%color hint=%hint onenter=%onenter onleave=%onleave countpage=%countpage clickse=%clickse clicksebuf=%clicksebuf enterse=%enterse entersebuf=%entersebuf leavese=%leavese leavesebuf=%leavesebuf]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̓ǂݍ���
;;��t���[�Z�[�u���[�h�ɂ����āA�x����ǂݍ��݂܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;place=�ۑ��ꏊ\n�x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
;;ask=�m�F�����邩\ntrue ���w�肷��ƁA�x�����ǂ邩�ǂ����̊m�F�����܂�, �_���l
[macro name="load"]
[kagtag cond=%cond place=%place ask=%ask]
[endmacro]

;;[�V�X�e������] �v���O�C���̓ǂݍ���
;;���̃^�O�œǂݍ��ރv���O�C���́A�E�v���W�F�N�g�t�H���_�����E�g���g�����s�\�t�@�C���̂���t�H���_�ȉ��� plugin �t�H���_�E�g���g�����s�\�t�@�C���̂���t�H���_�̂����ꂩ�ɒu���Ă����K�v������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;module=[�K�{] �v���O�C����\n�ǂݍ��݂����v���O�C���t�@�C�������w�肵�܂�, �v���O�C���t�@�C����
[macro name="loadplugin"]
[kagtag cond=%cond module=%module]
[endmacro]

;;[���b�Z�[�W����] �����\���ʒu�̎w��
;;�����\���ʒu���w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;x=�������ʒu\n������\������ x ���W�ʒu���w�肵�܂�, 0�ȏ�̒l
;;y=�c�����ʒu\n������\������ y ���W�ʒu���w�肵�܂�, 0�ȏ�̒l
[macro name="locate"]
[kagtag cond=%cond x=%x y=%y]
[endmacro]

;;[���b�Z�[�W����] �����N�̃��b�N
;;���ׂẴ��b�Z�[�W���C���̃����N�����b�N���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="locklink"]
[kagtag cond=%cond]
[endmacro]

;;[�x�E�ʉߋL�^����] �X�i�b�v�V���b�g�̃��b�N
;;�X�i�b�v�V���b�g�����b�N���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="locksnapshot"]
[kagtag cond=%cond]
[endmacro]

;;[�}�N������] �}�N���̋L�q
;;�}�N���L�q���J�n���܂�
;;name=[�K�{] �^�O��\n�^�O�����w�肵�܂�, �C�ӕ�����
[macro name="macro"]
[kagtag name=%name]
[endmacro]

;;[���C������] �N���b�J�u���}�b�v�p�̈�A�N�V������`�t�@�C���̎w��
;;�w�肵�����C���̃N���b�J�u���}�b�v�̗̈�A�N�V������`�Ɏg�p����t�@�C�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�ΏۂƂ��郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;storage=[�K�{] �̈�A�N�V������`�t�@�C��\n�̈�A�N�V������`�t�@�C�����w�肵�܂�, �̈�A�N�V������`�t�@�C����
[macro name="mapaction"]
[kagtag cond=%cond layer=%layer page=%page storage=%storage]
[endmacro]

;;[���C������] �N���b�J�u���}�b�v�̖�����
;;�w�肵�����C���̃N���b�J�u���}�b�v�𖳌��ɂ��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�ΏۂƂ��郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
[macro name="mapdisable"]
[kagtag cond=%cond layer=%layer page=%page]
[endmacro]

;;[���C������] �N���b�J�u���}�b�v�p�̈�摜�̎w��
;;�w�肵�����C���̃N���b�J�u���}�b�v�̗̈�摜�Ɏg�p����t�@�C�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�ΏۂƂ��郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;storage=[�K�{] �摜�t�@�C����\n�N���b�J�u���}�b�v�̗̈�摜�Ƃ��ėp����t�@�C�����w�肵�܂�, �摜�t�@�C����
[macro name="mapimage"]
[kagtag cond=%cond layer=%layer page=%page storage=%storage]
[endmacro]

;;[�V�X�e������] �����_�����O�ς݃t�H���g�̊��蓖��
;;���ݑ���ΏۂɂȂ��Ă��郁�b�Z�[�W���C���̌��݂̃t�H���g�ɁA�w�肵�������_�����O�ς݃t�H���g�����蓖�Ă܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] �t�@�C����\n���݂̃t�H���g�Ɋ��蓖�Ă��������_�����O�ς݃t�H���g�t�@�C�����w�肵�܂�, �t�H���g�t�@�C����
[macro name="mappfont"]
[kagtag cond=%cond storage=%storage]
[endmacro]

;;[���C������] ���C���̎����ړ�
;;�w�肵�����C���Ɏ����ړ��������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�ΏۂƂȂ郌�C�����w�肵�܂�, �O�i���C��;���b�Z�[�W���C��
;;page=�y�[�W\nlayer �����Ŏw�肵�����C�����A�\(fore)��ʂł��邩�A��(back)��ʂł��邩���w�肵�܂�, ���C���[�y�[�W
;;spline=�X�v���C�����\ntrue ���w�肷��ƁApath �����Ŏw�肵���ʒu���a�X�v���C���ŋȐ���Ԃ�����������C�����ړ�����悤�ɂȂ�܂�, �_���l
;;time=[�K�{] 1�_��ʉ߂��鎞��\n���C���� path ���w�肵���_����_���ړ�����̂ɕK�v�Ȏ��Ԃ��w�肵�܂�, �~���b����
;;delay=������J�n����܂ł̎���\n���C���̎����ړ����J�n�����܂ł̎��Ԃ� ms �Ŏw�肵�܂�, �~���b����
;;path=[�K�{] �ړ��ʒu\n�ړ��ʒu���w�肵�܂�, �C�ӕ�����
;;accel=�����x�I�ȓ��������邩�ǂ���\n�����x�I�ȓ������s�킹�邩�ǂ������w�肵�܂�, -1;0;1
[macro name="move"]
[kagtag cond=%cond layer=%layer page=%page spline=%spline time=%time delay=%delay path=%path accel=%accel]
[endmacro]

;;[�V�X�e������] �u���̑I�����܂ł����ށv�̐ݒ�
;;���[�U�[���u���̑I�����܂Ői�ށv�̋@�\���g�p�ł���悤�ɂ��邩�ۂ����w��ł��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;enabled=[�K�{] �L���E�����̐ݒ�\n�u���̑I�����܂Ői�ށv�̋@�\��L���ɂ���ꍇ�� true�A�����ɂ���ꍇ�� false ���w�肵�܂�, �_���l
[macro name="nextskip"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[���b�Z�[�W����] �����\���m�[�E�F�C�g
;;�����̕\�����x���m�[�E�F�C�g�ɐݒ肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="nowait"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I/SWF�̍Đ�����
;;�r�f�I�܂���SWF(Shockwave Flash)�̍Đ��̏��������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;storage=[�K�{] �t�@�C����\n�Đ���������t�@�C�������w�肵�܂�, ���[�r�[�t�@�C����
[macro name="openvideo"]
[kagtag cond=%cond slot=%slot storage=%storage]
[endmacro]

;;[���b�Z�[�W����] ���y�[�W�N���b�N�҂�
;;���y�[�W�̃N���b�N�҂����s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="p"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM ���t�̈ꎞ��~
;;BGM ���t���ꎞ��~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="pausebgm"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�̈ꎞ��~
;;�r�f�I�̍Đ����ꎞ��~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="pausevideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[���C������] �摜�̕����ǉ��ǂݍ���
;;�w�肵�����C���ɉ摜��ǉ����ēǂݍ��݂܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] �摜�t�@�C����\n�ǉ����ēǂݍ��މ摜���w�肵�܂�, �摜�t�@�C����
;;layer=[�K�{] �Ώۃ��C��\n�摜��ǉ����ēǂݍ��ރ��C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;key=�J���[�L�[\nstorage �Ŏw�肵���摜�́A�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂�, RGB�l;256�l;adapt
;;dx=[�K�{] �摜�ǂݍ��ݐ� x ���W\n�d�ˍ��킹�A���邢�̓R�s�[�����̍��[ x ���W��(�Ώۂ̃��C�����̍��W��)�w�肵�܂�, 0�ȏ�̒l
;;dy=[�K�{] �摜�ǂݍ��ݐ� y ���W\n�d�ˍ��킹�A���邢�̓R�s�[�����̏�[ y ���W��(�Ώۂ̃��C�����̍��W��)�w�肵�܂�, 0�ȏ�̒l
;;sx=�摜�ǂݍ��݌� x ���W\n�d�ˍ��킹�A���邢�̓R�s�[���錳�̍��[ x ���W��(�ǉ����ēǂݍ��މ摜���̍��W��)�w�肵�܂�, 0�ȏ�̒l
;;sy=�摜�ǂݍ��݌� y ���W\n�d�ˍ��킹�A���邢�̓R�s�[���錳�̏�[ y ���W��(�ǉ����ēǂݍ��މ摜���̍��W��)�w�肵�܂�, 0�ȏ�̒l
;;sw=�摜�ǂݍ��݌���\n�d�ˍ��킹�A���邢�̓R�s�[���镝���w�肵�܂�, 0�ȏ�̒l
;;sh=�摜�ǂݍ��݌�����\n�d�ˍ��킹�A���邢�̓R�s�[���鍂�����w�肵�܂�, 0�ȏ�̒l
;;mode=�d�ˍ��킹���[�h\nsx sy sw sh �̊e�����Ŏw�肵����`�̈�� �d�ˍ��킹�邩�A���邢�͒P���ɃR�s�[���邩�A���邢�͉��Z���s�������w�肵�܂�, copy;opaque;pile;alpha;add;sub;mul;dodge;darken;lighten;screen;psadd;pssub;psmul;psscreen;psoverlay;pshlight;psslight;psdodge;psdodge5;psburn;pslighten;psdarken;psdiff;psdiff5;psexcl
;;opacity=�s�����x\nmode ������ "pile" ���w�肵���ꍇ�̏d�ˍ��킹�̕s�����x�A���邢�� "add" "sub" "mul" "dodge" "darken"  "lighten" "screen" �̂����ꂩ���w�肵���ꍇ�̉��Z�̋��x���w�肵�܂�, 256�l
[macro name="pimage"]
[kagtag cond=%cond storage=%storage layer=%layer page=%page key=%key dx=%dx dy=%dy sx=%sx sy=%sy sw=%sw sh=%sh mode=%mode opacity=%opacity]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �̉��t
;;BGM �����t���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] BGM �t�@�C����\n���t���� BGM �t�@�C�������w�肵�܂�, BGM�t�@�C����
;;start=BGM �J�n�ʒu�w��\n���[�v�`���[�i�Ŏw�肵�����x���� BGM �̍Đ��J�n�ʒu���w�肵�܂�, 0�ȏ�̒l
;;loop=���[�v���邩\nBGM �����[�v���邩���w�肵�܂�, �_���l
[macro name="playbgm"]
[kagtag cond=%cond storage=%storage start=%start loop=%loop]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��̍Đ�
;;���ʉ����Đ����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n���ʉ����Đ�����o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;storage=[�K�{] ���ʉ��t�@�C����\n���t������ʉ��t�@�C�������w�肵�܂�, ���ʉ��t�@�C����
;;start=SE �J�n�ʒu�w��\n���[�v�`���[�i�Ŏw�肵�����x���� SE �̍Đ��J�n�ʒu���w�肵�܂�, 0�ȏ�̒l
;;loop=�J��Ԃ��Đ����s����\n���ʉ����J��Ԃ��Đ����邩�ǂ������w�肵�܂�, �_���l
[macro name="playse"]
[kagtag cond=%cond buf=%buf storage=%storage start=%start loop=%loop]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I/SWF�̍Đ�
;;�r�f�I�܂���SWF(Shockwave Flash)���Đ����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;storage=�t�@�C����\n�Đ�����t�@�C�������w�肵�܂�, ���[�r�[�t�@�C����
[macro name="playvideo"]
[kagtag cond=%cond slot=%slot storage=%storage]
[endmacro]

;;[���b�Z�[�W����] ���b�Z�[�W���C���̑���
;;���b�Z�[�W���C���ɑ΂���l�X�ȑ������w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=�Ώۃ��C��\n�ΏۂƂ��郁�b�Z�[�W���C�����w�肵�܂�, ���b�Z�[�W���C��
;;page=�Ώۃy�[�W\n�ΏۂƂ���y�[�W���w�肵�܂�, ���C���[�y�[�W
;;left=���[�ʒu\n���b�Z�[�W���C���̍��[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;top=��[�ʒu\n���b�Z�[�W���C���̏�[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;width=��\n���b�Z�[�W���C���̕����w�肵�܂�, 0�ȏ�̒l
;;height=����\n���b�Z�[�W���C���̍������w�肵�܂�, 0�ȏ�̒l
;;frame=�t���[���摜\n���b�Z�[�W���C���̃t���[���摜�Ƃ��ĕ\��������摜���w�肵�܂�, �摜�t�@�C����
;;framekey=�t���[���摜�̃J���[�L�[\nframe �����Ŏw�肵���t���[���摜�́A�ǂ̐F�𔲂��F�Ƃ��邩���w�肵�܂�, RGB�l;256�l;adapt
;;color=���C���̐F\n���b�Z�[�W���C���̕\���F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;opacity=���C���̕s�����x\n���b�Z�[�W���C���̕s�����x�� 0 �` 255 �̐��l�Ŏw�肵�܂�(�����̕s�����x��A���C�����̂̕s�����x�ł͂���܂���), 256�l
;;marginl=���]��\n���b�Z�[�W���C���̍��]�����w�肵�܂�, 0�ȏ�̒l
;;margint=��]��\n���b�Z�[�W���C���̏�]�����w�肵�܂�, 0�ȏ�̒l
;;marginr=�E�]��\n���b�Z�[�W���C���̉E�]�����w�肵�܂�, 0�ȏ�̒l
;;marginb=���]��\n���b�Z�[�W���C���̉��]�����w�肵�܂�, 0�ȏ�̒l
;;vertical=�c�������[�h\n���b�Z�[�W���C�����c�����Ƀ��[�h�ɂ���ɂ� "true" ���w�肵�܂�, �_���l
;;draggable=�}�E�X�Ńh���b�O�\��\ntrue �ɐݒ肷��ƁAmarginl, margint, marginr, marginb �Ŏw�肵���}�[�W���̕����ł��A�t���[���摜�̕s�����x�� 64 �ȏ�̉ӏ����A�}�E�X�Ńh���b�O���邱�Ƃɂ�胁�b�Z�[�W���C�������[�U���ړ��ł���悤�ɂȂ�܂�, �_���l
;;visible=����\ntrue �ɐݒ肷��ƁA���b�Z�[�W���C������(�\�����)�ɂȂ�܂�, �_���l
[macro name="position"]
[kagtag cond=%cond layer=%layer page=%page left=%left top=%top width=%width height=%height frame=%frame framekey=%framekey color=%color opacity=%opacity marginl=%marginl margint=%margint marginr=%marginr marginb=%marginb vertical=%vertical draggable=%draggable visible=%visible]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�̍Đ�����
;;�r�f�I�̍Đ��������s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="preparevideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[���C������] ���C���ւ̕����`��
;;�w�肵�����C���ɕ�����`�悵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n������`�悷�郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;x=[�K�{] x���W�l\n������`�悷�鉡�ʒu�� pixel �P�ʂŎw�肵�܂�, 0�ȏ�̒l
;;y=[�K�{] y���W�l\n������`�悷��c�ʒu�� pixel �P�ʂŎw�肵�܂�, 0�ȏ�̒l
;;text=[�K�{] �`�悷�镶��\n�`�悷�镶������w�肵�܂�, �C�ӕ�����
;;vertical=�c�������ǂ���\n�c�������ǂ������w�肵�܂�, �_���l
;;angle=�����`��p�x\n�����`��̊p�x���w�肵�܂�, 0�ȏ�̒l
;;size=�����T�C�Y\n�����T�C�Y�� pixel �P�ʂŎw�肵�܂�, 1�ȏ�̒l
;;face=�t�H���g��\n�t�H���g�����w�肵�܂�, �t�H���g��
;;color=�����F\n�����F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;italic=�Α̂ɂ��邩\n�������Α̂ɂ��邩�ǂ������w�肵�܂�, �_���l
;;shadow=�e��\�����邩\n�����ɉe�����邩���w�肵�܂�, �_���l
;;edge=�ܕ����ɂ��邩\n������ܕ��� ( ����蕶�� ) �ɂ��邩���w�肵�܂�, �_���l
;;edgecolor=�ܕ����̑܂̐F\n�����̑܂̐F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;shadowcolor=�e�̐F\n�e�̐F�� 0xRRGGBB �`���Ŏw�肵�܂�, RGB�l
;;bold=�������ɂ��邩\n�����𑾕����ɂ��邩���w�肵�܂�, �_���l
[macro name="ptext"]
[kagtag cond=%cond layer=%layer page=%page x=%x y=%y text=%text vertical=%vertical angle=%angle size=%size face=%face color=%color italic=%italic shadow=%shadow edge=%edge edgecolor=%edgecolor shadowcolor=%shadowcolor bold=%bold]
[endmacro]

;;[�V�X�e������] ��ʂ�h�炷
;;��ʂ�h�炵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;time=[�K�{] �h�炵�Ă������\n�����Ŏw�肵����������\������̂Ɠ��������̎��ԁA��ʂ�h�炵�܂�, �~���b����
;;timemode=time�����̒P��\ntime �����̒P�ʂ��w�肵�܂�, ms;delay
;;hmax=���h��ő�U��\n�h��̉������ւ̍ő�U�����w�肵�܂�, 0�ȏ�̒l
;;vmax=�c�h��ő�U��\n�h��̏c�����ւ̍ő�U�����w�肵�܂�, 0�ȏ�̒l
[macro name="quake"]
[kagtag cond=%cond time=%time timemode=%timemode hmax=%hmax vmax=%vmax]
[endmacro]

;;[���b�Z�[�W����] ���s����
;;���s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;eol=�s���̉��s���ǂ���\nConfig.tjs �� ignoreCR �� false �̏ꍇ�AKAG �͉��s�̍ۂ� r�^�O�𐶐����܂����A���́u���s�̍ۂɐ�������� r �^�O�v�̏ꍇ�͂��̑���������A�l�� true �ɂȂ��Ă��܂�, �C�ӕ�����
[macro name="r"]
[kagtag cond=%cond eol=%eol]
[endmacro]

;;[�V�X�e������] �E�N���b�N�̐ݒ�
;;�E�N���b�N��A�L�[�{�[�h���� ESC �L�[�����������̓����ݒ肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;call=�T�u���[�`�����Ăяo����\ntrue ��ݒ肷��ƁA�E�N���b�N�� storage �� target �����Ŏw�肵���T�u���[�`�����Ăяo���悤�ɂȂ�܂�, �_���l
;;jump=�w��ꏊ�ɃW�����v���邩\ntrue ��ݒ肷��ƁA�E�N���b�N�� storage �� target �����Ŏw�肵���ꏊ�ɃW�����v����悤�ɂȂ�܂�, �_���l
;;target=�T�u���[�`���̌Ăяo����/�W�����v��\ncall ������ jump ������ true ��ݒ肵���ꍇ�A���̌Ăяo����/�W�����v��̃��x�����w�肵�܂�, ���x����
;;storage=�T�u���[�`���̌Ăяo����/�W�����v��t�@�C��\ncall ������ jump ������ true ��ݒ肵���ꍇ�A���̌Ăяo����/�W�����v��̃t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;enabled=�E�N���b�N������s����\ntrue ��ݒ肷��ƁA�E�N���b�N�ɂ�胁�b�Z�[�W���C�����B���ꂽ��A�w��̃��[�`�����Ăяo���ꂽ��A�w��ꏊ�ɃW�����v�����肵�܂�, �_���l
;;name=���j���[���ږ�\n�V�X�e�����j���[���́u���b�Z�[�W�������v�̃��j���[���ږ����w�肵�܂�, �C�ӕ�����;default
[macro name="rclick"]
[kagtag cond=%cond call=%call jump=%jump target=%target storage=%storage enabled=%enabled name=%name]
[endmacro]

;;[�x�E�ʉߋL�^����] �ʉߋL�^���s��
;;���݂̈ʒu�ŒʉߋL�^���s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="record"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W����] �����������f�t�H���g�ɖ߂�
;;font �^�O�Ŏw�肵�������̑������f�t�H���g�ɖ߂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="resetfont"]
[kagtag cond=%cond]
[endmacro]

;;[���b�Z�[�W����] �X�^�C�����f�t�H���g�ɖ߂�
;;style �^�O�Ŏw�肵���s�̃X�^�C�������ׂăf�t�H���g�̐ݒ�ɖ߂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="resetstyle"]
[kagtag cond=%cond]
[endmacro]

;;[�V�X�e������] �E�F�C�g�̏�����
;;wait �^�O�� mode=until �Ŏg�p���鎞�Ԍ��_��ݒ肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="resetwait"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM ���t�̍ĊJ
;;pausebgm �^�O�ňꎞ��~���� BGM ���ĊJ���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="resumebgm"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�Đ��̍ĊJ
;;�r�f�I�̍Đ����ĊJ���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="resumevideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[���x���E�W�����v����] �T�u���[�`������߂�
;;�T�u���[�`������Ăяo�����ɖ߂�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�߂��̃V�i���I�t�@�C����\n�߂��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=�߂��̃��x����\n�߂��̃��x�����w�肵�܂�, ���x����
;;countpage=�u�ǂ񂾁v�ƌ��Ȃ���\n�Ăяo�����ɖ߂�Ƃ��ɁA���� return �^�O�̂���ꏊ�̃��x�����u�ǂ񂾁v�Ƃ݂Ȃ����ǂ������w�肵�܂�, �_���l
[macro name="return"]
[kagtag cond=%cond storage=%storage target=%target countpage=%countpage]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�̊����߂�
;;�r�f�I��擪�܂Ŋ����߂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="rewindvideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[���b�Z�[�W����] ���r�w��
;;���̈ꕶ���ɑ΂��郋�r���w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;text=[�K�{] ���r\n���r�Ƃ��ĕ\�������镶�����w�肵�܂�, �C�ӕ�����
[macro name="ruby"]
[kagtag cond=%cond text=%text]
[endmacro]

;;[�V�X�e������] ��~����
;;�V�i���I�t�@�C���̎��s���~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="s"]
[kagtag cond=%cond]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̕ۑ�
;;��t���[�Z�[�u���[�h�ɂ����āA�w�肳�ꂽ�x�ɕۑ����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;place=�ۑ��ꏊ\n�x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
;;ask=�m�F�����邩\ntrue ���w�肷��ƁA�x��ۑ����邩�ǂ����̊m�F�����܂�, �_���l
[macro name="save"]
[kagtag cond=%cond place=%place ask=%ask]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��̐ݒ�
;;���ʉ��̌X�̃o�b�t�@�ɑ΂���ݒ��ύX���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n�ݒ��ύX����o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;volume=����\n���ʉ��̉��ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
;;gvolume=��批��\n���ʉ��̑�批�ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
;;pan=�p��\n�p�� (���E�̉����ʒu) ���w�肵�܂�, -100�`100�̒l
[macro name="seopt"]
[kagtag cond=%cond buf=%buf volume=%volume gvolume=%gvolume pan=%pan]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �̃��x���ʉߏ����̓o�^
;;BGM �̃��x����ʉ߂����ۂɍs��������o�^���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] ���x����\nBGM ���̃��[�v�`���[�i�Ŏw�肵�����x�������w�肵�܂�, ���x����
;;storage=�V�i���I�t�@�C����\n���x���ʉߎ��̑J�ڐ�V�i���I�t�@�C�������w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n���x���ʉߎ��̑J�ڐ惉�x�������w�肵�܂�, ���x����
;;exp=TJS ��\n���x���ʉߎ��Ɏ��s����� TJS �����w�肵�܂�, TJS��
[macro name="setbgmlabel"]
[kagtag cond=%cond name=%name storage=%storage target=%target exp=%exp]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �̒�~�����̓o�^
;;BGM ����~�����ۂɍs��������o�^���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�V�i���I�t�@�C����\nBGM��~���̑J�ڐ�V�i���I�t�@�C�������w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\nBGM��~���̑J�ڐ惉�x�������w�肵�܂�, ���x����
;;exp=TJS ��\nBGM��~���Ɏ��s����� TJS �����w�肵�܂�, TJS��
[macro name="setbgmstop"]
[kagtag cond=%cond storage=%storage target=%target exp=%exp]
[endmacro]

;;[���b�Z�[�W���𑀍�] ���b�Z�[�W�����̕\��
;;���b�Z�[�W������\�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="showhistory"]
[kagtag cond=%cond]
[endmacro]

;;[�x�E�ʉߋL�^����] �u�ŏ��ɖ߂�v�̗L���E����
;;Config.tjs ���� goToStartMenuItem.visible =true; �Ɛݒ肷��ƁA�V�X�e��|�ŏ��ɖ߂郁�j���[���\������܂����A���ꂪ�I�����ꂽ�ꍇ�ɖ߂�ꏊ�����̃^�O�Ŏw�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;enabled=�L���E�����̐ݒ�\n"true" ���w�肷�邩���̑������ȗ�����ƁA���̃^�O�̂��邷���O�̃Z�[�u�\�ȃ��x�����u�ŏ��ɖ߂�v�̖߂��ł���Ƃ���A�u�ŏ��ɖ߂�v�̋@�\���L���ɂȂ�܂�, �_���l
[macro name="startanchor"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM ���t�̒�~
;;BGM ���t���~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="stopbgm"]
[kagtag cond=%cond]
[endmacro]

;;[���C������] ���C���̎����ړ��̒�~
;;move �^�O�ŊJ�n���������ړ��������I�ɒ��~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="stopmove"]
[kagtag cond=%cond]
[endmacro]

;;[�V�X�e������] ��ʗh�炵�̒�~
;;quake�^�O�ŊJ�n�����h����I�������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="stopquake"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��Đ��̒�~
;;���ʉ��Đ����~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n���ʉ����~����o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
[macro name="stopse"]
[kagtag cond=%cond buf=%buf]
[endmacro]

;;[���C������] ���C���̃g�����W�V�����̒�~
;;trans �^�O�ŊJ�n�����g�����W�V�����������I�ɒ��~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="stoptrans"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I/SWF�Đ��̒�~
;;�r�f�I/SWF�̍Đ����~���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
[macro name="stopvideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�@�\�̐ݒ�
;;�x�@�\��L���ɂ��邩�A�����ɂ��邩���w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;enabled=[�K�{] �L���E�����̐ݒ�\n�x�@�\��L���ɂ���ꍇ�� true �A�����ɂ���ꍇ�� false ���w�肵�܂�, �_���l
[macro name="store"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[���b�Z�[�W����] �X�^�C���̐ݒ�
;;�s�̃X�^�C�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;align=��������\n�s�̕����������w�肵�܂�, left;top;center;right;bottom;default
;;linespacing=�s��\n�s�Ԃ� pixel �P�ʂŎw�肵�܂�, 0�ȏ�̒l
;;pitch=����\n���Ԃ̃I�t�Z�b�g�� pixel �P�ʂŎw�肵�܂�, 0�ȏ�̒l
;;linesize=�����T�C�Y�̗\��T�C�Y\n�s�̕����w�肵�܂�, 0�ȏ�̒l;default
;;autoreturn=�������s�E���y�[�W�̐ݒ�\n�������s�E�������y�[�W���s�킹�邩�ǂ������w�肵�܂�, �_���l;default
[macro name="style"]
[kagtag cond=%cond align=%align linespacing=%linespacing pitch=%pitch linesize=%linesize autoreturn=%autoreturn]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̃������ォ��̓ǂݍ���
;;tempsave �^�O�ŕۑ�������������́u�x�v��ǂݏo���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;place=�ۑ��ꏊ\n�x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
;;se=���ʉ���ǂݍ��ނ�\n�ǂݍ��ނƂ��ɁA���ʉ��̏����ǂݍ��ނ����w�肵�܂�, �_���l
;;bgm=BGM ��ǂݍ��ނ�\n�ǂݍ��ނƂ��ɁABGM �̏����ǂݍ��ނ����w�肵�܂�, �_���l
;;backlay=�\�y�[�W�𗠃y�[�W�ɓǂݍ��ނ�\n�ǂݍ��ނƂ��ɁA�O�i���C���̏��͓ǂݍ��܂��ɁA���w�i���C���ɂ͑O�i���C���̏���ǂݍ��ނ��ǂ������w�肵�܂�, �_���l
[macro name="tempload"]
[kagtag cond=%cond place=%place se=%se bgm=%bgm backlay=%backlay]
[endmacro]

;;[�x�E�ʉߋL�^����] �x�̃�������ւ̕ۑ�
;;��������́u�x�v�Ɍ��݂̈ʒu�ł̏������݂܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;place=�ۑ��ꏊ\n�x�̔ԍ����w�肵�܂�, 0�ȏ�̒l
[macro name="tempsave"]
[kagtag cond=%cond place=%place]
[endmacro]

;;[���x���E�W�����v����] �^�C���A�E�g�҂��W�����v
;;���݂̃��b�Z�[�W���C���ɑ΂��ă^�C���A�E�g��o�^���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;time=[�K�{] �^�C���A�E�g����\n�^�C���A�E�g�܂ł̎��Ԃ� ms �Ŏw�肵�܂�, �~���b����
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�W�����v��̃��x�����w�肵�܂�, ���x����
;;exp=TJS ��\n�^�C���A�E�g���Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;se=�^�C���A�E�g���̌��ʉ�\n�^�C���A�E�g���ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;sebuf=�^�C���A�E�g���̌��ʉ��̃o�b�t�@�ԍ�\nclickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
[macro name="timeout"]
[kagtag cond=%cond time=%time storage=%storage target=%target exp=%exp se=%se sebuf=%sebuf]
[endmacro]

;;[�V�X�e������] �^�C�g���w��
;;�^�X�N�o�[�A����уE�B���h�E�L���v�V���� ( �^�C�g���o�[ ) �ɕ\�����镶�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] �^�C�g��\n�\���������^�C�g�����w�肵�Ă�������, �C�ӕ�����
[macro name="title"]
[kagtag cond=%cond name=%name]
[endmacro]

;;[�ϐ��ETJS ����] �R���\�[���֒l�̏o��
;;exp �Ŏ����ꂽ����]�����A���ʂ��R���\�[���ɏo�͂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;exp=[�K�{] TJS ��\n�]������ TJS �����w�肵�܂�, TJS��
[macro name="trace"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[���C������] ���C���̃g�����W�V����
;;�w�肵�����C���Ńg�����W�V�������s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=�Ώۃ��C��\n�ΏۂƂȂ郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��;���b�Z�[�W���C��
;;children=�q���C�����܂߂邩\n�g�����W�V�����̑ΏۂɎq���C�����܂߂邩�ǂ������w�肵�܂�, �_���l
;;time=[�K�{] �g�����W�V��������\n�g�����W�V�������s���Ă��鎞�Ԃ𐔒l�Ŏw�肵�܂�, �~���b����
;;method=�g�����W�V�����̃^�C�v\n�g�����W�V�����̃^�C�v���w�肵�܂�, �g�����W�V�����^�C�v
;;rule=���[���摜\n���j�o�[�T���g�����W�V�����ɗp���郋�[���摜���w�肵�܂�, �摜�t�@�C����
;;vague=�����܂��̈�l\n���j�o�[�T���g�����W�V�����ɓK�p���� �����܂��̈�l���w�肵�܂�, 0�ȏ�̒l
;;from=�X�N���[����������\n�X�N���[���g�����W�V�����ɂ����āA���y�[�W�̉摜���ǂ̕������猻��Ă��邩���w�肵�܂�, left;top;right;bottom
;;stay=���摜�����̏�ɋ����邩\n�X�N���[���g�����V�W�����ɂ����āA�\�y�[�W�̉摜�����̏�ɂƂǂ܂����܂܁A���y�[�W�̉摜���O������X�N���[�����Ă��邩 ( "stayfore" )�A�@�\�y�[�W�̉摜���X�N���[�����ďo�Ă���������A���y�[�W�̉摜�����̏�ɂƂǂ܂����܂܌���Ă��邩( "stayback" )�A�@�܂��͕\�y�[�W�̉摜�Ɨ��y�[�W�̉摜���A������Ĉꏏ�Ɉړ����Ȃ���؂�ւ���Ă����� ( "nostay" )�A���w�肵�܂�, stayfore;stayback;nostay
[macro name="trans"]
[kagtag cond=%cond layer=%layer children=%children time=%time method=%method rule=%rule vague=%vague from=%from stay=%stay]
[endmacro]

;;[���b�Z�[�W����] �����N�̃��b�N�̉���
;;���ׂẴ��b�Z�[�W���C���̃����N�̃��b�N���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="unlocklink"]
[kagtag cond=%cond]
[endmacro]

;;[�x�E�ʉߋL�^����] �X�i�b�v�V���b�g�̃��b�N�̉���
;;locksnapshot �Ń��b�N�����X�i�b�v�V���b�g�̃��b�N���������܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="unlocksnapshot"]
[kagtag cond=%cond]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I/SWF�\���̈�̑������w��
;;�r�f�I/SWF�\���̈�̑������w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;visible=���E�s��\n�r�f�I/SWF �̕\���̈��\�����邩 ( true �̏ꍇ )�A��\���ɂ��邩 ( false �̏ꍇ ) ���w�肵�܂�, �_���l
;;left=���[�ʒu\n�\���̈�̍��[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;top=��[�ʒu\n�\���̈�̏�[�ʒu���w�肵�܂�, 0�ȏ�̒l
;;width=��\n�\���̈�̕����w�肵�܂�, 1�ȏ�̒l
;;height=����\n�\���̈�̍������w�肵�܂�, 1�ȏ�̒l
;;loop=���[�v���邩�ǂ���\n���[�v���s�������ꍇ�� true ���w�肵�܂�, �_���l
;;position=�ړ��掞��\n�w�肵�����Ԃ܂Ńr�f�I�̍Đ��ʒu���ړ��������ꍇ�Ɏw�肵�܂�, �~���b����
;;frame=�ړ���t���[��\n�w�肵���ʒu�܂Ńr�f�I�̍Đ��ʒu���ړ��������ꍇ�Ɏw�肵�܂�, 0�ȏ�̒l
;;mode=�`�惂�[�h\n���[�r�[�̕`�惂�[�h���w�肵�܂�, overlay;layer
;;playrate=�Đ����x\n���f�B�A�̍Đ����x��ݒ肵�܂�, �����l
;;volume=����\n���ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
;;pan=����\n�p�� (���E�̉����ʒu) ���w�肵�܂�, -100�`100�̒l
;;audiostreamnum=�����X�g���[���ԍ�\n�w�肵�������X�g���[���ԍ���L���ɂ��܂�, �����X�g���[���ԍ�(0?)
[macro name="video"]
[kagtag cond=%cond slot=%slot visible=%visible left=%left top=%top width=%width height=%height loop=%loop position=%position frame=%frame mode=%mode playrate=%playrate volume=%volume pan=%pan audiostreamnum=%audiostreamnum]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �s���I�h�C�x���g�̔���
;;�w�肵���t���[���Ńs���I�h�C�x���g�𔭐������邱�Ƃ��ł��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;frame=[�K�{] �t���[���ԍ�\n�s���I�h�C�x���g�𔭐�������t���[���ԍ����w�肵�܂�, 0�ȏ�̒l
[macro name="videoevent"]
[kagtag cond=%cond slot=%slot frame=%frame]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I���C���ݒ�
;;���C���[�`�惂�[�h���ɁA�r�f�I�̉摜��\�������������C�����w�肵�܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;channel=[�K�{] �`�����l��\n���C���`�惂�[�h�ł́A�����ɓ�̃`�����l���Ńr�f�I���Đ��ł��܂�, 1;2
;;page=[�K�{] �y�[�W\n�\�y�[�W("fore")���A���y�[�W("back")�����w�肵�܂�, ���C���[�y�[�W
;;layer=[�K�{] ���C��\n�\�����������C���ԍ����w�肵�܂�, 0�ȏ�̒l
[macro name="videolayer"]
[kagtag cond=%cond slot=%slot channel=%channel page=%page layer=%layer]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�̃Z�O�����g���[�v�Đ�
;;start ������ end �����Ŏ�������ԓ��Ń��[�v�Đ����s���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;start=[�K�{] �J�n�t���[���ԍ�\n���[�v�̎n�_���w�肵�܂�, 0�ȏ�̒l
;;end=[�K�{] �I���t���[���ԍ�\n���[�v�̏I�_���w�肵�܂�, 0�ȏ�̒l
[macro name="videosegloop"]
[kagtag cond=%cond slot=%slot start=%start end=%end]
[endmacro]

;;[���C������] �A�j���[�V�����̒�~�҂�
;;�C�ӂ̃Z�O�����g�̃A�j���[�V�����̒�~��҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;layer=[�K�{] �Ώۃ��C��\n�A�j���[�V�����̒�~��҂��郌�C�����w�肵�܂�, �w�i���C��;�O�i���C��
;;page=�y�[�W\n�\(fore)��ʂ�ΏۂƂ��邩�A��(back)��ʂ�ΏۂƂ��邩���w�肵�܂�, ���C���[�y�[�W
;;seg=[�K�{] �Z�O�����g\n���̑����Ŏw�肵���Z�O�����g�ԍ��̃A�j���[�V�����̒�~��҂��܂�, 0�ȏ�̒l
[macro name="wa"]
[kagtag cond=%cond layer=%layer page=%page seg=%seg]
[endmacro]

;;[�V�X�e������] �E�F�C�g������
;;�E�F�C�g�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;time=[�K�{] ����\n�E�F�C�g���~���b�Ŏw�肵�܂�, �~���b����
;;mode=�E�F�C�g�̕���\n�E�F�C�g�̕������w�肵�܂�, normal;until
;;canskip=�X�L�b�v�ł��邩\n���̃E�F�C�g���A�}�E�X�̃N���b�N��L�[�{�[�h�ŃX�L�b�v�ł��邩���w�肵�܂�, �_���l
[macro name="wait"]
[kagtag cond=%cond time=%time mode=%mode canskip=%canskip]
[endmacro]

;;[�V�X�e������] �N���b�N��҂�
;;�N���b�N��҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
[macro name="waitclick"]
[kagtag cond=%cond]
[endmacro]

;;[�ϐ��ETJS ����] �g���K��҂�
;;TJS2 �X�N���v�g�� trigger ���\�b�h���ĂԂ̂�҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;name=[�K�{] �g���K��\n�҂g���K�����w�肵�܂�, �C�ӕ�����
;;canskip=�X�L�b�v�ł��邩\ntrue ���w�肷��ƁA�N���b�N�ɂ��A�҂�����X�L�b�v���邱�Ƃ��ł��܂�, �_���l
;;onskip=�X�L�b�v���ꂽ�Ƃ�\n�N���b�N�ɂ��X�L�b�v���ꂽ�Ƃ��Ɏ��s���� TJS�� ���w�肵�܂�, TJS��
[macro name="waittrig"]
[kagtag cond=%cond name=%name canskip=%canskip onskip=%onskip]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �t�F�[�h�̏I���҂�
;;BGM �̃t�F�[�h�A�E�g�E�t�F�[�h�C���̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;canskip=�X�L�b�v�ł��邩�ǂ���\ntrue ���w�肷��ƃN���b�N�Ńt�F�[�h�̏I���҂����X�L�b�v�ł��܂�, �_���l
[macro name="wb"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[�V�X�e������] ���������̃E�F�C�g������
;;���������̃E�F�C�g�����܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;time=[�K�{] ������\n�����Ŏw�肵����������\������̂Ɠ��������̎��Ԃ�҂��܂�, �C�ӕ�����
[macro name="wc"]
[kagtag cond=%cond time=%time]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��t�F�[�h�̏I���҂�
;;���ʉ��̃t�F�[�h�A�E�g�E�t�F�[�h�C���̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n�t�F�[�h�̏I����҂o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;canskip=�X�L�b�v�ł��邩�ǂ���\ntrue ���w�肷��ƃN���b�N�Ńt�F�[�h�I���҂����X�L�b�v�ł��܂�, �_���l
[macro name="wf"]
[kagtag cond=%cond buf=%buf canskip=%canskip]
[endmacro]

;;[���x���E�W�����v����] �z�C�[���҂��W�����v
;;���݂̃��b�Z�[�W���C���ɑ΂��ăN���b�N�҂���o�^���܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=�V�i���I�t�@�C����\n�W�����v��̃V�i���I�t�@�C�����w�肵�܂�, �V�i���I�t�@�C����
;;target=���x����\n�W�����v��̃��x�����w�肵�܂�, ���x����
;;func=TJS ��\n�z�C�[�����Ɏ��s����郁�\�b�h�����w�肵�܂�, TJS��
;;exp=TJS ��\n�z�C�[�����Ɏ��s����� TJS �����w�肵�܂�, TJS��
;;se=�z�C�[�����̌��ʉ�\n�z�C�[�����ɍĐ�������ʉ����w�肵�܂�, ���ʉ��t�@�C����
;;sebuf=�z�C�[�����̌��ʉ��̃o�b�t�@�ԍ�\nclickse �Ŏw�肵�����ʉ���炷���ʉ��o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
[macro name="wheel"]
[kagtag cond=%cond storage=%storage target=%target func=%func exp=%exp se=%se sebuf=%sebuf]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �Đ��̏I���҂�
;;BGM �Đ��̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;canskip=�X�L�b�v�ł��邩�ǂ���\ntrue ���w�肷��ƃN���b�N�� BGM �Đ��̏I���҂����X�L�b�v�ł��܂�, �_���l
[macro name="wl"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[���C������] �����ړ��̏I���҂�
;;�����ړ��̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;canskip=�X�L�b�v�ł��邩�ǂ���\ntrue ���w�肷��ƃN���b�N�Ŏ����ړ��̏I���҂����X�L�b�v�ł��܂�, �_���l
[macro name="wm"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�s���I�h�C�x���g�҂�
;;�s���I�h�C�x���g��҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;for=�C�x���g�̎��\n�҂C�x���g�̎�ނ��w�肵�܂�, loop;period;prepare;segLoop
[macro name="wp"]
[kagtag cond=%cond slot=%slot for=%for]
[endmacro]

;;[�V�X�e������] ��ʗh�炵�̏I���҂�
;;quake �^�O�ŊJ�n������ʗh�炵�̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;canskip=�X�L�b�v�ł��邩�ǂ���\ntrue ���w�肷��ƃN���b�N�Ńg�����W�V�����̏I���҂����X�L�b�v�ł��܂�, �_���l
[macro name="wq"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] ���ʉ��Đ��̏I���҂�
;;���ʉ��Đ��̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;buf=���ʉ��o�b�t�@�ԍ�\n�Đ��I����҂o�b�t�@���w�肵�܂�, ���ʉ��o�b�t�@�ԍ�
;;canskip=�X�L�b�v�ł��邩\n���ʉ��Đ����}�E�X�̃N���b�N�ŃX�L�b�v�ł��邩���w�肵�܂�, �_���l
[macro name="ws"]
[kagtag cond=%cond buf=%buf canskip=%canskip]
[endmacro]

;;[���C������] �g�����W�V�����̏I���҂�
;;�g�����W�V�����̏I����҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;canskip=�X�L�b�v�ł��邩�ǂ���\ntrue ���w�肷��ƃN���b�N�Ńg�����W�V�����̏I���҂����X�L�b�v�ł��܂�, �_���l
[macro name="wt"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] �r�f�I�Đ��̏I���҂�
;;�r�f�I�Đ��̏I����Apreparevideo �^�O�ɂ��Đ������̊����Avideoevent �^�O�ɂ��s���I�h�C�x���g��҂��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;slot=���[�r�[�I�u�W�F�N�g�ԍ�\n���̑�����s�����[�r�[�I�u�W�F�N�g�ԍ����w�肵�܂�, ���[�r�[�I�u�W�F�N�g�ԍ�
;;canskip=�X�L�b�v�ł��邩\n�r�f�I�Đ����}�E�X�̃N���b�N�ŃX�L�b�v�ł��邩���w�肵�܂�, �_���l
[macro name="wv"]
[kagtag cond=%cond slot=%slot canskip=%canskip]
[endmacro]

;;[���ʉ��EBGM�E�r�f�I����] BGM �����ւ���
;;BGM �����ւ��܂�
;;cond=TJS���]��\n����]���������ʂ��^�̎��݂̂ɂ��̃^�O�����s����܂�, TJS��
;;storage=[�K�{] BGM �t�@�C����\n���ɍĐ����� BGM �t�@�C�����܂��� CD �g���b�N���w�肵�܂�, BGM�t�@�C����
;;loop=���[�v���邩\nBGM �����[�v���邩���w�肵�܂�, �_���l
;;time=[�K�{] �t�F�[�h����\n�w�肵�����ԂŌ��݂̋Ȃ̃t�F�[�h�A�E�g���s��ꂽ��A�������ԂŎw�肵���Ȃ̃t�F�[�h�C�����s���܂�, �~���b����
;;overlap=�I�[�o�[���b�v����\noverlap �Ɏ��Ԃ�ݒ肷��ƁA���̎��ԕ��A�t�F�[�h�A�E�g�ƃt�F�[�h�C���̎��Ԃ��d�Ȃ�܂�, �~���b����
;;volume=���̋Ȃ̉���\n���̋Ȃ̃t�F�[�h��ɓ��B������ BGM �̉��ʂ� % �Ŏw�肵�܂�, �p�[�Z���g�l
[macro name="xchgbgm"]
[kagtag cond=%cond storage=%storage loop=%loop time=%time overlap=%overlap volume=%volume]
[endmacro]

