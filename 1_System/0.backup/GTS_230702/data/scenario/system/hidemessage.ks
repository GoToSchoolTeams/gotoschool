*rclick
;【メッセージボックスの消去】
;右クリック時の反応の変更（メッセジ消去→メッセジ復活へ）
[rclick enabled="true" jump="true" storage="hidemessage.ks" target="*showmessage"]

;システムボタンの非表示
[sysbtopt forevisible="false" backvisible="false"]
;名前欄の非表示
[layopt layer="message1" visible="false"]
;テキストの非表示
[layopt layer="message0" visible="false"]
;メッセージボックスの非表示
[layopt layer="7" visible="false"]


[s]


*showmessage
;【メッセージボックスの表示】
;システムボタンの表示

[sysbtopt forevisible="true" backvisible="false"]
;名前欄の表示
[layopt layer="message1" visible="true"]
;テキストの表示
[layopt layer="message0" visible="true"]
;メッセージボックスの表示
[layopt layer="7" visible="true"]


;また右クリックしたら消せるようにする。
[rclick call="true" storage="hidemessage.ks" target="*rclick" enabled="true"]

[return]
