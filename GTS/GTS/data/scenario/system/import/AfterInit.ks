;既読未読スキップのプラグイン
;『sf.skipall』変数を『true』にした時に未読のテキストもスキップするようになります.

[iscript]

//書き換えるので前の関数を保存
kag.getCurrentRead_org = kag.getCurrentRead;
kag.getCurrentRead = function(){
// sf.skipall が true なら未読もスキップします
if(sf.skipall) return true;
// 書き換える前の関数を実行する
return kag.getCurrentRead_org();
} incontextof kag;

[endscript]

[return]
