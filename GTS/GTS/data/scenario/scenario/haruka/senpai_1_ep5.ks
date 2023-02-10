;[縁は最後に選択させる。]
;[縁を途中で選択した場合には、『大樹「こいつを選ぶなんて、どんでもない！」』というメッセージが流れる]
;[選ぶごとに、【登校風景】のイベントが起こる。上から順に]

[SetupMessageWindow]
[fadeinse storage="chaim" time="1000"]
先輩にも止められたことで、[l]俺はなんとか落ち着きを取り戻した。[plc]

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
俺はみんなのゴミ箱だったけど。[plc]


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

[strans storage="kyositu_m" time="100"]
[nowait]
[showstandimage who=gaia face=egao time="0" nobust=true]
[nowait]
「よう、きょうだ――」[plc]


[dis_all_chara_fade_message time=0]
[strans storage="black" time="0"]
[wait time="400"]
[stopbgm]



[show_message_fade time="500"]
色々とあったが、あっという間に放課後がやってきた。[plc]


;[場面転換、屋上]


[fadeinse storage="wind" time="1000"]
[strans storage="okujo_m"]
[fadeinbgm storage="evening" time="1000"]
[showstandimage who=haruka face=keibetsu]
[shownametag name="遥香" visible=true]
「さて、」[plc]


[shownametag name="大樹" visible=true]
「……」[plc]

[dis_all_chara_fade_message time="200"]
[fadeoutse time="1000"]
[wait time="1000"]
[SetupMessageWindow]
午後になっても、相変わらずここは風が強い。[plc]



先輩と俺は、放課後でも会議室でなく屋上に集まっていた。[plc]



会議室は今でも俺達の為に空いてはいるのだが、[lr]
先輩の希望でここになった。[plc]


もしかすると、[r]
結構ひと目を気にするひとなのかもしれない。[plc]

[showstandimage who=haruka face=kuno]
[shownametag name="遥香" visible=true]
「思ったんだけどさ。[l]一人一人説得したところで、[r]
　時間ばっかり掛かっちゃうと思うんだよね」[plc]

[shownametag name="遥香" visible=true]
「そもそも、自分の意志じゃ決められない子もいると思う」[plc]


[shownametag name="大樹" visible=true]
「……」[plc]

[dis_all_chara]

それは、そうなのだろう。[plc]



ああいう団体に参加したら分かると思うが、[lr]
組織の人間ってのは、自分の意志のみで動くんじゃない。[plc]


誰か強いひとの意志に賛同して動くのだ。[lr]
つまり、殆どの連中は単なる承認行動に過ぎない。[plc]


親鳥の後に続く雛と同じ。[lr]
『烏合の衆』とはよく言ったものなのだ。[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「だからまぁ、とりあえずリーダーの縁ちゃんを――」[plc]

[shownametag name="大樹" visible=true]
「――待った！」
[showstandimage who=haruka face=odoroki nobust=true time="200" size=l]
[plc]

俺は、力強く叫んだ。
[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「……はい、谷口君」[plc]


[shownametag name="大樹" visible=true]
「縁……いや、旗立さんは駄目っすよ先輩！[l][r]
[showstandimage who=haruka face=keibetsu nobust=true]
　先輩も見たでしょ、あの剣幕！！　あの憎悪！！！」[plc]

[shownametag name="大樹" visible=true]
「冷静な話し合いなんか、出来っこない！」[plc]

[showstandimage who=haruka face=kuno nobust=true]

[shownametag name="大樹" visible=true]
「そもそもがアイツは、俺憎しでやってるんです！[r]
　俺が居る限り、説得なんか出来るわけありません！！」[plc]

[shownametag name="遥香" visible=true bust="false"]
「……」[plc]

[dis_all_chara]

俺の剣幕に先輩は少し呆れた様子だったが、[plc]

[showstandimage who=haruka face=ai]
[shownametag name="遥香" visible=true]
「……こっちも冷静な話し合いは出来ないみたいね」[plc]



チラリと俺を一瞥してから、そう呟いた。[plc]


[dis_all_chara]

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

[showstandimage who=haruka face=keibetsu]
[shownametag name="遥香" visible=true]
「……さて、誰にしようかしら。谷口君……考えある？」[plc]


[dis_all_chara]

さて、どうしようか。[plc]



……うん、その前に聞かなきゃいけない事があるな。[plc]


[shownametag name="大樹" visible=true]
「先輩、」[plc]

[showstandimage who=haruka face=magao]
[shownametag name="遥香" visible=true]
「何？」[plc]


[shownametag name="大樹" visible=true]
「名前が分かりません」
[plc]

[showstandimage who=haruka face=jitome time="200"]
[shownametag name="遥香" visible=true]
「……」[plc]

[dis_all_chara]
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
[fadeoutbgm time="1000"]
[SetupBrunch name="prologue_ep_11_0"]
[AddBrunch text="安倍 みゆき（一年の中心人物）" storage="senpai_ep_12_miyuki.ks"]
[AddBrunch text="寺門 あかね（二年の中心人物）" storage="senpai_ep_12_akane.ks"]
[AddBrunch text="福岡 桜子（三年の中心人物）" storage="senpai_ep_12_sakurako.ks"]
[ShowBrunch]
[s]

*AllClear
[SetupBrunch name="prologue_ep_11_1"]
[AddBrunch text="旗立 縁" storage="senpai_ep_13.ks"]
[ShowBrunch]
[s]
