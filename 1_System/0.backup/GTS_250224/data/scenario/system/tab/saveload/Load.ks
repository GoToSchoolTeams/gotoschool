;現在のシーンをロードに変更
[eval exp="tf.CurrentScene = tf.SCENE_LOAD"]

;設定を記述
[iscript]
tf.TabInfo.clear();
tf.TabInfo.base = "tab.jpg";
tf.TabInfo.name = "Load";
tf.TabInfo.orig = "Load.ks";
tf.TabInfo.addpage("tab_switch_current_1.jpg", "tab_switch_other_1.jpg", "MiniWindow.ks");
tf.TabInfo.addpage("tab_switch_current_2.jpg", "tab_switch_other_2.jpg", "MiniWindow.ks");
tf.TabInfo.addpage("tab_switch_current_3.jpg", "tab_switch_other_3.jpg", "MiniWindow.ks");
[endscript]

;タブ画面を呼び出す
[jump storage="TabScene.ks"]
