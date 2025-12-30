[iscript]
//! @brief 各種ボリューム設定の読み込み
function ApplyVolume()
{
	//var per = sf.masterVolume / 100;
	//kag.bgm.buf1.volume2 = 100;
	//kag.se[0].volume2 	 = 100;
}

function OnChangeVolumeInSlider(vol, isDrag)
{
	global.ApplyVolume();
}

//! @brief 最後のクリックされたボタンのヒントテキストからクリックされたボタンヒントを取得する
//! @param[in] typeName ボタンの種類
//! @return ボタン番号。見つからないときは-1を返す
function GetLastClickedButtonIndex(buttonTypeName, layer)
{
	//! クリックしたボタンをメッセージレイヤから検索する
	var lastclicklink = kag.fore.messages[layer].lastProcessLink;
	if(lastclicklink < 0) return -1;

	//! クリックしたボタンを取得
	var lastClicked = kag.fore.messages[layer].links[lastclicklink];

	//! 本当にボタンかどうかチェック
	if(lastClicked.type == 2)
	{
		//! "XXX_数値" → [0]"XXX" [1]"数値"
		var hint_str = lastClicked.object.hint;
		var hint_array = hint_str.split(tf.BUTTON_HINT_SEPARATOR, true);
		if(hint_array.length == 2)
		{
			//! タイプチェック
			if(hint_array[0] == buttonTypeName)
			{
				//! タイプがあっていれば数値を返す
				return hint_array[1];
			}
		}
	}
	
	//! 見つからなかった場合は-1
	return -1;
}

/* ボタンが押されたときの挙動 */

//! @brief 現在のタブを押されたボタンによって変更する
//! @note  セーブ・ロード画面でタブボタンがクリックされたとき実行されます
function ChangeTab(layerNo, type)
{
	//!< 最後にクリックされたボタンの番号を取得する
	var buttonIndex = global.GetLastClickedButtonIndex(type, layerNo);
	if(buttonIndex >= 0)
	{
		tf.currentTab = buttonIndex;
	}
}

function MiniWindowAction(layerNo, storage, label)
{
	//! まずボタン番号を取る
	var buttonIndex = global.GetLastClickedButtonIndex(tf.SW_HINT_NAME, layerNo);

	//! セーブ
	if(tf.CurrentScene == tf.SCENE_SAVE)
	{
		global.SaveAction(buttonIndex);
	}

	//! ロード
	else if(tf.CurrentScene == tf.SCENE_LOAD)
	{
		global.LoadAction(buttonIndex);
	}

	//! 指定されたシナリオへジャンプする
	kag.process(storage, label);
}

function SaveAction(num)
{
	//! Yes No問い合わせるセーブを呼ぶ
	if(num >= 0)
	{	
		var result = kag.saveBookMarkWithAsk(num);

		if(result == true)
		{
			sf.LatestTab = num \ tf.MAX_MINIWINDOW_NUM; //!< セーブに成功したときのタブ番号を保存
		}
;	}
	else
	{
		System.inform("セーブに失敗しました");
	}
}

function LoadAction(num)
{
	//! Yes No問い合わせるロードを呼ぶ
	if(num >= 0)
	{
		kag.loadBookMarkWithAsk(num);
	}
	else
	{
		System.inform("ロードに失敗しました");
	}
}

function DeleteAction(storage, label)
{
	//! まずボタン番号を取る
	var buttonIndex = global.GetLastClickedButtonIndex(tf.DL_HINT_NAME, tf.DL_MESSAGE_LAYER);

	//! YESNO表示
	var message = "データ:%dを削除します".sprintf(buttonIndex);
	var result = askYesNo(message);

	if(result == 1)
	{
		//! 削除APIを呼ぶ
		kag.eraseBookMark(buttonIndex);
	}
	
	//! 指定されたシナリオへジャンプする
	kag.process(storage, label);
}
/* 表示位置取得系 */

//! @brief タブボタンの表示位置を取得する
//! @param[in] position 縦横どちらか。0で横位置 1で縦位置
//! @param[in] num 何個目のボタンか
//! @return 位置(整数)
function GetTabButtonPosition(position, num)
{
	var returnPos = 0;
	var base = 0;
	var addition = 0;

	if(position >= 2)
	{
		return 0;
	}

	if(position == 0)
	{
		base = tf.BUTTON_BASE_X;
		addition = tf.BUTTON_BASE_X;
	}
	else if(position == 1)
	{
		base = tf.BUTTON_BASE_Y;
		addition = 0;
	}

	returnPos = base + (addition * num);
	return returnPos;
}

//! @brief 少ウィンドウの表示位置を取得する
//! @param[in] position 縦横どちらか。0で横位置 1で縦位置
//! @param[in] sort 縦並びか横並びか。0で横並び 1で縦並び
//! @param[in] max 最大何個表示されるか
//! @param[in] num 何個目のボタンか
//! @return 位置(整数)
function GetMiniWindowPosition(position, sort, max, num)
{
	var returnPos = 0;
	var base = 0;
	var addition = 0;

	if(position >= 2 || sort >= 2)
	{
		return 0;
	}

	if(position == 0)
	{
		base = tf.MINIWINDOW_BASE_X;
		addition = tf.MINIWINDOW_SIZE_W;
	}
	else if(position == 1)
	{
		base = tf.MINIWINDOW_BASE_Y;
		addition = tf.MINIWINDOW_SIZE_H;
	}
	
	if(sort == 0)
	{
		returnPos = base + ( addition * (num % max) );
	}
	else if(sort == 1)
	{
		returnPos = base + ( addition * (num \ max) );
	}

	return returnPos;
}


/* 名前取得系 */

//! @brief タブの画像名を取得する
//! @param[in] num 何個面のボタンか
function GetTabGraphicName(num)
{
	var returnName;

	if(num == tf.currentTab)
	{
		returnName = "tab_switch_current";
	}
	else
	{
		returnName = "tab_switch_other";
	}
	
	return returnName;
}

//! @brief ボタン用ヒント名を取得する
//! @param[in] hint ヒント名
//! @param[in] hint 何個目のボタンか
//! @return ヒント名
function CreateButtonHintName(hint, num)
{
	var returnName = hint + tf.BUTTON_HINT_SEPARATOR + num;
	return returnName;
}

//! @brief 立ち絵の名前を取得する
//! @param[in] who  キャラ名
//! @param[in] pose 立ち絵のポーズ
//! @param[in] face 立ち絵の表情
//! @param[in] size 立ち絵のサイズ
//! @param[in] tere 照れの差分の有無
function GetStandFileName(who, pose, face, size, tere)
{
	var filename = "";
	if(tere == "true") {
		filename = size + "_" + who + "_" + "pose" + pose + "_tere_" + face + ".png";
	} else {
		filename = size + "_" + who + "_" + "pose" + pose + "_n_" + face + ".png";
	}
	return filename;
}

//! @brief 立ち絵の表示位置を取得する
//! @param[in] pos プリセットの位置
function GetStandLeft(pos)
{
	var master_side = 280;
	var master_middle_side = 170;
	switch(pos)
	{
		case "c":  return 0;
		case "lc": return master_middle_side * -1;
		case "l" : return master_side * -1;
		case "rc": return master_middle_side;
		case "r" : return master_side;
	}
}

function ClearSystemMessage()
{
	var elm = new Dictionary();
	while(tf.currentLayer >= 21)
	{
		elm["layer"] = "%d".sprintf(tf.currentLayer);
		elm["visible"] = false;
		kag.getHandlers()["layopt"](elm);
		tf.currentLayer -= 1;
	}
}

function toggleAutoMode()
{
	if(kag.autoMode == false) {
		kag.autoModeMenuItem.click();
	} else {
		kag.autoMode = false;
	}
}

function toggleMessage()
{
	if(tf.isHiddenMessage == false)
	{
		tf.isHiddenMessage = true;
		kag.callExtraConductor('hidemessage.ks','*Hidden');
		kag.leftClickHook.add(toggleMessage);
	}
	else
	{
		tf.isHiddenMessage = false;
		kag.callExtraConductor('hidemessage.ks','*Show');
		kag.leftClickHook.remove(toggleMessage);
	}
}

//-----------------
//! デバッグ用関数
//-----------------
function ShowDialog(val)
{
	System.inform( val );
}

function DebugJump(storage)
{
	try { kag.process(storage, "*debug"); }
	catch{ kag.process(storage, ""); }
}
[endscript]



[return]
