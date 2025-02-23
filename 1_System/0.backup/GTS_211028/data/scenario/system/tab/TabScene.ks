;右クリックの禁止
[rclick enabled="false"]
;システムボタンの非表示
[sysbtopt forevisible="false" backvisible="false"]
;名前欄の非表示
[layopt layer="message1" visible="false"]
;テキストの非表示
[layopt layer="message0" visible="false"]
;メッセージボックスの非表示
[layopt layer="9" visible="false"]

;システム画面の初期化
[call storage="InitSys.ks"]

;タブボタンによってシナリオを読み直したよフラグを下ろす
[eval exp="tf.IsChangeBack=0"]

;背景の読み込み
[eval exp="tf.currentLayer=21"]
[image storage="&tf.TabInfo.base" layer="&tf.currentLayer" visible="true" left=200 top=50]


;【ボタンの機能作成】
;ボタンの下地画像読み込み
;ボタンはメッセージレイヤでしか使えないので、メッセージレイヤの生成
[position layer="message8"  height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="0"]
[position layer="message9"  height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="0"]
[position layer="message10" height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="0"]

[current layer="message8"]

; BACKボタンに改造したいンゴ
[locate x="80" y="400"]
[button graphic="EXIT_button_message" storage="title.ks"]

;ループ用カウンタ
[eval exp="tf.counter=0"]

;タブボタンがクリックされたかどうか
[eval exp="tf.isClickedTab=0"]

*Tab
[if exp="tf.counter != tf.TabInfo.pages.count"]
	;page情報
	[eval exp="tf.page = tf.TabInfo.pages[tf.counter]"]

	;メッセージレイヤの変更
	[current layer="message8"]

	;タブボタンの位置計算
	[eval exp="tf.temp_x = global.GetTabButtonPosition(0, tf.counter)"]
	[eval exp="tf.temp_y = global.GetTabButtonPosition(1, tf.counter)"]
	[locate x="&tf.temp_x" y="&tf.temp_y"]

	;タブボタン作成
	[eval exp="tf.TabName = global.CreateButtonHintName(tf.TabInfo.name, tf.counter)"]

	;現在選択されているものかそうでないかで画像を切り替える
	[if exp="tf.counter == tf.currentTab"]
		[button graphic="&tf.page.current" hint="&tf.TabName" target="*TabClick" exp="tf.isClickedTab=1"]
	[else]
		[button graphic="&tf.page.other" hint="&tf.TabName" target="*TabClick" exp="tf.isClickedTab=1"]
	[endif]

	;カウンタの更新
	[eval exp="++tf.counter"]

	;ループ地点まで戻る
	[jump target="*Tab"]
[else]
	;ループの最後でカウンターリセット
	[eval exp="tf.counter = 0"]
[endif]

*TabClick
[if exp="tf.isClickedTab == 1"]
;タブボタンはMessageLayer8においてある
[eval exp="global.ChangeTab(8, tf.TabInfo.name)"]
;タブ変更によってシナリオを読み直したよフラグを立てる
[eval exp="tf.IsChangeBack=1"]
[jump target="*Return"]
[endif]


*BrunchTabMenu
[call storage="&tf.TabInfo.pages[tf.currentTab].content"]

*Return
;使用した変数を開放し、また表示待ちを復活させてコンフィグシーンに戻る
[if exp="tf.isClickedTab == 1"]
	;Layerの非表示
	[eval exp="global.ClearSystemMessage()"]
	[jump storage="&tf.TabInfo.orig"]
[endif]
