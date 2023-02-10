@SetupMessageWindow
;[誇大広告演出]

;ワンオフ操作
[fadeinbgm storage=seitokai.ogg time=500]
[current layer="message0"]
[glyph line="LineBreak" page="PageBreak" fix="false"]
[dis_all_chara]
[dis_all_message]
[backlay]
[image layer="12" left=352 top=180 visible="true" page="back" storage="letter"]
[trans method="crossfade" time="2000"]
[wt]

[backlay]
[position layer="message0" width=1180 left=50 height=620 top=50 opacity="128" page="back" visible="true"]
[trans method="crossfade" time="1500"]
[wt]

[font size=32]
男女比率１：９　！！！[l][r][r]

県立、旗立高校。[r]
創立１００周年を向かえる名門校である。[l][r][r]

生徒の９割は女生徒で、しかもルックスのレベルは高く。[r]
五月蝿い教師も、くそったれな校則も意味不明な伝統も無い。[l][r][r]

生徒の自主性の名の下に、何でもやりたい放題出来る。[l][r]
正に自由。[l]正に楽園。[plc]

[font size=32]
[locate x=200 y=280]
――其処は、誰もがリア充になれる[ruby text="まなび"]学[ruby text="や"]舎。[plc]
;[ルビ:まなびや]

;[演出終]
@fadebgm volume="80" time="500"
[backlay]
[layopt layer=12 visible="false" page="back"]
[trans layer="base" method="crossfade" time="3000"]
[wt]

[font size=24]
[backlay]
[position layer="message0" page="back" visible="false"]
[image layer=7 top=470 opacity=256 storage="message_window" page="back" visible="true"]
[strans storage="black" noclear=true]
[SetupMessageWindow]
俺が、そんなどっかの詐欺広告の様な学校紹介文を見たのは、[lr]
中学3年ももう終わろうかという時だった。[plc]

俺は……なんだろう。[plc]


そう、その文章に、[lr]
言葉では言い表せない『トキメキ』みたいな物を感じたんだ。[plc]

それから俺はネットや友人や教師、[lr]
実際に現地に行ったりして調べつくし、[plc]

その紹介文に嘘が書かれていない事を確かめた。[plc]

その頃には、[lr]
俺の『トキメキ』は『憧れ』へとクラスチェンジしていて。[plc]

[shownametag name="大樹" visible=true]
「よっし、勉強しよう！」[plc]


そう呟いて、[lr]
10以上足らなかった偏差値を上げるのにもさほど苦労はしなかった。[plc]

希望ってのは、１馬力もない人間を[r]
瞬間的に１万馬力にしたりするもんだ。[plc]

上手くいくときは、少し前までの大きな障害も[r]
道端の石ころレベルにハードルが下がったりもする。[plc]

……でも、覚えていて欲しい。[plc]


上手くいくときは、必ず落とし穴がある。[plc]

そう、俺は落とし穴に引っかかっていた。[lr]
それも随分と前に。[plc]

@fadeoutbgm time="2000"
[backlay]
[image layer="12" left=352 top=180 visible="true" page="back" storage="letter"]
[trans method="crossfade" time="2000"]
[wt]

うん、スマナイ。あの紹介文なんだ。[lr]
あの紹介文に、一つだけ嘘が混じってた。[plc]

『女生徒９割』も、『ルックスのレベルが高い』も正しい。[plc]

といえば、あと1つだろう？[plc]

@backlay
@layopt layer=12 page="back" visible="false"
@image layer="base" page="back" storage="black" visible="true"
@trans layer="base" time="1000" method="crossfade"
@wt

そう、そこは――[plc]
@fadeinbgm storage="serious1-2" time="1000"
@fadebgm time=1 volume="100"
@strans storage="kyositu_m" time="2000"
@showstandimage who=gaia size=m pose=1 face=normal layer=3
[shownametag name="キモ面A" visible=true bust="ガイア"]
「やぁ、谷口君だったかな？　隣、良いかな？」[plc]


[shownametag name="大樹" visible=true]
「……ん？」[plc]

@showstandimage who=mash size=m pose=1 face=doya pos=l layer=1
[shownametag name="キモ面B" visible=true bust="マッシュ"]
「では、拙者はここにしよう」[plc]

@showstandimage who=orutega size=m pose=1 face=normal2 pos=r layer=2
[shownametag name="キモ面C" visible=true bust="オルテガ"]
「僕チンはここにするナリ」[plc]


[shownametag name="大樹" visible=true]
「え？　……えぇ！？」[plc]


[shownametag name="キモ面A" visible=true bust="ガイア"]
@showstandimage who=gaia size=m pose=1 face=egao pos=c layer=3
「ふふ、そう驚かなくて良い。[lr]
俺はガイア、こいつらは眞修に織手賀という」[plc]

[shownametag name="ガイア" visible=true]
「話すのは、これがはじめてだったかな？[lr]
大丈夫だ、クラスメイトじゃないか」[plc]

[shownametag name="ガイア" visible=true]
「さぁ、肩の力を抜きたまえ――」[plc]


@playse storage="syakeeen"
@backlay
@showstandimage layer=3 pos=c who="gaia"    pose=1 face=egao   visible="true" size=l notrans=true page=back
@showstandimage layer=1 pos=l who="mash"    pose=1 face=normal visible="true" size=l notrans=true page=back
@showstandimage layer=2 pos=r who="orutega" pose=1 face=normal visible="true" size=l notrans=true page=back
@trans method="crossfade" time="500"
@wt
[shownametag name="ガ・マ・オ" bust="ガイア" visible=true]
「「「――ブラザー！！！！」」」[plc]

[shownametag name="大樹" visible=true]
「う、うわぁあああああああああああああああ！！！！！」[plc]
;[この台詞は要検討]

@fadebgm time="500" volume="50"
@strans storage="black" time="1000"



――入学早々、学園一のキモオタ軍団に入れられ――[plc]



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



@fadebgm time="500" volume="50"
@strans storage="black" time="500"
――あっという間にクラスの最下層に落とされ――[plc]



@fadebgm time="500" volume="100"
@strans storage="kyositu_m" time="500"
[shownametag name="教員"]
「おい、谷口。お前、舐めてんのか？　２学期にもなって『たすき掛け分かりません』とか、ふざけんじゃねぇぞ！」[plc]

[shownametag name="教員" visible=true]
「お前、初等教育ちゃんとうけたのかっ！？」[plc]


@fadebgm time="500" volume="50"
@strans storage="black" time="500"
――頭は悪く――[plc]


@fadebgm time="500" volume="100"
@strans storage="artroom_dt"
[shownametag name="美術部の先輩"]
「よーし♪　１時間たったよー。下書きくらいは出来たー？」[plc]

[shownametag name="大樹" visible=true]「いや、あの……」[plc]


[shownametag name="美術部の先輩"]
「んーと、これは犬かい？」[plc]


[shownametag name="大樹" visible=true]
「机です」[plc]


[shownametag name="美術部の先輩"]
「クビ☆」[plc]


@fadebgm time="500" volume="0"
@strans storage="black" time="500"
――何の才能もない――[plc]


@playse storage="bird"
@strans storage="senro_zoi_dt" time="500"
[shownametag name="大樹" visible=true]
「――そんな奴でもリア充になれる場所じゃなかったんだよ！」[quake time="300"][plc]

思い返しつつ叫んでみて、鬱になった。[plc]


天気は、俺の気分に反して健やかなほど晴れやかで、[lr]
空にはチュンチュンと雀なんかが飛んでいる。[plc]

@quake time="300"
[shownametag name="大樹" visible=true]
「クソがっ！」[plc]


怒鳴ってみるが、状況は改善するわけもない。[plc]


あれから……入学してから、はや一年。[plc]


一日だけと休憩し。三日だけと休み。[l][r]
一週間ばかりと病欠して。[plc]

気付けば、[plc]


[shownametag name="大樹" visible=true]
「……二ヶ月だよ」[plc]


どこに出しても恥ずかしい、立派な不登校になっていた。[plc]


@quake time="500"
[shownametag name="大樹" visible=true]
「あぁあああっ、もうっ！」[plc]


唸ってみる。[l][r]
近くにいた主婦がビビる。[plc]

@stopse
@strans storage="black" time=500
あんな地獄のような状況でも、俺は耐えた。[l][r]
耐えに耐えた。一年も耐えた。[plc]

一年も耐えて、希望を見出したのだ。[l][r]
それはクラス替え。[plc]

やり直せる。高２デビューが出来る！[plc]


そう思っていた。思っていたが、[plc]


@backlay
@showstandimage layer=3 pos=c who="gaia"    pose=1 face=egao   visible="true" size=l notrans=true page=back
@showstandimage layer=1 pos=l who="mash"    pose=1 face=normal visible="true" size=l notrans=true page=back
@showstandimage layer=2 pos=r who="orutega" pose=1 face=normal visible="true" size=l notrans=true page=back
@image storage="kyositu_m" layer="base" page="back" visible="true"
@trans method="crossfade" time="500"
@wt

@fadese volume="100" time=1
@playse storage="syakeeen" 
[shownametag name="ガイア" visible="true"]
「よう、兄弟！　また俺たち同じクラスだな！[r]
マッシュとオルテガも一緒だ！！」[plc]


@strans storage="black"

無理だった。[lr]
俺の希望は儚く消えた。[plc]


そして、それが限界で。[plc]

@fadeinbgm storage="prologue" time="500"
@fadebgm volume="100" time="1"
@strans storage="senro_zoi_dt"
[shownametag name="大樹" visible=true]
「マジ無理、狂いそうだったもん」[plc]


だから逃げ出したというわけである。[plc]


[shownametag name="大樹" visible=true]
「ん、でもなぁ～」[plc]


そう、でもである。[lr]
逃げ出したところで、現実は辛い。[plc]

俺はいま、ヒエラルキー的にはボッチよりしたの不登校。[lr]
世間一般からすれば、社会のゴミクズに等しく……。[plc]

[shownametag name="大樹" visible=true]「……ぁー、ダメだ。鬱になる、死ぬ」[plc]


ダメだ。こんな風に自分で自分を追い込んでは駄目だ。[l][r]
何のために逃げ出したのか分からない。[plc]

[shownametag name="大樹" visible=true]「気分を変えなくちゃ」[plc]


言い聞かせ、意識を明後日の方向に集中させた。[plc]


[shownametag name="大樹" visible=true]
「まずはコンビニ。１０時までそこにいて、それから古本屋で立ち読み。４時過ぎたら下校中の奴らと合流。そのまま帰宅」[plc]

今日の予定を口ずさむ。[plc]


完璧だ。まさにパーフェクトだ。[l][r]
二ヶ月も親に内緒で不登校やってた俺の計画性は伊達じゃないぜ。[plc]

[shownametag name="大樹" visible=true]「はっはっはっ」[plc]

@stopbgm
余計鬱になった。[plc]

@playbgm storage="happy bgm"
@quake hmax=0 vmax="5" time=10000000000000000
[shownametag name="大樹" visible=true]「だぁああああっ！？　駄目だァああああああああ！！！！」[plc]

@stopquake
ウネッた。[l][r]
叫びつつウネッた。[plc]

チャリで爆走しつつウネッた。[plc]

@quake hmax=0 vmax="5" time=10000000000000000
[shownametag name="大樹" visible=true]「ぁあああああああああっ！？」[plc]

@shownametag name="主婦"
「ひぃいぃいいいいっ！」[plc]

@shownametag name="猫"
「フシャァーッ！」[plc]

@strans storage="black" method="universal" rule="101" time="300"
@strans storage="jyuutaku_dt" method="universal" rule="101" time="300"
自転車をシャリシャリ漕ぎながら、ウネウネト体をくねらす俺。[lr]
宇宙人でも見たかの様に叫ぶおばちゃん。威嚇して逃げ出す野良猫。[plc]

ちくしょう、学校どころか路上でさえ人間扱いされてない。[plc]

@quake hmax=0 vmax="5" time=10000000000000000
[shownametag name="大樹" visible=true]
「ちっくしょぉおおおおおっ！」[plc]

@strans storage="black" method="universal" rule="101" time="300"
くっそ、みんなして！[lr]
みんなしてオレを馬鹿にしてっ！！[plc]

@strans storage="jyuutakuti_dt" method="universal" rule="101" time="300"
[shownametag name="大樹" visible=true]
「糞がァあああああああああっ！」[plc]


もう自棄だ。全員轢き殺してやる！[lr]
とりあえず人間じゃなくて猫でっ！！[plc]

[shownametag name="大樹" visible=true]「死ねや、おらぁああああああっ！」[plc]


爆走する。[l][r]
ペダルを限界まで回転させ、跳ねるように逃げる猫を追いかける。[plc]

@shownametag name="猫"
「ウニャッ！」[plc]


[shownametag name="大樹" visible=true]
「待てや、ネコ目ネコ科ネコぉおおおおおおおっ！！！」[plc]

@strans storage="black" method="universal" rule="101" time="300"
寂れたタバコやを抜け、[l]円柱ポストを蹴り飛ばし、[lr]
誰かの家のチャイムを鳴らして、[l]誰も居ない路地を突っ切って――[plc]

[stopquake]
@strans storage="roji_dt" method="universal" rule="101" time="300"
@showstandimage who=haruka pose=1 face=odoroki visible="true" size=s
@shownametag name="女生徒" bust="先輩" visible=true
「……っ！？」[plc]
;[先輩]

@showstandimage who=haruka pose=1 face=odoroki visible="true" size=l
――って、誰か居るじゃんっ！？[plc]

@playse storage="car_crash"
@strans storage="black" time="800"
@fadeoutbgm time="2000"
;[激突音]

そのまま、オレはその誰かに突っ込んだ。[plc]
@stopbgm

;[回想から覚めるような演出]
;[→不愉快な目覚め]

;[→EP2へ]
[JumpChapter storage="prologue_ep2.ks"]
