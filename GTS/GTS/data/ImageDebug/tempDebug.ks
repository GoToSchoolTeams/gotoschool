;[【北】文芸部と天文部]

;[【北】音響研究会]
[call storage="Initialize.ks"]

[fadeoutbgm time="1000"]
[strans storage="white"]

[show_message_fade time="500"]

[playse storage="chaim_far_single" ]

[strans storage="bg_black"]

@showstandimage who=gaia_old size=m pose=1 face=egao pos=c layer=3
[shownametag name="キモ面A" visible=true bust="ガイア"]
「ふふ、そう驚かなくて良い。[lr]
　俺はガイア、こいつらは眞修に織手賀という」[plc]

[shownametag name="ガイア" visible=true]
「話すのは、これがはじめてだったかな？[lr]
　大丈夫だ、クラスメイトじゃないか」[plc]

[shownametag name="ガイア" visible=true bust="false"]
「さぁ、肩の力を抜きたまえ――」[plc]


@playse storage="syakeeen"
@backlay
@showstandimage layer=1 pos=l who="mash_old"    pose=1 face=normal visible="true" size=l notrans=true page=back nobust="true"
@showstandimage layer=2 pos=r who="orutega_old" pose=1 face=normal visible="true" size=l notrans=true page=back nobust="true"
@showstandimage layer=3 pos=c who="gaia_old"    pose=1 face=egao   visible="true" size=l notrans=true page=back nobust="true"
@trans method="crossfade" time="500"
@wt
[shownametag name="ガ・マ・オ" bust="ガイア" visible=true]
「「「――ブラザー！！！！」」」[plc]

[shownametag name="大樹" visible=true]
「う、うわぁあああああああああああああああ！！！！！」[plc]
;[この台詞は要検討]

@fadebgm time="500" volume="50"
@strans storage="black" time="1000"



――入学早々、学園一のキモオタ軍団に入れられ――[plc2]
[dis_all_chara]


@fadebgm time="500" volume="100"
@playse storage="ambientA@08"
@strans storage="kyositu_m" time="1000"

[shownametag name="女子A"]
「うわっ、谷口『黒豚』共と話してる。キモオタじゃんっ」[plc]


[shownametag name="女子B"]
「『アニメとかは分かりません（笑）』とか言ってた癖に」[plc]


[shownametag name="女子C"]
「良いんじゃな～い？　身の丈にあってんじゃん。顔的に？」[plc]

[shownametag name="女子A"]
「やばい、あたしあいつと３秒以上話しちゃった。汚れたわぁ～」[plc]

[shownametag name="A・B・C"]
「「「アハハハハハハハハハッ！」」」[plc]
;[→選択肢へ]
