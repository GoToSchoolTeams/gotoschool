;!--------------------------------------------------------------------------
;! @brief ショートカットキーの入力監視と登録関数をまとめたソースコードです
;!        変数定義はscenario/scripts/properties.ksを参照してください
;!--------------------------------------------------------------------------
[iscript]
//ショートカットの機能一覧(ENUMが使えれば...!)
tf.SC_SKIP   = 0;
tf.SC_AUTO   = 1;
tf.SC_LOG    = 2;
tf.SC_SAVE   = 3;
tf.SC_LOAD   = 4;
tf.SC_HIDE   = 5;
tf.SC_CONFIG = 6;
tf.SC_MAX 	 = 7;

sf.shortCutDic = new Array(); //!< ショートカットキーの組み合わせ(中身は配列にしたい)

tf.targetFunc = -1; //!< ショートカットキーを変更したい機能(0～5)
tf.updateTarget = null; //!< ショートカットキー変更時に読み直したいシナリオファイル名
tf.isKeyUpdateNow = false; //!< 現在キーの変更中かどうか

function InitShortCut()
{
	//! 初回起動時のデフォルトショートカット読み込み
	if(sf.shortCutDic.count == 0)
	{
		RegDefaultShortCut();
	}

	//!< ショートカット用フック関数を登録
	global.RegShortCut();
}

function RegDefaultShortCut()
{
	for(var i = 0; i < tf.SC_MAX; i++)
	{
		var key, shift;
		
		switch(i)
		{
			case tf.SC_SKIP:
				key = VK_A;
				shift = 0;
				break;
			case tf.SC_AUTO:
				key = VK_S;
				shift = 0;
				break;
			case tf.SC_LOG:
				key = VK_D;
				shift = 0;
				break;
			case tf.SC_SAVE:
				key = VK_F;
				shift = 0;
				break;
			case tf.SC_LOAD:
				key = VK_G;
				shift = 0;
				break;
			case tf.SC_HIDE:
				key = VK_H;
				shift = 0;
				break;
			case tf.SC_CONFIG:
				key = VK_J;
				shift = 0;
				break;
			default:
				break;
		}
		global.Reg(key, shift, i);
	}
}

function RegShortCut()
{
	kag.keyDownHook.add(global.ShortCutKeyDownHook);
}

function UnRegShortCut()
{
	kag.keyDownHook.remove(global.ShortCutKeyDownHook);
}

function RegKey(target, updateTarget)
{
	//! 登録する機能を保存
	tf.targetFunc = target;
	tf.updateTarget = updateTarget;
	tf.isKeyUpdateNow = true;

	//! ショートカットキーを一時無効に
	global.UnRegShortCut();
	
	//! キー登録用関数をフック
	kag.keyDownHook.add(global.RegShortCutKey);
	
	//! 変数に更新があるのでアップデートをかける
	kag.process(tf.updateTarget);
}

function UnRegKey()
{
	//! キー登録用関数を削除
	kag.keyDownHook.remove(global.RegShortCutKey);
	
	//! ショートカットキーを再度有効化
	global.RegShortCut();
}

//! ショートカット実行用フック関数
function ShortCutKeyDownHook(key, shift)
{
	var max = sf.shortCutDic.count;

	//! 入力されたキーがショートカットに登録されているかどうか検索
	for(var i = 0; i < max; i++)
	{
		//! 全ショートカットコマンドを検索
		var keyArray = sf.shortCutDic[i]; //!< コマンド名からショートカットコマンドを取得
		
		//! ショートカットキーの照合(ショートカットはkey+shiftの2キーだけ)
		if( key == keyArray[0] && shift == keyArray[1] )
		{
			DoCommand(i);
		}
		
	}
}

//! コマンドの中身
function DoCommand(command)
{
	System.inform( "Command:%d".sprintf(command) );
	switch(command)
	{
		case tf.SC_SKIP:
			break;
		case tf.SC_AUTO:
			break;
		case tf.SC_LOG:
			break;
		case tf.SC_SAVE:
			break;
		case tf.SC_LOAD:
			break;
		case tf.SC_HIDE:
			break;
		case tf.SC_CONFIG:
			break;
		default:
			break;
	}
}

//! ショートカットキー登録用フック関数
function RegShortCutKey(key, shift)
{
	var isComplete = false;

	//! Escが来たら終了
	if(key == VK_ESCAPE)
	{
		global.UnRegKey();
		isComplete = true;
	}
	//! Escが来るまでkey, shiftを対象の配列に保存し続ける
	else
	{
		if(global.IsEnableKey(key) == false) return; //!< 無効キーがきたらその場でReturn

		global.Reg(key, shift, tf.targetFunc);
	}

	//! 画面更新のため指定されたシナリオを読み直す
	kag.process(tf.updateTarget);
	
	if(isComplete)
	{
		tf.targetFunc = -1;
		tf.updateTarget = null;
		tf.isKeyUpdateNow = false;
	}
}

function Reg(key, shift, target)
{
	var saveKeyArray = new Array();
	saveKeyArray[0] = key;
	saveKeyArray[1] = shift;
		
	sf.shortCutDic[target] = saveKeyArray;
}

function IsEnableKey(key)
{
	var enabled = false;
	switch(key)
	{
		case VK_TAB:     enabled = true; break;
		case VK_SHIFT:   enabled = true; break;
		case VK_CONTROL: enabled = true; break;
		case VK_MENU:    enabled = true; break;
	}
	if(enabled == false)
	{
		if(VK_0 <= key && key <= VK_9){
			 enabled = true;
		}
		if(VK_A <= key && key <= VK_Z){
			 enabled = true;
		}
	}
	return enabled;
}

function GetCommandString(command)
{
	var returnStr;
	
	var commandArray = sf.shortCutDic[command];
	var key   = commandArray[0];
	var shift = commandArray[1];

	//! keyを文字に変換。有効キーのみ
	switch(key)
	{
		case VK_TAB:     returnStr += "Tab"; break;
		case VK_SHIFT:   returnStr += "Shift"; break;
		case VK_CONTROL: returnStr += "Ctrl"; break;
		case VK_MENU:    returnStr += "Alt"; break;
		case VK_0:		 returnStr += "0"; break;
		case VK_1:		 returnStr += "1"; break;
		case VK_2:		 returnStr += "2"; break;
		case VK_3:		 returnStr += "3"; break;
		case VK_4:		 returnStr += "4"; break;
		case VK_5:		 returnStr += "5"; break;
		case VK_6:		 returnStr += "6"; break;
		case VK_7:		 returnStr += "7"; break;
		case VK_8:		 returnStr += "8"; break;
		case VK_9:		 returnStr += "9"; break;
		case VK_A:		 returnStr += "A"; break;
		case VK_B:		 returnStr += "B"; break;
		case VK_C:		 returnStr += "C"; break;
		case VK_D:		 returnStr += "D"; break;
		case VK_E:		 returnStr += "E"; break;
		case VK_F:		 returnStr += "F"; break;
		case VK_G:		 returnStr += "G"; break;
		case VK_H:		 returnStr += "H"; break;
		case VK_I:		 returnStr += "I"; break;
		case VK_J:		 returnStr += "J"; break;
		case VK_K:		 returnStr += "K"; break;
		case VK_L:		 returnStr += "L"; break;
		case VK_M:		 returnStr += "M"; break;
		case VK_N:		 returnStr += "N"; break;
		case VK_O:		 returnStr += "O"; break;
		case VK_P:		 returnStr += "P"; break;
		case VK_Q:		 returnStr += "Q"; break;
		case VK_R:		 returnStr += "R"; break;
		case VK_S:		 returnStr += "S"; break;
		case VK_T:		 returnStr += "T"; break;
		case VK_U:		 returnStr += "U"; break;
		case VK_V:		 returnStr += "V"; break;
		case VK_W:		 returnStr += "W"; break;
		case VK_X:		 returnStr += "X"; break;
		case VK_Y:		 returnStr += "Y"; break;
		case VK_Z:		 returnStr += "Z"; break;
	}

	//! shiftを文字変換(同時押し許可はAlt、Shift、Ctrlのみ)
	if( (shift & ssAlt) != 0)
	{
		if(key != VK_MENU)
		{
			returnStr += " + Alt";
		}
	}
	if( (shift & ssShift) != 0)
	{
		if(key != VK_SHIFT)
		{
			returnStr += " + Shift";
		}
	}
	if( (shift & ssCtrl) != 0)
	{
		if(key != VK_CONTROL)
		{
			returnStr += " + Ctrl";
		}
	}
	return returnStr;
}

function GetCommandName(index)
{
	var name = "unknown";
	switch(index)
	{
		case tf.SC_SKIP:   name="Skip";   break;
		case tf.SC_AUTO:   name="Auto";   break;
		case tf.SC_LOG:    name="Log";    break;
		case tf.SC_SAVE:   name="Save";   break;
		case tf.SC_LOAD:   name="Load";   break;
		case tf.SC_HIDE:   name="Hide";   break;
		case tf.SC_CONFIG: name="Config"; break;
		default: break;
	}
	return name;
}

[endscript]

[return]
