;現在のシーンをロードに変更
[eval exp="tf.CurrentScene = tf.SCENE_CONF"]

;設定を記述
[iscript]
tf.TabInfo.clear();
tf.TabInfo.base = "tab.jpg";
tf.TabInfo.name = "Config";
tf.TabInfo.orig = "Config.ks";
tf.TabInfo.addpage("tab_switch_system_current.jpg", "tab_switch_system_other.jpg", "Config_Setting.ks");
tf.TabInfo.addpage("tab_switch_key_current.jpg", "tab_switch_key_other.jpg", "Config_ShortCut.ks");
tf.TabInfo.addpage("tab_switch_sound_current.jpg", "tab_switch_sound_other.jpg", "Config_Sound.ks");
[endscript]

;タブ画面を呼び出す
[jump storage="TabScene.ks"]
