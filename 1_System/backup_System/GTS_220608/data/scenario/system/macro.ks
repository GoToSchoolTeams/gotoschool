
;【絹虫印、plcマクロ。改ページ（ｐ）、セーブラベル、クリアーメッセージ。】
[macro name="plc"]
[p]
[shownametag visible=false]
[label]
[current layer="message1"]
[er]
[current layer="message0"]
[er]
[endmacro]

;クリック待ち&改行(改行はクリック後)
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

;【立ち絵全消去(クロスフェード) + メッセージレイヤの消去】
;キャラを立たせるレイヤは0~6
[macro name="dis_all_chara_fade_message"]
[backlay]
[layopt layer=7 page="back" visible="false"]
[layopt layer=8 page="back" visible="false"]
[layopt layer=9 page="back" visible="false"]
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
;生成してるメッセージレイヤをすべて非表示に
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
;;blur=ブラーをかけるかどうか, 論理値
;;noclear=キャラを消去するかどうか, 論理値
;;【背景を変えるマクロ】
[macro name=strans]
[if exp="mp.noclear != 'true'"]
	[backlay]
	[dis_all_chara page=back]
[endif]
[image layer="base" storage=%storage|black page="back" visible="true" rgamma="%rgamma" ggamma="%ggamma" bgamma="%bgamma" fliplr="%fliplr" flipud="%flipud" mcolor="%mcolor" mopacity="%mopacity" clipheight="%clipheight" clipleft="%clipleft" cliptop="%cliptop" clipwidth="%clipwidth" grayscale="%grayscale" zoom="%zoom" left="%left" top="%top"]
[if exp="mp.blur == 'true'"]
	[layer_blur a="10" b="10" layer="base" page="back"]
[endif]
[trans method=%method|crossfade rule=%rule from=%from stay=%stay time=%time|1000 vague=%vague layer="base"]
[wt canskip=%canskip]
[kagtag noclear=%noclear blur=%blur]
[endmacro]

;;メッセージレイヤの初期化
;;シナリオ表示前に呼び出してください
[macro name="SetupMessageWindow"]
	;全削除
	[dis_all_message]
	[dis_all_chara]
	[eval exp="global.ClearSystemMessage()"]
	[backlay]
	;メッセージレイヤ画像表示
	[image layer=7 top=470 opacity=256 storage="message_window" page="fore" visible="true"]
	;名前レイヤは一旦非表示
	[position layer="message1" top=528 left=300 width=700 height=200 opacity=0 visible="false" page="fore" marginb="0" marginl="0" marginr="0" margint="0"]
	;平文レイヤは表示
	[position layer="message0" top=567 left=310 width=970 height=153 opacity=0 visible="true"  page="fore" marginb="0" marginl="0" marginr="152" margint="0"]
	;ボタンレイヤも表示
	[position layer="message2" top="0" left="0" width="1280" height=720 opacity=0 visible="true" page="fore" marginb="0" marginl="0" marginr="0" margint="0"]
	[current layer="message2"]
	[locate x=1205 y=685]
	[button graphic="x"]
	[locate x=1098 y=685]
	[button graphic="system"]
	[locate x=991 y=685]
	[button graphic="log"]
	[locate x=884 y=685]
	[button graphic="skip"]
	[locate x=777 y=685]
	[button graphic="auto"]
	[locate x=670 y=685]
	[button graphic="load"]
	[locate x=563 y=685]
	[button graphic="save"]
	;顔レイヤも一旦非表示
	[layopt layer=9 top=420 left="-50" page="fore" visible="false"]
	;メッセージレイヤ設定
	[current layer="message1"]
	[deffont size=30]
	[current layer="message0"]
	[deffont size=26]
	[font size=26]
	;クリック待ちグリフ変更
	[glyph line="sakura" page="sakura" fix="true" top=48 left=810]
	;裏にも適用
	[backlay]
	;BGMとSEのボリュームをもとに戻す
	[fadebgm volume="100" time="1"]
	[fadese volume="100" time="1"]
	;historyを有効化する
	[history enabled="true" output="true"]
[endmacro]

[macro name="SetupSelectWindow"]
	;メッセージ系は隠す
	[position layer="message0" visible="false"]
	[position layer="message1" visible="false"]
	[position layer="message2" visible="false"]
[endmacro]

;;システムレイヤのON・OFF
;; flagでtrue falseを指定してください
[macro name="SystemMessageVisible"]
	[position layer="message8"  visible="%flag"]
	[position layer="message9"  visible="%flag"]
	[position layer="message10" visible="%flag"]
[endmacro]

;;立ち絵表示のマクロ
;;who=人物名
;;pose=ポーズ番号
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
;;size=s,m,l
[macro name="showstandimage"]
	;トランジションの有無によってパラメータを切り替え
	[if exp="mp.notrans != 'true'"]
		[backlay]
		[eval exp="mp.page = 'back'"]
	[endif]
	;未指定はm, center
	[eval exp="mp.size='m'" cond="mp.size == ''"]
	[eval exp="mp.pos='c'" cond="mp.pos == ''"]
	[eval exp="mp.tere='false'" cond="mp.tere == ''"]
	;表示した立ち絵情報を取得する
	[eval exp="tf.s_info = global.GetStandFileInfo(mp.who, mp.pose, mp.face, mp.size, mp.pos, mp.tere)"]
	;取得した情報に従って立ち絵を表示
	[image storage="&tf.s_info.file" left="&tf.s_info.left" top="&tf.s_info.top" layer=%layer|0 visible="true" index=%index|1 opacity=%opacity|255 page="&mp.page" grayscale=%grayscale]
	;トランジション(有効なら)
	[if exp="mp.notrans != 'true'"]
		[trans time=%time|500 method="crossfade"]
		[wt]
	[endif]
	;メッセージウィンドウにバストアップ表示(有効なら)
	[if exp="mp.nobust != 'true'"]
		[showbustup who="&mp.who" pose="&mp.pose" fase="&mp.face"]
	[endif]
	[kagtag who=%who pose=%pose face=%face notrans=%notrans]
[endmacro]

;;名前欄を表示する
[macro name="shownametag"]
	[position layer="message1" visible=%visible|true]
	;[layopt layer=8 visible=%visible|true]
	[if exp="mp.visible != 'false'"]
		[nowait]
		[current layer="message1"]
		[emb exp="mp.name"]
		[current layer="message0"]
		[endnowait]
	[endif]
[endmacro]

;;バストアップ画像を表示する
[macro name="showbustup"]
	;[image layer=9 storage="&global.GetStandFileInfo(mp.who, mp.pose, mp.face, 'm')" visible=%visible]
[endmacro]

;;バストアップ画像を非表示にする
[macro name="hidebust"]
	[layopt layer=9 page="fore" visible=%visible]
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

;;画像ぼかし
;;page=画面\n指定しない場合はback, fore;back
;;layer=[必須] 前景レイヤまたは背景レイヤを指定します, 前景レイヤ;背景レイヤ
;;a=[必須] ぼかしの強さ\n5程度で割とぼやける, 0;5;10
;;b=[必須] ぼかしの強さ\n5程度で割とぼやける, 0;5;10
[macro name=layer_blur]
[eval exp="kag.fore.layers[mp.layer].doBoxBlur(mp.a, mp.b)" cond="mp.page=='fore'&&mp.layer!='base'"]
[eval exp="kag.back.layers[mp.layer].doBoxBlur(mp.a, mp.b)" cond="mp.page!='fore'&&mp.layer!='base'"]
[eval exp="kag.fore.base.doBoxBlur(mp.a, mp.b)" cond="mp.page=='fore'&&mp.layer=='base'"]
[eval exp="kag.back.base.doBoxBlur(mp.a, mp.b)" cond="mp.page!='fore'&&mp.layer=='base'"]
[kagtag page=%page layer=%layer a=%a b=%b]
[endmacro]


;;シネマ風
;;time=時間
[macro name=cinema]
[image layer=5 page="fore" top=720 storage="black" visible="true"]
[image layer=6 page="fore" top=-720 storage="black" visible="true"]
[move layer=5 accel="-6" page="fore" path=(0,620,255) time=%time]
[move layer=6 accel="-6" page="fore" path=(0,-620,255) time=%time]
[wm canskip="false"]
[endmacro]

;;time=トランジションにかかる時間
;;layer=対象レイヤ\n対象となるレイヤを指定します, 背景レイヤ;前景レイヤ;メッセージレイヤ
;;staff=表示させたいスタッフの名前
;;size=文字サイズ
;;transbase=背景トランジションを行うかどうか
[macro name=staff_show]
[backlay]
[position layer="message4" page="back" visible="true" width=1280 height=720 top="0" left="0"]
[current layer="message4" page="back" withback="false"]
[style align="center"]
[font size=%size|35]
[locate y=%y|285]
[emb exp="mp.staff"]
[if exp="mp.transbase == 'true'"]
	[trans method="crossfade" time=%time|500]
[else]
	[trans method="crossfade" time=%time|500 layer="message4"]
[endif]
[wt canskip="false"]
[if exp="mp.playop == 'true'"]
[playbgm storage="opening_2"]
[endif]
[wait time=%showtime|2000 canskip="false"]
[backlay]
[current layer="message4" page="back"]
[er]
[trans method="crossfade" time=%time|500 layer="message4"]
[wt canskip="false"]
[kagtag staff=%staff transbase=%transbase|false playop=%playop|false]
[endmacro]

[return]
