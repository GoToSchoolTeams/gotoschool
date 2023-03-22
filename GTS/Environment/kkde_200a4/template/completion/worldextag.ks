;;[KAGEXワールド拡張 命令拡張] 画面全体トランジションセット
;;画面全体へのトランジションを実行を開始します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;trans=トランジション名指定\nトランジション名を指定します, トランジションWORLDEX
;;fade=フェード指定ショートカット\nフェード指定のショートカットを表します, 論理値
[macro name="begintrans"]
[kagtag cond=%cond delayrun=%delayrun trans=%trans fade=%fade]
[endmacro]

;;[KAGEXワールド拡張 命令拡張] 画面全体トランジション開始
;;画面全体へのトランジションを実行を開始します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;trans=トランジション名指定\nトランジション名を指定します, トランジションWORLDEX
;;fade=フェード指定ショートカット\nフェード指定のショートカットを表します, 論理値
[macro name="endtrans"]
[kagtag cond=%cond delayrun=%delayrun trans=%trans fade=%fade]
[endmacro]

;;[KAGEXワールド拡張 命令拡張] メッセージ窓消去
;;メッセージ窓を消去します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;trans=トランジション名指定\nトランジション名を指定します, トランジションWORLDEX
;;fade=フェード指定\nフェードを指定します, 論理値
;;nofade=自動フェード抑制\n自動フェードを抑制します, 論理値
[macro name="msgoff"]
[kagtag cond=%cond delayrun=%delayrun trans=%trans fade=%fade nofade=%nofade]
[endmacro]

;;[KAGEXワールド拡張 命令拡張] メッセージ窓表示
;;メッセージ窓を表示します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;trans=トランジション名指定\nトランジション名を指定します, トランジションWORLDEX
;;fade=フェード指定\nフェードを指定します, 論理値
[macro name="msgon"]
[kagtag cond=%cond delayrun=%delayrun trans=%trans fade=%fade]
[endmacro]

;;[KAGEXワールド拡張 命令拡張] 画面全消去
;;画面の全消去処理を行います（舞台、イベント絵、キャラクタ、環境レイヤ、メッセージ窓を消去します）
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;trans=トランジション名指定\nトランジション名を指定します, トランジションWORLDEX
;;fade=フェード指定\nフェードを指定します, 論理値
[macro name="clear"]
[kagtag cond=%cond delayrun=%delayrun trans=%trans fade=%fade]
[endmacro]

;;[KAGEXワールド拡張 環境レイヤオブジェクト操作] 新規環境レイヤオブジェクト生成
;;新規に環境レイヤオブジェクトを生成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=識別名\nレイヤの識別名を指定します, 任意文字列
;;origin=表示レイヤ原点\n表示レイヤ原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;vorign=表示画面原点\n表示画面原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;front=重なり順変更\n重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\n重なり順を同じレベル内での一番下にします, 論理値
;;level=表示レベル\n表示レベルを指定します, レベルWORLDEX
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
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
;;width=画像横幅サイズ指定\n画像横幅サイズを指定する, 1以上の値
;;height=画像サイズ指定\n画像縦幅サイズを指定する, 1以上の値
;;file=画像ファイル名\n画像読み込みファイル名を指定する, 画像ファイル名
;;noflag=既読フラグ無効\n読み込み時に既読フラグを立てない, 論理値
;;color=色指定\n色を指定する（0xAARRGGBB）, ARGB値
;;movie=動画指定\n動画ファイルを指定する, ムービーファイル名
;;loop=動画ループ指定\n動画をループさせる, 論理値
;;alpha=動画アルファ指定\n動画アルファ指定（0:αなし 1:α画像（縦配置) 2:α画像（横配置））, 0;1;2
;;tile=タイル画像指定\nタイル画像を指定します（指定されたサイズで画面がしきつめられます）, 画像ファイル名
;;copy=別レイヤの属性を複製\n別レイヤの属性を複製する, 前景レイヤ
[macro name="newlay"]
[kagtag cond=%cond delayrun=%delayrun name=%name origin=%origin vorign=%vorign front=%front back=%back level=%level type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera tilex=%tilex tiley=%tiley fire=%fire firecolor=%firecolor firegamma=%firegamma firelayer=%firelayer firewidth=%firewidth fireheight=%fireheight fireleft=%fireleft firetop=%firetop firemargin=%firemargin forceh=%forceh forcev=%forcev boundRangeH=%boundRangeH boundRangeV=%boundRangeV scalingCoeff=%scalingCoeff numOfBlurForCoolMap=%numOfBlurForCoolMap textureFilterType=%textureFilterType coolRange=%coolRange coolStrength=%coolStrength coolParticleDensityDenominator=%coolParticleDensityDenominator coolParticleDensityNumerator=%coolParticleDensityNumerator edgeSmoothing=%edgeSmoothing width=%width height=%height file=%file noflag=%noflag color=%color movie=%movie loop=%loop alpha=%alpha tile=%tile copy=%copy]
[endmacro]

;;[KAGEXワールド拡張 環境レイヤオブジェクト操作] 新規環境レイヤオブジェクト生成
;;新規に環境レイヤオブジェクトを生成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=識別名\nレイヤの識別名を指定します, 任意文字列
;;origin=表示レイヤ原点\n表示レイヤ原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;vorign=表示画面原点\n表示画面原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;front=重なり順変更\n重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\n重なり順を同じレベル内での一番下にします, 論理値
;;level=表示レベル\n表示レベルを指定します, レベルWORLDEX
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter  を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
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
;;width=画像横幅サイズ指定\n画像横幅サイズを指定する, 1以上の値
;;height=画像サイズ指定\n画像縦幅サイズを指定する, 1以上の値
;;file=画像ファイル名\n画像読み込みファイル名を指定する, 画像ファイル名
;;noflag=既読フラグ無効\n読み込み時に既読フラグを立てない, 論理値
;;color=色指定\n色を指定する（0xAARRGGBB）, ARGB値
;;movie=動画指定\n動画ファイルを指定する, ムービーファイル名
;;loop=動画ループ指定\n動画をループさせる, 論理値
;;alpha=動画アルファ指定\n動画アルファ指定（0:αなし 1:α画像（縦配置) 2:α画像（横配置））, 0;1;2
;;tile=タイル画像指定\nタイル画像を指定します（指定されたサイズで画面がしきつめられます）, 画像ファイル名
;;copy=別レイヤの属性を複製\n別レイヤの属性を複製する, 前景レイヤ
[macro name="newlayer"]
[kagtag cond=%cond delayrun=%delayrun name=%name origin=%origin vorign=%vorign front=%front back=%back level=%level type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera tilex=%tilex tiley=%tiley fire=%fire firecolor=%firecolor firegamma=%firegamma firelayer=%firelayer firewidth=%firewidth fireheight=%fireheight fireleft=%fireleft firetop=%firetop firemargin=%firemargin forceh=%forceh forcev=%forcev boundRangeH=%boundRangeH boundRangeV=%boundRangeV scalingCoeff=%scalingCoeff numOfBlurForCoolMap=%numOfBlurForCoolMap textureFilterType=%textureFilterType coolRange=%coolRange coolStrength=%coolStrength coolParticleDensityDenominator=%coolParticleDensityDenominator coolParticleDensityNumerator=%coolParticleDensityNumerator edgeSmoothing=%edgeSmoothing width=%width height=%height file=%file noflag=%noflag color=%color movie=%movie loop=%loop alpha=%alpha tile=%tile copy=%copy]
[endmacro]

;;[KAGEXワールド拡張 環境レイヤオブジェクト操作] 環境レイヤオブジェクト破棄
;;環境レイヤオブジェクトを破棄します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=識別名\nレイヤの識別名を指定します, 任意文字列
[macro name="dellay"]
[kagtag cond=%cond delayrun=%delayrun name=%name]
[endmacro]

;;[KAGEXワールド拡張 環境レイヤオブジェクト操作] 環境レイヤオブジェクト破棄
;;環境レイヤオブジェクトを破棄します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=識別名\nレイヤの識別名を指定します, 任意文字列
[macro name="dellayer"]
[kagtag cond=%cond delayrun=%delayrun name=%name]
[endmacro]

;;[KAGEXワールド拡張 環境レイヤオブジェクト操作] 環境レイヤオブジェクト
;;環境レイヤオブジェクトに対する命令として機能します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=識別名\nレイヤの識別名を指定します, 任意文字列
;;origin=表示レイヤ原点\n表示レイヤ原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;vorign=表示画面原点\n表示画面原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;front=重なり順変更\n重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\n重なり順を同じレベル内での一番下にします, 論理値
;;level=表示レベル\n表示レベルを指定します, レベルWORLDEX
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter  を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
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
;;width=画像横幅サイズ指定\n画像横幅サイズを指定する, 1以上の値
;;height=画像サイズ指定\n画像縦幅サイズを指定する, 1以上の値
;;file=画像ファイル名\n画像読み込みファイル名を指定する, 画像ファイル名
;;noflag=既読フラグ無効\n読み込み時に既読フラグを立てない, 論理値
;;color=色指定\n色を指定する（0xAARRGGBB）, ARGB値
;;movie=動画指定\n動画ファイルを指定する, ムービーファイル名
;;loop=動画ループ指定\n動画をループさせる, 論理値
;;alpha=動画アルファ指定\n動画アルファ指定（0:αなし 1:α画像（縦配置) 2:α画像（横配置））, 0;1;2
;;tile=タイル画像指定\nタイル画像を指定します（指定されたサイズで画面がしきつめられます）, 画像ファイル名
;;copy=別レイヤの属性を複製\n別レイヤの属性を複製する, 前景レイヤ
[macro name="layer"]
[kagtag cond=%cond delayrun=%delayrun name=%name origin=%origin vorign=%vorign front=%front back=%back level=%level type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera tilex=%tilex tiley=%tiley fire=%fire firecolor=%firecolor firegamma=%firegamma firelayer=%firelayer firewidth=%firewidth fireheight=%fireheight fireleft=%fireleft firetop=%firetop firemargin=%firemargin forceh=%forceh forcev=%forcev boundRangeH=%boundRangeH boundRangeV=%boundRangeV scalingCoeff=%scalingCoeff numOfBlurForCoolMap=%numOfBlurForCoolMap textureFilterType=%textureFilterType coolRange=%coolRange coolStrength=%coolStrength coolParticleDensityDenominator=%coolParticleDensityDenominator coolParticleDensityNumerator=%coolParticleDensityNumerator edgeSmoothing=%edgeSmoothing width=%width height=%height file=%file noflag=%noflag color=%color movie=%movie loop=%loop alpha=%alpha tile=%tile copy=%copy]
[endmacro]

;;[KAGEXワールド拡張 環境キャラクタオブジェクト操作] 新規環境キャラクタオブジェクト生成
;;新規に環境キャラクタオブジェクトを生成します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=キャラクタ名\nキャラクタ名を指定します, 任意文字列
;;initname=初期化名\n初期化名を指定します, キャラクタ名前WORLDEX
;;pose=姿勢\nキャラクタのポーズを指定します, キャラクタ姿勢WORLDEX
;;dress=服装\nポーズの服装のバリエーションなどを指定します, キャラクタ服装WORLDEX
;;face=表情\nポーズの表情バリエーションを指定します, キャラクタ表情WORLDEX
;;image=画像直接指定\nキャラクタの立ち絵画像を直接指定します, 画像ファイル名
;;pos=位置\n立ち絵を表示する位置を指定します（初期化指定有効）, ポジションWORLDEX
;;front=重なり順変更\nキャラクタ立ち絵の重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\nキャラクタ立ち絵の重なり順を同じレベル内での一番下にします, 論理値
;;level=レベル\n表示レベルを指定します（pos指定とは別に専用で指定可能), レベルWORLDEX
;;voice=ボイス\n次に鳴らすボイスを指定します, 任意文字列;0以上の値;ignore
;;once=一回再生\n数値指定で１回再生にわりこみます（文字列扱いになる）, 0以上の値
;;incvoice=カウントアップ\n文字列指定の時にも数値カウンタをあげる, 論理値
;;noincvoice=カウントアップしない\n数値カウントをあげない（incvoice より強い指定）, 論理値
;;clearvoice=ボイス再生停止\n次からボイス再生を停止します（初期状態に戻す）, 論理値
;;nextvoice=同時ボイス指定\n指定すると次のほかのキャラのボイス再生と同時にボイス再生します, 任意文字列
;;playvoice=直接再生\n指定したボイスを直接再生します, 任意文字列
;;waitvoice=スキップ指定\n再生中のボイスの終了を待ちます, 論理値
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
;;facewin=表情を窓に表示\n表情を窓に表示する, 論理値
;;faceon=表情描画\n表情を描画する, 論理値
;;faceoff=表情消去\n表情を表示しない, 論理値
;;stopvoice=ボイス停止\nボイス再生を強制停止します, 論理値
;;bvoice=裏ボイス指定\n裏でループ再生されるボイスを指定します（空文字を指定すると停止します）, 任意文字列
;;loop=ボイスループ再生\nボイスをループ再生します, 論理値
[macro name="newchar"]
[kagtag cond=%cond delayrun=%delayrun name=%name initname=%initname pose=%pose dress=%dress face=%face image=%image pos=%pos front=%front back=%back level=%level voice=%voice once=%once incvoice=%incvoice noincvoice=%noincvoice clearvoice=%clearvoice nextvoice=%nextvoice playvoice=%playvoice waitvoice=%waitvoice type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera facewin=%facewin faceon=%faceon faceoff=%faceoff stopvoice=%stopvoice bvoice=%bvoice loop=%loop]
[endmacro]

;;[KAGEXワールド拡張 環境キャラクタオブジェクト操作] 環境キャラクタオブジェクト破棄
;;環境キャラクタオブジェクトを破棄します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=キャラクタ名\nキャラクタ名を指定します, 任意文字列
[macro name="delchar"]
[kagtag cond=%cond delayrun=%delayrun name=%name]
[endmacro]

;;[KAGEXワールド拡張 環境キャラクタオブジェクト操作] 環境キャラクタオブジェクト
;;環境キャラクタオブジェクトに対する命令として機能します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=名前\nキャラクタ名を指定します, キャラクタ名前WORLDEX
;;pose=姿勢\nキャラクタのポーズを指定します, キャラクタ姿勢WORLDEX
;;dress=服装\nポーズの服装のバリエーションなどを指定します, キャラクタ服装WORLDEX
;;face=表情\nポーズの表情バリエーションを指定します, キャラクタ表情WORLDEX
;;image=画像直接指定\nキャラクタの立ち絵画像を直接指定します, 画像ファイル名
;;pos=位置\n立ち絵を表示する位置を指定します（初期化指定有効）, ポジションWORLDEX
;;front=重なり順変更\nキャラクタ立ち絵の重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\nキャラクタ立ち絵の重なり順を同じレベル内での一番下にします, 論理値
;;level=レベル\n表示レベルを指定します（pos指定とは別に専用で指定可能), レベルWORLDEX
;;voice=ボイス\n次に鳴らすボイスを指定します, 任意文字列;0以上の値;ignore
;;once=一回再生\n数値指定で１回再生にわりこみます（文字列扱いになる）, 0以上の値
;;incvoice=カウントアップ\n文字列指定の時にも数値カウンタをあげる, 論理値
;;noincvoice=カウントアップしない\n数値カウントをあげない（incvoice より強い指定）, 論理値
;;clearvoice=ボイス再生停止\n次からボイス再生を停止します（初期状態に戻す）, 論理値
;;nextvoice=同時ボイス指定\n指定すると次のほかのキャラのボイス再生と同時にボイス再生します, 任意文字列
;;playvoice=直接再生\n指定したボイスを直接再生します, 任意文字列
;;waitvoice=スキップ指定\n再生中のボイスの終了を待ちます, 論理値
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter  を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
;;facewin=表情を窓に表示\n表情を窓に表示する, 論理値
;;faceon=表情描画\n表情を描画する, 論理値
;;faceoff=表情消去\n表情を表示しない, 論理値
;;stopvoice=ボイス停止\nボイス再生を強制停止します, 論理値
;;bvoice=裏ボイス指定\n裏でループ再生されるボイスを指定します（空文字を指定すると停止します）, 任意文字列
;;loop=ボイスループ再生\nボイスをループ再生します, 論理値
[macro name="char"]
[kagtag cond=%cond delayrun=%delayrun name=%name pose=%pose dress=%dress face=%face image=%image pos=%pos front=%front back=%back level=%level voice=%voice once=%once incvoice=%incvoice noincvoice=%noincvoice clearvoice=%clearvoice nextvoice=%nextvoice playvoice=%playvoice waitvoice=%waitvoice type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera facewin=%facewin faceon=%faceon faceoff=%faceoff stopvoice=%stopvoice bvoice=%bvoice loop=%loop]
[endmacro]

;;[KAGEXワールド拡張 環境キャラクタオブジェクト操作] 全環境キャラクタオブジェクト
;;全キャラに対して同じ命令を実行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;poscond=実行場所\n指定された場所にいるキャラにのみ実行します, ポジションWORLDEX
;;pos=位置\n立ち絵を表示する位置を指定します（初期化指定有効）, ポジションWORLDEX
;;front=重なり順変更\nキャラクタ立ち絵の重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\nキャラクタ立ち絵の重なり順を同じレベル内での一番下にします, 論理値
;;level=レベル\n表示レベルを指定します（pos指定とは別に専用で指定可能), レベルWORLDEX
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter  を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
;;facewin=表情を窓に表示\n表情を窓に表示する, 論理値
;;faceon=表情描画\n表情を描画する, 論理値
;;faceoff=表情消去\n表情を表示しない, 論理値
[macro name="allchar"]
[kagtag cond=%cond delayrun=%delayrun poscond=%poscond pos=%pos front=%front back=%back level=%level type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera facewin=%facewin faceon=%faceon faceoff=%faceoff]
[endmacro]

;;[KAGEXワールド拡張 環境レイヤオブジェクト操作] 全環境レイヤオブジェクト
;;全レイヤに対して同じ命令を実行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;origin=表示レイヤ原点\n表示レイヤ原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;vorign=表示画面原点\n表示画面原点（左上すみから時計まわりに 123456789(9は中央)）, 1;2;3;4;5;6;7;8;9
;;front=重なり順変更\n重なり順を同じレベル内での一番上にします, 論理値
;;back=重なり順変更\n重なり順を同じレベル内での一番下にします, 論理値
;;level=表示レベル\n表示レベルを指定します, レベルWORLDEX
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter  を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
[macro name="alllayer"]
[kagtag cond=%cond delayrun=%delayrun origin=%origin vorign=%vorign front=%front back=%back level=%level type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera]
[endmacro]

;;[KAGEXワールド拡張 SEオブジェクト操作] 全SEオブジェクト
;;全SEに対して同じ命令を実行します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;loop=ループ指定\nループを行うかどうかを指定します（省略するとfalse）, 論理値
;;time=フェードイン時間\nフェードイン時間を指定します, ミリ秒時間
;;stop=SE停止\nSE の停止を行います（数値指定した場合はフェードアウト）, ミリ秒時間
;;fade=SE音量制御\nSE の音量を制御します（指定した音量になる）, パーセント値
[macro name="allse"]
[kagtag cond=%cond delayrun=%delayrun loop=%loop time=%time stop=%stop fade=%fade]
[endmacro]

;;[KAGEXワールド拡張 環境オブジェクト操作] 環境オブジェクト
;;環境オブジェクトに対する命令として機能します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;init=状態初期化\n状態を初期化します, 論理値
;;stage=舞台名\n舞台名を指定します, 舞台名WORLDEX
;;stime=舞台時間\n舞台の時間名を指定します, 舞台時間WORLDEX
;;hide=舞台非表示\n舞台を非表示にします, 論理値
;;hideevent=イベント絵非表示\nイベント絵を非表示にします, 論理値
;;hidebase=舞台・イベント絵非表示\n舞台とイベント絵を非表示にします, 論理値
;;hidecharacters=環境キャラクタ非表示\n環境キャラクタをすべて非表示にします, 論理値
;;hidelayers=環境レイヤ非表示\n環境レイヤをすべて非表示にします, 論理値
;;hidefore=環境レイヤ・キャラクタ非表示\n環境キャラクタ/レイヤをすべて非表示にします, 論理値
;;hideall=全て非表示\n舞台・イベント絵・環境キャラクタ/レイヤを非表示にします, 論理値
;;colorall=色指定全体適用\n環境の grayscale/rgamma/ggamma/bgamma の指定を全オブジェクト対して適用します, 論理値
;;nostopbgm=BGM継続\ninit時にBGMを継続させます, 論理値
;;hidechars=環境キャラクタ非表示\n環境キャラクタをすべて非表示にします, 論理値
;;shiftx=画面全体のシフト量X\n画面全体のシフト量Xを指定します（time,accel,nowait有効）, 0以上の値
;;shifty=画面全体のシフト量Y\n画面全体のシフト量Yを指定します（time,accel,nowait有効）, 0以上の値
;;camerax=カメラの位置指定X\nカメラの位置指定Xを指定します（time,accel,nowait有効）, 0以上の値
;;cameray=カメラの位置指定Y\nカメラの位置指定Yを指定します（time,accel,nowait有効）, 0以上の値
;;camerazoom=カメラのズーム指定\nカメラのズームを指定します（time,accel,nowait有効）, パーセント値
;;resetcamera=カメラの位置の初期化\nカメラの位置の初期化（time,accel,nowait有効）, 論理値
;;actioncamera=カメラアクションの指定\nカメラアクションの指定(actionコマンドと同等の指定), アクションWORLDEX
;;stopcamera=カメラアクションの停止\nカメラアクションの停止(stopactionと等価), 論理値
;;camerach=カメラ原点指定（キャラの顔）\n指定されたキャラの顔の位置をカメラ移動の原点とする（立ち絵で未定義の場合はエモーション原点が参照される）, キャラクタ名前WORLDEX
[macro name="env"]
[kagtag cond=%cond delayrun=%delayrun init=%init stage=%stage stime=%stime hide=%hide hideevent=%hideevent hidebase=%hidebase hidecharacters=%hidecharacters hidelayers=%hidelayers hidefore=%hidefore hideall=%hideall colorall=%colorall nostopbgm=%nostopbgm hidechars=%hidechars shiftx=%shiftx shifty=%shifty camerax=%camerax cameray=%cameray camerazoom=%camerazoom resetcamera=%resetcamera actioncamera=%actioncamera stopcamera=%stopcamera camerach=%camerach]
[endmacro]

;;[KAGEXワールド拡張 BGMオブジェクト操作] BGMオブジェクト
;;BGMオブジェクトに対する命令として機能します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;play=BGM再生ファイル\nBGM の再生するファイルを指定します, BGMファイル名
;;noxchg=BGM変更指定\n前のBGMをすぐ終了する, 論理値
;;time=フェードイン時間\nフェードインにかかる時間を指定します（playまたはfadeタグを指定した場合のみ有効）, ミリ秒時間
;;start=開始タグ指定\n開始タグを指定します, 任意文字列
;;paused=停止状態開始\n停止した状態で始めます（time を指定すると無効）, 論理値
;;intime=フェードイン時間\nフェードイン時間を指定します（time 指定している場合は無効）, ミリ秒時間
;;outtime=フェードアウト時間\n前のBGMのフェードアウト時間を指定します（time 指定している場合は無効）, ミリ秒時間
;;overlap=クロスフェード時間\n前のBGMフェードアウトから新BGMのフェードインまでの待ち時間, ミリ秒時間
;;stop=BGM停止\nBGMを停止します（数値指定した場合はフェードアウト）, ミリ秒時間
;;pause=BGM一時停止\nBGMを一時停止します（数値指定するとフェードアウト）, ミリ秒時間
;;resume=BGM再開\nBGMの再生を再開します, 論理値
;;fade=BGM音量制御\nBGMの音量制御を行います（指定した音量になる）, パーセント値
;;loop=ループ指定\nループを行うかどうかを指定します（省略すると true）, 論理値
[macro name="bgm"]
[kagtag cond=%cond delayrun=%delayrun play=%play noxchg=%noxchg time=%time start=%start paused=%paused intime=%intime outtime=%outtime overlap=%overlap stop=%stop pause=%pause resume=%resume fade=%fade loop=%loop]
[endmacro]

;;[KAGEXワールド拡張 SEオブジェクト操作] SEオブジェクト
;;SEオブジェクトの操作を行います
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;play=SE再生ファイル\nSE を再生するファイルを指定します, 効果音ファイル名
;;loop=ループ指定\nループを行うかどうかを指定します（省略するとfalse）, 論理値
;;time=フェードイン時間\nフェードイン時間を指定します, ミリ秒時間
;;stop=SE停止\nSE の停止を行います（数値指定した場合はフェードアウト）, ミリ秒時間
;;fade=SE音量制御\nSE の音量を制御します（指定した音量になる）, パーセント値
;;buf=処理対象バッファ指定\n処理対象バッファを指定します, 効果音バッファ番号
[macro name="se"]
[kagtag cond=%cond delayrun=%delayrun play=%play loop=%loop time=%time stop=%stop fade=%fade buf=%buf]
[endmacro]

;;[KAGEXワールド拡張 背景レイヤオブジェクト操作] 背景レイヤオブジェクト
;;背景レイヤオブジェクト（環境オブジェクト）に対する命令を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
[macro name="stage"]
[kagtag cond=%cond delayrun=%delayrun type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera]
[endmacro]

;;[KAGEXワールド拡張 背景レイヤオブジェクト操作] 背景レイヤオブジェクト
;;背景レイヤオブジェクト（環境オブジェクト）に対する命令を指定します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
[macro name="bg"]
[kagtag cond=%cond delayrun=%delayrun type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera]
[endmacro]

;;[KAGEXワールド拡張 イベントレイヤオブジェクト操作] イベントレイヤオブジェクト
;;イベントレイヤオブジェクトに対する命令として機能します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;file=画像ファイル\nイベント絵として表示する画像を指定します, 画像ファイル名
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
[macro name="event"]
[kagtag cond=%cond delayrun=%delayrun file=%file type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera]
[endmacro]

;;[KAGEXワールド拡張 イベントレイヤオブジェクト操作] イベントレイヤオブジェクト
;;イベントレイヤオブジェクトに対する命令として機能します
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;file=画像ファイル\nイベント絵として表示する画像を指定します, 画像ファイル名
;;type=合成モード\n合成モードを指定します, 合成モード
;;opacity=不透明度\n不透明度を指定します（初期化・相対指定有効）, 256値
;;rotate=回転角度\n回転角度を指定します（初期化・相対指定有効）, 0以上の値
;;zoom=拡大率\n拡大率（初期化・相対指定有効）, パーセント値
;;afx=原点X座標\n回転・拡大の原点指定X座標を指定します, center;left;right;0以上の値
;;afy=原点Y座標\n回転・拡大の原点指定Y座標を指定します, center;top;bottom;0以上の値
;;reset=表示状態初期化\n表示状態の初期化を行います, 論理値
;;xpos=X位置指定\nX位置を指定します（初期化・相対指定有効）, 0以上の値
;;ypos=Y位置指定\nY位置を指定します（初期化・相対指定有効）, 0以上の値
;;time=動作時間\n動作時間を指定します（opacity/rotate/zoom/xpos/ypos などに作用します）, ミリ秒時間
;;accel=アクション追加パラメーター\nアクション指定の追加パラメータを指定します（負:減速 0:線形 1:加速）, -1;0;1
;;action=アクション名\nアクション名を指定します, アクションWORLDEX
;;trans=トランジション名指定\nトランジション名を指定します, 
;;stopaction=アクション強制停止\nアクションを強制的に停止します, 論理値
;;stoptrans=トランジション強制停止\nトランジションを強制的に停止します, 論理値
;;sync=アクション/トランジションの同期指定\nアクション/トランジションの同期を行うように指定します, 論理値
;;nosync=アクション/トランジションの非同期指定\nアクション/トランジションを非同期で動作するように指定します, 論理値
;;nowait=アクション/トランジションの強制同期の回避\nアクション/トランジションの強制同期の回避を指定します, 論理値
;;show=表示状態（表示）\n表示を行います（visible=true と等価）, 論理値
;;hide=表示状態（非表示）\n非表示にします（visible=false と等価）, 論理値
;;fade=フェード\nフェードを行います（表示するときはフェードイン、非表示にするときはフェードアウトを行います）, ミリ秒時間
;;grayscale=グレースケール\nグレースケールにするかどうかの指定を行います（true にするとロードされた画像の表示がグレースケールになります）, 論理値
;;rgamma=ガンマ補正（赤)\nロードされた画像のガンマ補正を行います（赤）, 実数値
;;ggamma=ガンマ補正（緑)\nロードされた画像のガンマ補正を行います（緑）, 実数値
;;bgamma=ガンマ補正（青)\nロードされた画像のガンマ補正を行います（青）, 実数値
;;resetcolor=色指定初期化\ntype,noise,grayscale,rgamma,ggamma,bgamma,contrast, brightness, hue, saturation, luminance, blurx,blury,filter を初期化します, 論理値
;;orx=表示原点指定X座標\n表示原点指定X座標を指定する, center;left;right;0以上の値
;;ory=表示原点指定Y座標\n表示原点指定Y座標を指定する, center;top;bottom;0以上の値
;;notrans=トランジション無効指定\nトランジション無効指定, 論理値
;;waitmovie=レイヤムービー再生待ち\nレイヤムービー再生待ちを行う, 論理値
;;waitanim=レイヤアニメ再生待ち\nレイヤアニメ再生待ちを行う, 論理値
;;script=関数呼び出し\nenvscript.tjs で定義されたファンクションを呼び出して画像加工します（カンマ区切りで最初のパラメータが関数名、残りは引数になります）, 任意文字列
;;noise=ノイズ処理\n画像にノイズ処理を行います（0～255）, 256値
;;contrast=コントラスト補正\n画像のコントラストを補正します（-100～100）, -100～100の値
;;brightness=明度補正\n画像の明度を補正します（-255～255）, -255～255の値
;;hue=色相補正\n画像の色相を補正します（-180～180(度)）, -180～180の値
;;saturation=彩度補正\n画像の彩度を補正します（-100～100(%)）, -100～100の値
;;luminance=輝度補正\n画像の輝度を補正します（-100～100(%)）, -100～100の値
;;filter=色マスクフィルタ\n画像に色マスクでフィルタをかけます（0xAARRGGBB、合成モード）, ARGB値;合成モード
;;blurx=ボックスブラーX量\nボックスブラーX量を指定します, 0以上の値
;;blury=ボックスブラーY量\nボックスブラーY量を指定します, 0以上の値
;;blur=ボックスブラーXY同時指定\nボックスブラーXY同時指定を行います, 0以上の値
;;raster=ラスタースクロール効果の振幅\nラスタースクロール効果の振幅を指定します, 実数値
;;rasterlines=ラスタースクロール効果の上下ライン数の範囲\nラスタースクロール効果の上下ライン数の範囲を指定します, 1以上の値
;;rastercycle=ラスタースクロール効果の波の表示周期\nラスタースクロール効果の波の表示周期を指定します, 1以上の値
;;resetpos=位置関連初期化\nxpos, ypos, rotate, zoom, afx, afy, raster の初期化を行う, 論理値
;;noshift=シフト対象除外\nカメラ機能のシフト処理対象からはずします(生成時指定), 論理値
;;nocamera=カメラ処理対象除外\nカメラ機能のカメラ処理対象からはずします(生成時指定), 論理値
[macro name="ev"]
[kagtag cond=%cond delayrun=%delayrun file=%file type=%type opacity=%opacity rotate=%rotate zoom=%zoom afx=%afx afy=%afy reset=%reset xpos=%xpos ypos=%ypos time=%time accel=%accel action=%action trans=%trans stopaction=%stopaction stoptrans=%stoptrans sync=%sync nosync=%nosync nowait=%nowait show=%show hide=%hide fade=%fade grayscale=%grayscale rgamma=%rgamma ggamma=%ggamma bgamma=%bgamma resetcolor=%resetcolor orx=%orx ory=%ory notrans=%notrans waitmovie=%waitmovie waitanim=%waitanim script=%script noise=%noise contrast=%contrast brightness=%brightness hue=%hue saturation=%saturation luminance=%luminance filter=%filter blurx=%blurx blury=%blury blur=%blur raster=%raster rasterlines=%rasterlines rastercycle=%rastercycle resetpos=%resetpos noshift=%noshift nocamera=%nocamera]
[endmacro]

;;[KAGEXワールド拡張 ボイス操作] 現在のボイスをログ表示
;;現在のボイスをログに表示する
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="showvoiceinfo"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

;;[KAGEXワールド拡張 ボイス操作] ボイスラベル待ち
;;メッセージ表示開始からの時間またはボイス中のラベルを待ちます｡基本的には delayrun 指定と組み合わせて使うことになります
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
;;name=ボイスラベル指定\nボイスラベルを指定する, 任意文字列
;;time=待ち時間指定\n待ち時間を指定する, ミリ秒時間
[macro name="twait"]
[kagtag cond=%cond delayrun=%delayrun name=%name time=%time]
[endmacro]

;;[KAGEXワールド拡張 ボイス操作] 現在のボイス待ち情報ログ表示
;;現在のボイス待ち情報をログに表示する
;;cond=TJS式評価\n式を評価した結果が真の時のみにそのタグが実行されます, TJS式
;;delayrun=遅延実行パラメーター指定\n遅延実行を行うパラメーターを指定します（数値を指定すると指定したミリ秒後に実行され、文字列を指定するとBGM/SEの該当するラベルのタイミングで実行されます）。, ミリ秒時間;vl1;vl2;vl3;任意文字列
[macro name="showtwait"]
[kagtag cond=%cond delayrun=%delayrun]
[endmacro]

