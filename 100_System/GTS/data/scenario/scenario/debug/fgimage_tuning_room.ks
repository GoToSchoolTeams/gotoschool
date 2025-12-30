;;tuning_eventÇÕscenario/system/tjs/fgunage_tuning.ksÇ…ãLèqÇ≥ÇÍÇƒÇ¢Ç‹Ç∑

*init
[dis_all_message]
[dis_all_chara]
[eval exp="global.ClearSystemMessage()"]
[backlay]

[strans storage="bg_sityoukakusitsu_d.png" time="100"]
[current layer="message0"]
[position layer="message0" visible="true" opacity="128" width="200" height="100" left=1000 top=600]
[image layer="0" page="fore" left="0" top="0" visible="true" storage="&tf.eyeInfo[tf.f_t_current]"]
[eval exp="global.UnRegShortCut()"]
[eval exp="kag.keyDownHook.add(global.tuning_event)"]
[s]

*change
[eval exp="tf.tempimage=global.getFTStandStorage()"]
[eval exp="tf.f_t_left=0"]
[eval exp="tf.f_t_top=0"]
;[strans storage="&tf.eyeInfo[tf.f_t_current].bg" time="100"]
[image layer="0" page="fore" visible="true" storage="&tf.tempimage"]

*update
[cm]
[layopt layer="0" left="&tf.f_t_left" top="&tf.f_t_top"]
[emb exp="tf.f_t_left"],
[emb exp="tf.f_t_top"]
[s]
