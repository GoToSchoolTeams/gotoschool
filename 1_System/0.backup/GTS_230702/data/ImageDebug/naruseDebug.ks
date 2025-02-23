;背景読みこみ
[strans storage="_taiikukan.png"]

;ウィンドウの立ち上げ
[SetupMessageWindow]

;立ち絵と名前欄の表示
[showstandimage who=naruse face=ki]
[shownametag name="成瀬" visible=true]
「成瀬　なるみ　よ。[l][r]
　表情差分を見ていきましょうか」[plc]


;【pose1】
[showstandimage who=naruse face=hohoho]
[shownametag name="成瀬" visible=true]
「まずはpose1ね」[plc]

;hohoho
[showstandimage who=naruse face=hohoho]
[shownametag name="成瀬" visible=true]
「hohoho」[plc]

;ki
[showstandimage who=naruse face=ki]
[shownametag name="成瀬" visible=true]
「ki」[plc]


;【pose2】
[showstandimage who=naruse pose=2 face=futsu]
[shownametag name="成瀬" visible=true]
「次はpose2よ」[plc]

;futsu
[showstandimage who=naruse face=futsu pose=2]
[shownametag name="成瀬" visible=true]
「futsu　……っていうか、一つしないじゃない」[plc]


;締め
[showstandimage who=naruse face=hohoho]
[shownametag name="成瀬" visible=true]
「テレ差分もないわよぉ。[l][r]
　お疲れさまでした」[plc]


[jump storage="ImageDebug.ks"]
