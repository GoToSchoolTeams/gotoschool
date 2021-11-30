;スキップの設定ボタン
[nowait]

[iscript]
tf.file = "config.ks";
[endscript]

[locate x=300 y=90]
SC1[button graphic="testbutton" exp="global.RegKey(0, tf.file)"][locate x=460][emb exp="global.GetCommandString(0)"]
[locate x=300 y=180]
SC2[button graphic="testbutton" exp="global.RegKey(1, tf.file)"][locate x=460][emb exp="global.GetCommandString(1)"]
[locate x=300 y=270]
SC3[button graphic="testbutton" exp="global.RegKey(2, tf.file)"][locate x=460][emb exp="global.GetCommandString(2)"]
[locate x=300 y=360]
SC4[button graphic="testbutton" exp="global.RegKey(3, tf.file)"][locate x=460][emb exp="global.GetCommandString(3)"]
[locate x=300 y=450]
SC5[button graphic="testbutton" exp="global.RegKey(4, tf.file)"][locate x=460][emb exp="global.GetCommandString(4)"]
[locate x=300 y=540]
SC6[button graphic="testbutton" exp="global.RegKey(5, tf.file)"][locate x=460][emb exp="global.GetCommandString(5)"]

[endnowait]

*RegButtonClicked
;ショートカットキー登録中は黒幕を出し、他のボタンを無効化しておく
[if exp="tf.isKeyUpdateNow == true"]
	[nowait]
		[SystemMessageVisible flag="false"]
		[position layer="message11" height="720" width="1280" left="0" top="0" visible="true" page="fore" opacity="128"]
		[current layer="message11"]
	
		[iscript]
			tf.cName = global.GetCommandName(tf.targetFunc) + ":" + global.GetCommandString(tf.targetFunc);
		[endscript]
	
		[locate x=550 y=250]
		[emb exp="tf.cName"]

	[endnowait]
[else]
	[current layer="message8"]
	[position layer="message11" visible="false"]
[endif]

[return]
