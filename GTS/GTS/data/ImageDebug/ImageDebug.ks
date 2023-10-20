*title
[nowait]

;ˆê’U‘S•”‚«‚ê‚¢‚É
[call storage="InitSys.ks"]
[dis_all_chara]
[dis_all_message]
[eval exp="tf.currentTab=0"]

;”wŒi‚Ìİ’è
[image storage="temp.png" layer="base" page="fore"]
[current layer="message4"]
[position layer="message4" width=1280 height=720 visible="true" top=0 left=0 opacity=0]

;ƒ^ƒCƒgƒ‹‚É–ß‚é
[locate x=0 y=620]
[button graphic="back" storage="title.ks"]


;temp
;‚¨‚µÀ‘•—p
[locate x=1100 y=620]
[button graphic="tempDebug" storage="tempDebug.ks"]
;macro
;‚¨‚µÀ‘•—p
[locate x=1100 y=540]
[button graphic="macroDebug" storage="macroDebug.ks"]


;—y
;[locate x=80 y=40]
;[button graphic="harukaDebug" storage="harukaDebug.ks"]

;—yl
[locate x=0 y=0]
[button graphic="harukaDebug" storage="harukaDebugL.ks"]
;—ym
[locate x=120 y=0]
[button graphic="harukaDebug" storage="harukaDebugM.ks"]
;—ys
[locate x=240 y=0]
[button graphic="harukaDebug" storage="harukaDebugS.ks"]

;‰l
[locate x=0 y=60]
[button graphic="najimiDebug" storage="najimiDebugL.ks"]
;‰m
[locate x=120 y=60]
[button graphic="najimiDebug" storage="najimiDebugM.ks"]
;‰m
[locate x=240 y=60]
[button graphic="najimiDebug" storage="najimiDebugS.ks"]

;Œå
[locate x=0 y=120]
[button graphic="satoriDebug" storage="satoriDebugL.ks"]
;Œå
[locate x=120 y=120]
[button graphic="satoriDebug" storage="satoriDebugM.ks"]
;Œå
[locate x=240 y=120]
[button graphic="satoriDebug" storage="satoriDebugS.ks"]



;¬£
;[locate x=80 y=220]
;[button graphic="naruseDebug" storage="naruseDebug.ks"]

;ƒKƒCƒA
;[locate x=80 y=280]
;[button graphic="gaiaDebug" storage="gaiaDebug.ks"]

;ƒ}ƒbƒVƒ…
;[locate x=80 y=340]
;[button graphic="mashDebug" storage="mashDebug.ks"]

;ƒIƒ‹ƒeƒK
;[locate x=80 y=400]
;[button graphic="orutegaDebug" storage="orutegaDebug.ks"]


[endnowait]
