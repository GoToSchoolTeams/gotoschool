;[暗転]
[SetupMessageWindow]
[call target="*Debug"]
俺だって、好きで学校に行かなくなったわけじゃない。[plc]


『高校なんてくだらない』なんて、バカバカしい事を言う奴もいるけど、俺はそうは思ってはいなかった。[plc]

世間的にも主観的にも、[r]
どっちが正しいかなんて常識はわきまえてるつもりだ。[plc]

最初は行こうと思ったし、行きたかった。[plc]


だけれども、それを許さない。[l][r]
許してくれない。[plc]

絶対的な環境ってものが、世の中あると思う。[plc]



;[暗転解除]

@strans storage="school-cafeteria01"

@fadeinbgm storage="daily1 bgm" time="500"
@playse storage="ambientA@08"
――ザワザワザワッ。[plc]


[gaia_stand face="futsu" size="l" time="200"]
[quake time="300"]
「よう、兄弟！」[plc]

[dis_all_chara]
昼休み。[l]バレない様に食堂に来たのだが、[lr]
どうやら無駄な努力だったらしい。[plc]


どこからともなく現れたメガネブタが、[r]
どっかりと俺の隣に腰を下ろした。[plc]

[shownametag name="大樹" visible=true]
「よう、ブタ。給餌場はここじゃないぜ」[plc]

[gaia_stand face="yorokobi" size="l"]
[shownametag name="ガイア" visible=true ]
「はは、相変わらずブラザーの愛情表現は辛辣だな」[plc]


割りと直球で、『俺の隣に座るな』[r]
と言ったつもりだったが、聞いちゃいない。[plc]

[dis_all_chara]

@strans storage="black" time="1000"
[shownametag name="大樹" visible=true]「……」[plc]

;黒背景立ち絵
[gaia_stand face="futsu" size="l" namevisible="false"]
こいつの名前は、[ruby text="くろ"]黒[ruby text="い"]井　[ruby text="ガ"]甲[ruby text="イ"]斐[ruby text="ア"]亞。[l][r]
友人じゃない。[plc]

@dis_all_chara
@strans storage="school-cafeteria01"

[gaia_stand face="odoroki" size="l"]
[shownametag name="ガイア" visible=true]
「おいおい、ブラザー。[lr]
　大の親友に対して、紹介がぞんざいすぎやしないか？」[plc]


[shownametag name="大樹" visible=true]「……」[plc]


うるせぇな。[plc]

[orutega_stand face="keikai" size="l"]
「ニャニャン！？　同志ではにゃいか！[lr]
　ご無事であったのかねっ！？」[plc]

[shownametag name="大樹" visible=true]「……」[plc]

[mash_stand face="odoroki" size="l"]
「谷口氏か！？　もう体の方はよろしいのか！！？」[plc]

@dis_all_chara
[shownametag name="大樹" visible=true]「……」[plc]

無視していると、次々とうるせぇのが集まってきて。[l][r]
あぁ、もう分かったよ。[plc]

[strans storage="black"]
@backlay
[image storage="l_gaia_pose1_n_yorokobi" layer="2" visible="true" page="back"]
[image storage="l_mash_pose1_n_yorokobi" layer="1" left=-400 visible="true" page="back"]
[image storage="l_orutega_pose1_n_futsu" layer="0" left=400 visible="true" page="back"]
@trans method="crossfade" time="500"
@wt
こいつらは、左から[r]
黒久 眞修（自称）・黒井 甲斐亞（自称）・黒田 織手賀（自称）という。[plc]
;[ガリ・メガネ・デブ]
全員名前に『黒』が付くので、某アニメに習って本人達は自分達を『黒い三連星』と自称しているが、勿論誰もそうは呼ばない。[plc]

学校でも有名な、キモオタ軍団である。[plc]
@dis_all_chara

*Debug
[setup_debug bgm="daily1 bgm"]

そして、[plc]
@strans storage="school-cafeteria01"
@playse storage="ambientA@08"
[shownametag name="女生徒A" visible=true]
「ねぇねぇ、見て。また、揃ったよあのキモオタ[font size=50]４人！[font size=32]」[plc]
;[４人　はデカ字で]

[shownametag name="女生徒B" visible=true]
「キッモ～い！！」[plc]

[shownametag name="男子生徒" visible=true]
「……おい、あの[font size=50]４人[font size=32]」[plc]
;[４人　はデカ字で]

[shownametag name="男子生徒" visible=true]
「見るな、目が腐る」[plc]


対外的には、俺もそこに含まれる。[plc]


[image storage="l_gaia_pose1_n_yorokobi" layer="2" visible="true"]
[shownametag name="ガイア" visible=true]「見ろよブラザー」[plc]

[image storage="l_mash_pose1_n_yorokobi" layer="1" left=-400 visible="true"]
[shownametag name="マッシュ" visible=true]「久しぶりに揃った拙者達に」[plc]

[image storage="l_orutega_pose1_n_keikai" layer="0" left=400 visible="true"]
[shownametag name="オルテガ" visible=true]「雌猫は発情し、雄猫は尻尾丸めてるニャリ」[plc]


[shownametag name="大樹" visible=true]「……お前ら、耳付いてるのか？」[plc]


幸せな奴らだ。[plc]
[dis_all_chara]

[shownametag name="大樹" visible=true]「……」[plc]


俺もそれくらい……。[plc]

[shownametag name="大樹" visible=true]
「……馬鹿な」[plc]


あり得ない。[plc]

[gaia_stand face="yorokobi" size="l"]
[shownametag name="ガイア" visible=true]
「しかし、兄弟。二ヶ月ぶりじゃないか」[plc]


[shownametag name="大樹" visible=true]
「……まぁな」[plc]


『消えろ』と言っても消えてくれなさそうなので、[lr]
適当にそう答える。[plc]

;うどんの一枚絵・・・？(渡し箸差分)
うどんが伸びたらかなわない。[plc]

[gaia_stand face="futsu" size="l"]
[shownametag name="ガイア" visible=true]
「……長かったな」[plc]

確かに、長かったかな。[l][r]
我ながら、よくまぁあんだけ休んだもんだ。[plc]

そして、よくまぁこうもあっさり出てこれる。[plc]


そんな事よりうどんだ。[l][r]
伸びるより、啜る方が早くなくてはうどんの美味しさが――[plc]

@fadebgm time="500" volume="50"
[gaia_stand face="futsuAri" size="l"]
「……どうして、来る気になった？」[plc]

@playse storage="ohashi"
[shownametag name="大樹" visible=true]「……」[plc]
[dis_all_chara]
――箸を、止めてしまった。[plc]


[shownametag name="大樹" visible=true]「……それ聞くか？」[plc]


うどんは、まだ半分以上残っているが。[l][r]
もう食えんな。[plc]

[gaia_stand face="yorokobi" size="l"]
[shownametag name="ガイア" visible=true]
「それしか聞くことなんてないだろう？」[plc]


顔を上げると、相変わらずのキモ面がそこにあって。[plc]


[shownametag name="大樹" visible=true]
「他にも聞くことあるんじゃないか？」[plc]

[dis_all_chara]

いつの間にか、他の二人はいなくなっていた。[l][r]
購買が騒がしいから、そっちだろうな。[plc]

@fadebgm time="500" volume="100"
[gaia_stand face="aisyu" size="l"]
「……原因を知ったところで、対処のしようがないからな」[plc]


そう言って、ガイアは笑う。[plc]


[shownametag name="大樹" visible=true]「……」[plc]

[dis_all_chara]

『原因はお前だよ』[plc]

そう言えれば、早かったのかもしれない。[lr]
が、[plc]

@dis_all_chara_fade
@playse storage="isu"
[shownametag name="大樹" visible=true]
「教えてやらん」[plc]


そう言って、立ち上がる。[l][r]
いや、そう言えずに、ガイアに背を向けた。[plc]

[gaia_stand face="ikariAri" size="l"]
[shownametag name="ガイア" visible=true]「兄弟―」[plc]


[shownametag name="大樹" visible=true]「……お前は、いや、」[plc]

[dis_all_chara]
[shownametag name="大樹" visible=true]「俺はお前らの仲間じゃねーからな」[plc]


遮る様にそう呟いて、[lr]
俺はそのまま食堂を後にしたのだった。[plc]
@fadeoutbgm time="1000"
@JumpChapter storage="prologue_ep5.ks"

;[回想に入るような演出]
;[→晴れ、ときどきバンジー]
