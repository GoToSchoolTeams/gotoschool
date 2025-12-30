;【シウステム画面の終了処理】

;システム画面の非表示
[eval exp="tf.counter=8"]

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

;【システム画面の処理　終了】



;【シナリオ画面への復帰処理】
;システムボタンの表示
[sysbtopt forevisible="true" backvisible="false"]
;名前欄の表示
[layopt layer="message1" visible="true"]
;テキストの表示
[layopt layer="message0" visible="true"]
;メッセージボックスの表示
[layopt layer="7" visible="true"]
;処理対象のメッセージレイヤーを元に戻す
[current layer="message0" page="fore"]
;右クリックの許可
[rclick call="true" storage="hidemessage.ks" target="*rclick" enabled="true"]
;systembuttonからコールで飛んでくるので。
[return]
