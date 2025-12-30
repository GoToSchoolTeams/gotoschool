;スキップの設定ボタン
[nowait]

[locate x=300 y=90]
選択肢でスキップ継続[button graphic="testbutton" exp="sf.isContinueSkip_Brunch = !(sf.isContinueSkip_Brunch)"]

[locate x=300 y=200]
既読スキップ[button graphic="testbutton" exp="sf.isSkipReadedText = !(sf.isSkipReadedText)"]

[endnowait]
[return]
