;[縁は最後に選択させる。]
;[縁を途中で選択した場合には、『大樹「こいつを選ぶなんて、どんでもない！」』というメッセージが流れる]
;[選ぶごとに、【登校風景】のイベントが起こる。上から順に]

[SetupMessageWindow]
[fadeinse storage="chaim" time="1000"]
先輩にも止められたことで、俺はなんとか落ち着きを取り戻した。[plc]

[fadeoutse time="1000"]
[fadeinbgm storage="serious_2" time="1000"]
[strans storage="kyositu_m"]
[shownametag name="教師" visible=true bust="false"]
「――谷口、お前なにしに学校来たんだ？」[plc]


[strans storage="black"]
あいかわらず、教師は辛辣だったし。[plc]

[fadeinse storage="ambientA@08" time="1000"]
[strans storage="kyositu_m"]
――クスクスクス。[plc]
[fadeoutse time="1000"]

[playse storage="knock"]
――コツン。[plc]


[shownametag name="大樹" visible=true]
「……」[plc]


[strans storage="black"]
授業中は、俺はみんなのゴミ箱だったけど。[lr]
先輩の弁当で、割りと全部どうでもよくなっていた。[plc]


その他にも、机の中身がぶちまけられていたり、[lr]
カバンがゴミ箱に突っ込んであったり、[plc]


机そのものが廊下にでていたりと、[plc]

[strans storage="kyositu_m"]
[showbustup who=najimi face=ikari pose=1]
[shownametag name="縁" visible=true]
「……」[plc]


[strans storage="black"]
色々あったが、[plc]

[strans storage="kyositu_m"]
[showstandimage who=gaia face=egao]
[shownametag name="ガイア" visible=true]
「よう、きょうだ（省」[plc]

*debug
[setup_debug bg="black" bgm="serious_2"]
[strans storage="black" time="250"]
[fadeoutbgm time=250]
色々とあったが、あっという間に放課後がやってきた。[plc]



;[場面転換、屋上]

[fadeinse storage="wind" time="1000"]
[strans storage="okujo_m"]
[fadeinbgm storage="evening" time="1000"]
[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「さて、」[plc]


[shownametag name="大樹" visible=true]
「……」[plc]


[fadeoutse time="1000"]
午後になっても、相変わらずここは風が強い。[plc]



先輩と俺は、放課後にも会議室でなく屋上に集まっていた。[plc]



会議室は、今でも俺達の為に空いてはいるのだが、[lr]
先輩の希望でここになった。[plc]


もしかすると、結構ひと目を気にするひとなのかもしれない。[plc]

[showstandimage who=haruka face=kuno]
[shownametag name="遥香" visible=true]
「思ったんだけどさ。手伝ってくれてた全員を、[r]
一人一人説得したところで、時間ばっかり掛かっちゃうんだよね」[plc]

[shownametag name="遥香" visible=true]
「そもそも、自分の意志じゃ決められない子もいると思う」[plc]


[shownametag name="大樹" visible=true]
「……」[plc]



それは、そうなのだろう。[plc]



ああいう団体に参加したら分かると思うが、[lr]
組織の人間ってのは、自分の意志のみで動くんじゃない。[plc]


誰か強いひとの意志に賛同して、動くのだ。[lr]
つまり、殆どの連中は単なる承認行動に過ぎない。[plc]


親鳥の後に続く雛と同じ。[lr]
『烏合の衆』とはよく言ったものなのだ。[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「だからまぁ、とりあえずリーダーの縁ちゃんを――」[plc]

[shownametag name="大樹" visible=true]
「――待った！」[plc]


[showstandimage who=haruka face=odoroki nobust=true]
俺は、力強く叫んだ。[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「はい、谷口君」[plc]


[shownametag name="大樹" visible=true]
「縁……いや、旗立さんは駄目っすよ先輩！
先輩も見たでしょ、あの剣幕！！　あの憎悪！！！」[plc]

[shownametag name="大樹" visible=true]
「冷静な話し合いなんか出来っこない！」[plc]


[shownametag name="大樹" visible=true]
「そもそもがアイツは、俺憎しでやってるんです！
俺が居る限り、説得なんか出来るわけありません！！」[plc]

[shownametag name="遥香" visible=true]
「……」[plc]



俺の剣幕に、先輩は少し驚いた様だったが、[plc]

[showstandimage who=haruka face=ai]
[shownametag name="遥香" visible=true]
「……こっちも冷静な話し合いは出来ないみたいだし」[plc]



チラリと俺を一瞥してから、そう呟いた。[plc]

[shownametag name="大樹" visible=true]
「……」[plc]



大人げないのか？　……でも、でもしょうがない。[lr]
だって、だってよ……。[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「じゃぁ、」[plc]



俺の思考を遮る様に、先輩は続ける。[plc]


[shownametag name="遥香" visible=true]
「他の、あの時居た主要面子が狙い所ってとこね」[plc]


[shownametag name="大樹" visible=true]
「……そうですね」[plc]

[showstandimage who=haruka face=kuno]
[shownametag name="遥香" visible=true]
「……さて、誰にしようかしら。谷口君……考えある？」[plc]



さて、どうしようか。[plc]



……うん、その前に、聞かなきゃいけない事があるな。[plc]


[shownametag name="大樹" visible=true]
「先輩、」[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「何？」[plc]


[shownametag name="大樹" visible=true]
「名前が分かりません」[plc]

[showstandimage who=haruka face=jitome]
[shownametag name="遥香" visible=true]
「……」[plc]


額を抑えながら、先輩はあの時のメンバーの名前を上げた。[plc]
[jump storage="senpai_ep_11.ks" target="*Brunch"]
;//【選択肢】



;//【二回目以降の本文（ただし、縁を選択するときは要らない）】
;//【というか、縁イベントには選択すること無く勝手に進む】

*After
そうして、あっという間に放課後がやってきた。[lr]
正直、今日も辛い日々だった。[plc]


さて、[plc]


[shownametag name="遥香" visible=true]
「誰を説得しに行こうか？」[plc]

*Brunch
[SetupBrunch name="prologue_ep_11_0"]
[AddBrunch text="安倍 みゆき（一年の中心人物）" storage="senpai_ep_12_miyuki.ks"]
[AddBrunch text="寺門 あかね（二年の中心人物）" storage="senpai_ep_12_akane.ks"]
[AddBrunch text="福岡 桜子（三年の中心人物）" storage="senpai_ep_12_sakurako.ks"]
[ShowBrunch]
[s]

*AllClear
[SetupBrunch name="prologue_ep_11_1"]
[AddBrunch text="旗立 縁" storage="senpai_ep_12.ks"]
[ShowBrunch]
[s]
