
;[暗転]
[SetupMessageWindow]

[dis_all_chara_fade]

;[暗転解除]


@fadeinbgm time="1000" storage="evening"
@image storage="kyositu_e" layer="base" page="back" visible="true"
@trans layer="base" time="500" rule="177" method="universal"
@quake vmax="5" hmax="5" time="300"
@wt
@playse storage="bosu04"
――ドンッ！[plc]

[showstandimage who="najimi_old" pose=1 face=futsu nobust="true"]
[old_najimi_face face=futsu]
@shownametag name="縁" visible=true
「随分ね」[plc]

目が覚めたのと、不愉快になったのは殆ど同時だった。[plc]

[shownametag name="大樹" visible=true]
「――っ」[plc]

机に書類の束を叩きつけられ、俺は授業が終わっていた事を知る。[plc]


眼前には、見知ったお隣さんの顔があった。[plc]

@shownametag name="縁" visible=true
「何の気紛れか登校してきたと思ったら、早速居眠りってわけ？」[plc]

@shownametag name="縁" visible=true
「お偉いのね」[plc]

@shownametag name="大樹" visible=true
「……」[plc]


目覚めて三秒で、寝起きよりも不快にしてくれる言い草だ。[plc]


……まったく。この女らしい。[plc]

[dis_all_chara]

@shownametag name="大樹" visible=true
「……ちっ」[plc]

時計を確認する。[l][r]
今は……だいたい４限目が始まったくらいか？[plc]

@shownametag name="大樹" visible=true
「…………ん？」[plc]

それにしちゃ、教室に誰もいない。[plc]

[showstandimage who="najimi_old" pose=1 face=metoji]
@shownametag name="縁" visible=true
「今は英語の時間。
　移動教室だからここには誰もいないわよ」[plc]


@shownametag name="大樹" visible=true
「移動……？」[plc]

初耳だ。[lr]
いつから移動教室なんて始まったんだ？[plc]


[showstandimage who="najimi_old" pose=1 face=futsu]
@shownametag name="縁" visible=true
「レベル分けされたのよ。[lr]
　あんたは一番下だから、多目的室」[plc]

@shownametag name="大樹" visible=true
「……じゃぁ、お前は？」

なんで居るんだ？

[showstandimage who="najimi_old" pose=1 face=metoji]
@shownametag name="縁" visible=true
「私はどっかの馬鹿が来なかったから起こしに」[plc]

そう言って、縁は不愉快そうに鼻を鳴らした。[plc]

[dis_all_chara]

@shownametag name="大樹" visible=true
「……は、面倒見が良いね」[plc]

言いながら、叩きつけられた書類を開いてみる。[plc]

[showstandimage who="najimi_old" pose=1 face=futsu]
@shownametag name="縁" visible=true
「あんたが来なかった間の、プリントとか[r]
　書かなきゃいけない書類とか、その他諸々……担任が渡せって」[plc]

@playse storage="mekuru"
@shownametag name="大樹" visible=true
「……」[plc]

それは、溜まりに溜まった一ヶ月分のプリント類。[r][l]
だけれども、ファイルとかでやたらとキチンと整頓されていた。[plc]

@shownametag name="大樹" visible=true
「キチッと纏めてある……ゼウスも面倒見が良いね」[plc]

ぺらぺらとソレをめくりながら、[l][r]
自称、『全知全能』のメガネの担任を思い出す。[plc]

さっすが全知全能。[l][r]
あだ名の『ゼウス』は伊達じゃないね。[plc]

@stopse
[showstandimage who="najimi_old" pose=1 face=futsu tere=true]
@shownametag name="縁" visible=true
「……」[plc]


呆れながらもめくっていると、縁は妙な顔をしていた。[plc]


なんだ？　なんか文句あんのか？[plc]

@shownametag name="大樹" visible=true
「なんだよ？」[plc]

@shownametag name="縁" visible=true
「いや……そう、五条先生よ。あのひと面倒見がいいから」[plc]

@shownametag name="大樹" visible=true
「？」[plc]

[showstandimage who="najimi_old" pose=1 face=do]
@shownametag name="縁" visible=true
「何でもないわ。それより、[lr]
　教室鍵閉めるから荷物も持って行って」[plc]

@shownametag name="大樹" visible=true
「は？　何で？」[plc]

[showstandimage who="najimi_old" pose=1 face=metoji]
@shownametag name="縁" visible=true
「今日の５・６限は全校集会でしょ。[lr]
　授業は４限で終わりだから教室も閉めるのよ」[plc]

[dis_all_chara]

なんだそりゃ？[lr]
何もかも聞いてないんだが。[plc]

[showstandimage who="najimi_old" pose=1 face=metoji]
@shownametag name="縁" visible=true
「浦島太郎のあんたが知らないことは沢山あるわよ」[plc]

[showstandimage who="najimi_old" pose=1 face=do]
@shownametag name="縁" visible=true
「……一月も居なかったんだから」[plc]

[dis_all_chara]

@playse storage="mado"
言い捨てて、縁は窓を閉め始める。[l][r]
どうやら、ほんとに出なきゃいけないらしい。[plc]

@shownametag name="大樹" visible=true
「クラス委員でもないのに戸締りなんて、[lr]
流石、優等生の縁さんは器が違いますね」[plc]

皮肉を吐いて出ようとすると、[plc]

@fadebgm volume="50" time="500"
@playse storage="kagi"
@quake hmax="10" vmax="10" time="100"
――バシッ！[plc]

@shownametag name="大樹" visible=true
「――っ！？」[plc]

@fadebgm volume="100" time=500
後頭部に何か叩き付けられた。[plc]

@shownametag name="大樹" visible=true
「ってぇ……」[plc]


教室の鍵じゃねぇか。[l][r]
金属製だぞ、ふざけんな！[plc]

@shownametag name="大樹" visible=true
「おまぇ――」[plc]

@fadebgm volume="50" time="500"
[showstandimage who="najimi_old" pose=1 face=do tere=true size=s]
@shownametag name="縁" visible=true
「――私が、」[plc]


俺が叫ぶより先に、縁は続ける。[plc]

@shownametag name="縁" visible=true
「私がどういうつもりで――」[plc]

[showstandimage who="najimi_old" pose=1 face=ikari tere=true size=s]
@shownametag name="縁" visible=true
「……っ」[plc]

@fadebgm volume="100" time="500"
@dis_all_chara_fade
言いかけて、飲み込むように縁は背を向けた。[l][r]
そのまま、作業を続けていく。[plc]

@shownametag name="縁" visible=true
「……」[plc]


もう此方に見向きもしない。[plc]


それは『もう関係なかった』と思い出したような、[lr]
彼女の言った台詞そのものの態度で。[plc]


@shownametag name="大樹" visible=true
「んだよ……なんだよ。なんなんだよ」[plc]


クソッ、どういうことだよ！　どういう意味なんだよっ！？[plc]


叫びだしたかったが、[plc]



@fadebgm volume="50" time="500"
@strans storage="black" time="1000"
@shownametag name="大樹" visible=true
「……っ」[plc]


舌打ちだけして、背を向ける。[plc]


聞きたくないし、聞きたいとも思わない。[l][r]
あいつの事情なんて、俺が知るもんか。[plc]

@shownametag name="大樹" visible=true
「ぁぁっ、クソッ」[plc]

……なんで、こんなとこ来ちまったんだろう。[plc]

不快になるって分かりきってるのに。[lr]
馬鹿面下げて学校なんぞに来ちまって。[plc]

@shownametag name="大樹" visible=true
「……馬鹿じゃねぇのか」[plc]


愚痴る様に呟いて、[lr]
俺はその理由を思い返していたのだった。[plc]
@strans storage="black" time="2000"

;[回想に入るような演出]
;[→出会うということ]

@fadeoutbgm time="2000"
@JumpChapter storage="prologue_ep3.ks"
