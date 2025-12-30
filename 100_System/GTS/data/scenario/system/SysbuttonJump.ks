
;locksnapshotを一度ですますための中継地

*save.ks
[locksnapshot]
[playse storage="cursor21"]
[history enabled="false" output="false"]
;メッセージからとんだ事を保存
;一次変数に現在地を記録
[eval exp="tf.back_place='Message'"]

[jump storage="save.ks"]

*Load.ks
[locksnapshot]
[playse storage="cursor21"]
[history enabled="false" output="false"]
;メッセージからとんだ事を保存
;一次変数に現在地を記録
[eval exp="tf.back_place='Message'"]

[jump storage="Load.ks"]

*Config.ks
[locksnapshot]
[playse storage="cursor21"]
[history enabled="false" output="false"]
;メッセージからとんだ事を保存
;一次変数に現在地を記録
[eval exp="tf.back_place='Message'"]

[jump storage="Config.ks"]
