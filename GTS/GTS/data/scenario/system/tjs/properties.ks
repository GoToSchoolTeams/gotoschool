[iscript]
/* Properties */
tf.CurrentScene = 0;			//!< 現在の画面。0=メイン 1=セーブ 2=ロード 3=コンフィグ
tf.BUTTON_HINT_SEPARATOR="_";   //!< ボタンのヒントテキストを番号と識別番号に分ける文字
tf.MESSAGE_LAYER=8;				//!< 各種ボタンが描画されるレイヤ
tf.currentTab=0;				//!< 現在の選択タブ(必ずglobal変数を渡すこと)
tf.currentTab_Conf=0;			//!< コンフィグ画面で現在選択されているタブ

/* SystemSaved */
sf.bgmVolume = 100000;
sf.seVolume  = 100000;
sf.masterVolume = 100;             //!< 0~100%
sf.isContinueSkip_Brunch = false;  //!< 選択肢後もスキップを継続するかどうか
sf.isSkipReadedText = false;       //!< 既読スキップの有無

/* cosnt */
//シーン定数
tf.SCENE_MAIN = 0;
tf.SCENE_SAVE = 1;
tf.SCENE_LOAD = 2;
tf.SCENE_CONF = 3;
tf.SCENE_DEBG = 4;

//タブ切り替え機能用
tf.MAX_TAB_NUM=3;				//!< タブの最大数
tf.TAB_BUTTON_SIZE_WIDTH=200;	//!< タブボタンの横サイズ
tf.TAB_BUTTON_SIZE_HEIGHT=50;	//!< タブボタンの縦サイズ
tf.BUTTON_BASE_X=192;			//!< タブボタンの初期位置
tf.BUTTON_BASE_Y=-5;			//!< タブボタンの初期位置

//少ウィンドウ用
tf.SW_HINT_NAME="データ"; //!< 少ウィンドウの識別名。hintとして表示されるので日本語
tf.MAX_MINIWINDOW_NUM = 6;
tf.MINIWINDOW_SIZE_W = 325;
tf.MINIWINDOW_SIZE_H = 275;
tf.MINIWINDOW_BASE_X = 200 + 25;
tf.MINIWINDOW_BASE_Y = 50 + 25;
tf.MINIWINDOW_LAYER_NUM = 22;

//削除用
tf.DL_HINT_NAME="削除";	  //!< 削除ボタンの識別名。hintとして表示されるので日本語
tf.DL_MESSAGE_LAYER=9;	  //!< 削除ボタンが描画されるレイヤ
tf.DELETE_SIZE_W = 50;
tf.DELETE_SIZE_H = 50;

//立ち絵用(セーブデータ)
f.lastShowStandImageinfo = new Dictionary();

//------------------
// CG・Tips用フラグ
//------------------
// CG開放フラグ一覧。<ファイル名(string), 開放状況(bool)>
sf.CGOpenFlag = new Dictionary();

// Tips開放フラグ一覧。<Tips名, 開放状況(bool)>
sf.TipsOpenFlag = new Dictionary();


//------------------
// 選択肢保存用フラグ
//------------------
f.Brunch = new Dictionary();
tf.Brunch = new Array();
tf.B_temp = new Dictionary();

//------------------
// TabScene用
//------------------
//タブへ渡すデータ
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
// 立ち絵調整ページ
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
