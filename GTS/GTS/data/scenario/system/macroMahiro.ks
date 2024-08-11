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
;;[遥香]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yonin;fuan;hoshin;aisyu;unzari;iradachi;kanshin;futsu;yorokobi;shinrai;odoroki;kanashimi;rakkan;ikari;kitai
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;lc;c;rc;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="haruka_stand"]
[showstandimage who="haruka" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[shownametag name="遥香" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[遥香顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yonin;fuan;hoshin;aisyu;unzari;iradachi;kanshin;futsu;yorokobi;shinrai;odoroki;kanashimi;rakkan;ikari;kitai
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="haruka_bust"]
[showbustup who="haruka" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="遥香" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[縁]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yorokobi;shinrai;fuan;hoshin;odoroki;aisyu;aisyu2;ikarinaki;ikarinaki2;akire;unzari;iradachi;ikari;kitai;futsu;metoji;metoji2;doya;bibiri;fukigen
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;lc;c;rc;r
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
;;face=表情名, yorokobi;shinrai;fuan;hoshin;odoroki;aisyu;aisyu2;ikarinaki;ikarinaki2;akire;unzari;iradachi;ikari;kitai;futsu;metoji;metoji2;doya;bibiri;fukigen
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="najimi_bust"]
[showbustup who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="縁" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[悟]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, yorokobi;shinrai;naki;hoshin;odoroki;kanashimi;akire;unzari;iradachi;kitai;fuan;futsu;futsu2;osore;otyokuri
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;lc;c;rc;r
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
;;face=表情名, yorokobi;shinrai;naki;hoshin;odoroki;kanashimi;akire;unzari;iradachi;kitai;fuan;futsu;futsu2;osore;otyokuri
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="satori_bust"]
[showbustup who="satori" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="悟" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[ガイア]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, aisyu;aisyuAri;futsu;futsuAri;ikari;ikariAri;keiai;keiaiAri;keikai;keikaiAri;kyoufu;kyoufuAri;kyotan;kyotanAri;odoroki;odorokiAri;yorokobi;yorokobiAri
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;lc;c;rc;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="gaia_stand"]
[showstandimage who="gaia" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[shownametag name="ガイア" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[ガイア顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, aisyu;aisyuAri;futsu;futsuAri;ikari;ikariAri;keiai;keiaiAri;keikai;keikaiAri;kyoufu;kyoufuAri;kyotan;kyotanAri;odoroki;odorokiAri;yorokobi;yorokobiAri
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="gaia_bust"]
[showbustup who="gaia" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="ガイア" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[マッシュ]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu;gekido;hitan;ikari;keiai;keikai;kyoufu;kyotan;yorokobi
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;lc;c;rc;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="mash_stand"]
[showstandimage who="mash" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[shownametag name="マッシュ" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[マッシュ顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu;gekido;hitan;ikari;keiai;keikai;kyoufu;kyotan;yorokobi
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="mash_bust"]
[showbustup who="mash" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="マッシュ" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[オルテガ]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu;gekido;hitan;ikari;keiai;keikai;kokotsu;kyotan;kyoufu;
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;lc;c;rc;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="orutega_stand"]
[showstandimage who="orutega" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[shownametag name="オルテガ" visible="%namevisible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" namevisible="%visible|true"]
[endmacro]
;;[オルテガ顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu;gekido;hitan;ikari;keiai;keikai;kokotsu;kyotan;kyoufu;
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;namevisible=名前を表示するかしないか, 論理値
[macro name="orutega_bust"]
[showbustup who="orutega" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[shownametag name="オルテガ" visible="%namevisible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;マクロの終了
[return]
