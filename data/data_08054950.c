#include "global.h"
#include "data_08054950.h"


/* Options Menu */


// Erase ALL data?
//　　　　　　　Erase
//　　　　　　　Cancel
const char D_08054950[] =
    "\x02\x33" "\x01\x33" "\x01\x43" "ホントに消すの？\n"
    "\x02\x31" "\x01\x31" "\x01\x4c" "　　　　　　　はい\n"
    "　　　　　　　いいえ";

// Clear Save Data
// Erase progress, gifts, drum lessons,
// <everything>! Think about it!
const char D_08054998[] =
    "\x02\x33" "\x01\x33" "\x01\x43" "データのクリア\n"
    "\x02\x31" "\x01\x31" "\x01\x4c" "いままでの記録を全部けして、はじめから\n"
    "やりなおします。よく考えてネ！";

// Sound Mode
// <Stereo>  For headphones, Nintendo DS, etc.
// <Mono>  For GBAs without headphones.
const char D_080549fc[] =
    "\x02\x33" "\x01\x33" "\x01\x43" "サウンドモード\n"
    "\x02\x31" "\x01\x31" "\x01\x4c" "ステレオ　　ヘッドホンならこっち！オススメ！\n"
    "モノラル　　本体のスピーカーならこっち。";


/* Perfect Certificate */


//
const char D_08054a70[] = "";

// You can read it
// in your e-mail. There are still
const char D_08054a74[] = "（リズム資料室で　見れるヨ）\n";

// You can play it
// in the studio. There are still
const char D_08054a94[] = "（スタジオで　たたけるヨ）\n";

// You can listen to
// it in the studio. There are now
const char D_08054ab0[] = "（スタジオで　きけるヨ） \n";

//
const char D_08054acc[] = "\x02\x31" "\x01\x31" "\x01\x43" "\x03\x30" "\x01\x73" "\x05\x34" "\x01\x38" "「";

//
const char D_08054ae0[] = "」";

//
const char D_08054ae4[] = "の曲";

// You've earned a gift!
const char D_08054aec[] = "\x02\x30" "\x01\x30" "をプレゼント！\n";

//
const char D_08054b00[] = "プレゼントは　あと　" "\x02\x31" "\x01\x31";

// gifts
// left to get. Keep going!
const char D_08054b1c[] = "コ" "\x02\x30" "\x01\x30" "　あるから、\n"
    "他のキャンペーンにもチャレンジしてみてネ！";

// 0 gifts left.
// You finally got them all!
const char D_08054b5c[] = "プレゼントは　これで" "\x02\x31" "\x01\x31" "オシマイ" "\x02\x30" "\x01\x30" "です。\n";

// Congratulations!
const char D_08054b88[] = "パーフェクトキャンペーン、コンプリートです！";


/* Results */


// A lot of stuff here is not translated

const char D_08054bb8[] =
    "う～ん…";

const char D_08054bc4[] =
    "もう一歩。";

const char D_08054bd0[] =
    "人並みです。";

const char D_08054be0[] =
    "かなり良いです！";

const char D_08054bf4[] =
    "最高レベルです！！";

const char D_08054c08[] =
    ":1.2Ｓ";

const char D_08054c10[] =
    ":1.6Ａ";

const char D_08054c18[] =
    ":1.4Ｂ";

const char D_08054c20[] =
    ":1.5Ｃ";

const char D_08054c28[] =
    ":1.1Ｄ";

const char D_08054c30[] =
    "なっとくの　せいかくさ";

const char D_08054c48[] =
    "リズムかん　バッチシさ";

const char D_08054c60[] =
    "プロから　みた　ピッタシさ";

// Reflexes
const char D_08054c7c[] =
    "あたまの　かいてん　スピード";

// Adaptability
const char D_08054c9c[] =
    "てきおう　のうりょく";

// Technique Level
const char D_08054cb4[] =
    "テクニック　レベル";

// Steadiness
const char D_08054cc8[] =
    "てがたい　かんじ";

const char D_08054cdc[] =
    "ここ　イッパツ";

// Responsibility
const char D_08054cec[] =
    "せきにんかん";

const char D_08054cfc[] =
    "ほどほどの　せいかくさ";

const char D_08054d14[] =
    "いっぱんてき　バッチシど";

const char D_08054d30[] =
    "シロートめの　ピッタシさ";

const char D_08054d4c[] =
    "おちつき";

const char D_08054d58[] =
    "ごうりてき　さいのう";

const char D_08054d70[] =
    "せつやく　のうりょく";

const char D_08054d88[] =
    "いっかんせい　みたいなもの";

const char D_08054da4[] =
    "リズムの　しん";

const char D_08054db4[] =
    "あんていの　ほど";

const char D_08054dc8[] =
    "まえむきな　しせい";

const char D_08054ddc[] =
    "どうたい　しりょく";

const char D_08054df0[] =
    "やるき";

const char D_08054df8[] =
    "ちゅういぶかさ";

const char D_08054e08[] =
    "じゅうなんせい";

const char D_08054e18[] =
    "りんきおうへん";

const char D_08054e28[] =
    "にんげんせい";

const char D_08054e38[] =
    "そだちの　よさ";

const char D_08054e48[] =
    "けつえきがた（すいそく）";

const char D_08054e64[] =
    "きのうの　やしょく";

const char D_08054e78[] =
    "あしたの　てんき";

const char D_08054e8c[] =
    "ことしの　きんせん　うん";

const char D_08054ea8[] =
    "らいねんの　れんあい　うん";

const char D_08054ec4[] =
    ":1＊＊＊＊:0　　さいてん　　:1＊＊＊＊";

const char D_08054eec[] =
    ".5:1Ｒ－ＩＱ　　.6:0";

const char D_08054f04[] =
    "あと、";

const char D_08054f0c[] =
    "また、";

const char D_08054f14[] =
    "";

const char D_08054f18[] =
    "…でも、";

const char D_08054f24[] =
    "しかも、";

const char D_08054f30[] =
    "さらに、";

const char D_08054f3c[] =
    "う～ん．．．";

const char D_08054f4c[] =
    "まぁまぁ、　かな。";

const char D_08054f60[] =
    "とりあえず．．．";

const char D_08054f74[] =
    "よしと　します。";
