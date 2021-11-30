;;タブを生成するサブルーチン
;;tf.currentTabにグローバル変数を格納し
;;tf.sceneNameに呼び出し元のファイル名
;;tf.sceneTargetに呼び出し元の栞名を入れる


*TabButton
;タブの数だけループ
[if exp="tf.counter != tf.MAX_TAB_NUM"]

	;ボタン表示位置の計算
	[eval exp="tf.temp_x = global.GetTabButtonPosition(0, tf.counter)"]
	[eval exp="tf.temp_y = global.GetTabButtonPosition(1, tf.counter)"]
	
	;ボタン表示位置の決定
	[current layer="message8"]
	[locate x="&tf.temp_x" y="&tf.temp_y"]
	
	;ボタン表示
	[eval exp="tf.Tabbuttonname = global.CreateButtonHintName(tf.TAB_HINT_NAME,tf.counter)"]
	[eval exp="tf.TabGraphicName = global.GetTabGraphicName(tf.counter)"]
	[button graphic="&tf.TabGraphicName" target="*TabClicked" hint="&tf.Tabbuttonname" exp="tf.isClickedTab=1"]
	
	;カウンタの更新
	[eval exp="++tf.counter"]

	;ループ地点まで戻る
	[jump target="*TabButton"]

[else]
;ループの最後でカウンターリセット
[eval exp="tf.counter = 0"]
[endif]

*TabClicked
[if exp="tf.isClickedTab == 1"]
[eval exp="global.ChangeCurrentTab()"]
[jump target="*Return"]
[endif]

[return]
