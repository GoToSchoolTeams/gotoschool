
;【絹虫印、plcマクロ。改ページ（ｐ）、セーブラベル、クリアーメッセージ。】
[macro name="plc"]
[p]
[shownametag visible=false]
[label]
[cm]
[endmacro]

[macro name="lr"]
[l][r]
[endmacro]

;【立ち絵全消去】
;キャラを立たせるレイヤは0~6
[macro name="dis_all_chara"]
[backlay]
[layopt layer="0" page=%page|fore visible="false"]
[layopt layer="1" page=%page|fore visible="false"]
[layopt layer="2" page=%page|fore visible="false"]
[layopt layer="3" page=%page|fore visible="false"]
[layopt layer="4" page=%page|fore visible="false"]
[layopt layer="5" page=%page|fore visible="false"]
[layopt layer="6" page=%page|fore visible="false"]
[wt]
[endmacro]

;【立ち絵全消去(クロスフェード)】
;キャラを立たせるレイヤは0~6
[macro name="dis_all_chara_fade"]
[backlay]
[layopt layer="0" page="back" visible="false"]
[layopt layer="1" page="back" visible="false"]
[layopt layer="2" page="back" visible="false"]
[layopt layer="3" page="back" visible="false"]
[layopt layer="4" page="back" visible="false"]
[layopt layer="5" page="back" visible="false"]
[layopt layer="6" page="back" visible="false"]
[trans method="crossfade" time=%time|500]
[wt]
[endmacro]

;;【エフェクトマクロ】
;;一瞬だけ画像を表示\n
;;storage=背景画像を指定する\n, 画像ファイル名
;;time=表示時間defalt100\n, ミリ秒時間
[macro name="effect"]
[image storage="%storage" layer="6" visible="true"]
[wait time="%time|100"]
[layopt layer="6" visible="false"]
[endmacro]

;【メッセージレイヤの全削除】
[macro name="dis_all_message"]

[layopt layer="message0" page=fore visible=false]
[layopt layer="message1" page=fore visible=false]
[layopt layer="message2" page=fore visible=false]
[layopt layer="message3" page=fore visible=false]
[layopt layer="message4" page=fore visible=false]
[layopt layer="message5" page=fore visible=false]
[layopt layer="message6" page=fore visible=false]
[layopt layer="message7" page=fore visible=false]
[layopt layer="message8" page=fore visible=false]
[layopt layer="message9" page=fore visible=false]
[layopt layer="message10" page=fore visible=false]

;各種パーツも
[layopt layer=7 page="fore" visible="false"]
[layopt layer=8 page="fore" visible="false"]
[layopt layer=9 page="fore" visible="false"]

[backlay]

[endmacro]

;;トランジションマクロ\n
;;用例:@strans storage="背景名" method=crossfade time=1500
;;storage=背景画像を指定する\nデフォルトはblack, 画像ファイル名
;;method=トランジション方法\nデフォルトはcrossfade, トランジションタイプ
;;rule=ルール画像, 画像ファイル名
;;time=トランジション時間\nデフォルトは1000, ミリ秒時間
;;vague=あいまい領域値\nユニバーサルトランジションに適用する あいまい領域値を指定します, 0以上の値
;;from=スクロールされる方向\nスクロールトランジションにおいて、裏ページの画像がどの方向から現れてくるかを指定します, left;top;right;bottom
;;canskip=飛ばせるかどうか, 論理値
;;【背景を変えるマクロ】
@macro name=strans
@backlay
@dis_all_chara page=back
@image layer="base" storage=%storage|black page="back" visible="true" rgamma="%rgamma" ggamma="%ggamma" bgamma="%bgamma" fliplr="%fliplr" flipud="%flipud" mcolor="%mcolor" mopacity="%mopacity" clipheight="%clipheight" clipleft="%clipleft" cliptop="%cliptop" clipwidth="%clipwidth"
@trans method=%method|crossfade rule=%rule from=%from stay=%stay time=%time|1000 vague=%vague layer="base"
@wt canskip=%canskip
@endmacro

;;メッセージレイヤの初期化
;;シナリオ表示前に呼び出してください
[macro name="SetupMessageWindow"]
	;全削除
	[dis_all_message]
	[dis_all_chara]
	[eval exp="global.ClearSystemMessage()"]
	[backlay]

	;メッセージレイヤ設定
	[current layer="message1"]
	[deffont size=32]
	[current layer="message0"]
	[deffont size=32]

	;平文レイヤは表示
	[image layer=7 top=500 left=40 opacity=128 storage="temp_message" page="fore" visible="true"]
	[position layer="message0" top=500 left=180 width=1080 height=200 opacity=0 visible="true" page="fore"]
	
	;名前レイヤは一旦非表示
	[image layer=8 top=380 left=70 opacity=128 storage="temp_name" page="fore" visible="false"]
	[position layer="message1" top=358 left=50 width=400 height=200 opacity=0 visible="false" ]
	
	;顔レイヤも一旦非表示
	[layopt layer=9 top=420 left="-50" page="fore" visible="false"]
	
	;裏にも適用
	[backlay]

	;BGMとSEのボリュームをもとに戻す
	[fadebgm volume="100" time="1"]
	[fadese volume="100" time="1"]

[endmacro]

[macro name="SetupSelectWindow"]
	;メッセージ系は隠す
	[position layer="message0" visible="false"]
	[position layer="message1" visible="false"]
	
	
[endmacro]

;;システムレイヤのON・OFF
;; flagでtrue falseを指定してください
[macro name="SystemMessageVisible"]
	[position layer="message8"  visible="%flag"]
	[position layer="message9"  visible="%flag"]
	[position layer="message10" visible="%flag"]
[endmacro]

;;立ち絵表示のマクロ
;;who=人物名(文字列 ex.gaia, senpai...)
;;pause=ポーズ番号
;;face=表情番号
;;layer=表示したい前景レイヤ番号, 前景レイヤ
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, レイヤ位置
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;grayscale=画像をグレースケールにするか\nlayer , 論理値
;;index=重ね合わせ順序\n背景レイヤには指定しないでください, 1以上の値
;;opacity=不透明度\nlayer 属性で指定したレイヤの不透明度を指定します, 256値
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;zoom=拡大率\n拡大率を指定します, パーセント値
;;notrans=トランジションの有無, 論理値
;;big=ズーム画像か
[macro name="showstandimage"]
	[backlay cond="mp.notrans != 'true'"]
	;表示した立ち絵情報を保存・削除する
	[if exp=" mp.visible == 'true' "]
		[eval exp="tf.filename = global.GetStandFileName(mp.who, mp.pause, mp.face, false, mp.big)"]
		[image storage="&tf.filename" layer=%layer|0 pos=%pos|center visible=%visible|true index=%index|1 opacity=%opacity|255 page=back zoom=%zoom|100 grayscale=%grayscale]
		[layopt layer=0 top="100" left="200" page="back" cond="mp.big == 'true'"]
		[eval exp="global.SaveStandInfo(mp.who, mp.pause, mp.face)"]
	[else]
		[layopt layer=0 visible="false" page="back"]
		[eval exp="global.DeleteStandInfo(mp.who)"]
	[endif]
	[if exp="mp.notrans != 'true'"]
		[trans time=%time|500 method="crossfade"]
		[wt]
	[endif]
[endmacro]

;;名前欄を表示する
;;bust=名前欄の名前とバストアップ画像の名前が違ったときに指定する
[macro name="shownametag"]
	[if exp="mp.noBust != 'true'"]
		[showlastbustup name=%name visible=%visible force=%bust]
	[endif]
	[layopt layer=8 visible=%visible|true]
	[position layer="message1" visible=%visible|true]
	[if exp="mp.visible != 'false'"]
		[nowait]
		[current layer="message1"]
		[emb exp="mp.name"]
		[current layer="message0"]
		[endnowait]
	[endif]
[endmacro]

;;立ち絵情報からバストアップ画像を表示する
;;name=必須
[macro name="showlastbustup"]
	;主人公はカオナシ
	[if exp="mp.name != '大樹'"]
		;別名が表示されることもあるので、個別に名前指定があったらそれを適用する
		[if exp="mp.force != void"]
			[eval exp="mp.name = mp.force"]
		[endif]
		[if exp="mp.visible == 'true'"]
			; 画面に表示されたことのあるキャラの情報を取得して表示
			[if exp="f.lastShowStandImageinfo[mp.name] != void"]
				[eval exp="mp.who   = f.lastShowStandImageinfo[mp.name].name"]
				[eval exp="mp.pause = f.lastShowStandImageinfo[mp.name].pause"]
				[eval exp="mp.face  = f.lastShowStandImageinfo[mp.name].face"]
				[image layer=9 storage="&global.GetStandFileName(mp.who, mp.pause, mp.face, 'true', 'false')" visible=%visible]
			[endif]
		[else]
			[layopt layer=9 page="fore" visible=%visible]
		[endif]
	[endif]
[endmacro]

;;指定したシナリオにジャンプする(デバッグ中ならチャプター選択画面に飛ぶ)
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
[macro name="JumpChapter"]
[if exp="tf.isDebug == true"]
	[jump storage="debug.ks"]
[else]
	[jump storage=%storage]
[endif]
[endmacro]

[macro name="SetupBrunch"]
@dis_all_message
@position layer="message0" width=800 height=120 top=20  left=240 opacity="128" page="fore" visible="false"
@position layer="message1" width=800 height=120 top=160 left=240 opacity="128" page="fore" visible="false"
@position layer="message2" width=800 height=120 top=300 left=240 opacity="128" page="fore" visible="false"
@position layer="message3" width=800 height=120 top=440 left=240 opacity="128" page="fore" visible="false"
@position layer="message4" width=800 height=120 top=560 left=240 opacity="128" page="fore" visible="false"
@eval exp="f.Brunch[mp.name] = 0"
@eval exp="tf.Brunch.clear()"
[endmacro]

[macro name="AddBrunch"]
@eval exp="tf.temp = new Dictionary()"
@eval exp="tf.temp['text'] = mp.text"
@eval exp="tf.temp['storage'] = mp.storage"
@eval exp="tf.temp['target'] = mp.target"
@eval exp="tf.Brunch.add(tf.temp)""
[endmacro]

[macro name="ShowBrunch"]
[if exp="tf.Brunch.count == 1"]
	@RenderBruch layer="message2" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
[elsif exp="tf.Brunch.count == 2"]
	@RenderBruch layer="message1" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message3" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
[elsif exp="tf.Brunch.count == 3"]
	@RenderBruch layer="message1" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message2" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
	@RenderBruch layer="message3" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target"
[elsif exp="tf.Brunch.count == 4"]
	@RenderBruch layer="message0" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message1" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
	@RenderBruch layer="message2" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target"
	@RenderBruch layer="message3" text="&tf.Brunch[3].text" storage="&tf.Brunch[3].storage" target="&tf.Brunch[3].target"
[elsif exp="tf.Brunch.count == 5"]
	@RenderBruch layer="message0" text="&tf.Brunch[0].text" storage="&tf.Brunch[0].storage" target="&tf.Brunch[0].target"
	@RenderBruch layer="message1" text="&tf.Brunch[1].text" storage="&tf.Brunch[1].storage" target="&tf.Brunch[1].target"
	@RenderBruch layer="message2" text="&tf.Brunch[2].text" storage="&tf.Brunch[2].storage" target="&tf.Brunch[2].target"
	@RenderBruch layer="message3" text="&tf.Brunch[3].text" storage="&tf.Brunch[3].storage" target="&tf.Brunch[3].target"
	@RenderBruch layer="message4" text="&tf.Brunch[4].text" storage="&tf.Brunch[4].storage" target="&tf.Brunch[4].target"
[endif]
[endmacro]

[macro name="RenderBruch"]
	@nowait
	@position layer="%layer" visible="true"
	@current layer="%layer"
	@font size=32
	@style align="center"
	@link storage="%storage" target="%target"
	@emb exp="mp.text"
	@endlink
	@endnowait
[endnowait]


[endmacro]

[return]
