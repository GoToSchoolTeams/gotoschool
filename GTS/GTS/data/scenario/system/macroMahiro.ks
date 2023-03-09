;;【追加マクロ(byMahiro)】
;;[haruka立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, magao;ki;do;ai;raku;jitome;keibetsu;kuno;niyaniya;odoroki;suttoboke
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="haruka_stand"]
[showstandimage who="haruka" pose="%pose|1"  face="%face|magao" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag who="haruka" pose="%pose|1"  face="%face|magao" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[haruka立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, magao;ki;do;ai;raku;jitome;keibetsu;kuno;niyaniya;odoroki;suttoboke
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="haruka_face"]
[showbustup who="haruka" face="%face|magao" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="haruka" face="%face|magao" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[najimi立ち絵用]
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

;;【追加マクロ(byMahiro)】
;;[najimi立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ai;akire;bibiri;do;do_kuchiake;do_shizuka;doya;futsu;ki;metoji;metoji_kuchiake;odoroki;raku
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;nopos=ポジションを適用しない, 論理値
[macro name="najimi_face"]
[showbustup who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[naruse立ち絵用]
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

;;【追加マクロ(byMahiro)】
;;[naruse立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ai;akire;do;doya;futsu;hohoho;ki;odoroki;raku
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="naruse_face"]
[showbustup who="naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag who="naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]


;【追加マクロ(byMahiro)】
;;[satori立ち絵用]
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

;;【追加マクロ(byMahiro)】
;;[satori立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, ki;do;ai;raku;doya;odoroki;futsu;akire;naki;otyokuri
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="satori_face"]
[showbustup who="satori" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[gaia立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, egao;kangaeru;komari;normal;normal2;odoroki;serious
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="gaia_stand"]
[showstandimage who="gaia" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[gaia立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, egao;kangaeru;komari;normal;normal2;odoroki;serious
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="gaia_face"]
[showbustup who="gaia" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[mash立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, doya;ikari;normal;odoroki
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="mash_stand"]
[showstandimage who="mash" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[mash立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, doya;ikari;normal;odoroki
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="mash_face"]
[showbustup who="mash" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[orutega立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, kanasii;normal;normal2;odoroki
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="orutega_stand"]
[showstandimage who="orutega" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[orutega立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, kanasii;normal;normal2;odoroki
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="orutega_face"]
[showbustup who="orutega" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]


;;【追加マクロ(byMahiro)】
;;[takahashi立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="takahashi_stand"]
[showstandimage who="takahashi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[takahashi立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="takahashi_face"]
[showbustup who="takahashi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[miyabi立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu
;;size=サイズ, s;m;l
;;nobust=バスト画像を出さない, 論理値
;;tere=照れてるかどうか, 論理値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, l;c;r
;;layer=表示したい前景レイヤ番号, 前景レイヤ;0;1;2
;;page=画面\n指定しない場合はback, fore;back
;;time=トランジション時間\nデフォルトは500, ミリ秒時間
;;notrans=トランジションの有無, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="miyabi_stand"]
[showstandimage who="miyabi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[kagtag pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"]
[endmacro]

;;【追加マクロ(byMahiro)】
;;[miyabi立ち絵用]
;;pose=ポーズ番号, 1;2;3
;;face=表情名, futsu
;;tere=照れてるかどうか, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
[macro name="miyabi_face"]
[showbustup who="miyabi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[kagtag face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|true"]
[endmacro]




;;//【以下、新規立ち絵】






;;//【*以下、old立ち絵】



;;[old縁]
[macro name="old_najimi_stand"]
[showstandimage who="old_najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[kagtag who="old_najimi" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[endmacro]
;;[old縁顔]
[macro name="old_najimi_face"]
[showbustup who="old_najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[kagtag who="old_najimi" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[endmacro]



;;[old成瀬]
[macro name="old_naruse_stand"]
[showstandimage who="old_naruse" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[kagtag who="old_naruse" pose="%pose|1"  face="%face|futsu" size="%size|m" nobust="%nobust|false" tere="%tere|false" pos="%pos|c" layer="%layer|0" page="%page|back" notrans="%notrans|false" time="%time|400" visible="%visible|true"  nopos="%nopos|false"]
[endmacro]
;;[old成瀬顔]
[macro name="old_naruse_face"]
[showbustup who="old_naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[kagtag who="old_naruse" face="%face|futsu" pose="%pose|1" tere="%tere|false" visible="%visible|false"]
[endmacro]

[return]
