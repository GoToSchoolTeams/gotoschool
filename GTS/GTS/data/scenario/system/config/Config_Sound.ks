;SoundSetting
[current layer="message8"]
[slider_init layer="message8"]

[iscript]
// テスト再生用オブジェクトの定義
tf.TestBGM = new Dictionary();
tf.TestBGM["storage"] = "bgm_nitizyou1.ogg";
tf.TestBGM["loop"] = "false";

// 
tf.TestSE = new Dictionary();
tf.TestSE["storage"] = "cursor21.wav";
tf.TestSE["loop"] = "false";
[endscript]

[nowait]

[locate x=200 y=100]
マスター
[slider name="MAS_VOL" val="sf.masterVolume" left=350 top=115 width="300" min="0" max="100" baseimage="scroll.png" tabimage="scrollpotti.png" onchange="global.OnChangeVolumeInSlider"]
[locate x=600 y=90]
[button graphic="testbutton" exp="kag.bgm.play(tf.TestBGM)"]

[locate x=200 y=200]
BGM音量
[slider name="BGM_VOL" val="sf.bgmVolume" left=350 top=215 width="300" min="0" max="100000" baseimage="scroll.png" tabimage="scrollpotti.png" onchange="global.OnChangeVolumeInSlider"]
[locate x=600 y=190]
[button graphic="testbutton" exp="kag.bgm.play(tf.TestBGM)"]

[locate x=200 y=300]
SE音量
[slider name="SE_VOL" val="sf.seVolume" left=350 top=315 width="300" min="0" max="100000" baseimage="scroll.png" tabimage="scrollpotti.png" onchange="global.OnChangeVolumeInSlider"]
[locate x=600 y=290]
[button graphic="testbutton" exp="kag.se[0].play(tf.TestSE)"]


[endnowait]

[return]
