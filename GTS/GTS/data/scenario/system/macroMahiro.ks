*【機能系マクロ】
;;[bust画像が消えないplc]
[macro name="plk"]
[p]
[shownametag visible=false]
;[layopt layer=9 visible="false"]
[label]
[current layer="message1"]
[er]
[current layer="message0"]
[er]
[endmacro]
;;[新しいシーンを始めるマクロ]
;;storage=背景画像, 画像ファイル名
[macro name="StartNewScene"]
[dis_all_chara]
[SetupMessageWindow hide_window="true"]
[fadeoutbgm time="1000"]
[strans storage="white"]
[strans storage="%storage"]
[kagtag strage="%storage"]
[endmacro]


*【新フォーマット立ち絵】
;;[縁]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yorokobi;shinrai;fuan;hoshin;odoroki;aisyu;aisyu2;ikarinaki;ikarinaki2;akire;unzari;iradachi;ikari;kitai;futsu;metoji;metoji2;doya;bibiri;fukigen
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="najimi_stand"]
[showstandimage who="najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="true"]
[shownametag name="縁" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[縁顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yorokobi;shinrai;fuan;hoshin;odoroki;aisyu;aisyu2;ikari;ikarinaki;ikarinaki2;akire;unzari;iradachi;kitai;futsu;metoji;metoji2;doya;bibiri;gekido;keibetsu;ai;kyofu;kyozetsu;hitan;kokai;seido
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="najimi_face"]
[showbustup who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="縁" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[悟]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yorokobi;shinrai;naki;hoshin;odoroki;kanashimi;akire;unzari;iradachi;kitai;fuan;futsu;futsu2
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="satori_stand"]
[showstandimage who="satori" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[shownametag name="悟" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[悟顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yorokobi;shinrai;osore;hoshin;odoroki;kanashimi;akire;unzari;iradachi;kitai;futsu;futsu2;hitan;fuan;doya;otyokuri;ai
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="satori_face"]
[showbustup who="satori" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="悟" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]


;;マクロの終了
[return]
