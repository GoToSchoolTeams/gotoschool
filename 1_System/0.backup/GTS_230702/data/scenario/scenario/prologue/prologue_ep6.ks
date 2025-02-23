[SetupMessageWindow]

;[縁ルート時のみ]


;[暗転]

その場所にいれるかどうかっていうのは、[lr]
環境ってのがすごく大事だという話はしたと思う。[plc]


それの一つに、逃げ道って物がある。[plc]



どんなに居心地良い場所だって、[r]
他に何処にも行けなければ息苦しさを感じてしまう。[plc]


逆に居心地が悪くても、逃げ道さえあれば……[plc]



……そうは思わないか？[plc]


;[暗転解除]







;[背景保健室へ。その後、扉を開けるSE]
@playse storage="class_door1"
[strans storage="hoken_e" time="500" method="universal" rule="left_right"]
――ガララッ。[plc]

保健室の扉を開けると、[lr]
快適で涼しい空気が俺を出迎えてくれた。[plc]


[shownametag name="大樹" visible=true]
「……すみませーん」[plc]


恐る恐る声をかけるが、返事がない。[plc]


[shownametag name="大樹" visible=true]「……よし」[plc]


[strans storage="black" time="400" method="universal" rule="left_right"]
じっくりと３分待ってから、[lr]
俺は保健室に滑り込んだ。[plc]

;[時間演出]

[strans storage="hoken_e" time="400" method="universal" rule="left_right"]
[playse storage="gishi"]
@fadeinbgm storage="chill" time="1000"
[shownametag name="大樹" visible=true]「……はぁ」[plc]


どっかりと、手近にあったベッドに腰掛ける。[plc]


[shownametag name="大樹" visible=true]「疲れた…」[plc]


五限目。[lr]
豚どもをあしらった後、俺はそのまま保健室に逃れていた。[plc]

ほんと、今日は疲れた。[plc]


久しぶりの学校。久しぶりの嘲笑。[lr]
久しぶりの豚ども。[plc]

[shownametag name="大樹" visible=true]「……何やってんだよ俺は」[plc]


本当に、何をやってるんだろう。[plc]


アレだけ拒否していた学校に、こうも簡単に来てしまっている。[lr]
調子の良い言葉にほだされただけだっていうのに。[plc]

[shownametag name="大樹" visible=true]「……馬鹿だなぁ」[plc]


人間、案外単純だ。[plc]


例えば今も、『仲間じゃない』と一蹴したガイアの[r]
『今日は保険の先生はいないぞ』という言葉でここにいるわけで。[plc]

[shownametag name="大樹" visible=true]「……」[plc]


あの後、わざわざ追ってきてそれを伝えるガイアもガイアだが、[lr]
それでここに来る俺も相当だ。[plc]

そう考えると、ノコノコと学校に来てしまった俺は[r]
誰かさんの掌の上で踊っているだけなのかもしれない。[plc]

[shownametag name="大樹" visible=true]「ぁー……くそっ」[plc]


頭を掻く。[plc]

知るか、俺は疲れた、そして丁度保険医が居なかった。[lr]
だからサボリに来た。[plc]

それだけだ。[plc]

[strans storage="black" method="universal" rule="look_up" time="250"]
[strans storage="hokentenjoEve" method="universal" rule="look_up" time="250"]
[playse storage="gishi"]
[shownametag name="大樹" visible=true]「ふー」[plc]


ドサッと、身を倒す。[lr]
保健室の柔らかいとも言えないベッドが、衝撃を支えた。[plc]

[shownametag name="大樹" visible=true]「……」[plc]


保健室の天井は、白い。[lr]
白い壁に、白いカーテンに、白い骨組み。[plc]

学校で、唯一埃が立たない空間で。[plc]


[shownametag name="大樹" visible=true]「懐かしいなぁ…」[plc]


昔は、よく来ていた。[lr]
この消毒液臭い空間が、ちょっとしたオアシスだった事もある。[plc]

と言っても、入学後半年くらいだが。[plc]


[shownametag name="大樹" visible=true]「……あのセンコーじゃなぁ」[plc]


入学して半年くらいして、保険医が変わった。[plc]


菩薩の様な川崎先生から『ババ糞』の馬場に。[plc]


保健室といえば、[r]
俺みたいなメンタル弱小系の最後の砦みたいなもんだが、[plc]

この学校には『昼休みの後』だというのに誰もいない。[lr]
これもババ糞の人徳の成せる技だ。[plc]


[shownametag name="大樹" visible=true]
「……そういや、その頃だったっけ」[plc]


俺が、学校を休み始めたのは……。[plc]



[shownametag name="大樹" visible=true]
「……っ」[plc]


もう一度、頭を掻く。[plc]


アホか俺は、せっかく不愉快な場所から逃げ出したのに。[lr]
自分から不愉快になるやつがあるか。[plc]

寝よ寝よ。[plc]

[strans storage="black" time="500"]
[shownametag name="大樹" visible=true]「……はぁ」[plc]

舌打ちして、寝返りを打って。[lr]
後はこの怠惰な感覚に身を任せれば……。[plc]

[fadeoutbgm time="1000"]
[strans storage="naruse_hyokkori"]
[shownametag name="大樹" visible=true]「……ん？」[plc]

というタイミングで、[ｌr]
ヒョコヒョコ踊る謎の物体を見つけたわけで。[plc]

[shownametag name="大樹" visible=true]「何だ……これ？」[plc]


金色……の、リボン？[plc]

@SetupBrunch name="prologue_ep_6_0"
@AddBrunch text="１．引っこ抜く" storage="prologue_ep6.ks" target="*all"
@AddBrunch text="２．引っこ抜く" storage="prologue_ep6.ks" target="*all"
@AddBrunch text="３．引っこ抜く" storage="prologue_ep6.ks" target="*all"
@ShowBrunch
@s

*all
@SetupMessageWindow
ま、気になるよね。[plc]

――グイッ！[plc]
[strans storage="bg_hoken_e"]
[old_naruse_face pose=2 face=futsu]
[shownametag name="？？？" visible=true]「きゃぁっ！？」[plc]


[shownametag name="大樹" visible=true]「…ぇ」[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="？？？" visible=true]
「違います。違いますババ先生！　サボリじゃないんですよ！！[lr]
　ほんと、今日は私――」[plc]

[shownametag name="大樹" visible=true]「……」[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="？？？" visible=true]「――ちょっと重くて……」[plc]


[shownametag name="大樹" visible=true]「……」[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="？？？" visible=true]「……あんた、誰？」[plc]


そのときやっと、[lr]
俺はベッドに俺以外の膨らみがあったことに気が付いたのだった。[plc]

[dis_all_chara]
;[場面転換]
@fadeinbgm storage="chill" time="1000"
[strans storage="black" method="universal" rule="189" time="500"]
[strans storage="hoken_e" method="universal" rule="189" time="500"]

@showstandimage who=naruse_old pose=1 face=futsu visible="true"
[shownametag name="？？？" bust="naruse" visible=true]「で、あんた誰なのよ？」[plc]


小一時間ほど無言で見つめ合った後、[lr]
金髪にウ○コみたいな髪型をした女生徒は訝しげにそう尋ねてきた。[plc]

[shownametag name="大樹" visible=true]「……」[plc]


金髪に、巻き髪……ここ…公立、だよな？[lr]
いや、私立でだって許されないと思うんだけど……。[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……」[plc]


[shownametag name="大樹" visible=true]「……」[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……ねぇ」[plc]


[shownametag name="大樹" visible=true]「……」[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「ちょっと！」[plc]


[shownametag name="大樹" visible=true]「ぁ」[plc]


いかんいかん。[lr]
あまりの事（というか髪型）に絶句していた。[plc]


[shownametag name="大樹" visible=true]「……２のC、谷口です」[plc]


大人しく答える。[lr]
状況的に確実に折れが絶対ヤバイしな。[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……谷口？」[plc]

名乗ると、校則違反丸出しの巻き髪金髪女は訝しげな顔をした。[plc]


[shownametag name="大樹" visible=true]「……？」[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]
「んー…」[plc]


なんだ？[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……ま、良いわ。バ…馬場先生は？」[plc]


[shownametag name="大樹" visible=true]「今日は、お休み」[plc]


……らしいです。[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「…よね。そうよね。うん」[plc]


巻き髪はホッとしたように安堵の表情を見せて。[plc]

[old_naruse_stand pose=1 face=hohoho]
[shownametag name="巻き髪" bust="naruse" visible=true]「まったく、驚かせないで欲しいわ」[plc]


偉そうに胸を張った。[plc]


[shownametag name="大樹" visible=true]「……」[plc]


なんだ、コイツ？[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]
「……で、どういう了見ですの？　私の御髪を引っ張ったりして」[plc]

[shownametag name="大樹" visible=true]「……ぁ、いや」[plc]


それは……本能と言いますか、なんと言いますか。[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……」[plc]


答えあぐねていると、[lr]
巻き髪はジッと値踏みするように俺を上下に眺めた。[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……あなた、谷口って。もしかして 谷口 大樹？」[plc]


[shownametag name="大樹" visible=true]「へ？」[plc]


[shownametag name="巻き髪" bust="naruse" visible=true]「なるほどね」[plc]


そう言って、[lr]
『よく分かった』という顔でその女は立ち上がった。[plc]

@fadebgm time="300" volume="0"
@playse storage="sinzou1"
[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……ってことは貴方、今日は来れたのね」[plc]


[shownametag name="大樹" visible=true]「――っ」[plc]


時が、止まったかと思った。[plc]


[shownametag name="巻き髪" bust="naruse" visible=true]「結構、有名ですわよ」[plc]


俺が何か言うより先に、[r]
先回りするようにそう言う。[plc]


[shownametag name="大樹" visible=true]「……」[plc]


そう……なのか。[lr]
不登校とか、もっとポピュラーなもんかと思ってたけど。[plc]

じゃぁ、俺、学校うろつくと。[lr]
結構、バレバレなのか。[plc]


[shownametag name="大樹" visible=true]「……」[plc]

@fadebgm time="300" volume="100"
[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「ふふ」[plc]


俺の顔に何を思ったのか、[lr]
巻き髪は急に笑顔になった。[plc]

[old_naruse_stand pose=1 face=hohoho]
[shownametag name="巻き髪" bust="naruse" visible=true]「ほほほ、冗談冗談！」[plc]


[shownametag name="大樹" visible=true]「ぇ？」[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「普通の生徒はいちいちそんな事気にしてませんわ」[plc]

[old_naruse_stand pose=1 face=hohoho]
[shownametag name="巻き髪" bust="naruse" visible=true]「私が特別知ってるだけですわよ」[plc]


そう言って、豪快に笑って。[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]
「落ち込まない落ち込まない。[lr]
　せっかく来たんじゃありませんの！」[plc]

バシバシと、背中を叩いてくる。[plc]


[shownametag name="大樹" visible=true]「……」[plc]


……この感じ。[plc]


[shownametag name="大樹" visible=true]「……先輩」[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「ん？」[plc]


その言葉に、巻き髪は反応した。[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「そうですわね。確かに先輩ですわよ」[plc]


言って、胸元のバッジを見せてきて。[plc]


[shownametag name="大樹" visible=true]「ぁ、ほんとだ」[plc]


って、いやそうじゃなくて。[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]「……誰かと、似てらした？」[plc]


[shownametag name="大樹" visible=true]「……」[plc]


……あぁ、くそ。ほんとに似てやがる。[plc]

[old_naruse_stand pose=1 face=hohoho]
[shownametag name="巻き髪" bust="naruse" visible=true]
「ほっほっほ、私と似てらっしゃるなんて。[lr]
それはそれは『素敵な』先輩なんでしょうねぇ」[plc]

[shownametag name="大樹" visible=true]「……」[plc]


『素敵な』をやたらと強調してくるが。[lr]
……ま、否定はしないよ。[plc]





@playse storage="chaim" buf="0" loop="false"
@fadese volume="100" time="1"
――ボーン、ボーンボーン。[plc]




いつの間にか、チャイムが鳴っていた。[plc]
@fadeoutse time="500"

[old_naruse_stand pose=2 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]
「あら？　肝心な事を聞いてませんけれど……まぁいいわ」[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="巻き髪" bust="naruse" visible=true]
「谷口 大樹 君！」[plc]

[dis_all_chara]
[shownametag name="大樹" visible=true]「！？」[plc]


急に、巻き髪は命令するような口調になった。[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="成瀬" visible=true]
「３のE 成瀬 なるみ。　この学校の、女王になる女ですわ！」[plc]

そう言って、胸を張って。[plc]


[shownametag name="大樹" visible=true]「女、女王……？」[plc]
[dis_all_chara]

まともなのかと一瞬思ったけど、[lr]
やっぱ頭おかしいだろこの女。[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="成瀬" visible=true]
「女王、女王ですわ……女王には、色々と責務がありますの」[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="成瀬" visible=true]
「迷える子羊を導くのも。その一つ」[plc]


[shownametag name="大樹" visible=true]「……」[plc]
[dis_all_chara]

はぁ？[plc]

[old_naruse_stand pose=1 face=futsu]
[shownametag name="成瀬" visible=true]
「３のE……何かあったら、お尋ねなさい」[plc]

[dis_all_chara]
そう言って、颯爽と背を向けて。[plc]


[shownametag name="大樹" visible=true]「……あの」[plc]


この人……。[plc]

[old_naruse_stand pose=2 face=futsu]
[shownametag name="成瀬" visible=true]「あ、それと」[plc]


[shownametag name="大樹" visible=true]「へ？」[plc]

[old_naruse_stand pose=1 face=hohoho]
[shownametag name="成瀬" visible=true]
「そんな顔で見るのやめて下さる？　これは、地毛ですわ」[plc]

@dis_all_chara_fade
そのまま、『おサボリは１限までがこの学校の伝統ですわよ』[r]
と立ち去って行く。[plc]

[shownametag name="大樹" visible=true]「……」[plc]


[shownametag name="大樹" visible=true]
「……何が地毛だよ。めっちゃブリーチ色じゃん」[plc]


……どうも、俺は心配されたらしい。[plc]





@playse storage="chaim" buf="0" loop="false"
――ボーン、ボーンボーン。[plc]




鐘の音を釈然と聞き流しながら。[plc]
@fadeoutse time="500"

[shownametag name="大樹" visible=true]「……さて」[plc]


;[ベッドに転がる]
[strans storage="black" method="universal" rule="look_up" time="250"]
[strans storage="hokentenjoEve" method="universal" rule="look_up" time="250"]
[playse storage="gishi"]
――ボスッ。[plc]

俺は、『素敵な』先輩の忠告を無視する算段を立てるのであった。[plc]


;[普通の場面転換]
;[→顔面おろしはロリの味
@strans storage="black" time="800"
@fadeoutbgm time="2000"]
[JumpChapter storage="prologue_ep7.ks"]
