*title
[nowait]

;ˆê’U‘S•”‚«‚ê‚¢‚É
[call storage="InitSys.ks"]
[dis_all_chara]
[dis_all_message]
[eval exp="tf.currentTab=0"]

;”wŒi‚Ìİ’è
[image storage="title.png" layer="base" page="fore"]
[current layer="message4"]
[position layer="message4" width=1600 height=900 visible="true" top=0 left=0 opacity=0]

[locate x=640 y=600]
[if exp="tf.isDebug == true"]
	[button graphic="start" storage="debug.ks"]
[else]
	[button graphic="start" storage="senpai_prologue.ks"]
[endif]

;[locate x=500 y=450]
;[button graphic="title_continue" storage="Load.ks"]

;[locate x=500 y=500]
;[button graphic="title_config" storage="Config.ks"]

;[locate x=500 y=600]
;[button graphic="ImageDebug" storage="ImageDebug.ks"]

[endnowait]
