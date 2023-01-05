#include "global.h"
#include "text.h"
#include "debug_text.h"


/* Debug Menu */


const char D_08059668[] = "＿";

// (Lots of stuff from here on isn't translated, but it's mostly game names anyway)
const char D_0805966c[] = "シーケンス　テスト";

const char D_08059680[] = "＊";

const char D_08059684[] = "１／１";

// Data Clear
const char D_0805968c[] = "データクリア";

const char D_0805969c[] = "エンディング（おまけから）";

const char D_080596b8[] = "エンディング（クリアご）";

const char D_080596d4[] = "Ｒ－ＩＱ　（おもちゃ）";

const char D_080596ec[] = "Ｒ－ＩＱ　（ドラムレッスン）";

const char D_0805970c[] = "Ｒ－ＩＱ　（ミニゲーム）";

const char D_08059728[] = "Ｒ－ＩＱ　（カウンセラー）";

const char D_08059744[] = "Ｒ－ＩＱ　（パーフェクト）";

const char D_08059760[] = "Ｒ－ＩＱ　（にゅうか）";

const char D_08059778[] = "Ｒ－ＩＱ　（リザルト４）";

const char D_08059794[] = "Ｒ－ＩＱ　（リザルト３）";

const char D_080597b0[] = "Ｒ－ＩＱ　（リザルト２）";

const char D_080597cc[] = "Ｒ－ＩＱ　（リザルト）";

const char D_080597e4[] = "Ｒ－ＩＱ　（オプション）";

const char D_08059800[] = "Ｒ－ＩＱ　（スタジオ）";

const char D_08059818[] = "Ｒ－ＩＱ　（しりょうしつ）";

const char D_08059834[] = "Ｒ－ＩＱ　（ゲーム）";

const char D_0805984c[] = "Ｒ－ＩＱ　（メニュー）";

const char D_08059864[] = "Ｒ－ＩＱ　（タイトル）";

// Karate Man 2
const char D_0805987c[] = "カラテカ　２";

// Karate Man
const char D_0805988c[] = "カラテカ";

// The Snappy Trio
const char D_08059898[] = "バリバリ３にんしゅう";

// The Clappy Trio
const char D_080598b0[] = "パチパチ３にんしゅう";

const char D_080598c8[] = "ポリリズム　２";

const char D_080598d8[] = "ポリリズム";

const char D_080598e4[] = "ナイト　ウォーク　２";

const char D_080598fc[] = "ナイト　ウォーク";

const char D_08059910[] = "リズムだつもう　２";

const char D_08059924[] = "リズムだつもう";

const char D_08059934[] = "バイキン　はかせ";

const char D_08059948[] = "ホッピングロード　２";

const char D_08059960[] = "ホッピングロード";

const char D_08059974[] = "ニンジャ　２";

const char D_08059984[] = "ニンジャ";

const char D_08059990[] = "しろいおばけ　２";

const char D_080599a4[] = "しろいおばけ";

const char D_080599b4[] = "エアーバッター２";

const char D_080599c8[] = "エアーバッター";

const char D_080599d8[] = "いあいぎり";

const char D_080599e4[] = "スーパータップ";

const char D_080599f4[] = "タップダンズ";

const char D_08059a04[] = "うま（スピード）";

const char D_08059a18[] = "マーチャ　２";

const char D_08059a28[] = "マーチャ";

const char D_08059a34[] = "まほうつかい";

const char D_08059a44[] = "ダンスレッスン　１";

const char D_08059a58[] = "ウサギとび";

const char D_08059a64[] = "メトロノーム";

const char D_08059a74[] = "ハナビ";

const char D_08059a7c[] = "フラッシュメモリテスト";

const char D_08059a94[] = "こっそりラット";

const char D_08059aa4[] = "リズム　おしゅうじ";

const char D_08059ab8[] = "ドラムガールズ";

const char D_08059ac8[] = "トスボーイズ　２";

const char D_08059adc[] = "トスボーイズ";

// Tram and Pauline
const char D_08059aec[] = "トランとポリン";

// Opening (A Type)
const char D_08059afc[] = "オープニング　（Ａ　Ｔｙｐｅ）";

// Opening (B Type)
const char D_08059b1c[] = "オープニング　（Ｂ　Ｔｙｐｅ）";

const char D_08059b3c[] = "ＲＩＱデータチェック";

// Showtime
const char D_08059b54[] = "ショータイム";

const char D_08059b64[] = "コスモダンス";

const char D_08059b74[] = "スペースダンス";

const char D_08059b84[] = "ラップ　ウィメン（ｂｙ　ＫＡＺＵ）";

const char D_08059ba8[] = "ラップ　ウィメン（ｂｙ　ＹＯＮＥ）";

// Rap Men
const char D_08059bcc[] = "ラップメン";

// Quiz Show
const char D_08059bd8[] = "クイズ";

// Text
const char D_08059be0[] = "テキスト";

// Check Machine (Total)
const char D_08059bec[] = "チェックマシン　（トータル）";

const char D_08059c0c[] = "チェックマシン　（トリッキー）";

const char D_08059c2c[] = "チェックマシン　（キューフ）";

// Check Machine (Click)
const char D_08059c4c[] = "チェックマシン　（クリック）";

const char D_08059c6c[] = "スタジオドラマー";

const char D_08059c80[] = "レッスン（じっせん８）";

const char D_08059c98[] = "レッスン（じっせん７）";

const char D_08059cb0[] = "レッスン（じっせん６）";

const char D_08059cc8[] = "レッスン（じっせん５）";

const char D_08059ce0[] = "レッスン（じっせん４）";

const char D_08059cf8[] = "レッスン（じっせん３）";

const char D_08059d10[] = "レッスン（じっせん２）";

const char D_08059d28[] = "レッスン（じっせん１）";

const char D_08059d40[] = "レッスン（スネアテクニック）";

const char D_08059d60[] = "レッスン（はやい８ビート）";

const char D_08059d7c[] = "レッスン（バスとスネア）";

const char D_08059d98[] = "レッスン（スネア）";

const char D_08059dac[] = "レッスン（ボッサ）";

const char D_08059dc0[] = "レッスン（デスコビート）";

const char D_08059ddc[] = "レッスン（キメパターン２）";

const char D_08059df8[] = "レッスン（キメパターン１）";

const char D_08059e14[] = "レッスン（ハード２）";

const char D_08059e2c[] = "レッスン（ハード１）";

const char D_08059e44[] = "レッスン（イージー）";

const char D_08059e5c[] = "こえマシン（ラップ）";

const char D_08059e74[] = "こえマシン（ラブ）";

const char D_08059e88[] = "こえマシン（ネコ）";

const char D_08059e9c[] = "ボンダンス";

const char D_08059ea8[] = "ぼんおどり";

const char D_08059eb4[] = "リミックス　１";

const char D_08059ec4[] = "リミックス　２";

const char D_08059ed4[] = "リミックス　３";

const char D_08059ee4[] = "リミックス　４";

const char D_08059ef4[] = "リミックス　５";

const char D_08059f04[] = "リミックス　６";

const char D_08059f14[] = "リミックス　７";

const char D_08059f24[] = "リミックス　８";

const char D_08059f34[] = "ウラおとこ";

const char D_08059f40[] = "マネキンこうじょう";

const char D_08059f54[] = "クイズ（スペシャル）";

const char D_08059f6c[] = "バイキン　はかせ　ＳＰ";

const char D_08059f84[] = "ライブ";

const char D_08059f8c[] = "／";
