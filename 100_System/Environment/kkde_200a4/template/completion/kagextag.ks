;;[KAGEXレイヤ拡張（拡張）] レイヤの属性
;;レイヤの属性を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;rotate=角度\n角度を指定する, 0以上の値
;;zoomx=横方向拡大率\n横方向拡大率を指定する, パーセント値
;;zoomy=縦方向拡大率\n縦方向拡大率を指定する, パーセント値
;;zoom=拡大率\n拡大率を指定する, パーセント値
;;afx=回転・拡大原点X座標\nレイヤの左上隅からの座標を指定する, 0以上の値;center;left;right
;;afy=回転・拡大原点Y座標\nレイヤの左上隅からの座標を指定する, 0以上の値;center;left;right
;;type=合成モード\n合成モードを指定する, 合成モード
;;reset=アクションと属性指定をすべて初期化する\nアクションと属性指定をすべて初期化する, 論理値
;;layer=[必須] 対象レイヤ\n対象となる前景レイヤまたはメッセージレイヤを指定します, 前景レイヤ;メッセージレイヤ
;;page=ページ\n表(fore)画面のレイヤを対象とするか、裏(back)画面のレイヤを対象とするかを指定します, レイヤーページ
;;visible=レイヤの可視・不可視\nlayer 属性で指定したレイヤを表示するか、しないかを指定します, 論理値
;;left=レイヤ左端位置\nlayer 属性で指定したレイヤの左端位置を指定します, 0以上の値
;;top=レイヤ上端位置\nlayer 属性で指定したレイヤの上端位置を指定します, 0以上の値
;;opacity=不透明度\nレイヤの不透明度を指定します, 256値
;;autohide=メッセージレイヤとともに隠すか\n前景レイヤ以外には指定しないでください, 論理値
;;index=重ね合わせ順序\n背景レイヤには指定しないでください, 1以上の値
;;tilex=タイル位置X\nタイル位置Xを指定する, 0以上の値
;;tiley=タイル位置Y\nタイル位置Yを指定する, 0以上の値
;;fire=炎エフェクト種画像指定\n炎エフェクト種画像を指定する（color, storage, tile, movie があると無効）, 画像ファイル名
;;firecolor=炎エフェクトカラー指定\n炎エフェクトカラー指定を指定します, RGB値
;;firegamma=炎エフェクトガンマ値\nfirecolor で直接色指定した場合、それのα値の変動を線形でなくする場合に指定します, 実数値
;;firelayer=炎の色マップ画像\n256×1 サイズのレイヤで炎の色マップ画像を直接指定します, 画像ファイル名
;;firewidth=炎エフェクト領域横幅\n炎エフェクト領域の横幅を指定する, 1以上の値
;;fireheight=炎エフェクト領域縦幅\n炎エフェクト領域縦幅を指定する, 1以上の値
;;fireleft=炎エフェクト種画像の横方向位置\n炎エフェクト種画像の横方向位置を指定する, 0以上の値
;;firetop=炎エフェクト種画像の縦方向位置\n炎エフェクト種画像の縦方向位置を指定する, 0以上の値
;;firemargin=炎エフェクト画像領域マージン\n炎エフェクト画像領域を前後左右に指定したサイズ分だけ拡張する, 1以上の値
;;forceh=横方向フォース指定\n横方向フォース指定を指定する（-8～8）, -1;-2;-3;-4;-5;-6;-7;-8;1;2;3;4;5;6;7;8
;;forcev=縦方向フォース指定\n縦方向フォース指定を指定する（-8～8）, -1;-2;-3;-4;-5;-6;-7;-8;1;2;3;4;5;6;7;8
;;boundRangeH=横方向バウンドレンジ\n横方向バウンドレンジを指定する（指定できる範囲は0～16）, 1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16
;;boundRangeV=縦方向バウンドレンジ\n縦方向バウンドレンジを指定する（指定できる範囲は0～16）, 1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16
;;scalingCoeff=スケーリング係数\nスケーリング係数を指定する（0～0.01）, 実数値
;;numOfBlurForCoolMap=ブラー適用回数\nブラー適用回数を指定する（0～）, 0以上の値
;;textureFilterType=テクスチャフィルタ\nテクスチャフィルタを指定する（0:ニアレスネイバー, 1:バイリニア）, 0;-1
;;coolRange=強さの振れ幅\n炎エフェクト強さの振れ幅を設定する（0～255）, 256値
;;coolStrength=強さ\n炎エフェクト強さ（0～255）, 256値
;;coolParticleDensityDenominator=冷却粒子濃度分母\n炎エフェクト冷却粒子濃度分母を指定する（0以下）, 実数値
;;coolParticleDensityNumerator=冷却粒子濃度分子\n炎エフェクト冷却粒子濃度分子を指定する（0以下）, 実数値
;;edgeSmoothing=炎の端を目立ちにくくするかどうか\n炎の端を目立ちにくくするかどうかを指定する, 論理値
;;time=移動時間\n移動する時間を指定する, ミリ秒時間
;;accel=移動のアクセラレーション\n移動のアクセラレーションを指定する（-1～1）, -1;0;1
;;nowait=待ち処理時にキャンセルしない\n待ち処理時にキャンセルしない, 論理値
;;raster=ラスタースクロールの振幅量\nラスタースクロールの振幅量を指定する, 実数値
;;rasterlines=ラスタースクロールの行数\nラスタースクロールの行数を指定する, 1以上の値
;;rastercycle=ラスタースクロールの周期\nラスタースクロールの周期を指定する, 1以上の値
[macro name="layopt"]
[kagtag cond=%cond delayrun=%delayrun rotate=%rotate zoomx=%zoomx zoomy=%zoomy zoom=%zoom afx=%afx afy=%afy type=%type reset=%reset layer=%layer page=%page visible=%visible left=%left top=%top opacity=%opacity autohide=%autohide index=%index tilex=%tilex tiley=%tiley fire=%fire firecolor=%firecolor firegamma=%firegamma firelayer=%firelayer firewidth=%firewidth fireheight=%fireheight fireleft=%fireleft firetop=%firetop firemargin=%firemargin forceh=%forceh forcev=%forcev boundRangeH=%boundRangeH boundRangeV=%boundRangeV scalingCoeff=%scalingCoeff numOfBlurForCoolMap=%numOfBlurForCoolMap textureFilterType=%textureFilterType coolRange=%coolRange coolStrength=%coolStrength coolParticleDensityDenominator=%coolParticleDensityDenominator coolParticleDensityNumerator=%coolParticleDensityNumerator edgeSmoothing=%edgeSmoothing time=%time accel=%accel nowait=%nowait raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] 前景レイヤのレベル指定
;;前景レイヤの表示レベルを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=レイヤを指定\nレイヤを指定する(前景レイヤのみ), 前景レイヤ
;;page=表裏画面の指定\n表裏画面を指定する(省略時は fore), レイヤーページ
;;level=表示レベル\n表示レベル layfront/layback でのグルーピング対象を指定します, 0以上の値
[macro name="laylevel"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer page=%page level=%level]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] 前景レイヤの最前列移動
;;前景レイヤを同じ表示レベルの最前列に移動させます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=レイヤを指定\nレイヤを指定する(前景レイヤのみ), 前景レイヤ
;;page=表裏画面の指定\n表裏画面を指定する（省略するとfore）, レイヤーページ
[macro name="layfront"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer page=%page]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] 前景レイヤの最後列移動
;;前景レイヤを同じ表示レベルのレイヤの最後列に移動させます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=レイヤを指定\nレイヤを指定する(前景レイヤのみ), 前景レイヤ
;;page=表裏画面の指定\n表裏画面を指定する（省略するとfore）, レイヤーページ
[macro name="layback"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer page=%page]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] 全レイヤ消去
;;全レイヤの内容を消去して表示停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;page=表裏画面の指定\n表裏画面を指定する, レイヤーページ
[macro name="clearlayers"]
[kagtag cond=%cond delayrun=%delayrun page=%page]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] アクション駆動指定
;;前景レイヤに対して、レイヤに対する自動アクション駆動を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=レイヤを指定\nレイヤを指定する(前景レイヤのみ), 前景レイヤ
;;page=表裏画面の指定\n表裏画面を指定する, レイヤーページ
;;time=アクション実行時間\nアクションが実行される時間を指定する, ミリ秒時間
;;delay=アクション開始までの遅延時間\nアクション開始までの遅延時間を指定します, ミリ秒時間
;;module=アクションの種類（旧スタイル）\nアクションの種類を指定します（旧スタイル）, アクション
;;nowait=アクションに対するwaitを無効にする\nアクションに対する wait を無効にする (wact や wait のアクション解除処理に反応しなくなります), 論理値
;;start=初期値\n初期値を指定します（相対指定可能）, 0以上の値
;;value=終了値\n終了値を指定します（相対指定可能）, 0以上の値
;;accel=加減速指定\n加減速の方向を指定します（正：加速運動　０：線形　負：減速運動）, -1;0;1
;;vibration=振動量\n振動量を指定します（相対指定可能）, 0以上の値
;;offset=補正値\n補正値を指定します（相対指定可能）, 0以上の値
;;waittime=振動間の待ち時間\n振動間の待ち時間を指定します, ミリ秒時間
;;ontime=上昇時間\n上昇時間を指定します, ミリ秒時間
;;offtime=下降時間\n下降時間を指定します, ミリ秒時間
;;cycle=周期\n周期を指定します, ミリ秒時間
;;angvel=角速度\n角速度を指定します（度/sec) ※cycle指定時は無効, 0以上の値
;;distance=落下量\n落下量を指定します, 0以上の値
;;action=アクション名\nアクションを直接指定する(グローバルな辞書または配列の名前), アクションWORLDEX
[macro name="action"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer page=%page time=%time delay=%delay module=%module nowait=%nowait start=%start value=%value accel=%accel vibration=%vibration offset=%offset waittime=%waittime ontime=%ontime offtime=%offtime cycle=%cycle angvel=%angvel distance=%distance action=%action]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] アクション停止
;;指定されたレイヤのアクションを停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=レイヤの指定\nレイヤを指定する(前景レイヤのみ), 前景レイヤ
;;page=表裏画面の指定\n表裏画面を指定する, レイヤーページ
[macro name="stopaction"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer page=%page]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] アクション待ち
;;指定されたレイヤのアクションの終了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=レイヤの指定\nレイヤを指定する(前景レイヤのみ), 前景レイヤ
;;page=表裏画面の指定\n表裏画面を指定する, レイヤーページ
;;canskip=クリック待ちのスキップ\ntrue を指定するとクリックで待ちをスキップできます, 論理値
[macro name="wact"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer page=%page canskip=%canskip]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] 画面切り替え開始
;;レイヤを利用した画面切り替えを開始します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;type=[必須] 切り替え種別\n切り替え種別を指定します, レイヤ切り替え種別
;;time=切り替え時間\n切り替え時間を指定します（省略時は1000ms), ミリ秒時間
;;color=画面暗転色\n画面暗転に利用する色を指定します（省略時は黒）, RGB値
;;wait=[必須] 画面暗転後の待ち時間\n画面暗転後の待ち時間を指定します, RGB値
[macro name="ltbegin"]
[kagtag cond=%cond delayrun=%delayrun type=%type time=%time color=%color wait=%wait]
[endmacro]

;;[KAGEXレイヤ拡張（新規）] 画面切り替え終了
;;レイヤを利用した画面切り替えの終了
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;type=[必須] 切り替え種別\n切り替え種別を指定します, レイヤ切り替え種別
;;time=切り替え時間\n切り替え時間を指定します（省略時は1000ms), ミリ秒時間
;;color=画面暗転色\n画面暗転に利用する色を指定します（省略時は黒）, RGB値
;;wait=[必須] 画面暗転後の待ち時間\n画面暗転後の待ち時間を指定します, RGB値
[macro name="ltend"]
[kagtag cond=%cond delayrun=%delayrun type=%type time=%time color=%color wait=%wait]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] 改行ルール変更
;;KAG の改行に対するルールを切り替えます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;mode=切り替える改行モード\n切り替える改行モードを指定します, 改行モード
[macro name="linemode"]
[kagtag cond=%cond delayrun=%delayrun mode=%mode]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] ラインモード処理動作抑制
;;ラインモード処理における「改行文字(CR)」による動作を一回だけ抑制します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="nor"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] 特殊内部タグ
;;特殊内部タグでKAGEX では空の命令になっています
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="afterline"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] 特殊内部タグ
;;特殊内部タグでKAGEX では空の命令になっています
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="afterpage"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] 特殊内部タグ
;;特殊内部タグでKAGEX では空の命令になっています
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=[必須] 名前\n名前を指定します, 任意文字列
;;disp=[必須] 表示名\n表示名を指定します, 任意文字列
[macro name="dispname"]
[kagtag cond=%cond delayrun=%delayrun name=%name disp=%disp]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] lineモード時の改行挙動変更
;;line モードの名前表記【名前/表示名】の直後の改行の挙動を変更します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;mode=[必須] lineモードの改行挙動\nlineモードの改行挙動を指定します, 論理値
[macro name="craftername"]
[kagtag cond=%cond delayrun=%delayrun mode=%mode]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] 自動文字消去処理
;;[p] 直後に自動的に [er] 動作を行うかどうかを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;mode=[er]の挙動指定\n[p] 直後に自動的に [er] 動作を行うかどうかを指定します, 論理値
[macro name="erafterpage"]
[kagtag cond=%cond delayrun=%delayrun mode=%mode]
[endmacro]

;;[KAGEXメッセージ窓表示系拡張（新規）] 自動インデント処理
;;有効にすると、名前直後に “「”　または　“『”があった場合に自動的にインデント処理します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;mode=自動インデント挙動指定\n名前直後に “「”　または　“『”があった場合に自動的にインデント処理するかどうかを指定します, 論理値
[macro name="autoindent"]
[kagtag cond=%cond delayrun=%delayrun mode=%mode]
[endmacro]

;;[KAGEXメッセージ窓 UI 拡張（拡張）] グラフィカルボタン
;;現在のメッセージレイヤ上に link タグと同様にリンクを作成しますが、画像を用いたボタンを作成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=名前\nUIパーツの名前を指定する, 任意文字列
;;normal=通常時画像\n通常時画像のファイル名を指定する, 画像ファイル名
;;over=マウスオーバー時画像\nマウスオーバー時画像を指定する（省略時は normal と同じ）, 画像ファイル名
;;on=押し下げ時画像\n押し下げ時画像を指定する（省略時は over と同じ）, 画像ファイル名
;;focus=フォーカス時画像\nフォーカス時画像を指定する（省略時は on と同じ）, 画像ファイル名
;;animcount=ぱたぱたアニメパターン数\nぱたぱたアニメパターン数を指定する, 1以上の値
;;animtime=ぱたぱたアニメのインターバル時間\nぱたぱたアニメのインターバル時間を指定する, ミリ秒時間
;;graphic=[必須] ボタンにする画像\nボタンにする画像を指定します, 画像ファイル名
;;graphickey=画像のカラーキー\nボタンにする画像のカラーキーを指定します, RGB値;256値;adapt
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;recthit=矩形で当たり判定を行うかどうか\n矩形で当たり判定を行うかどうかを指定します, 論理値
;;exp=TJS式\nクリックされたときに実行される TJS式を指定します, TJS式
;;hint=ツールチップヒント\nリンクを選択し、マウスカーソルを静止させたときに表示されるツールチップヒントを指定します, 任意文字列
;;onenter=マウス進入時\nボタン内にマウスカーソルが入ってきたときに実行される TJS式を指定します, TJS式
;;onleave=マウス退出時\nボタン内からマウスカーソルが出ていった時に実行される TJS式を指定します, TJS式
;;countpage=このジャンプを「読んだ」と見なすか\nボタンを選択して他のラベルに移行するときに、このリンクのある場所のラベルを「読んだ」とみなすかどうかを指定します, 論理値
;;clickse=クリック時の効果音\nクリックされたときに再生する効果音を指定します, 効果音ファイル名
;;clicksebuf=クリック時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;enterse=マウス進入時の効果音\nマウスが進入したときに再生する効果音を指定します, 効果音ファイル名
;;entersebuf=マウス進入時の効果音のバッファ番号\nenterse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;leavese=マウス退出時の効果音\nマウスが退出したときに再生する効果音を指定します, 効果音ファイル名
;;leavesebuf=マウス退出時の効果音のバッファ番号\nleavese で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="button"]
[kagtag cond=%cond delayrun=%delayrun name=%name normal=%normal over=%over on=%on focus=%focus animcount=%animcount animtime=%animtime graphic=%graphic graphickey=%graphickey storage=%storage target=%target recthit=%recthit exp=%exp hint=%hint onenter=%onenter onleave=%onleave countpage=%countpage clickse=%clickse clicksebuf=%clicksebuf enterse=%enterse entersebuf=%entersebuf leavese=%leavese leavesebuf=%leavesebuf]
[endmacro]

;;[KAGEXメッセージ窓 UI 拡張（新規）] スライドバー
;;メッセージレイヤにスライドバーを配置します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=名前\nUIパーツの名前を指定する, 任意文字列
;;exp=commit 時の代入先\ncommit 時の代入先を指定します, TJS式
;;bgcolor=背景色\n背景の色を指定します, RGB値
;;opacity=背景の透明度\n背景の透明度を指定します, 256値
;;value=連動変数名\n連動変数名を指定します, TJS式
;;position=初期位置\n初期状態の時の位置を指定します, 0以上の値
;;onchange=変更値を代入する変数名\n変更値を代入する変数名を指定します, TJS式
;;onchangefunc=変更したとき呼び出される関数\n変更したとき呼び出される関数を指定します, TJS式
;;base=背景画像名\n背景画像名を指定します, 画像ファイル名
;;width=背景幅\n背景の幅を指定します, 1以上の値
;;height=背景高さ\n背景の高さを指定します, 1以上の値
;;tab=タブ画像（一括)\nタブ画像（normal / on / over の順で横に並んだ画像）を指定します, 画像ファイル名
;;normal=タブ画像通常（分離）\nタブ画像の通常時の画像を指定します, 画像ファイル名
;;over=タブ画像マウスオーバー（分離）\nタブ画像のマウスオーバーの画像を指定します, 画像ファイル名
;;on=タブ画像マウスダウン（分離）\nタブ画像のマウスダウンの画像を指定します, 画像ファイル名
;;nohighlicht=ハイライト状態\nハイライトを行わないかどうかを指定します（trueを指定するとハイライトを行わない）, 論理値
;;jumpmode=ジャンプモード\nジャンプモードかどうかを指定します（trueを指定するとスライダーのベースをクリック時にそこへ移動）, 論理値
[macro name="slider"]
[kagtag cond=%cond delayrun=%delayrun name=%name exp=%exp bgcolor=%bgcolor opacity=%opacity value=%value position=%position onchange=%onchange onchangefunc=%onchangefunc base=%base width=%width height=%height tab=%tab normal=%normal over=%over on=%on nohighlicht=%nohighlicht jumpmode=%jumpmode]
[endmacro]

;;[KAGEXメッセージ窓 UI 拡張（新規）] システムボタン
;;メッセージレイヤにシステムボタンを配置します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=名前\nUIパーツの名前を指定する, 任意文字列
;;normal=通常時画像\n通常時画像のファイル名を指定する, 画像ファイル名
;;over=マウスオーバー時画像\nマウスオーバー時画像を指定する（省略時は normal と同じ）, 画像ファイル名
;;on=押し下げ時画像\n押し下げ時画像を指定する（省略時は over と同じ）, 画像ファイル名
;;focus=フォーカス時画像\nフォーカス時画像を指定する（省略時は on と同じ）, 画像ファイル名
;;animcount=ぱたぱたアニメパターン数\nぱたぱたアニメパターン数を指定する, 1以上の値
;;animtime=ぱたぱたアニメのインターバル時間\nぱたぱたアニメのインターバル時間を指定する, ミリ秒時間
;;graphic=[必須] ボタンにする画像\nボタンにする画像を指定します, 画像ファイル名
;;graphickey=画像のカラーキー\nボタンにする画像のカラーキーを指定します, 0xRRGGBB 形式 または パレットインデックス番号 または "adapt"
;;storage=シナリオファイル名\nジャンプ先のシナリオファイルを指定します, シナリオファイル名
;;target=ラベル名\nジャンプ先のラベルを指定します, ラベル名
;;recthit=矩形で当たり判定を行うかどうか\n矩形で当たり判定を行うかどうかを指定します, true(デフォルト) または false
;;exp=TJS式\nクリックされたときに実行される TJS式を指定します, TJS式
;;hint=ツールチップヒント\nリンクを選択し、マウスカーソルを静止させたときに表示されるツールチップヒントを指定します, ヒントとして表示させる文字列
;;onenter=マウス進入時\nボタン内にマウスカーソルが入ってきたときに実行される TJS式を指定します, TJS式
;;onleave=マウス退出時\nボタン内からマウスカーソルが出ていった時に実行される TJS式を指定します, TJS式
;;countpage=このジャンプを「読んだ」と見なすか\nボタンを選択して他のラベルに移行するときに、このリンクのある場所のラベルを「読んだ」とみなすかどうかを指定します, true(デフォルト) または false
;;clickse=クリック時の効果音\nクリックされたときに再生する効果音を指定します, 効果音ファイル名
;;clicksebuf=クリック時の効果音のバッファ番号\nclickse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;enterse=マウス進入時の効果音\nマウスが進入したときに再生する効果音を指定します, 効果音ファイル名
;;entersebuf=マウス進入時の効果音のバッファ番号\nenterse で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
;;leavese=マウス退出時の効果音\nマウスが退出したときに再生する効果音を指定します, 効果音ファイル名
;;leavesebuf=マウス退出時の効果音のバッファ番号\nleavese で指定した効果音を鳴らす効果音バッファを指定します, 効果音バッファ番号
[macro name="sysbutton"]
[kagtag cond=%cond delayrun=%delayrun name=%name normal=%normal over=%over on=%on focus=%focus animcount=%animcount animtime=%animtime graphic=%graphic graphickey=%graphickey storage=%storage target=%target recthit=%recthit exp=%exp hint=%hint onenter=%onenter onleave=%onleave countpage=%countpage clickse=%clickse clicksebuf=%clicksebuf enterse=%enterse entersebuf=%entersebuf leavese=%leavese leavesebuf=%leavesebuf]
[endmacro]

;;[KAGEXメッセージ窓 UI 拡張（新規）] システムボタン消去
;;システムボタンを消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="csysbutton"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXメッセージ窓 UI 拡張（新規）] UI自動配置
;;ユーザインターフェース定義ファイルからデータを読み出してボタンなどのパーツを自動配置します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;page=ページ\n表裏画面を指定する, レイヤーページ
;;layer=対象メッセージレイヤ\n対象とするメッセージレイヤを指定します, メッセージレイヤ
;;storage=定義ファイル名\n読み出す定義ファイル名を指定します, 任意文字列
;;partremove=除外part対象\n除外part対象を指定します, 任意文字列
;;partexcept=指定以外除外part対象\n指定以外除外part対象を指定します, 任意文字列
[macro name="uiload"]
[kagtag cond=%cond delayrun=%delayrun page=%page layer=%layer storage=%storage partremove=%partremove partexcept=%partexcept]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] 選択肢用条件初期化
;;選択肢用条件を初期化します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;normal=通常時のボタン画像\n通常時のボタン画像を指定します, 画像ファイル名
;;over=マウスオーバー時の画像\nマウスオーバー時の画像を指定します, 画像ファイル名
;;left=ボタン配置領域左上位置\nボタン配置領域左上の位置を指定します, 0以上の値
;;top=ボタン配置領域右上位置\nボタン配置領域右上の位置を指定します, 0以上の値
;;width=ボタン配置領域サイズ\nボタン配置領域サイズの横幅を指定します, 1以上の値
;;height=ボタン配置領域サイズ\nボタン配置領域サイズの縦幅を指定します, 1以上の値
[macro name="selopt"]
[kagtag cond=%cond delayrun=%delayrun normal=%normal over=%over left=%left top=%top width=%width height=%height]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] 選択肢登録
;;選択肢を登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;text=表示するテキスト\n選択肢として表示するテキストを指定します, 任意文字列
;;storage=遷移先シナリオ\n選択した場合にジャンプする先のファイルを指定します, シナリオファイル名
;;target=遷移先ラベル\n選択した場合にジャンプする先のラベルを指定します, ラベル名
;;exp=選択した時に実行するコード\n選択した時に実行するコードを指定します, TJS式
;;eval=選択肢表示条件\n選択肢表示条件, TJS式
;;onceflag=一度きり表示用フラグ指定\n一度きり表示用フラグを指定します(自動的にONになる), TJS式
[macro name="seladd"]
[kagtag cond=%cond delayrun=%delayrun text=%text storage=%storage target=%target exp=%exp eval=%eval onceflag=%onceflag]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] 選択処理実行
;;選択に登録した処理を実行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;storage=合流先シナリオファイル名\n選択分岐のあと seldone コマンドで合流する先のファイルを指定する, シナリオファイル名
;;target=合流先ラベル名\n選択分岐のあと seldone コマンドで合流する先のラベルを指定指定する, ラベル名
[macro name="select"]
[kagtag cond=%cond delayrun=%delayrun storage=%storage target=%target]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] マップ選択肢初期化
;;マップ選択肢を初期化します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="mselinit"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] マップ選択ボタン登録
;;マップ選択用のボタンを登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;image=画像ファイル\n画像ファイルを指定します, 画像ファイル名
;;width=画像横幅\n画像横幅を指定します, 1以上の値
;;height=画像縦幅\n画像縦幅を指定します, 1以上の値
;;count=画像中のアニメパターン\n画像中のアニメパターンを指定します(heightと排他で省略可能), 1以上の値
[macro name="mselbutton"]
[kagtag cond=%cond delayrun=%delayrun image=%image width=%width height=%height count=%count]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] マップ選択ボタン配置登録
;;マップ選択用のボタンの配置位置を登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=位置の名前\n位置の名前を指定します, 任意文字列
;;left=X方向座標\nX方向座標を指定します, 0以上の値
;;top=Y方向座標\nY方向座標を指定します, 0以上の値
[macro name="mselpos"]
[kagtag cond=%cond delayrun=%delayrun name=%name left=%left top=%top]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] マップ選択肢登録
;;マップ選択肢を登録します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;text=表示するターゲット\n表示するターゲットを指定します(mselopt で登録した名前を指定します）, 任意文字列
;;pos=表示する位置\n表示する位置を指定します (mselpos で登録した名前を指定), 任意文字列
;;storage=遷移先シナリオ\n選択した場合に遷移するシナリオを指定します, シナリオファイル名
;;target=遷移先ラベル\n選択した場合に遷移するラベルを指定します, ラベル名
;;exp=選択した時に実行するコード\n選択した時に実行するコードを指定します, TJS式
[macro name="mseladd"]
[kagtag cond=%cond delayrun=%delayrun text=%text pos=%pos storage=%storage target=%target exp=%exp]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] マップ選択肢オプション指定
;;マップ選択肢用のオプションを指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;interval=配置選択肢のアニメーションのインターバル\n配置選択肢のアニメーションのインターバルを指定します, ミリ秒時間
;;buttonWidth=ボタン間の幅\nボタンを複数配置するときのボタン間の幅を指定します, =0;1;2;3;4;5;6;7;8;9
;;enterse=enter 時 SE\nenter 時 SEを指定します, 効果音ファイル名
;;leavese=leave 時 SE\nleave 時 SEを指定します, 効果音ファイル名
;;clickse=click 時 SE\nclick 時 SE を指定します, 効果音ファイル名
;;frame=背景画像\n背景画像を指定します, 画像ファイル名
;;frameKey=カラーキー\n背景画像のカラーキーを指定します, RGB値;256値;adapt
;;frameColor=カラー\n背景画像のカラーを指定します, RGB値
;;frameOpacity=透明度\n背景画像の透明度を指定します, 256値
[macro name="mselopt"]
[kagtag cond=%cond delayrun=%delayrun interval=%interval buttonWidth=%buttonWidth enterse=%enterse leavese=%leavese clickse=%clickse frame=%frame frameKey=%frameKey frameColor=%frameColor frameOpacity=%frameOpacity]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] マップ選択肢処理実行
;;マップ選択肢に登録した処理を実行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="mselect"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXシーン回想機能（新規）] 回想処理呼び出し
;;回想処理を呼び出します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;no=回想番号\n回想番号を指定します, 0以上の値
;;storage=遷移先シナリオ\n回想用の遷移先シナリオを指定します, シナリオファイル名
;;target=遷移先ラベル名\n回想用の遷移先ラベル名を指定します, ラベル名
;;doneStorage=回想終了後遷移先シナリオ\n回想終了後に遷移する先のシナリオを指定します, シナリオファイル名
;;doneTarget=回想終了後遷移先ラベル\n回想終了後に遷移する先のラベル名を指定します, ラベル名
[macro name="recollection"]
[kagtag cond=%cond delayrun=%delayrun no=%no storage=%storage target=%target doneStorage=%doneStorage doneTarget=%doneTarget]
[endmacro]

;;[KAGEXシーン回想機能（新規）] 回想処理終了
;;回想処理を終了させます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="endrecollection"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXシーン回想機能（新規）] 回想処理強制終了
;;回想処理を強制終了します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="stoprecollection"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXシーン回想機能（新規）] プレイ時間情報消去
;;プレイ時間情報を消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="clearplaytime"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXその他命令拡張（拡張）] コンソールへ値の出力
;;exp で示された式を評価し、結果をコンソールに出力します（配列や辞書を渡した場合に個別の要素の情報が表示されます）
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;exp=[必須] TJS式\n評価する TJS式を指定します, TJS式
[macro name="trace"]
[kagtag cond=%cond delayrun=%delayrun exp=%exp]
[endmacro]

;;[KAGEXその他命令拡張（拡張）] 特殊スキップ処理開始
;;クリックされた場合に endskip まで強制スキップ処理します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="beginskip"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXその他命令拡張（新規）] 強制スキップ処理停止
;;特殊スキップモードを強制的に停止します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="endskip"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX制御系拡張（新規）] 実行遅延を強制実行
;;実行が遅延しているコマンドをすべて強制実行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="delaydone"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX制御系拡張（新規）] 実行遅延をキャンセル
;;実行が遅延しているコマンドをすべてキャンセルします
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="delaycancel"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX制御系拡張（新規）] 実行遅延待ち
;;実行遅延を待つ
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=[必須] 待ちラベル\nBGM/SEの待ちラベル, 任意文字列
;;canskip=スキップ可能かどうか\nスキップ可能かどうかを指定する（スキップ可能なときはtrue）, 論理値
[macro name="wd"]
[kagtag cond=%cond delayrun=%delayrun name=%name canskip=%canskip]
[endmacro]

;;[KAGEX制御系拡張（新規）] 遅延実行ラベル登録
;;遅延実行ラベル登録
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;label_name=[必須] 遅延実行するラベル名\n遅延実行するラベル名を遅延時間と一緒に登録します（例：[td tien=1000]）, 任意文字列
[macro name="td"]
[kagtag cond=%cond delayrun=%delayrun label_name=%label_name]
[endmacro]

;;[KAGEX制御系拡張（拡張）] ウェイトを入れる
;;ウェイトを入れます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;time=[必須] 時間\nウェイトをミリ秒で指定します, ミリ秒時間
;;mode=ウェイトの方式\nウェイトの方式を指定します, normal;until
;;canskip=スキップできるか\nこのウェイトを、マウスのクリックやキーボードでスキップできるかを指定します, 論理値
;;trans=キャンセル時にトランジション解除\n待ちがキャンセルされたときにトランジションを解除する, 論理値
;;action=キャンセル時にアクション解除\n待ちがキャンセルされたときにアクションを解除する, 論理値
[macro name="wait"]
[kagtag cond=%cond delayrun=%delayrun time=%time mode=%mode canskip=%canskip trans=%trans action=%action]
[endmacro]

;;[KAGEX制御系拡張（新規）] wait タグの mode="until" と等価機能
;;機能的には wait タグの mode="until" パラメータと等価（ただし、一度でもクリックされると、resetwait の時間原点をクリアしてそれ以降の waituntil を無効化します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="waituntil"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX制御系拡張（新規）] コマンド実行時の時間原点からの差分ログ表示
;;テスト用コマンドでコマンド実行時の時間原点からの差分をログ表示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="showwait"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX制御系拡張（新規）] 変数を設定する
;;変数を設定する
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=[必須] 変数名\n変数名を指定する（例：tf.flag1）, 任意文字列
;;value=[必須] 変数に格納する値\n変数に格納する値(文字列扱い), 任意文字列
[macro name="set"]
[kagtag cond=%cond delayrun=%delayrun name=%name value=%value]
[endmacro]

;;[KAGEX制御系拡張（新規）] TJS関数呼び出し
;;TJS関数を呼び出す
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=[必須] グローバル関数名\nグローバル関数名を指定する, 任意文字列
;;args=関数に渡すパラメーター\nパラメータが辞書として関数の第一引数に渡ります（ただしパラメーターはすべて文字列, 任意文字列
[macro name="func"]
[kagtag cond=%cond delayrun=%delayrun name=%name args=%args]
[endmacro]

;;[KAGEXレイヤ拡張（拡張）] 画像の読み込み
;;画像を読み込みます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
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
;;color=塗りつぶし色\n塗りつぶし色を指定します（storage, tile, movie 属性とは排他です）, RGB値
;;width=塗りつぶし時サイズ横幅\n塗りつぶし時サイズ横幅を指定します, 1以上の値
;;height=塗りつぶし時サイズ縦幅\n塗りつぶし時サイズ縦幅を指定します, 1以上の値
;;tile=タイル敷き詰めを行う画像ファイル指定\n画像タイル敷き詰めファイル名を指定します（color, storageがあると無効）, 画像ファイル名
;;movie=動画再生指定\n動画再生を指定します（color, storage, tile があると無効）, ムービーファイル名
;;loop=動画がループ再生するかどうかを指定\n動画がループ再生するかどうかを指定します（movie属性の指定が行われている必要があります）, 論理値
;;alpha=動画α値設定\n動画のα値設定を指定します（0:通常の動画、1:α動画, 0;1;2
;;rotate=回転角度\n回転角度を指定します, 回転角度
;;zoomx=横方向拡大率\n横方向拡大率を指定する, パーセント値
;;zoomy=縦方向拡大率\n縦方向拡大率を指定します, パーセント値
;;zoom=拡大率\n拡大率を指定します, パーセント値
;;afx=回転・拡大原点X座標\n回転・拡大原点X座標を指定する, 0以上の値
;;afy=回転・拡大原点Y座標\n回転・拡大原点Y座標を指定する, 0以上の値
;;dafx=afxのデフォルト値\nafx のデフォルトを指定する(リセットでこの値に戻ります), 0以上の値
;;dafy=afyのデフォルト値\nafy のデフォルトを指定する(リセットでこの値に戻ります), 0以上の値
;;type=合成モード\n合成モードを指定する, 合成モード
;;reset=アクション・属性指定の初期化\nアクションと属性指定をすべて初期化する（opacity と type は画像ロード時のものに初期化されます）, 論理値
;;tilex=タイル位置X\nタイル位置Xを指定する, 0以上の値
;;tiley=タイル位置Y\nタイル位置Yを指定する, 0以上の値
;;fire=炎エフェクト種画像指定\n炎エフェクト種画像を指定する（color, storage, tile, movie があると無効）, 画像ファイル名
;;firecolor=炎エフェクトカラー指定\n炎エフェクトカラー指定を指定します, RGB値
;;firegamma=炎エフェクトガンマ値\nfirecolor で直接色指定した場合、それのα値の変動を線形でなくする場合に指定します, 実数値
;;firelayer=炎の色マップ画像\n256×1 サイズのレイヤで炎の色マップ画像を直接指定します, 画像ファイル名
;;firewidth=炎エフェクト領域横幅\n炎エフェクト領域の横幅を指定する, 1以上の値
;;fireheight=炎エフェクト領域縦幅\n炎エフェクト領域縦幅を指定する, 1以上の値
;;fireleft=炎エフェクト種画像の横方向位置\n炎エフェクト種画像の横方向位置を指定する, 0以上の値
;;firetop=炎エフェクト種画像の縦方向位置\n炎エフェクト種画像の縦方向位置を指定する, 0以上の値
;;firemargin=炎エフェクト画像領域マージン\n炎エフェクト画像領域を前後左右に指定したサイズ分だけ拡張する, 1以上の値
;;forceh=横方向フォース指定\n横方向フォース指定を指定する（-8～8）, -1;-2;-3;-4;-5;-6;-7;-8;1;2;3;4;5;6;7;8
;;forcev=縦方向フォース指定\n縦方向フォース指定を指定する（-8～8）, -1;-2;-3;-4;-5;-6;-7;-8;1;2;3;4;5;6;7;8
;;boundRangeH=横方向バウンドレンジ\n横方向バウンドレンジを指定する（指定できる範囲は0～16）, 1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16
;;boundRangeV=縦方向バウンドレンジ\n縦方向バウンドレンジを指定する（指定できる範囲は0～16）, 1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16
;;scalingCoeff=スケーリング係数\nスケーリング係数を指定する（0～0.01）, 実数値
;;numOfBlurForCoolMap=ブラー適用回数\nブラー適用回数を指定する（0～）, 0以上の値
;;textureFilterType=テクスチャフィルタ\nテクスチャフィルタを指定する（0:ニアレスネイバー, 1:バイリニア）, 0;-1
;;coolRange=強さの振れ幅\n炎エフェクト強さの振れ幅を設定する（0～255）, 256値
;;coolStrength=強さ\n炎エフェクト強さ（0～255）, 256値
;;coolParticleDensityDenominator=冷却粒子濃度分母\n炎エフェクト冷却粒子濃度分母を指定する（0以下）, 実数値
;;coolParticleDensityNumerator=冷却粒子濃度分子\n炎エフェクト冷却粒子濃度分子を指定する（0以下）, 実数値
;;edgeSmoothing=炎の端を目立ちにくくするかどうか\n炎の端を目立ちにくくするかどうかを指定する, 論理値
[macro name="image"]
[kagtag cond=%cond delayrun=%delayrun storage=%storage layer=%layer page=%page key=%key mode=%mode grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma rfloor=%rfloor gfloor=%gfloor bfloor=%bfloor rceil=%rceil gceil=%gceil bceil=%bceil mcolor=%mcolor mopacity=%mopacity clipleft=%clipleft cliptop=%cliptop clipwidth=%clipwidth clipheight=%clipheight flipud=%flipud fliplr=%fliplr visible=%visible left=%left top=%top pos=%pos opacity=%opacity mapimage=%mapimage mapaction=%mapaction index=%index color=%color width=%width height=%height tile=%tile movie=%movie loop=%loop alpha=%alpha rotate=%rotate zoomx=%zoomx zoomy=%zoomy zoom=%zoom afx=%afx afy=%afy dafx=%dafx dafy=%dafy type=%type reset=%reset tilex=%tilex tiley=%tiley fire=%fire firecolor=%firecolor firegamma=%firegamma firelayer=%firelayer firewidth=%firewidth fireheight=%fireheight fireleft=%fireleft firetop=%firetop firemargin=%firemargin forceh=%forceh forcev=%forcev boundRangeH=%boundRangeH boundRangeV=%boundRangeV scalingCoeff=%scalingCoeff numOfBlurForCoolMap=%numOfBlurForCoolMap textureFilterType=%textureFilterType coolRange=%coolRange coolStrength=%coolStrength coolParticleDensityDenominator=%coolParticleDensityDenominator coolParticleDensityNumerator=%coolParticleDensityNumerator edgeSmoothing=%edgeSmoothing]
[endmacro]

;;[KAGEXレイヤ拡張（拡張）] 前景レイヤの動画再生完了待ち
;;layer パラメータを指定すると、前景レイヤの動画再生完了を待ちます
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;layer=動画再生中のレイヤ\n動画再生中のレイヤを指定する（"all" だと全レイヤムービーを待つ）, 背景レイヤ;all
;;canskip=スキップ可能かどうか\nスキップ可能かどうか（スキップ可能なら true を指定する）, 論理値
[macro name="wv"]
[kagtag cond=%cond delayrun=%delayrun layer=%layer canskip=%canskip]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] 選択後合流処理
;;選択後合流処理を指定します（seladd で足した選択肢で storage/target を指定した場合に、このコマンドがあると、select で指定した storage/target に合流します）
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="seldone"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] シーン内分岐を登録
;;シーン内分岐を登録します（select 系と同じスタイルで記述するために準備されてます）
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;target=[必須] 分岐時のラベル名\n分岐する場合にジャンプする先のラベル指定, ラベル名
;;exp=分岐時の実行コード\n分岐した時に実行するコードを指定する, TJS式
;;eval=分岐条件\n分岐条件を指定します, TJS式
[macro name="bradd"]
[kagtag cond=%cond delayrun=%delayrun target=%target exp=%exp eval=%eval]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] 分岐実行
;;分岐実行を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;target=[必須] ラベル名\n選択分岐のあと brdone コマンドで合流する先のラベル名を指定します, ラベル名
[macro name="branch"]
[kagtag cond=%cond delayrun=%delayrun target=%target]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] 分岐後合流処理
;;分岐後合流処理を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="brdone"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEX選択肢機能拡張（新規）] ジャンプ機能（jumpタグと等価）
;;機能的には jump と等価ですが既読カウンタのアップ処理を含むので、基本はこちらを使ってください
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;storage=ジャンプする先のファイル指定\nジャンプする先のファイル名を指定します, シナリオファイル名
;;target=ジャンプする先のラベル指定\nジャンプする先のラベル名を指定します, ラベル名
;;eval=分岐条件\n分岐条件を指定します, TJS式
[macro name="next"]
[kagtag cond=%cond delayrun=%delayrun storage=%storage target=%target eval=%eval]
[endmacro]

