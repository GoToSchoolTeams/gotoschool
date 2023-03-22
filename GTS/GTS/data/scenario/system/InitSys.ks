;システム画面の非表示
[eval exp="tf.counter=8"]
[cm]

*Return_visible_off
[if exp="tf.counter < 34"]
	[layopt layer="&tf.counter" visible="false"]
	[eval exp="tf.counter += 1"]
	[jump target="*Return_visible_off"]
[endif]

;システム画面のメッセージレイヤの非表示
[layopt layer="message8" page="fore" visible="false"]
[layopt layer="message9" page="fore" visible="false"]
[layopt layer="message10" page="fore" visible="false"]

[return]
