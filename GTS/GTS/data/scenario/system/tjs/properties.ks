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

//! �e�����G��LEFT�v�Z�̂��߂̒l
tf.RectSize = 1280;
tf.PosToNum = %["l"=>0, "lc"=>1, "c"=>2, "rc"=>3, "r"=>4];
tf.StandLeftParam = new Dictionary();
tf.StandLeftParam["s"] = %["space"=>151,"width"=>210];
tf.StandLeftParam["m"] = %["space"=>263,"width"=>370];
tf.StandLeftParam["l"] = %["space"=>385,"width"=>510];
tf.StandLeftParam["margin"] = 100;
tf.StandLeftParam["split"] = 5;

//! �e�����G��TOP�̍��W
tf.StandTopMap = new Dictionary();
tf.StandTopMap["haruka"] = new Dictionary();
tf.StandTopMap["haruka"]["1"] = new Dictionary();
tf.StandTopMap["haruka"]["2"] = new Dictionary();
tf.StandTopMap["haruka"]["1"]["s"] = 50;
tf.StandTopMap["haruka"]["1"]["m"] = -114;
tf.StandTopMap["haruka"]["1"]["l"] = -284;
tf.StandTopMap["haruka"]["2"]["s"] = 49;
tf.StandTopMap["haruka"]["2"]["m"] = -102;
tf.StandTopMap["haruka"]["2"]["l"] = -258;

tf.StandTopMap["najimi"] = new Dictionary();
tf.StandTopMap["najimi"]["1"] = new Dictionary();
tf.StandTopMap["najimi"]["2"] = new Dictionary();
tf.StandTopMap["najimi"]["1"]["s"] = 47;
tf.StandTopMap["najimi"]["1"]["m"] = -128;
tf.StandTopMap["najimi"]["1"]["l"] = -221;
tf.StandTopMap["najimi"]["2"]["s"] = 46;
tf.StandTopMap["najimi"]["2"]["m"] = -88;
tf.StandTopMap["najimi"]["2"]["l"] = -219;

tf.StandTopMap["satori"] = new Dictionary();
tf.StandTopMap["satori"]["1"] = new Dictionary();
tf.StandTopMap["satori"]["1"]["s"] = 0;
tf.StandTopMap["satori"]["1"]["m"] = 0;
tf.StandTopMap["satori"]["1"]["l"] = 0;

tf.StandTopMap["naruse"] = new Dictionary();
tf.StandTopMap["naruse"]["1"] = new Dictionary();
tf.StandTopMap["naruse"]["2"] = new Dictionary();
tf.StandTopMap["naruse"]["1"]["s"] = 35;
tf.StandTopMap["naruse"]["1"]["m"] = -87;
tf.StandTopMap["naruse"]["1"]["l"] = -292;
tf.StandTopMap["naruse"]["2"]["s"] = 32;
tf.StandTopMap["naruse"]["2"]["m"] = -135;
tf.StandTopMap["naruse"]["2"]["l"] = -302;

tf.StandTopMap["gaia"] = new Dictionary();
tf.StandTopMap["gaia"]["1"] = new Dictionary();
tf.StandTopMap["gaia"]["1"]["s"] = 40;
tf.StandTopMap["gaia"]["1"]["m"] = -117;
tf.StandTopMap["gaia"]["1"]["l"] = -273;

tf.StandTopMap["gaia_kids"] = new Dictionary();
tf.StandTopMap["gaia_kids"]["1"] = new Dictionary();
tf.StandTopMap["gaia_kids"]["1"]["s"] = -45;
tf.StandTopMap["gaia_kids"]["1"]["m"] = -319;
tf.StandTopMap["gaia_kids"]["1"]["l"] = -598;

tf.StandTopMap["mash"] = new Dictionary();
tf.StandTopMap["mash"]["1"] = new Dictionary();
tf.StandTopMap["mash"]["1"]["s"] = 25;
tf.StandTopMap["mash"]["1"]["m"] = -30;
tf.StandTopMap["mash"]["1"]["l"] = -80;

tf.StandTopMap["orutega"] = new Dictionary();
tf.StandTopMap["orutega"]["1"] = new Dictionary();
tf.StandTopMap["orutega"]["1"]["s"] = 37;
tf.StandTopMap["orutega"]["1"]["m"] = -110;
tf.StandTopMap["orutega"]["1"]["l"] = -271;

tf.StandTopMap["sakurako"] = new Dictionary();
tf.StandTopMap["sakurako"]["1"] = new Dictionary();
tf.StandTopMap["sakurako"]["1"]["s"] = 0;
tf.StandTopMap["sakurako"]["1"]["m"] = 0;
tf.StandTopMap["sakurako"]["1"]["l"] = 0;

tf.StandTopMap["takahashi"] = new Dictionary();
tf.StandTopMap["takahashi"]["1"] = new Dictionary();
tf.StandTopMap["takahashi"]["1"]["s"] = 120;
tf.StandTopMap["takahashi"]["1"]["m"] = 90;
tf.StandTopMap["takahashi"]["1"]["l"] = 60;

tf.StandTopMap["miyabi"] = new Dictionary();
tf.StandTopMap["miyabi"]["1"] = new Dictionary();
tf.StandTopMap["miyabi"]["1"]["s"] = 200;
tf.StandTopMap["miyabi"]["1"]["m"] = 160;
tf.StandTopMap["miyabi"]["1"]["l"] = 120;

//nopos=true�̏ꍇ(byMahiro)
tf.StandTopMap["nopos"] = new Dictionary();
tf.StandTopMap["nopos"]["1"] = new Dictionary();
tf.StandTopMap["nopos"]["2"] = new Dictionary();
tf.StandTopMap["nopos"]["3"] = new Dictionary();
tf.StandTopMap["nopos"]["1"]["s"] = 0;
tf.StandTopMap["nopos"]["1"]["m"] = 0;
tf.StandTopMap["nopos"]["1"]["l"] = 0;
tf.StandTopMap["nopos"]["2"]["s"] = 0;
tf.StandTopMap["nopos"]["2"]["m"] = 0;
tf.StandTopMap["nopos"]["2"]["l"] = 0;
tf.StandTopMap["nopos"]["3"]["s"] = 0;
tf.StandTopMap["nopos"]["3"]["m"] = 0;
tf.StandTopMap["nopos"]["3"]["l"] = 0;


tf.StandPositionMap = new Dictionary();
tf.StandPositionMap["s"] = new Dictionary();
tf.StandPositionMap["s"]["l"] = 10;
tf.StandPositionMap["s"]["lc"] = 10;
tf.StandPositionMap["s"]["c"] = 410;
tf.StandPositionMap["s"]["rc"] = 10;
tf.StandPositionMap["s"]["r"] = 10;
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
tf.eyeInfo[0] = %["fg"=>"s_gaia_pose1_egao.png", "bg"=>"eyelevel_gaia.png"];
tf.eyeInfo[1] = %["fg"=>"s_gaia_kids_pose1_chinsyaku.png", "bg"=>"eyelevel_gaia_yousyouki.png"];
tf.eyeInfo[2] = %["fg"=>"s_haruka_pose1_ai.png", "bg"=>"eyelevel_haruka_pose1.png"];
tf.eyeInfo[3] = %["fg"=>"s_haruka_pose2_ai.png", "bg"=>"eyelevel_harula_pose2.png"];
tf.eyeInfo[4] = %["fg"=>"s_mash_pose1_doya.png", "bg"=>"eyelevel_masshu.png"];
tf.eyeInfo[5] = %["fg"=>"s_najimi_pose1_do.png", "bg"=>"eyelevel_najimi_pose1.png"];
tf.eyeInfo[6] = %["fg"=>"s_najimi_pose2_do.png", "bg"=>"eyelevel_najimi_pose2.png"];
tf.eyeInfo[7] = %["fg"=>"s_naruse_pose1_hohoho.png", "bg"=>"eyelevel_naruse_pose1.png"];
tf.eyeInfo[8] = %["fg"=>"s_naruse_pose2_futsu.png", "bg"=>"eyelevel_naruse_pose2.png"];
tf.eyeInfo[9] = %["fg"=>"s_satori_pose1_futsu.png", "bg"=>"eyelevel_satori.png"];
tf.eyeInfo[10] = %["fg"=>"s_orutega_pose1_kanasii.png", "bg"=>"eyelevel_orutega.png"];
tf.f_t_current = 0;
tf.f_t_top = 0;
tf.f_t_left = 0;
tf.f_t_size = 0;
tf.f_t_sizemap = ["s", "m", "l"];
[endscript]

[return]
