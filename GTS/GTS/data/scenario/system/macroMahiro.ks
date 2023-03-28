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
;;face=表情名, ai;akire;bibiri;do;do_kuchiake;do_shizuka;doya;futsu;ki;metoji;metoji_kuchiake;odoroki;raku
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;nopos=ポジションを適用しない, 論理値
[macro name="najimi_stand"]
[showstandimage who="najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|true"]
[kagtag who="najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|true"]
[endmacro]
;;[縁顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ai;akire;bibiri;do;do_kuchiake;do_shizuka;doya;futsu;ki;metoji;metoji_kuchiake;odoroki;raku
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;nopos=ポジションを適用しない, 論理値
[macro name="najimi_face"]
[showbustup who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[成瀬]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ai;akire;do;doya;futsu;hohoho;ki;odoroki;raku
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="naruse_stand"]
[showstandimage who="naruse" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="true"]
[kagtag who="naruse" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[成瀬顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ai;akire;do;doya;futsu;hohoho;ki;odoroki;raku
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="naruse_face"]
[showbustup who="naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[悟]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ki;do;ai;raku;doya;odoroki;futsu;akire;naki;otyokuri
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;nopos=ポジションを適用しない, 論理値
[macro name="satori_stand"]
[showstandimage who="satori" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[endmacro]
;;[悟顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ki;do;ai;raku;doya;odoroki;futsu;akire;naki;otyokuri
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="satori_face"]
[showbustup who="satori" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[松戸]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, kokotsu;kogeki;gekido;kokai;hitan;kyotan;shinrai;futsu
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;nopos=ポジションを適用しない, 論理値
[macro name="matsudo_stand"]
[showstandimage who="matsudo" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[endmacro]
;;[松戸顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, kokotsu;kogeki;gekido;kokai;hitan;kyotan;shinrai;futsu
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="matsudo_face"]
[showbustup who="matsudo" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[桜子]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, magao
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;nopos=ポジションを適用しない, 論理値
[macro name="sakurako_stand"]
[showstandimage who="sakurako" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" nopos="%nopos|true"]
[endmacro]
;;[桜子顔]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, magao
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="sakurako_face"]
[showbustup who="sakurako" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]


*【old立ち絵】
;;[old遥香]
;;face=表情名, magao;ki;do;ai;raku;jitome;keibetsu;kuno;niyaniya;odoroki;suttoboke
;;grayscale=画像をグレースケールにするか\nlayer , 論理値
[macro name="old_haruka_stand"]
[showstandimage who="haruka_old" pose="%pose|1"  face="%face|magao" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true" grayscale="%grayscale|false"]
[kagtag who="haruka_old" pose="%pose|1"  face="%face|magao" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old遥香顔]
;;face=表情名, magao;ki;do;ai;raku;jitome;keibetsu;kuno;niyaniya;odoroki;suttoboke
[macro name="old_haruka_face"]
[showbustup who="haruka_old" face="%face|magao" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="haruka_old" face="%face|magao" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old縁]
[macro name="old_najimi_stand"]
[showstandimage who="najimi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[kagtag who="najimi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[endmacro]
;;[old縁顔]
[macro name="old_najimi_face"]
[showbustup who="najimi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[kagtag who="najimi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[endmacro]
;;[old成瀬]
;;grayscale=画像をグレースケールにするか\nlayer , 論理値
[macro name="old_naruse_stand"]
[showstandimage who="naruse_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false" grayscale="%grayscale|false"]
[kagtag who="naruse_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[endmacro]
;;[old成瀬顔]
[macro name="old_naruse_face"]
[showbustup who="naruse_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[kagtag who="naruse_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[endmacro]
;;[oldガイア]
;;face=表情名, egao;kangaeru;komari;normal;normal2;odoroki;serious
[macro name="old_gaia_stand"]
[showstandimage who="gaia_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[oldガイア顔]
;;face=表情名, egao;kangaeru;komari;normal;normal2;odoroki;serious
[macro name="old_gaia_face"]
[showbustup who="gaia_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[oldマッシュ]
;;face=表情名, doya;ikari;normal;odoroki
[macro name="old_mash_stand"]
[showstandimage who="mash_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[oldマッシュ顔]
;;face=表情名, doya;ikari;normal;odoroki
[macro name="old_mash_face"]
[showbustup who="mash_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[オルテガ]
;;face=表情名, kanasii;normal;normal2;odoroki
[macro name="old_orutega_stand"]
[showstandimage who="orutega_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[オルテガ顔]
;;face=表情名, kanasii;normal;normal2;odoroki
[macro name="old_orutega_face"]
[showbustup who="orutega_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old十二単]
;;face=表情名, futsu
[macro name="old_miyabi_stand"]
[showstandimage who="miyabi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old十二単顔]
;;face=表情名, futsu
[macro name="old_miyabi_face"]
[showbustup who="miyabi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
;;[old高橋]
;;face=表情名, futsu
[macro name="old_takahashi_stand"]
[showstandimage who="takahashi_old" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]
;;[old高橋顔]
;;face=表情名, futsu
[macro name="old_takahashi_face"]
[showbustup who="takahashi_old" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]
*

[return]
