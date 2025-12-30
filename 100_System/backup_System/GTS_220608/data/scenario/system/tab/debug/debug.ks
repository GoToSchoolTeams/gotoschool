[if exp="tf.IsChangeBack != 1"]
	@dis_all_message
	[backlay]
	[freeimage layer="base" page="back"]
	[trans layer="base" method="crossfade" time=100]
	[wt]
[endif]

;現在のシーンをロードに変更
[eval exp="tf.CurrentScene = tf.SCENE_DEBG"]

;設定を記述
[iscript]
tf.TabInfo.clear();
tf.TabInfo.base = "tab.jpg";
tf.TabInfo.name = "Debug";
tf.TabInfo.orig = "debug.ks";
tf.TabInfo.addpage("tab_switch_current_1.jpg", "tab_switch_other_1.jpg", "prologue.ks");
tf.TabInfo.addpage("tab_switch_current_2.jpg", "tab_switch_other_2.jpg", "haruka.ks");
tf.TabInfo.addpage("tab_switch_current_3.jpg", "tab_switch_other_3.jpg", "nazimi.ks");
[endscript]

;タブ画面を呼び出す
[jump storage="TabScene.ks"]
