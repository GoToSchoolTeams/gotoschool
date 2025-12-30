;デバッグフラグ
[eval exp="tf.isDebug = true"]

;◆サムネイルの保存モード　8→24
[eval exp="kag.numBookMarks = 18"]

;【前景レイヤ数の変更】
[laycount layers="34"]

;【メッセージレイヤ数の変更】
[laycount messages="20"]

;-------------------------
;読み込みフォルダの拡張
;-------------------------
;メインシナリオ
[eval exp="Storages.addAutoPath('scenario/main/')"]
[eval exp="Storages.addAutoPath('scenario/main/senpai/')"]
[eval exp="Storages.addAutoPath('scenario/main/nazimi/')"]
[eval exp="Storages.addAutoPath('scenario/main/common/')"]
[eval exp="Storages.addAutoPath('scenario/main/debug/')"]

;システム
[eval exp="Storages.addAutoPath('scenario/system/')"]
[eval exp="Storages.addAutoPath('scenario/system/import/')"]
[eval exp="Storages.addAutoPath('scenario/system/config/')"]
[eval exp="Storages.addAutoPath('scenario/system/saveload/')"]
[eval exp="Storages.addAutoPath('scenario/system/scripts/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/')"]

;システム画像
[eval exp="Storages.addAutoPath('image/system/')"]
[eval exp="Storages.addAutoPath('image/system/tab/')"]
[eval exp="Storages.addAutoPath('image/title/')"]
[eval exp="Storages.addAutoPath('image/old_system/')"]
[eval exp="Storages.addAutoPath('image/message/')"]

;メッセージレイヤ用バストアップ画像
[eval exp="Storages.addAutoPath('image/message/bustup/gaia/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/gaia/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/mash/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/mash/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/nazimi/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/nazimi/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/nazimi/p3/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/orutega/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/orutega/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/satori/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/senpai/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/senpai/p2/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/naruse/p1/')"]
[eval exp="Storages.addAutoPath('image/message/bustup/naruse/p2/')"]
;立ち絵
[eval exp="Storages.addAutoPath('fgimage/stand/gaia/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/gaia/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/mash/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/mash/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/nazimi/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/nazimi/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/nazimi/p3/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/orutega/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/orutega/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/satori/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p1/big/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/senpai/p2/big/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p1/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p1/big/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p2/')"]
[eval exp="Storages.addAutoPath('fgimage/stand/naruse/p2/big/')"]

;-------------------------
; 導入
;-------------------------
;プラグインの導入
[call storage="plugin.ks"]

;マクロの導入
[call storage="macro.ks"]

;自作ライブラリの読み込み
[call storage="SystemLib.ks"]
[call storage="ShortCutController.ks"]
[eval exp="global.InitShortCut()"]

;マスターボリュームの適用
[eval exp="global.ApplyVolume()"]

;一応文字を消す
[call storage="Initialize.ks"]

*start|スタート
[startanchor]

;現在地を一次変数に保存
[eval exp="tf.back_place='first'"]

;SaveLoad変数の初期化
[eval exp="tf.savedata=0"]
[eval exp="tf.loaddata=0"]

;BGMとSE音量のセッティング
;初回のみ
[if exp="sf.first!=1"]
	[eval exp="sf.sound=60000"]
	[eval exp="sf.se=60000"]
	[eval exp="sf.LatestTab=0"]
	[eval exp="sf.first=1"]
[endif]

;最新のタブ番号を選択中のタブ番号へ
[eval exp="tf.currentTab = sf.LatestTab"]

;BGM音量とSE音量の初期化
[eval exp="kag.bgm.buf1.volume2=sf.sound"]
[eval exp="kag.se[0].volume2=sf.se"]

;title画面へ
[jump storage="title.ks"]

