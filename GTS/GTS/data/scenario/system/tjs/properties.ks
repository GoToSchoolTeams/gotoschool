[iscript]
/* Properties */
tf.CurrentScene = 0;			//!< ���݂̉�ʁB0=���C�� 1=�Z�[�u 2=���[�h 3=�R���t�B�O
tf.BUTTON_HINT_SEPARATOR="_";   //!< �{�^���̃q���g�e�L�X�g��ԍ��Ǝ��ʔԍ��ɕ����镶��
tf.MESSAGE_LAYER=8;				//!< �e��{�^�����`�悳��郌�C��
tf.currentTab=0;				//!< ���݂̑I���^�u(�K��global�ϐ���n������)
tf.currentTab_Conf=0;			//!< �R���t�B�O��ʂŌ��ݑI������Ă���^�u

/* SystemSaved */
sf.bgmVolume = 100000;
sf.seVolume  = 100000;
sf.masterVolume = 100;             //!< 0~100%
sf.isContinueSkip_Brunch = false;  //!< �I��������X�L�b�v���p�����邩�ǂ���
sf.isSkipReadedText = false;       //!< ���ǃX�L�b�v�̗L��

/* cosnt */
//�V�[���萔
tf.SCENE_MAIN = 0;
tf.SCENE_SAVE = 1;
tf.SCENE_LOAD = 2;
tf.SCENE_CONF = 3;
tf.SCENE_DEBG = 4;

//�^�u�؂�ւ��@�\�p
tf.MAX_TAB_NUM=3;				//!< �^�u�̍ő吔
tf.TAB_BUTTON_SIZE_WIDTH=200;	//!< �^�u�{�^���̉��T�C�Y
tf.TAB_BUTTON_SIZE_HEIGHT=50;	//!< �^�u�{�^���̏c�T�C�Y
tf.BUTTON_BASE_X=192;			//!< �^�u�{�^���̏����ʒu
tf.BUTTON_BASE_Y=-5;			//!< �^�u�{�^���̏����ʒu

//���E�B���h�E�p
tf.SW_HINT_NAME="�f�[�^"; //!< ���E�B���h�E�̎��ʖ��Bhint�Ƃ��ĕ\�������̂œ��{��
tf.MAX_MINIWINDOW_NUM = 6;
tf.MINIWINDOW_SIZE_W = 325;
tf.MINIWINDOW_SIZE_H = 275;
tf.MINIWINDOW_BASE_X = 200 + 25;
tf.MINIWINDOW_BASE_Y = 50 + 25;
tf.MINIWINDOW_LAYER_NUM = 22;

//�폜�p
tf.DL_HINT_NAME="�폜";	  //!< �폜�{�^���̎��ʖ��Bhint�Ƃ��ĕ\�������̂œ��{��
tf.DL_MESSAGE_LAYER=9;	  //!< �폜�{�^�����`�悳��郌�C��
tf.DELETE_SIZE_W = 50;
tf.DELETE_SIZE_H = 50;

//�����G�p(�Z�[�u�f�[�^)
f.lastShowStandImageinfo = new Dictionary();

//------------------
// CG�ETips�p�t���O
//------------------
// CG�J���t���O�ꗗ�B<�t�@�C����(string), �J����(bool)>
sf.CGOpenFlag = new Dictionary();

// Tips�J���t���O�ꗗ�B<Tips��, �J����(bool)>
sf.TipsOpenFlag = new Dictionary();


//------------------
// �I�����ۑ��p�t���O
//------------------
f.Brunch = new Dictionary();
tf.Brunch = new Array();
tf.B_temp = new Dictionary();

//------------------
// TabScene�p
//------------------
//�^�u�֓n���f�[�^
class TabInfo {
	var base = "";
	var name = "";
	var orig = "";
	var pages = new Array();
	
	function addpage(current, other, content) 
	{
		var dist = new Dictionary();
		dist["current"] = current;
		dist["other"] = other;
		dist["content"] = content;
		pages.add(dist);
	}

	function clear() {
		base = "";
		name = "";
		orig = "";
		pages.clear();
	}
}
tf.TabInfo = new TabInfo();

//------------------
// �����G�����y�[�W
//------------------
tf.eyeInfo = new Array();
tf.eyeInfo[0]  = "l_haruka_pose1_n_futsu.png";
tf.eyeInfo[1]  = "m_haruka_pose1_n_futsu.png";
tf.eyeInfo[2]  = "s_haruka_pose1_n_futsu.png";
tf.f_t_current = 0;
tf.f_t_top = 0;
tf.f_t_left = 0;
tf.f_t_size = 0;
tf.f_t_sizemap = ["s", "m", "l"];
[endscript]

[return]
