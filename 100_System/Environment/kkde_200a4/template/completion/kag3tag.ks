;kag3tag.ks
;KKDE KAG3入力補完定義ファイル KAG 3.30 Rev.2版

;;[レイヤ操作] アニメーションの開始
;;アニメーションを、指定したセグメントで、指定したラベルから開始します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\nアニメーションを開始するレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;seg=[必須] セグメント\nこの属性で指定したセグメント番号でアニメーションを開始します, 1以上の値
;;target=[必須] 開始ラベル\nアニメーションを開始するための asd ファイル中のラベルを指定します, ASDラベル名
[macro name="animstart"]
[kagtag cond=%cond layer=%layer page=%page seg=%seg target=%target]
[endmacro]

;;[レイヤ操作] アニメーションの停止
;;任意のセグメントのアニメーションを停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\nアニメーションを停止するレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;seg=[必須] セグメント\nこの属性で指定したセグメント番号のアニメーションを停止します, 1以上の値
[macro name="animstop"]
[kagtag cond=%cond layer=%layer page=%page seg=%seg]
[endmacro]

;;[システム操作] 自動ウェイト
;;特定の文字の後に指定文字数分のウェイトを入れることができます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;enabled=自動ウェイトを有効にするか\n自動ウェイトを有効にする場合は true を、無効にするには false を指定します, 論理値
;;ch=自動ウェイトを入れる文字\n自動ウェイトを入れる文字を指定します, 任意文字列
;;time=ウェイト\n自動ウェイトを入れる時間を文字数単位で指定します, 1以上の値
[macro name="autowc"]
[kagtag cond=%cond enabled=%enabled ch=%ch time=%time]
[endmacro]

;;[レイヤ操作] レイヤ情報の表ページから裏ページへのコピー
;;指定したレイヤ、あるいはすべてのレイヤの情報を、表ページから裏ページにコピーします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=対象レイヤ\n対象となるレイヤを指定します, 背景レイヤ;前景レイヤ;メッセージレイヤ
[macro name="backlay"]
[kagtag cond=%cond layer=%layer]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM の設定
;;BGM のさまざまな設定を変更します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;volume=音量\nBGM の音量を % で指定します, パーセント値
;;gvolume=大域音量\nBGM の大域音量を % で指定します, パーセント値
[macro name="bgmopt"]
[kagtag cond=%cond volume=%volume gvolume=%gvolume]
[endmacro]

;;[ラベル・ジャンプ操作] グラフィカルボタン
;;現在のメッセージレイヤ上に link タグと同様にリンクを作成しますが、画像を用いたボタンを作成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;graphic=[必須] ボタンにする画像\nボタンにする画像を指定します, 画像ファイル名
;;graphickey=画像のカラーキー\nボタンにする画像のカラーキーを指定します, RGB値;256値;adapt
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;recthit=矩形で当たり判定を行うかどうか\n矩形で当たり判定を行うかどうかを指定します, 論理値
;;exp=TJS 式\nクリックされたときに実行される TJS 式を指定します, TJS式
;;hint=ツールチップヒント\nリンクを選択し、マウスカーソルを静止させたときに表示されるツールチップヒントを指定します, 任意文字列
;;onenter=マウス進入時\nボタン内にマウスカーソルが入ってきたときに実行される TJS 式を指定します, TJS式
;;onleave=マウス退出時\nボタン内からマウスカーソルが出ていった時に実行される TJS 式を指定します, TJS式
;;countpage=このジャンプを「読んだ」と見なすか\nボタンを選択して他のラベルに移行するときに、このリンクのある場所のラベルを「読んだ」とみなすかどうかを指定します, 論理値
;;clickse=クリック時の効果音\nクリックされたときに再生する効果音を指定します, 効果音ファイル名
;;clicksebuf=クリック時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;enterse=マウス進入時の効果音\nマウスが進入したときに再生する効果音を指定します, 効果音ファイル名
;;entersebuf=マウス進入時の効果音のバッファ番号\nenterse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;leavese=マウス退出時の効果音\nマウスが退出したときに再生する効果音を指定します, 効果音ファイル名
;;leavesebuf=マウス退出時の効果音のバッファ番号\nleavese で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="button"]
[kagtag cond=%cond graphic=%graphic graphickey=%graphickey storage=%storage target=%target recthit=%recthit exp=%exp hint=%hint onenter=%onenter onleave=%onleave countpage=%countpage clickse=%clickse clicksebuf=%clicksebuf enterse=%enterse entersebuf=%entersebuf leavese=%leavese leavesebuf=%leavesebuf]
[endmacro]

;;[ラベル・ジャンプ操作] サブルーチンの呼び出し
;;指定されたシナリオファイルの指定されたラベルで示されるサブルーチンを呼び出します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=シナリオファイル名\n呼び出したいサブルーチンのあるのシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\n呼び出すサブルーチンのラベルを指定します, ラベル名
;;countpage=このジャンプを「読んだ」と見なすか\n他のラベルに移行するときに、このタグのある場所のラベルを「読んだ」とみなすかどうかを指定します, 論理値
[macro name="call"]
[kagtag cond=%cond storage=%storage target=%target countpage=%countpage]
[endmacro]

;;[メッセージ操作] 「自動的に読み進む」の解除
;;「自動的に読み進む」を強制的に解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="cancelautomode"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ操作] スキップの解除
;;スキップ状態の解除を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="cancelskip"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ピリオドイベントの解除
;;videoeventタグで設定したピリオドイベントを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="cancelvideoevent"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオのセグメントループ再生の解除
;;videosegloopタグで設定したセグメントループを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="cancelvideosegloop"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[ラベル・ジャンプ操作] クリック待ち解除
;;click で現在のメッセージレイヤに対して登録されたクリック待ちを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="cclick"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ操作] 文字を表示する
;;文字を current タグで指定したメッセージレイヤに表示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;text=[必須] 表示する文字\nここで指定した文字が表示されます, 任意文字列
[macro name="ch"]
[kagtag cond=%cond text=%text]
[endmacro]

;;[フォーム操作] チェックボックスの作成
;;現在操作対象になっているメッセージレイヤの、現在の位置に、チェックボックスを作成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] 変数名\nチェックボックスの状態を格納する変数を指定します, 任意文字列
;;bgcolor=背景色\n背景色を 0xRRGGBB 形式で指定します, RGB値
;;opacity=背景色の不透明度\nbgcolor 属性で指定した背景色の不透明度を 0 ～ 255 で指定します, 256値
;;color=チェックマークの色\nチェックマークの色を 0xRRGGBB 形式で指定します, RGB値
[macro name="checkbox"]
[kagtag cond=%cond name=%name bgcolor=%bgcolor opacity=%opacity color=%color]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM のラベル通過処理の解除
;;setbgmlabelの指定をクリアします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="clearbgmlabel"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM の停止処理の解除
;;setbgmstopの指定をクリアします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="clearbgmstop"]
[kagtag cond=%cond]
[endmacro]

;;[システム操作] システム変数の全消去
;;システム変数をすべて消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="clearsysvar"]
[kagtag cond=%cond]
[endmacro]

;;[変数・TJS 操作] ゲーム変数の全消去
;;ゲーム変数をすべて消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="clearvar"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオレイヤ解除
;;videolayerタグで設定したレイヤを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;channel=[必須] チャンネル\nレイヤ描画モードによる描画を解除したいチャンネルを指定します, 1;2
[macro name="clearvideolayer"]
[kagtag cond=%cond slot=%slot channel=%channel]
[endmacro]

;;[ラベル・ジャンプ操作] クリック待ちジャンプ
;;現在のメッセージレイヤに対してクリック待ちを登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;exp=TJS 式\nクリック時に実行される TJS 式を指定します, TJS式
;;se=クリック時の効果音\nクリック時に再生する効果音を指定します, 効果音ファイル名
;;sebuf=クリック時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="click"]
[kagtag cond=%cond storage=%storage target=%target exp=%exp se=%se sebuf=%sebuf]
[endmacro]

;;[システム操作] クリックスキップの設定
;;クリックスキップとは、メッセージ表示途中で画面をクリックすることにより、トランジションや自動移動を中断したり、クリック待ちまで一気に文章を表示する機能です
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;enabled=[必須] 有効・無効の設定\nクリックスキップ機能を有効にする場合は true、無効にする場合はfalse を指定します, 論理値
[macro name="clickskip"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[システム操作] ウィンドウを閉じる
;;ウィンドウを閉じます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;ask=確認をするか\ntrue を指定すると、終了するかどうかの確認をします, 論理値
[macro name="close"]
[kagtag cond=%cond ask=%ask]
[endmacro]

;;[メッセージ操作] すべてのメッセージレイヤのクリア
;;すべてのメッセージレイヤのクリアを行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="cm"]
[kagtag cond=%cond]
[endmacro]

;;[フォーム操作] フォーム内容の確定
;;現在操作対象になっているメッセージレイヤ上のすべてのエディットやチェックボックスなどの「フォーム要素」の内容を確定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="commit"]
[kagtag cond=%cond]
[endmacro]

;;[栞・通過記録操作] 栞のコピー
;;非フリーセーブモードにおいて、from 属性で指定された番号の栞から to 属性で指定された番号の栞へ内容のコピーを行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;from=[必須] コピー元の栞番号\nコピー元の栞の番号を指定します, 0以上の値
;;to=[必須] コピー先の栞番号\nコピー先の栞の番号を指定します, 0以上の値
[macro name="copybookmark"]
[kagtag cond=%cond from=%from to=%to]
[endmacro]

;;[レイヤ操作] レイヤ情報のコピー
;;指定したレイヤの情報をコピーします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;srclayer=[必須] コピー元レイヤ\nコピー元となるレイヤを指定します, 背景レイヤ;前景レイヤ;メッセージレイヤ
;;destlayer=[必須] コピー先レイヤ\nコピー先となるレイヤを指定します, 背景レイヤ;前景レイヤ;メッセージレイヤ
;;srcpage=コピー元ページ\nコピー元となるページを指定します, レイヤーページ
;;destpage=コピー先ページ\nコピー先となるページを指定します, レイヤーページ
[macro name="copylay"]
[kagtag cond=%cond srclayer=%srclayer destlayer=%destlayer srcpage=%srcpage destpage=%destpage]
[endmacro]

;;[メッセージ操作] メッセージレイヤのリセット
;;メッセージレイヤをリセットします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="ct"]
[kagtag cond=%cond]
[endmacro]

;;[ラベル・ジャンプ操作] タイムアウト待ち解除
;;timeout で現在のメッセージレイヤに対して登録されたタイムアウトを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="ctimeout"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ操作] 操作対象のメッセージレイヤの指定
;;操作対象とするメッセージレイヤを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=レイヤ名\n操作対象とするメッセージレイヤを指定します, メッセージレイヤ
;;page=ページ\n表(fore)画面のレイヤを対象とするか、裏(back)画面のレイヤを対象とするかを指定します, レイヤーページ
;;withback=裏ページにも描画するか\n表ページが対象の場合、裏ページにも同様に文字を描画するかを指定します, 論理値
[macro name="current"]
[kagtag cond=%cond layer=%layer page=%page withback=%withback]
[endmacro]

;;[システム操作] マウスカーソルの変更
;;マウスカーソルを変更します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;default=通常のマウスカーソル\n通常のマウスカーソルを指定します, カーソル定数;カーソルファイル名
;;pointed=ポイントした時のマウスカーソル\nリンクやボタンをポイントしたときのマウスカーソルを指定します, カーソル定数;カーソルファイル名
;;click=クリック待ちのマウスカーソル\nクリック待ちのマウスカーソルを指定します, カーソル定数;カーソルファイル名
;;draggable=ドラッグ可能の時のマウスカーソル\nposition タグで draggable=true としたときに、マウスがメッセージレイヤをドラッグ可能な位置に来たときに表示されるマウスカーソルを指定します, カーソル定数;カーソルファイル名
[macro name="cursor"]
[kagtag cond=%cond default=%default pointed=%pointed click=%click draggable=%draggable]
[endmacro]

;;[ラベル・ジャンプ操作] ホイール待ち解除
;;wheel で現在のメッセージレイヤに対して登録されたホイール待ちを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="cwheel"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ操作] デフォルトの文字属性設定
;;現在操作対象のメッセージレイヤに対する、デフォルトの文字属性を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;size=文字サイズ\nデフォルトの文字サイズを指定します, 1以上の値
;;face=フォント名\nデフォルトのフォント名を指定します, フォント名;user
;;color=文字色\nデフォルトの文字色を指定します, RGB値
;;rubysize=ルビのサイズ\nデフォルトのルビの文字のサイズを指定します, 1以上の値
;;rubyoffset=ルビの表示位置\nデフォルトのルビの表示オフセットを指定します, 1以上の値
;;shadow=影を表示するか\nデフォルトで文字に影をつけるかを指定します, 論理値
;;edge=袋文字にするか\nデフォルトで文字を袋文字 ( 縁取り文字 ) にするかを指定します, 論理値
;;edgecolor=袋文字の袋の色\nデフォルトの文字の袋の色を指定します, RGB値
;;shadowcolor=影の色\nデフォルトの影の色を指定します, RGB値
;;bold=太文字にするか\nデフォルトで文字を太文字にするかを指定します, 論理値
[macro name="deffont"]
[kagtag cond=%cond size=%size face=%face color=%color rubysize=%rubysize rubyoffset=%rubyoffset shadow=%shadow edge=%edge edgecolor=%edgecolor shadowcolor=%shadowcolor bold=%bold]
[endmacro]

;;[メッセージ操作] デフォルトのスタイルの設定
;;現在操作対象のメッセージレイヤに対する、デフォルトの行のスタイルを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;linespacing=行間\nデフォルトの行間を指定します, 1以上の値
;;pitch=字間\nデフォルトの字間のオフセットを pixel 単位で指定します, 1以上の値
;;linesize=文字サイズの予約サイズ\nデフォルトの行の幅を指定します, 1以上の値
[macro name="defstyle"]
[kagtag cond=%cond linespacing=%linespacing pitch=%pitch linesize=%linesize]
[endmacro]

;;[メッセージ操作] 文字の表示速度の設定
;;文字の表示速度を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;speed=[必須] 文字ウェイト\n"nowait" を指定すると、文字の表示にウェイトをかけずに、一気に文字が表示されます, nowait;user;ミリ秒時間
[macro name="delay"]
[kagtag cond=%cond speed=%speed]
[endmacro]

;;[栞・通過記録操作] 栞の機能の一時的な使用不可
;;「栞をはさむ」の機能を一時的に使用不可能にします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;store=「栞をはさむ」の機能\n「栞をはさむ」の機能を使用不可にするかを指定します, 論理値
;;restore=「栞をたどる」の機能\n「栞をたどる」の機能を使用不可にするかを指定します, 論理値
[macro name="disablestore"]
[kagtag cond=%cond store=%store restore=%restore]
[endmacro]

;;[フォーム操作] 単一行エディットの作成
;;現在操作対象になっているメッセージレイヤの、現在の位置に、現在のフォントで、一行のみの文字列を編集できる入力欄(エディット)を作成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] 変数名\n入力した文字列を格納する変数を指定します, 任意文字列
;;length=幅\n単一行エディットの幅 ( 縦書きの場合は高さ ) をピクセル単位で指定します, 1以上の値
;;bgcolor=背景色\n背景色を 0xRRGGBB 形式で指定します, RGB値
;;opacity=背景色の不透明度\nbgcolor 属性で指定した背景色の不透明度を 0 ～ 255 で指定します, 256値
;;color=文字色\n文字色を 0xRRGGBB 形式で指定します, RGB値
;;maxchars=最大文字数\n入力できる最大文字数を指定します, 0以上の値
[macro name="edit"]
[kagtag cond=%cond name=%name length=%length bgcolor=%bgcolor opacity=%opacity color=%color maxchars=%maxchars]
[endmacro]

;;[変数・TJS 操作] if の中身が実行されなかったときに実行
;;if タグもしくは elsif タグと endif タグの間で用いられます
[macro name="else"]
[kagtag]
[endmacro]

;;[変数・TJS 操作] それまでの if の中身が実行されていなかったときに、条件付きで実行
;;if タグと endif タグの間で用いられます
;;exp=[必須] TJS 式\n評価する TJS 式を指定します, TJS式
[macro name="elsif"]
[kagtag exp=%exp]
[endmacro]

;;[変数・TJS 操作] 式評価結果の埋め込み
;;exp で示された式を評価(実行)し、その結果を埋め込みます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;exp=[必須] TJS 式\n評価する TJS 式を指定します, TJS式
[macro name="emb"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[メッセージ履歴操作] メッセージ履歴アクションの終了
;;hact タグで設定したメッセージ履歴アクションを終了(設定をクリア)します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="endhact"]
[kagtag cond=%cond]
[endmacro]

;;[変数・TJS 操作] 条件によりシナリオを実行(の終了)
;;if タグの終了を示します
[macro name="endif"]
[kagtag]
[endmacro]

;;[変数・TJS 操作] 条件によりシナリオを無視(の終了)
;;ignore タグの終了を示します
[macro name="endignore"]
[kagtag]
[endmacro]

;;[メッセージ操作] インデントの解除
;;indent タグで設定したインデントを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="endindent"]
[kagtag cond=%cond]
[endmacro]

;;[ラベル・ジャンプ操作] ハイパーリンク(の終了)
;;link タグで開始したハイパーリンクの終了を示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="endlink"]
[kagtag cond=%cond]
[endmacro]

;;[マクロ操作] マクロの記述(の終了)
;;macro タグで記述を開始したマクロの終了を示します
[macro name="endmacro"]
[kagtag]
[endmacro]

;;[メッセージ操作] 文字表示ノーウェイト(の終了)
;;文字の表示速度を、nowait タグでノーウェイトにする直前の文字表示速度に戻します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="endnowait"]
[kagtag cond=%cond]
[endmacro]

;;[変数・TJS 操作] TJS スクリプトの記述(の終了)
;;[iscript] で記述したスクリプトの記述の終了を示します
[macro name="endscript"]
[kagtag]
[endmacro]

;;[メッセージ操作] メッセージレイヤの文字の消去
;;現在の操作対象のメッセージレイヤ上の文字を消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="er"]
[kagtag cond=%cond]
[endmacro]

;;[栞・通過記録操作] 栞の消去
;;非フリーセーブモードにおいて、指定した番号の栞を消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;place=消去する栞の番号\n栞の番号を指定します, 0以上の値
[macro name="erasebookmark"]
[kagtag cond=%cond place=%place]
[endmacro]

;;[マクロ操作] マクロの消去
;;macro タグで記述したマクロを消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] タグ名\n消去するタグを指定します, マクロ名
[macro name="erasemacro"]
[kagtag cond=%cond name=%name]
[endmacro]

;;[変数・TJS 操作] 式の評価
;;exp で示された式を評価します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;exp=[必須] TJS 式\n評価する TJS 式を指定します, TJS式
[macro name="eval"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGMのフェード
;;現在演奏中の BGM を指定音量までフェードします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;volume=[必須] 音量\nフェード後に到達させる BGM の音量を % で指定します, パーセント値
;;time=[必須] フェード時間\nフェードを行っている時間を ms 単位で指定します, ミリ秒時間
[macro name="fadebgm"]
[kagtag cond=%cond volume=%volume time=%time]
[endmacro]

;;[効果音・BGM・ビデオ操作] フェードインしながらのBGM再生開始
;;BGM ファイルを演奏しますが、曲の先頭でフェードインを行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] 再生する曲\n演奏する BGM ファイル名または CD トラック番号を指定します, BGMファイル名;1以上の値
;;start=BGM 開始位置指定\nループチューナで指定したラベルで BGM の再生開始位置を指定します, 0以上の値
;;loop=ループするか\nBGM をループするかを指定します, 論理値
;;time=[必須] フェード時間\nフェードインを行っている時間を ms 単位で指定します, ミリ秒時間
[macro name="fadeinbgm"]
[kagtag cond=%cond storage=%storage start=%start loop=%loop time=%time]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音のフェードイン再生
;;効果音をフェードインしながら再生します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n効果音を再生するバッファを指定します, 効果音バッファ番号
;;storage=[必須] 効果音ファイル名\n演奏する効果音ファイル名を指定します, 効果音ファイル名
;;start=SE 開始位置指定\nループチューナで指定したラベルで SE の再生開始位置を指定します, 0以上の値
;;time=[必須] フェードイン時間\nフェードインを行っている時間をミリ秒単位で指定します, ミリ秒時間
;;loop=繰り返し再生を行うか\n効果音を繰り返し再生するかどうかを指定します, 論理値
[macro name="fadeinse"]
[kagtag cond=%cond buf=%buf storage=%storage start=%start time=%time loop=%loop]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGMのフェードアウト
;;現在演奏中の BGM をフェードアウトします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;time=[必須] フェード時間\nフェードアウトを行っている時間を ms 単位で指定します, ミリ秒時間
[macro name="fadeoutbgm"]
[kagtag cond=%cond time=%time]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音のフェードアウト
;;効果音をフェードアウトします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n効果音をフェードアウトするバッファを指定します, 効果音バッファ番号
;;time=[必須] フェードアウト時間\nフェードアウトを行っている時間をミリ秒単位で指定します, ミリ秒時間
[macro name="fadeoutse"]
[kagtag cond=%cond buf=%buf time=%time]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM 演奏のフェードアウトしながらの一時停止
;;BGM 演奏をフェードアウトしながら一時停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;time=[必須] フェード時間\nフェードアウトを行っている時間を ms 単位で指定します, ミリ秒時間
[macro name="fadepausebgm"]
[kagtag cond=%cond time=%time]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音のフェード
;;効果音を指定の到達音量までフェードします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n効果音をフェードするバッファを指定します, 効果音バッファ番号
;;time=[必須] フェード時間\nフェードを行っている時間をミリ秒単位で指定します, ミリ秒時間
;;volume=[必須] 到達音量\nフェードの到達音量を % で指定します, パーセント値
[macro name="fadese"]
[kagtag cond=%cond buf=%buf time=%time volume=%volume]
[endmacro]

;;[メッセージ操作] 文字属性設定
;;文字の様々な属性を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;size=文字サイズ\n文字サイズを pixel 単位で指定します, 1以上の値;default
;;face=フォント名\nフォント名を指定します, フォント名;default;user
;;color=文字色\n文字色を 0xRRGGBB 形式で指定します, RGB値;default
;;italic=斜体にするか\n文字を斜体にするかどうかを指定します, 論理値;default
;;rubysize=ルビのサイズ\nルビ(読み仮名)の文字のサイズを pixel 単位で指定します, 1以上の値;default
;;rubyoffset=ルビの表示位置\nルビの表示オフセットを pixel 単位で指定します, 1以上の値;default
;;shadow=影を表示するか\n文字に影をつけるかを指定します, 論理値;default
;;edge=袋文字にするか\n文字を袋文字 ( 縁取り文字 ) にするかを指定します, 論理値;default
;;edgecolor=袋文字の袋の色\n文字の袋の色を 0xRRGGBB 形式で指定します, RGB値;default
;;shadowcolor=影の色\n影の色を 0xRRGGBB 形式で指定します, RGB値;default
;;bold=太文字にするか\n文字を太文字にするかを指定します, 論理値;default
[macro name="font"]
[kagtag cond=%cond size=%size face=%face color=%color italic=%italic rubysize=%rubysize rubyoffset=%rubyoffset shadow=%shadow edge=%edge edgecolor=%edgecolor shadowcolor=%shadowcolor bold=%bold]
[endmacro]

;;[レイヤ操作] レイヤ画像の解放
;;レイヤの画像を解放します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n画像を解放するレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
[macro name="freeimage"]
[kagtag cond=%cond layer=%layer page=%page]
[endmacro]

;;[メッセージ操作] クリック待ち記号の指定
;;クリック待ちに用いる画像を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;line=行末クリック待ち記号\n行末クリック待ち記号画像のファイル名を指定します, 画像ファイル名
;;linekey=行末クリック待ち記号のカラーキー\nカラーキーを指定します, RGB値;256値;adapt
;;page=改ページクリック待ち記号\n改ページ待ち記号画像のファイル名を指定します, 画像ファイル名
;;pagekey=改ページクリック待ち記号のカラーキー\nカラーキーを指定します, RGB値;256値;adapt
;;fix=記号表示位置を固定するか\n記号表示位置を指定位置に固定するかどうかを指定します, 論理値
;;left=記号表示位置を固定するか\nfix 属性を true にしたときに記号を表示する位置のうち、左端位置を指定します, 0以上の値
;;top=記号表示位置を固定するか\nfix 属性を true にしたときに記号を表示する位置のうち、上端位置を指定します, 0以上の値
[macro name="glyph"]
[kagtag cond=%cond line=%line linekey=%linekey page=%page pagekey=%pagekey fix=%fix left=%left top=%top]
[endmacro]

;;[栞・通過記録操作] 前に戻る
;;メニューから システム|前に戻る を選択したときと同じ動作をします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;ask=確認をするか\ntrue を指定すると、前に戻るかどうかの確認をします, 論理値
[macro name="goback"]
[kagtag cond=%cond ask=%ask]
[endmacro]

;;[栞・通過記録操作] 最初に戻る
;;startanchor タグで指定された場所に戻ります
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;ask=確認をするか\ntrue を指定すると、最初に戻るかどうかの確認をします, 論理値
[macro name="gotostart"]
[kagtag cond=%cond ask=%ask]
[endmacro]

;;[メッセージ操作] インライン画像表示
;;任意の画像をメッセージレイヤの文字位置に表示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] 画像ファイル名\n表示させたい画像ファイル名を指定します, 画像ファイル名
;;key=カラーキー\nどの色を抜き色とするかを指定します, RGB値;256値;adapt
;;char=文字として処理するか\ntrue を指定すると、画像はfont タグで指定した色、影、袋文字の状態が、文字同様に表示されます, 論理値
;;alt=代替文字\nメッセージ履歴に表示する、この画像の代替文字を指定します, 任意文字列
[macro name="graph"]
[kagtag cond=%cond storage=%storage key=%key char=%char alt=%alt]
[endmacro]

;;[メッセージ履歴操作] メッセージ履歴アクション
;;メッセージ履歴に対するアクションを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;exp=[必須] 実行する式\nメッセージをクリックしたときに実行する TJS 式を指定します, TJS式
[macro name="hact"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[メッセージ操作] 縦中横を表示する
;;縦中横 ( 縦書き中に算用数字２桁を書くような場合にそこだけ横書きにする書き方 ) で文字を表示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;text=[必須] 表示する文字\nここで指定した文字がそこだけ横書きで表示されます, 任意文字列
;;expand=行間を拡張するか\ntrue を指定すると、長い縦中横を描画しようとしたときに行間を自動的に拡張します, 論理値
[macro name="hch"]
[kagtag cond=%cond text=%text expand=%expand]
[endmacro]

;;[システム操作] メッセージを消す
;;メッセージレイヤを一時的に隠します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="hidemessage"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ履歴操作] メッセージ履歴の設定
;;メッセージ履歴の機能に関する設定を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;output=文字情報の出力\nメッセージ履歴への文字情報の出力をするかどうかを指定します, 論理値
;;enabled=メッセージ履歴の表示可能・不可能\nメッセージ履歴を表示可能かどうかを指定します, 論理値
[macro name="history"]
[kagtag cond=%cond output=%output enabled=%enabled]
[endmacro]

;;[メッセージ履歴操作] メッセージ履歴の改行/改ページ
;;メッセージ履歴を改行または改ページします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;repage=改ページかどうか\n改ページを行うかどうかを指定します, 論理値
[macro name="hr"]
[kagtag cond=%cond repage=%repage]
[endmacro]

;;[変数・TJS 操作] 条件によりシナリオを実行
;;式を評価し、その結果が true ( または 0 以外 ) ならば、elsif・else・endif のいずれかまでにある文章やタグを実行し、そうでない場合は無視します
;;exp=[必須] TJS 式\n評価する TJS 式を指定します, TJS式
[macro name="if"]
[kagtag exp=%exp]
[endmacro]

;;[変数・TJS 操作] 条件によりシナリオを無視
;;式を評価し、その結果が true ( または 0 以外 ) ならば、endignore タグまでにある文章やタグが無視されます
;;exp=[必須] TJS 式\n評価する TJS 式を指定します, TJS式
[macro name="ignore"]
[kagtag exp=%exp]
[endmacro]

;;[レイヤ操作] 画像の読み込み
;;画像を読み込みます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] 画像ファイル名\n読み込みたい画像を指定します, 画像ファイル名
;;layer=[必須] 対象レイヤ\n画像を読み込むレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;key=カラーキー\nどの色を抜き色とするかを指定します, RGB値;256値;adapt
;;mode=前景レイヤ透過モード\n前景レイヤの透過モードを指定します, alpha;transp;opaque;rect;add;sub;mul;dodge;darken;lighten;screen;psadd;pssub;psmul;psscreen;psoverlay;pshlight;psslight;psdodge;psdodge5;psburn;pslighten;psdarken;psdiff;psdiff5;psexcl
;;grayscale=画像をグレースケールにするか\n画像をグレースケールにするかどうかを指定します, 論理値
;;rgamma=ガンマ補正値\nr (赤) 、g (緑) 、 b (青) の各成分のガンマ値を指定します, 実数値
;;ggamma=ガンマ補正値\nr (赤) 、g (緑) 、 b (青) の各成分のガンマ値を指定します, 実数値
;;bgamma=ガンマ補正値\nr (赤) 、g (緑) 、 b (青) の各成分のガンマ値を指定します, 実数値
;;rfloor=輝度最低値\n各成分の輝度最低値を指定します, 256値
;;gfloor=輝度最低値\n各成分の輝度最低値を指定します, 256値
;;bfloor=輝度最低値\n各成分の輝度最低値を指定します, 256値
;;rceil=輝度最高値\n各成分の輝度最高値を指定します, 256値
;;gceil=輝度最高値\n各成分の輝度最高値を指定します, 256値
;;bceil=輝度最高値\n各成分の輝度最高値を指定します, 256値
;;mcolor=ブレンド色\n色ブレンドによる色調効果において、ブレンドする色を 0xRRGGBB 形式で指定します, RGB値
;;mopacity=ブレンド色濃度\n色ブレンドによる色調効果で、mcolor で指定した色をどれぐらいの不透明度でブレンドするかを指定します, 256値
;;clipleft=クリップ矩形左端位置\n画像クリップ矩形の左端位置を指定します, 0以上の値
;;cliptop=クリップ矩形上端位置\n画像クリップ矩形の上端位置を指定します, 0以上の値
;;clipwidth=クリップ矩形幅\n画像クリップ矩形の幅を指定します, 1以上の値
;;clipheight=クリップ矩形高さ\n画像クリップ矩形の高さを指定します, 1以上の値
;;flipud=上下反転\n画像の上下反転を行いたい場合に true を指定します, 論理値
;;fliplr=左右反転\n画像の左右反転を行いたい場合に true を指定します, 論理値
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;left=レイヤ左端位置\nlayer 属性で指定したレイヤの左端位置を指定します, 0以上の値
;;top=レイヤ上端位置\nlayer 属性で指定したレイヤの上端位置を指定します, 0以上の値
;;pos=前景レイヤ位置\nレイヤ位置を自動的に決定します, レイヤ位置
;;opacity=不透明度\nlayer 属性で指定したレイヤの不透明度を指定します, 256値
;;mapimage=領域画像\nクリッカブルマップに用いる領域画像を指定します, 画像ファイル名
;;mapaction=領域アクション定義ファイル\nクリッカブルマップに用いる領域アクション定義ファイルを指定します, 領域アクション定義ファイル名
;;index=重ね合わせ順序\n背景レイヤには指定しないでください, 1以上の値
[macro name="image"]
[kagtag cond=%cond storage=%storage layer=%layer page=%page key=%key mode=%mode grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma rfloor=%rfloor gfloor=%gfloor bfloor=%bfloor rceil=%rceil gceil=%gceil bceil=%bceil mcolor=%mcolor mopacity=%mopacity clipleft=%clipleft cliptop=%cliptop clipwidth=%clipwidth clipheight=%clipheight flipud=%flipud fliplr=%fliplr visible=%visible left=%left top=%top pos=%pos opacity=%opacity mapimage=%mapimage mapaction=%mapaction index=%index]
[endmacro]

;;[メッセージ操作] インデントの設定
;;このタグの位置に左インデント ( 縦書きの場合は頭インデント ) を設定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="indent"]
[kagtag cond=%cond]
[endmacro]

;;[変数・TJS 操作] 文字列の入力
;;文字列を入力するためにダイアログボックスを開き、ユーザーに入力を求めます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] 変数名\n入力したい文字列を格納する変数を指定します, 任意文字列
;;prompt=プロンプト\nダイアログボックスのプロンプト ( 入力欄のすぐ上に表示される文字列 ) を指定します, 任意文字列
;;title=タイトル\nダイアログボックスのタイトルを指定します, 任意文字列
[macro name="input"]
[kagtag cond=%cond name=%name prompt=%prompt title=%title]
[endmacro]

;;[変数・TJS 操作] TJS スクリプトの記述
;;[iscript] のみの行と、[endscript] のみの行で囲まれた部分に TJS スクリプトを書き込むことが出来ます
[macro name="iscript"]
[kagtag]
[endmacro]

;;[ラベル・ジャンプ操作] シナリオのジャンプ
;;指定されたシナリオファイルの指定されたラベルにジャンプします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;countpage=このジャンプを「読んだ」と見なすか\n他のラベルに移行するときに、このタグのある場所のラベルを「読んだ」とみなすかどうかを指定します, 論理値
[macro name="jump"]
[kagtag cond=%cond storage=%storage target=%target countpage=%countpage]
[endmacro]

;;[メッセージ操作] 行末クリック待ち
;;行末のクリック待ちを行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="l"]
[kagtag cond=%cond]
[endmacro]

;;[レイヤ操作] レイヤの数の変更
;;前景レイヤまたはメッセージレイヤの数を変更します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layers=前景レイヤの数\n前景レイヤの数を指定します, 0以上の値
;;messages=メッセージレイヤの数\nメッセージレイヤの数を指定します, 1以上の値
[macro name="laycount"]
[kagtag cond=%cond layers=%layers messages=%messages]
[endmacro]

;;[レイヤ操作] レイヤの属性
;;レイヤの属性を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n対象となる前景レイヤまたはメッセージレイヤを指定します, 前景レイヤ;メッセージレイヤ
;;page=ページ\n表(fore)画面のレイヤを対象とするか、裏(back)画面のレイヤを対象とするかを指定します, レイヤーページ
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;left=レイヤ左端位置\nlayer 属性で指定したレイヤの左端位置を指定します, 0以上の値
;;top=レイヤ上端位置\nlayer 属性で指定したレイヤの上端位置を指定します, 0以上の値
;;opacity=不透明度\nレイヤの不透明度を指定します, 256値
;;autohide=メッセージレイヤとともに隠すか\n前景レイヤ以外には指定しないでください, 論理値
;;index=重ね合わせ順序\n背景レイヤには指定しないでください, 1以上の値
[macro name="layopt"]
[kagtag cond=%cond layer=%layer page=%page visible=%visible left=%left top=%top opacity=%opacity autohide=%autohide index=%index]
[endmacro]

;;[ラベル・ジャンプ操作] ハイパーリンク
;;link タグと endlink タグで囲まれた部分の文章を、マウスやキーボードで選択可能にし、そこでクリックされたりキーを押されたときに、ジャンプする先を指定できます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;exp=TJS 式\nクリックされたときに実行される TJS 式を指定します, TJS式
;;color=リンクの強調色\nリンクが選択されたときに出る半透明の矩形の色を指定します, RGB値
;;hint=ツールチップヒント\nリンクを選択し、マウスカーソルを静止させたときに表示されるツールチップヒントを指定します, 任意文字列
;;onenter=マウス進入時\nリンク内にマウスカーソルが入ってきたときに実行される TJS 式を指定します, TJS式
;;onleave=マウス退出時\nリンク内からマウスカーソルが出ていった時に実行される TJS 式を指定します, TJS式
;;countpage=このジャンプを「読んだ」と見なすか\nリンクを選択して他のラベルに移行するときに、このリンクのある場所のラベルを「読んだ」とみなすかどうかを指定します, 論理値
;;clickse=クリック時の効果音\nクリックされたときに再生する効果音を指定します, 効果音ファイル名
;;clicksebuf=クリック時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;enterse=マウス進入時の効果音\nマウスが進入したときに再生する効果音を指定します, 効果音ファイル名
;;entersebuf=マウス進入時の効果音のバッファ番号\nenterse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;leavese=マウス退出時の効果音\nマウスが退出したときに再生する効果音を指定します, 効果音ファイル名
;;leavesebuf=マウス退出時の効果音のバッファ番号\nleavese で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="link"]
[kagtag cond=%cond storage=%storage target=%target exp=%exp color=%color hint=%hint onenter=%onenter onleave=%onleave countpage=%countpage clickse=%clickse clicksebuf=%clicksebuf enterse=%enterse entersebuf=%entersebuf leavese=%leavese leavesebuf=%leavesebuf]
[endmacro]

;;[栞・通過記録操作] 栞の読み込み
;;非フリーセーブモードにおいて、栞から読み込みます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;place=保存場所\n栞の番号を指定します, 0以上の値
;;ask=確認をするか\ntrue を指定すると、栞をたどるかどうかの確認をします, 論理値
[macro name="load"]
[kagtag cond=%cond place=%place ask=%ask]
[endmacro]

;;[システム操作] プラグインの読み込み
;;このタグで読み込むプラグインは、・プロジェクトフォルダ直下・吉里吉里実行可能ファイルのあるフォルダ以下の plugin フォルダ・吉里吉里実行可能ファイルのあるフォルダのいずれかに置いておく必要があります
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;module=[必須] プラグイン名\n読み込みたいプラグインファイル名を指定します, プラグインファイル名
[macro name="loadplugin"]
[kagtag cond=%cond module=%module]
[endmacro]

;;[メッセージ操作] 文字表示位置の指定
;;文字表示位置を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;x=横方向位置\n文字を表示する x 座標位置を指定します, 0以上の値
;;y=縦方向位置\n文字を表示する y 座標位置を指定します, 0以上の値
[macro name="locate"]
[kagtag cond=%cond x=%x y=%y]
[endmacro]

;;[メッセージ操作] リンクのロック
;;すべてのメッセージレイヤのリンクをロックします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="locklink"]
[kagtag cond=%cond]
[endmacro]

;;[栞・通過記録操作] スナップショットのロック
;;スナップショットをロックします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="locksnapshot"]
[kagtag cond=%cond]
[endmacro]

;;[マクロ操作] マクロの記述
;;マクロ記述を開始します
;;name=[必須] タグ名\nタグ名を指定します, 任意文字列
[macro name="macro"]
[kagtag name=%name]
[endmacro]

;;[レイヤ操作] クリッカブルマップ用領域アクション定義ファイルの指定
;;指定したレイヤのクリッカブルマップの領域アクション定義に使用するファイルを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n対象とするレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;storage=[必須] 領域アクション定義ファイル\n領域アクション定義ファイルを指定します, 領域アクション定義ファイル名
[macro name="mapaction"]
[kagtag cond=%cond layer=%layer page=%page storage=%storage]
[endmacro]

;;[レイヤ操作] クリッカブルマップの無効化
;;指定したレイヤのクリッカブルマップを無効にします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n対象とするレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
[macro name="mapdisable"]
[kagtag cond=%cond layer=%layer page=%page]
[endmacro]

;;[レイヤ操作] クリッカブルマップ用領域画像の指定
;;指定したレイヤのクリッカブルマップの領域画像に使用するファイルを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n対象とするレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;storage=[必須] 画像ファイル名\nクリッカブルマップの領域画像として用いるファイルを指定します, 画像ファイル名
[macro name="mapimage"]
[kagtag cond=%cond layer=%layer page=%page storage=%storage]
[endmacro]

;;[システム操作] レンダリング済みフォントの割り当て
;;現在操作対象になっているメッセージレイヤの現在のフォントに、指定したレンダリング済みフォントを割り当てます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] ファイル名\n現在のフォントに割り当てたいレンダリング済みフォントファイルを指定します, フォントファイル名
[macro name="mappfont"]
[kagtag cond=%cond storage=%storage]
[endmacro]

;;[レイヤ操作] レイヤの自動移動
;;指定したレイヤに自動移動をさせます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n対象となるレイヤを指定します, 前景レイヤ;メッセージレイヤ
;;page=ページ\nlayer 属性で指定したレイヤが、表(fore)画面であるか、裏(back)画面であるかを指定します, レイヤーページ
;;spline=スプライン補間\ntrue を指定すると、path 属性で指定した位置をＢスプラインで曲線補間した線上をレイヤが移動するようになります, 論理値
;;time=[必須] 1点を通過する時間\nレイヤが path を指定した点から点を移動するのに必要な時間を指定します, ミリ秒時間
;;delay=動作を開始するまでの時間\nレイヤの自動移動が開始されるまでの時間を ms で指定します, ミリ秒時間
;;path=[必須] 移動位置\n移動位置を指定します, 任意文字列
;;accel=加速度的な動きをするかどうか\n加速度的な動きを行わせるかどうかを指定します, -1;0;1
[macro name="move"]
[kagtag cond=%cond layer=%layer page=%page spline=%spline time=%time delay=%delay path=%path accel=%accel]
[endmacro]

;;[システム操作] 「次の選択肢まですすむ」の設定
;;ユーザーが「次の選択肢まで進む」の機能を使用できるようにするか否かを指定できます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;enabled=[必須] 有効・無効の設定\n「次の選択肢まで進む」の機能を有効にする場合は true、無効にする場合は false を指定します, 論理値
[macro name="nextskip"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[メッセージ操作] 文字表示ノーウェイト
;;文字の表示速度をノーウェイトに設定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="nowait"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオ/SWFの再生準備
;;ビデオまたはSWF(Shockwave Flash)の再生の準備をします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;storage=[必須] ファイル名\n再生準備するファイル名を指定します, ムービーファイル名
[macro name="openvideo"]
[kagtag cond=%cond slot=%slot storage=%storage]
[endmacro]

;;[メッセージ操作] 改ページクリック待ち
;;改ページのクリック待ちを行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="p"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM 演奏の一時停止
;;BGM 演奏を一時停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="pausebgm"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオの一時停止
;;ビデオの再生を一時停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="pausevideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[レイヤ操作] 画像の部分追加読み込み
;;指定したレイヤに画像を追加して読み込みます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] 画像ファイル名\n追加して読み込む画像を指定します, 画像ファイル名
;;layer=[必須] 対象レイヤ\n画像を追加して読み込むレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;key=カラーキー\nstorage で指定した画像の、どの色を抜き色とするかを指定します, RGB値;256値;adapt
;;dx=[必須] 画像読み込み先 x 座標\n重ね合わせ、あるいはコピーする先の左端 x 座標を(対象のレイヤ内の座標で)指定します, 0以上の値
;;dy=[必須] 画像読み込み先 y 座標\n重ね合わせ、あるいはコピーする先の上端 y 座標を(対象のレイヤ内の座標で)指定します, 0以上の値
;;sx=画像読み込み元 x 座標\n重ね合わせ、あるいはコピーする元の左端 x 座標を(追加して読み込む画像内の座標で)指定します, 0以上の値
;;sy=画像読み込み元 y 座標\n重ね合わせ、あるいはコピーする元の上端 y 座標を(追加して読み込む画像内の座標で)指定します, 0以上の値
;;sw=画像読み込み元幅\n重ね合わせ、あるいはコピーする幅を指定します, 0以上の値
;;sh=画像読み込み元高さ\n重ね合わせ、あるいはコピーする高さを指定します, 0以上の値
;;mode=重ね合わせモード\nsx sy sw sh の各属性で指定した矩形領域を 重ね合わせるか、あるいは単純にコピーするか、あるいは演算を行うかを指定します, copy;opaque;pile;alpha;add;sub;mul;dodge;darken;lighten;screen;psadd;pssub;psmul;psscreen;psoverlay;pshlight;psslight;psdodge;psdodge5;psburn;pslighten;psdarken;psdiff;psdiff5;psexcl
;;opacity=不透明度\nmode 属性で "pile" を指定した場合の重ね合わせの不透明度、あるいは "add" "sub" "mul" "dodge" "darken"  "lighten" "screen" のいずれかを指定した場合の演算の強度を指定します, 256値
[macro name="pimage"]
[kagtag cond=%cond storage=%storage layer=%layer page=%page key=%key dx=%dx dy=%dy sx=%sx sy=%sy sw=%sw sh=%sh mode=%mode opacity=%opacity]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM の演奏
;;BGM を演奏します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] BGM ファイル名\n演奏する BGM ファイル名を指定します, BGMファイル名
;;start=BGM 開始位置指定\nループチューナで指定したラベルで BGM の再生開始位置を指定します, 0以上の値
;;loop=ループするか\nBGM をループするかを指定します, 論理値
[macro name="playbgm"]
[kagtag cond=%cond storage=%storage start=%start loop=%loop]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音の再生
;;効果音を再生します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n効果音を再生するバッファを指定します, 効果音バッファ番号
;;storage=[必須] 効果音ファイル名\n演奏する効果音ファイル名を指定します, 効果音ファイル名
;;start=SE 開始位置指定\nループチューナで指定したラベルで SE の再生開始位置を指定します, 0以上の値
;;loop=繰り返し再生を行うか\n効果音を繰り返し再生するかどうかを指定します, 論理値
[macro name="playse"]
[kagtag cond=%cond buf=%buf storage=%storage start=%start loop=%loop]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオ/SWFの再生
;;ビデオまたはSWF(Shockwave Flash)を再生します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;storage=ファイル名\n再生するファイル名を指定します, ムービーファイル名
[macro name="playvideo"]
[kagtag cond=%cond slot=%slot storage=%storage]
[endmacro]

;;[メッセージ操作] メッセージレイヤの属性
;;メッセージレイヤに対する様々な属性を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=対象レイヤ\n対象とするメッセージレイヤを指定します, メッセージレイヤ
;;page=対象ページ\n対象とするページを指定します, レイヤーページ
;;left=左端位置\nメッセージレイヤの左端位置を指定します, 0以上の値
;;top=上端位置\nメッセージレイヤの上端位置を指定します, 0以上の値
;;width=幅\nメッセージレイヤの幅を指定します, 0以上の値
;;height=高さ\nメッセージレイヤの高さを指定します, 0以上の値
;;frame=フレーム画像\nメッセージレイヤのフレーム画像として表示させる画像を指定します, 画像ファイル名
;;framekey=フレーム画像のカラーキー\nframe 属性で指定したフレーム画像の、どの色を抜き色とするかを指定します, RGB値;256値;adapt
;;color=レイヤの色\nメッセージレイヤの表示色を 0xRRGGBB 形式で指定します, RGB値
;;opacity=レイヤの不透明度\nメッセージレイヤの不透明度を 0 ～ 255 の数値で指定します(文字の不透明度や、レイヤ自体の不透明度ではありません), 256値
;;marginl=左余白\nメッセージレイヤの左余白を指定します, 0以上の値
;;margint=上余白\nメッセージレイヤの上余白を指定します, 0以上の値
;;marginr=右余白\nメッセージレイヤの右余白を指定します, 0以上の値
;;marginb=下余白\nメッセージレイヤの下余白を指定します, 0以上の値
;;vertical=縦書きモード\nメッセージレイヤを縦書きにモードにするには "true" を指定します, 論理値
;;draggable=マウスでドラッグ可能か\ntrue に設定すると、marginl, margint, marginr, marginb で指定したマージンの部分でかつ、フレーム画像の不透明度が 64 以上の箇所を、マウスでドラッグすることによりメッセージレイヤをユーザが移動できるようになります, 論理値
;;visible=可視か\ntrue に設定すると、メッセージレイヤが可視(表示状態)になります, 論理値
[macro name="position"]
[kagtag cond=%cond layer=%layer page=%page left=%left top=%top width=%width height=%height frame=%frame framekey=%framekey color=%color opacity=%opacity marginl=%marginl margint=%margint marginr=%marginr marginb=%marginb vertical=%vertical draggable=%draggable visible=%visible]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオの再生準備
;;ビデオの再生準備を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="preparevideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[レイヤ操作] レイヤへの文字描画
;;指定したレイヤに文字を描画します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\n文字を描画するレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;x=[必須] x座標値\n文字を描画する横位置を pixel 単位で指定します, 0以上の値
;;y=[必須] y座標値\n文字を描画する縦位置を pixel 単位で指定します, 0以上の値
;;text=[必須] 描画する文字\n描画する文字列を指定します, 任意文字列
;;vertical=縦書きかどうか\n縦書きかどうかを指定します, 論理値
;;angle=文字描画角度\n文字描画の角度を指定します, 0以上の値
;;size=文字サイズ\n文字サイズを pixel 単位で指定します, 1以上の値
;;face=フォント名\nフォント名を指定します, フォント名
;;color=文字色\n文字色を 0xRRGGBB 形式で指定します, RGB値
;;italic=斜体にするか\n文字を斜体にするかどうかを指定します, 論理値
;;shadow=影を表示するか\n文字に影をつけるかを指定します, 論理値
;;edge=袋文字にするか\n文字を袋文字 ( 縁取り文字 ) にするかを指定します, 論理値
;;edgecolor=袋文字の袋の色\n文字の袋の色を 0xRRGGBB 形式で指定します, RGB値
;;shadowcolor=影の色\n影の色を 0xRRGGBB 形式で指定します, RGB値
;;bold=太文字にするか\n文字を太文字にするかを指定します, 論理値
[macro name="ptext"]
[kagtag cond=%cond layer=%layer page=%page x=%x y=%y text=%text vertical=%vertical angle=%angle size=%size face=%face color=%color italic=%italic shadow=%shadow edge=%edge edgecolor=%edgecolor shadowcolor=%shadowcolor bold=%bold]
[endmacro]

;;[システム操作] 画面を揺らす
;;画面を揺らします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;time=[必須] 揺らしている期間\nここで指定した文字数を表示するのと同じだけの時間、画面を揺らします, ミリ秒時間
;;timemode=time属性の単位\ntime 属性の単位を指定します, ms;delay
;;hmax=横揺れ最大振幅\n揺れの横方向への最大振幅を指定します, 0以上の値
;;vmax=縦揺れ最大振幅\n揺れの縦方向への最大振幅を指定します, 0以上の値
[macro name="quake"]
[kagtag cond=%cond time=%time timemode=%timemode hmax=%hmax vmax=%vmax]
[endmacro]

;;[メッセージ操作] 改行する
;;改行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;eol=行末の改行かどうか\nConfig.tjs の ignoreCR が false の場合、KAG は改行の際に rタグを生成しますが、この「改行の際に生成される r タグ」の場合はこの属性があり、値が true になっています, 任意文字列
[macro name="r"]
[kagtag cond=%cond eol=%eol]
[endmacro]

;;[システム操作] 右クリックの設定
;;右クリックや、キーボードから ESC キーを押した時の動作を設定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;call=サブルーチンを呼び出すか\ntrue を設定すると、右クリックで storage と target 属性で指定したサブルーチンを呼び出すようになります, 論理値
;;jump=指定場所にジャンプするか\ntrue を設定すると、右クリックで storage と target 属性で指定した場所にジャンプするようになります, 論理値
;;target=サブルーチンの呼び出し先/ジャンプ先\ncall 属性か jump 属性に true を設定した場合、その呼び出し先/ジャンプ先のラベルを指定します, ラベル名
;;storage=サブルーチンの呼び出し先/ジャンプ先ファイル\ncall 属性か jump 属性に true を設定した場合、その呼び出し先/ジャンプ先のファイルを指定します, シナリオファイル名
;;enabled=右クリック動作を行うか\ntrue を設定すると、右クリックによりメッセージレイヤが隠されたり、指定のルーチンが呼び出されたり、指定場所にジャンプしたりします, 論理値
;;name=メニュー項目名\nシステムメニュー内の「メッセージを消す」のメニュー項目名を指定します, 任意文字列;default
[macro name="rclick"]
[kagtag cond=%cond call=%call jump=%jump target=%target storage=%storage enabled=%enabled name=%name]
[endmacro]

;;[栞・通過記録操作] 通過記録を行う
;;現在の位置で通過記録を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="record"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ操作] 文字属性をデフォルトに戻す
;;font タグで指定した文字の属性をデフォルトに戻します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="resetfont"]
[kagtag cond=%cond]
[endmacro]

;;[メッセージ操作] スタイルをデフォルトに戻す
;;style タグで指定した行のスタイルをすべてデフォルトの設定に戻します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="resetstyle"]
[kagtag cond=%cond]
[endmacro]

;;[システム操作] ウェイトの初期化
;;wait タグの mode=until で使用する時間原点を設定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="resetwait"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM 演奏の再開
;;pausebgm タグで一時停止した BGM を再開します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="resumebgm"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオ再生の再開
;;ビデオの再生を再開します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="resumevideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[ラベル・ジャンプ操作] サブルーチンから戻る
;;サブルーチンから呼び出し元に戻ります
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=戻り先のシナリオファイル名\n戻り先のシナリオファイルを指定します, シナリオファイル名
;;target=戻り先のラベル名\n戻り先のラベルを指定します, ラベル名
;;countpage=「読んだ」と見なすか\n呼び出し元に戻るときに、この return タグのある場所のラベルを「読んだ」とみなすかどうかを指定します, 論理値
[macro name="return"]
[kagtag cond=%cond storage=%storage target=%target countpage=%countpage]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオの巻き戻し
;;ビデオを先頭まで巻き戻します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="rewindvideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[メッセージ操作] ルビ指定
;;次の一文字に対するルビを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;text=[必須] ルビ\nルビとして表示させる文字を指定します, 任意文字列
[macro name="ruby"]
[kagtag cond=%cond text=%text]
[endmacro]

;;[システム操作] 停止する
;;シナリオファイルの実行を停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="s"]
[kagtag cond=%cond]
[endmacro]

;;[栞・通過記録操作] 栞の保存
;;非フリーセーブモードにおいて、指定された栞に保存します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;place=保存場所\n栞の番号を指定します, 0以上の値
;;ask=確認をするか\ntrue を指定すると、栞を保存するかどうかの確認をします, 論理値
[macro name="save"]
[kagtag cond=%cond place=%place ask=%ask]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音の設定
;;効果音の個々のバッファに対する設定を変更します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n設定を変更するバッファを指定します, 効果音バッファ番号
;;volume=音量\n効果音の音量を % で指定します, パーセント値
;;gvolume=大域音量\n効果音の大域音量を % で指定します, パーセント値
;;pan=パン\nパン (左右の音像位置) を指定します, -100～100の値
[macro name="seopt"]
[kagtag cond=%cond buf=%buf volume=%volume gvolume=%gvolume pan=%pan]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM のラベル通過処理の登録
;;BGM のラベルを通過した際に行う処理を登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] ラベル名\nBGM 中のループチューナで指定したラベル名を指定します, ラベル名
;;storage=シナリオファイル名\nラベル通過時の遷移先シナリオファイル名を指定します, シナリオファイル名
;;target=ラベル名\nラベル通過時の遷移先ラベル名を指定します, ラベル名
;;exp=TJS 式\nラベル通過時に実行される TJS 式を指定します, TJS式
[macro name="setbgmlabel"]
[kagtag cond=%cond name=%name storage=%storage target=%target exp=%exp]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM の停止処理の登録
;;BGM が停止した際に行う処理を登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=シナリオファイル名\nBGM停止時の遷移先シナリオファイル名を指定します, シナリオファイル名
;;target=ラベル名\nBGM停止時の遷移先ラベル名を指定します, ラベル名
;;exp=TJS 式\nBGM停止時に実行される TJS 式を指定します, TJS式
[macro name="setbgmstop"]
[kagtag cond=%cond storage=%storage target=%target exp=%exp]
[endmacro]

;;[メッセージ履歴操作] メッセージ履歴の表示
;;メッセージ履歴を表示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="showhistory"]
[kagtag cond=%cond]
[endmacro]

;;[栞・通過記録操作] 「最初に戻る」の有効・無効
;;Config.tjs 内で goToStartMenuItem.visible =true; と設定すると、システム|最初に戻るメニューが表示されますが、それが選択された場合に戻る場所をこのタグで指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;enabled=有効・無効の設定\n"true" を指定するかこの属性を省略すると、このタグのあるすぐ前のセーブ可能なラベルが「最初に戻る」の戻り先であるとされ、「最初に戻る」の機能が有効になります, 論理値
[macro name="startanchor"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM 演奏の停止
;;BGM 演奏を停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="stopbgm"]
[kagtag cond=%cond]
[endmacro]

;;[レイヤ操作] レイヤの自動移動の停止
;;move タグで開始した自動移動を強制的に中止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="stopmove"]
[kagtag cond=%cond]
[endmacro]

;;[システム操作] 画面揺らしの停止
;;quakeタグで開始した揺れを終了させます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="stopquake"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音再生の停止
;;効果音再生を停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n効果音を停止するバッファを指定します, 効果音バッファ番号
[macro name="stopse"]
[kagtag cond=%cond buf=%buf]
[endmacro]

;;[レイヤ操作] レイヤのトランジションの停止
;;trans タグで開始したトランジションを強制的に中止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="stoptrans"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオ/SWF再生の停止
;;ビデオ/SWFの再生を停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
[macro name="stopvideo"]
[kagtag cond=%cond slot=%slot]
[endmacro]

;;[栞・通過記録操作] 栞機能の設定
;;栞機能を有効にするか、無効にするかを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;enabled=[必須] 有効・無効の設定\n栞機能を有効にする場合は true 、無効にする場合は false を指定します, 論理値
[macro name="store"]
[kagtag cond=%cond enabled=%enabled]
[endmacro]

;;[メッセージ操作] スタイルの設定
;;行のスタイルを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;align=文字揃え\n行の文字揃えを指定します, left;top;center;right;bottom;default
;;linespacing=行間\n行間を pixel 単位で指定します, 0以上の値
;;pitch=字間\n字間のオフセットを pixel 単位で指定します, 0以上の値
;;linesize=文字サイズの予約サイズ\n行の幅を指定します, 0以上の値;default
;;autoreturn=自動改行・改ページの設定\n自動改行・自動改ページを行わせるかどうかを指定します, 論理値;default
[macro name="style"]
[kagtag cond=%cond align=%align linespacing=%linespacing pitch=%pitch linesize=%linesize autoreturn=%autoreturn]
[endmacro]

;;[栞・通過記録操作] 栞のメモリ上からの読み込み
;;tempsave タグで保存したメモリ上の「栞」を読み出します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;place=保存場所\n栞の番号を指定します, 0以上の値
;;se=効果音を読み込むか\n読み込むときに、効果音の情報も読み込むかを指定します, 論理値
;;bgm=BGM を読み込むか\n読み込むときに、BGM の情報も読み込むかを指定します, 論理値
;;backlay=表ページを裏ページに読み込むか\n読み込むときに、前景レイヤの情報は読み込まずに、かつ背景レイヤには前景レイヤの情報を読み込むかどうかを指定します, 論理値
[macro name="tempload"]
[kagtag cond=%cond place=%place se=%se bgm=%bgm backlay=%backlay]
[endmacro]

;;[栞・通過記録操作] 栞のメモリ上への保存
;;メモリ上の「栞」に現在の位置での情報を挟みます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;place=保存場所\n栞の番号を指定します, 0以上の値
[macro name="tempsave"]
[kagtag cond=%cond place=%place]
[endmacro]

;;[ラベル・ジャンプ操作] タイムアウト待ちジャンプ
;;現在のメッセージレイヤに対してタイムアウトを登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;time=[必須] タイムアウト時間\nタイムアウトまでの時間を ms で指定します, ミリ秒時間
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;exp=TJS 式\nタイムアウト時に実行される TJS 式を指定します, TJS式
;;se=タイムアウト時の効果音\nタイムアウト時に再生する効果音を指定します, 効果音ファイル名
;;sebuf=タイムアウト時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="timeout"]
[kagtag cond=%cond time=%time storage=%storage target=%target exp=%exp se=%se sebuf=%sebuf]
[endmacro]

;;[システム操作] タイトル指定
;;タスクバー、およびウィンドウキャプション ( タイトルバー ) に表示する文字を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] タイトル\n表示したいタイトルを指定してください, 任意文字列
[macro name="title"]
[kagtag cond=%cond name=%name]
[endmacro]

;;[変数・TJS 操作] コンソールへ値の出力
;;exp で示された式を評価し、結果をコンソールに出力します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;exp=[必須] TJS 式\n評価する TJS 式を指定します, TJS式
[macro name="trace"]
[kagtag cond=%cond exp=%exp]
[endmacro]

;;[レイヤ操作] レイヤのトランジション
;;指定したレイヤでトランジションを行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=対象レイヤ\n対象となるレイヤを指定します, 背景レイヤ;前景レイヤ;メッセージレイヤ
;;children=子レイヤも含めるか\nトランジションの対象に子レイヤも含めるかどうかを指定します, 論理値
;;time=[必須] トランジション時間\nトランジションを行っている時間を数値で指定します, ミリ秒時間
;;method=トランジションのタイプ\nトランジションのタイプを指定します, トランジションタイプ
;;rule=ルール画像\nユニバーサルトランジションに用いるルール画像を指定します, 画像ファイル名
;;vague=あいまい領域値\nユニバーサルトランジションに適用する あいまい領域値を指定します, 0以上の値
;;from=スクロールされる方向\nスクロールトランジションにおいて、裏ページの画像がどの方向から現れてくるかを指定します, left;top;right;bottom
;;stay=元画像がその場に居座るか\nスクロールトランシジョンにおいて、表ページの画像がその場にとどまったまま、裏ページの画像が外部からスクロールしてくるか ( "stayfore" )、　表ページの画像がスクロールして出ていく裏から、裏ページの画像がその場にとどまったまま現れてくるか( "stayback" )、　または表ページの画像と裏ページの画像が連結されて一緒に移動しながら切り替わっていくか ( "nostay" )、を指定します, stayfore;stayback;nostay
[macro name="trans"]
[kagtag cond=%cond layer=%layer children=%children time=%time method=%method rule=%rule vague=%vague from=%from stay=%stay]
[endmacro]

;;[メッセージ操作] リンクのロックの解除
;;すべてのメッセージレイヤのリンクのロックを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="unlocklink"]
[kagtag cond=%cond]
[endmacro]

;;[栞・通過記録操作] スナップショットのロックの解除
;;locksnapshot でロックしたスナップショットのロックを解除します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="unlocksnapshot"]
[kagtag cond=%cond]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオ/SWF表示領域の属性を指定
;;ビデオ/SWF表示領域の属性を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;visible=可視・不可視\nビデオ/SWF の表示領域を表示するか ( true の場合 )、非表示にするか ( false の場合 ) を指定します, 論理値
;;left=左端位置\n表示領域の左端位置を指定します, 0以上の値
;;top=上端位置\n表示領域の上端位置を指定します, 0以上の値
;;width=幅\n表示領域の幅を指定します, 1以上の値
;;height=高さ\n表示領域の高さを指定します, 1以上の値
;;loop=ループするかどうか\nループを行いたい場合は true を指定します, 論理値
;;position=移動先時間\n指定した時間までビデオの再生位置を移動したい場合に指定します, ミリ秒時間
;;frame=移動先フレーム\n指定した位置までビデオの再生位置を移動したい場合に指定します, 0以上の値
;;mode=描画モード\nムービーの描画モードを指定します, overlay;layer
;;playrate=再生速度\nメディアの再生速度を設定します, 実数値
;;volume=音量\n音量を % で指定します, パーセント値
;;pan=音量\nパン (左右の音像位置) を指定します, -100～100の値
;;audiostreamnum=音声ストリーム番号\n指定した音声ストリーム番号を有効にします, 音声ストリーム番号(0?)
[macro name="video"]
[kagtag cond=%cond slot=%slot visible=%visible left=%left top=%top width=%width height=%height loop=%loop position=%position frame=%frame mode=%mode playrate=%playrate volume=%volume pan=%pan audiostreamnum=%audiostreamnum]
[endmacro]

;;[効果音・BGM・ビデオ操作] ピリオドイベントの発生
;;指定したフレームでピリオドイベントを発生させることができます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;frame=[必須] フレーム番号\nピリオドイベントを発生させるフレーム番号を指定します, 0以上の値
[macro name="videoevent"]
[kagtag cond=%cond slot=%slot frame=%frame]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオレイヤ設定
;;レイヤー描画モード時に、ビデオの画像を表示させたいレイヤを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;channel=[必須] チャンネル\nレイヤ描画モードでは、同時に二つのチャンネルでビデオを再生できます, 1;2
;;page=[必須] ページ\n表ページ("fore")か、裏ページ("back")かを指定します, レイヤーページ
;;layer=[必須] レイヤ\n表示したいレイヤ番号を指定します, 0以上の値
[macro name="videolayer"]
[kagtag cond=%cond slot=%slot channel=%channel page=%page layer=%layer]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオのセグメントループ再生
;;start 属性と end 属性で示した区間内でループ再生を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;start=[必須] 開始フレーム番号\nループの始点を指定します, 0以上の値
;;end=[必須] 終了フレーム番号\nループの終点を指定します, 0以上の値
[macro name="videosegloop"]
[kagtag cond=%cond slot=%slot start=%start end=%end]
[endmacro]

;;[レイヤ操作] アニメーションの停止待ち
;;任意のセグメントのアニメーションの停止を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;layer=[必須] 対象レイヤ\nアニメーションの停止を待つするレイヤを指定します, 背景レイヤ;前景レイヤ
;;page=ページ\n表(fore)画面を対象とするか、裏(back)画面を対象とするかを指定します, レイヤーページ
;;seg=[必須] セグメント\nこの属性で指定したセグメント番号のアニメーションの停止を待ちます, 0以上の値
[macro name="wa"]
[kagtag cond=%cond layer=%layer page=%page seg=%seg]
[endmacro]

;;[システム操作] ウェイトを入れる
;;ウェイトを入れます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;time=[必須] 時間\nウェイトをミリ秒で指定します, ミリ秒時間
;;mode=ウェイトの方式\nウェイトの方式を指定します, normal;until
;;canskip=スキップできるか\nこのウェイトを、マウスのクリックやキーボードでスキップできるかを指定します, 論理値
[macro name="wait"]
[kagtag cond=%cond time=%time mode=%mode canskip=%canskip]
[endmacro]

;;[システム操作] クリックを待つ
;;クリックを待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
[macro name="waitclick"]
[kagtag cond=%cond]
[endmacro]

;;[変数・TJS 操作] トリガを待つ
;;TJS2 スクリプトが trigger メソッドを呼ぶのを待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;name=[必須] トリガ名\n待つトリガ名を指定します, 任意文字列
;;canskip=スキップできるか\ntrue を指定すると、クリックにより、待つ動作をスキップすることができます, 論理値
;;onskip=スキップされたとき\nクリックによりスキップされたときに実行する TJS式 を指定します, TJS式
[macro name="waittrig"]
[kagtag cond=%cond name=%name canskip=%canskip onskip=%onskip]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM フェードの終了待ち
;;BGM のフェードアウト・フェードインの終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;canskip=スキップできるかどうか\ntrue を指定するとクリックでフェードの終了待ちをスキップできます, 論理値
[macro name="wb"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[システム操作] 文字数分のウェイトを入れる
;;文字数分のウェイトを入れます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;time=[必須] 文字数\nここで指定した文字数を表示するのと同じだけの時間を待ちます, 任意文字列
[macro name="wc"]
[kagtag cond=%cond time=%time]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音フェードの終了待ち
;;効果音のフェードアウト・フェードインの終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\nフェードの終了を待つバッファを指定します, 効果音バッファ番号
;;canskip=スキップできるかどうか\ntrue を指定するとクリックでフェード終了待ちをスキップできます, 論理値
[macro name="wf"]
[kagtag cond=%cond buf=%buf canskip=%canskip]
[endmacro]

;;[ラベル・ジャンプ操作] ホイール待ちジャンプ
;;現在のメッセージレイヤに対してクリック待ちを登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;func=TJS 式\nホイール時に実行されるメソッド名を指定します, TJS式
;;exp=TJS 式\nホイール時に実行される TJS 式を指定します, TJS式
;;se=ホイール時の効果音\nホイール時に再生する効果音を指定します, 効果音ファイル名
;;sebuf=ホイール時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="wheel"]
[kagtag cond=%cond storage=%storage target=%target func=%func exp=%exp se=%se sebuf=%sebuf]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM 再生の終了待ち
;;BGM 再生の終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;canskip=スキップできるかどうか\ntrue を指定するとクリックで BGM 再生の終了待ちをスキップできます, 論理値
[macro name="wl"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[レイヤ操作] 自動移動の終了待ち
;;自動移動の終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;canskip=スキップできるかどうか\ntrue を指定するとクリックで自動移動の終了待ちをスキップできます, 論理値
[macro name="wm"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオピリオドイベント待ち
;;ピリオドイベントを待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;for=イベントの種類\n待つイベントの種類を指定します, loop;period;prepare;segLoop
[macro name="wp"]
[kagtag cond=%cond slot=%slot for=%for]
[endmacro]

;;[システム操作] 画面揺らしの終了待ち
;;quake タグで開始した画面揺らしの終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;canskip=スキップできるかどうか\ntrue を指定するとクリックでトランジションの終了待ちをスキップできます, 論理値
[macro name="wq"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[効果音・BGM・ビデオ操作] 効果音再生の終了待ち
;;効果音再生の終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;buf=効果音バッファ番号\n再生終了を待つバッファを指定します, 効果音バッファ番号
;;canskip=スキップできるか\n効果音再生をマウスのクリックでスキップできるかを指定します, 論理値
[macro name="ws"]
[kagtag cond=%cond buf=%buf canskip=%canskip]
[endmacro]

;;[レイヤ操作] トランジションの終了待ち
;;トランジションの終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;canskip=スキップできるかどうか\ntrue を指定するとクリックでトランジションの終了待ちをスキップできます, 論理値
[macro name="wt"]
[kagtag cond=%cond canskip=%canskip]
[endmacro]

;;[効果音・BGM・ビデオ操作] ビデオ再生の終了待ち
;;ビデオ再生の終了や、preparevideo タグによる再生準備の完了、videoevent タグによるピリオドイベントを待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;slot=ムービーオブジェクト番号\nこの操作を行うムービーオブジェクト番号を指定します, ムービーオブジェクト番号
;;canskip=スキップできるか\nビデオ再生をマウスのクリックでスキップできるかを指定します, 論理値
[macro name="wv"]
[kagtag cond=%cond slot=%slot canskip=%canskip]
[endmacro]

;;[効果音・BGM・ビデオ操作] BGM を入れ替える
;;BGM を入れ替えます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;storage=[必須] BGM ファイル名\n次に再生する BGM ファイル名または CD トラックを指定します, BGMファイル名
;;loop=ループするか\nBGM をループするかを指定します, 論理値
;;time=[必須] フェード時間\n指定した時間で現在の曲のフェードアウトが行われた後、同じ時間で指定した曲のフェードインが行われます, ミリ秒時間
;;overlap=オーバーラップ時間\noverlap に時間を設定すると、その時間分、フェードアウトとフェードインの時間が重なります, ミリ秒時間
;;volume=次の曲の音量\n次の曲のフェード後に到達させる BGM の音量を % で指定します, パーセント値
[macro name="xchgbgm"]
[kagtag cond=%cond storage=%storage loop=%loop time=%time overlap=%overlap volume=%volume]
[endmacro]

