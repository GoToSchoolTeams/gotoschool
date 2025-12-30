;oggの再生
[loadplugin module="wuvorbis.dll"]

;何処でもセーブプラグインの導入
[call storage="SaveAnyWhere.ks"]

;システムボタンプラグイン
[call storage="systembutton.ks"]

;既読未読スキップのプラグイン
;『sf.skipall』変数を『true』にした時に未読のテキストもスキップするようになります.
[call storage="AfterInit.ks"]

;スライダープラグイン
[call storage="SliderPlugin.ks"]

[return]
