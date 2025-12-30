;まずホワイトアウト
[nowait]
[dis_all_message]
[strans storage="white"  time="4000" canskip="false"]

;1秒待機
[wait time="1000" canskip="false"]f2

;シネマモードON
[cinema time=3000]

;後ろのページのメッセージレイヤをカレントに




;OP!
[playbgm storage="opening_2"]

;サークルロゴ
[staff_show staff="Circle CREO Presents" size=50 y=270 transbase=true time=1000]


;背景を曲の終わりに合わせてスクロール開始
[image storage="sky" top=-1440 layer="3" page="fore" visible="true" opacity="0"]
[wait time="1000" canskip="false"]
[move layer="3" path=(0,-720,255) time=16000 page="fore"]

;スタッフたち
[staff_show staff="◯企画　マヒロー"]
[wait time="500" canskip="false"]
[staff_show staff="◯原案・スクリプト　KerotanX"]
[wait time="500" canskip="false"]
[staff_show staff="◯原画・グラフィック maru"]
[wait time="500" canskip="false"]
[staff_show staff="◯サウンド ぐらんで"]
[wait time="500" canskip="false"]
[staff_show staff="◯シナリオ・監督　マヒロー" showtime=3000]
;スクロール待機
[wm canskip="false"]

;ロゴ表示
[image layer="3" storage="ui_titileLogo_2" page="back" top="0"]
[trans layer=3 method="crossfade" time="1000"]
[wt canskip="false"]

;残りの尺をロゴで稼ぐ
[wait time="5000" canskip="false"]

;終わり
[fadeoutbgm time="1000"]
[wait time="1500"]

[return]
