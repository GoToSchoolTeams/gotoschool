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
[eval exp="Storages.addAutoPath('image/old_image/')"]

;立ち絵
[eval exp="Storages.addAutoPath('fgimage/1.haruka/')"]
[eval exp="Storages.addAutoPath('fgimage/2.najimi/')"]
[eval exp="Storages.addAutoPath('fgimage/3.naruse/')"]
[eval exp="Storages.addAutoPath('fgimage/4.satori/')"]
[eval exp="Storages.addAutoPath('fgimage/5.gaia/')"]
[eval exp="Storages.addAutoPath('fgimage/6.mash/')"]
[eval exp="Storages.addAutoPath('fgimage/7.orutega/')"]
[eval exp="Storages.addAutoPath('fgimage/8.sakurako/')"]
[eval exp="Storages.addAutoPath('fgimage/9.takahashi/')"]
[eval exp="Storages.addAutoPath('fgimage/10.matsudo/')"]
[eval exp="Storages.addAutoPath('fgimage/11.miyabi/')"]
[eval exp="Storages.addAutoPath('fgimage/12.maru/')"]


;バストアップ画像
[eval exp="Storages.addAutoPath('fcimage/')"]
[eval exp="Storages.addAutoPath('fcimage/faceCheck')"]
[eval exp="Storages.addAutoPath('fcimage/0_face_old')"]

;背景
[eval exp="Storages.addAutoPath('bgimage/event_cg/')"]
[eval exp="Storages.addAutoPath('bgimage/tuning/')"]
[eval exp="Storages.addAutoPath('bgimage/0_bg_old/')"]
[eval exp="Storages.addAutoPath('bgimage/0_bg_old/event_cg/')"]
[eval exp="Storages.addAutoPath('bgimage/0_bg_old/tuning/')"]

;BGM
[eval exp="Storages.addAutoPath('bgm/0_bgm_old/')"]

;Sound
[eval exp="Storages.addAutoPath('sound/0_se_old/')"]


;ImageDebug用(by Mahiro)
;dataフォルダのImageDebugに素材もスクリプトも全部あります。（後で消しやすいよう）
[eval exp="Storages.addAutoPath('ImageDebug/')"]

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
	[eval exp="sf.sound=100000"]
	[eval exp="sf.se=100000"]
	[eval exp="sf.LatestTab=0"]
	[eval exp="sf.first=1"]
[endif]

;最新のタブ番号を選択中のタブ番号へ
[eval exp="tf.currentTab = sf.LatestTab"]

;BGM音量とSE音量の初期化
[eval exp="kag.bgm.buf1.volume2=sf.sound"]
[eval exp="kag.se[0].volume2=sf.se"]

;起動時にウィンドウサイズをリセットする
[iscript]
//kag.setInnerSize(1280,720);
[endscript]

;title画面へ
[jump storage="title.ks"]
