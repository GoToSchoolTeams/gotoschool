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
[eval exp="Storages.addAutoPath('scenario/scenario/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/haruka/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/nazimi/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/prologue/')"]
[eval exp="Storages.addAutoPath('scenario/scenario/debug/')"]

;システム
[eval exp="Storages.addAutoPath('scenario/system/')"]
[eval exp="Storages.addAutoPath('scenario/system/import/')"]
[eval exp="Storages.addAutoPath('scenario/system/tjs/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/config/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/saveload/')"]
[eval exp="Storages.addAutoPath('scenario/system/tab/debug/')"]

;システム画像
[eval exp="Storages.addAutoPath('image/system/')"]
[eval exp="Storages.addAutoPath('image/system/tab/')"]
[eval exp="Storages.addAutoPath('image/title/')"]
[eval exp="Storages.addAutoPath('image/message/')"]
[eval exp="Storages.addAutoPath('image/old_system/')"]

;立ち絵
[eval exp="Storages.addAutoPath('fgimage/haruka/')"]
[eval exp="Storages.addAutoPath('fgimage/nazimi/')"]
[eval exp="Storages.addAutoPath('fgimage/naruse/')"]
[eval exp="Storages.addAutoPath('fgimage/satori/')"]
[eval exp="Storages.addAutoPath('fgimage/gaia/')"]
[eval exp="Storages.addAutoPath('fgimage/mash/')"]
[eval exp="Storages.addAutoPath('fgimage/orutega/')"]
[eval exp="Storages.addAutoPath('fgimage/gaia_kids/')"]
[eval exp="Storages.addAutoPath('fgimage/junihitoe/')"]
[eval exp="Storages.addAutoPath('fgimage/maru/')"]
[eval exp="Storages.addAutoPath('fgimage/takahashi/')"]
[eval exp="Storages.addAutoPath('fgimage/matsudo/')"]
[eval exp="Storages.addAutoPath('fgimage/satoshi/')"]
[eval exp="Storages.addAutoPath('fgimage/mikuriya/')"]

;背景
[eval exp="Storages.addAutoPath('bgimage/event_cg/')"]
[eval exp="Storages.addAutoPath('bgimage/tuning/')"]

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
[call storage="fgimage_tuning.ks"]
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
