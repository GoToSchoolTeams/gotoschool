*title
[nowait]

;一旦全部きれいに
[call storage="InitSys.ks"]
[dis_all_chara]
[dis_all_message]
[eval exp="tf.currentTab=0"]

;背景の設定
[image storage="temp.png" layer="base" page="fore"]
[current layer="message4"]
[position layer="message4" width=1280 height=720 visible="true" top=0 left=0 opacity=0]

;タイトルに戻る
[locate x=0 y=620]
[button graphic="back" storage="title.ks"]

;遥香
[locate x=80 y=40]
[button graphic="harukaDebug" storage="harukaDebug.ks"]

;縁
[locate x=80 y=100]
[button graphic="najimiDebug" storage="najimiDebug.ks"]

;悟
[locate x=80 y=160]
[button graphic="satoriDebug" storage="satoriDebug.ks"]

;成瀬
[locate x=80 y=220]
[button graphic="naruseDebug" storage="naruseDebug.ks"]

;ガイア
[locate x=80 y=280]
[button graphic="gaiaDebug" storage="gaiaDebug.ks"]

;マッシュ
[locate x=80 y=340]
[button graphic="mashDebug" storage="mashDebug.ks"]

;オルテガ
[locate x=80 y=400]
[button graphic="orutegaDebug" storage="orutegaDebug.ks"]


[endnowait]