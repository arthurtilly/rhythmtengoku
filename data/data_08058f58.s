.section .rodata
.syntax unified

.include "include/gba.inc"

@ 0x34 is actually 4 but byte escape characters suck ass
/* 08058f58 */
.asciz "\x04\x31\x34."
.balign 4, 0

@ Perfect
/* 08058f60 */
.asciz "パーフェクト"
.balign 4, 0

@ Superb
/* 08058f70 */
.asciz "ハイレベル"
.balign 4, 0

@ OK
/* 08058f7c */
.asciz "平凡"
.balign 4, 0

@ Try Again
/* 08058f84 */
.asciz "やりなおし"
.balign 4, 0

@ Cafe
/* 08058f90 */
.asciz "喫茶カウンセル"
.balign 4, 0

@ Game Select 2
/* 08058fa0 */
.asciz "ゲームセレクト２"
.balign 4, 0

@ Credits
/* 08058fb4 */
.asciz "スタッフクレジット"
.balign 4, 0

@ Introduction
/* 08058fc8 */
.asciz "オープニング"
.balign 4, 0

@ E-Mail
/* 08058fd8 */
.asciz "リズム資料室"
.balign 4, 0

@ Game Select
/* 08058fe8 */
.asciz "ゲームセレクト"
.balign 4, 0

@ Menu
/* 08058ff8 */
.asciz "メニュー"
.balign 4, 0

@ Title
/* 08059004 */
.asciz "タイトル"
.balign 4, 0

@ Remix 6
/* 08059010 */
.asciz "リミックス６"
.balign 4, 0

@ Remix 8
/* 08059020 */
.asciz "リミックス８"
.balign 4, 0

@ Remix 7
/* 08059030 */
.asciz "リミックス７"
.balign 4, 0

@ Fireworks
/* 08059040 */
.asciz "花火"
.balign 4, 0

@ Toss Boys
/* 08059048 */
.asciz "トスボーイズ"
.balign 4, 0

@ Bouncy Road
/* 08059058 */
.asciz "ホッピングロード"
.balign 4, 0

@ Polyrhythm
/* 0805906c */
.asciz "ポリリズム"
.balign 4, 0

@ Power Calligraphy
/* 08059078 */
.asciz "リズムお習字"
.balign 4, 0

@ Quiz Show
/* 08059088 */
.asciz "クイズ"
.balign 4, 0

@ Tram & Pauline
/* 08059090 */
.asciz "トランとポリン"
.balign 4, 0

@ Bunny Hop
/* 080590a0 */
.asciz "ウサギとび"
.balign 4, 0

@ Showtime
/* 080590ac */
.asciz "ショータイム"
.balign 4, 0

@ Sick Beats
/* 080590bc */
.asciz "バイキンはかせ"
.balign 4, 0

@ Rat Race
/* 080590cc */
.asciz "こっそりラット"
.balign 4, 0

@ Samurai Slice
/* 080590dc */
.asciz "ゐあひ斬り"
.balign 4, 0

@ Sneaky Spirits
/* 080590e8 */
.asciz "しろいおばけ"
.balign 4, 0

@ Spaceball
/* 080590f8 */
.asciz "エアーバッター"
.balign 4, 0

@ Marching Orders
/* 08059108 */
.asciz "マーチャ"
.balign 4, 0

@ Wizard's Waltz
/* 08059114 */
.asciz "まほうつかい"
.balign 4, 0

@ Turbo Tap Trial
/* 08059124 */
.asciz "スーパータップ"
.balign 4, 0

@ The Snappy Trio
/* 08059134 */
.asciz "バリバリ三人衆"
.balign 4, 0

@ Rhythm Tweezers
/* 08059144 */
.asciz "リズム脱毛"
.balign 4, 0

@ Cosmic Dance
/* 08059150 */
.asciz "コスモダンス"
.balign 4, 0

@ The☆Bon Dance
/* 08059160 */
.asciz "ボンダンス"
.balign 4, 0

@ The☆Bon-Odori
/* 0805916c */
.asciz "ザ☆ぼんおどり"
.balign 4, 0

@ Night Walk
/* 0805917c */
.asciz "ナイトウォーク"
.balign 4, 0

@ WISH Can't Wait...
/* 0805918c */
.asciz "WISH 君を待て…"
.balign 4, 0

@ WISH Can't Wait For You
/* 0805919c */
.asciz "WISH 君を待てなくて"
.balign 4, 0

@ Love's Honey Swe...
/* 080591b0 */
.asciz "恋のハニースイ～…"
.balign 4, 0

@ Love's Honey Sweet Angel
/* 080591c4 */
.asciz "恋のハニースイ～トエンジェル"
.balign 4, 0

@ Space Dance
/* 080591e4 */
.asciz "スペースダンス"
.balign 4, 0

@ Tap Trial
/* 080591f4 */
.asciz "タップダンズ"
.balign 4, 0

@ The Clappy Trio
/* 08059204 */
.asciz "パチパチ三人衆"
.balign 4, 0

@ Karate Man
/* 08059214 */
.asciz "カラテ家"
.balign 4, 0

@ Silence
/* 08059220 */
.asciz "サイレント"
.balign 4, 0

@ Samurai Drum
/* 0805922c */
.asciz "さむらいドラム"
.balign 4, 0

@ Air-Cutter Drum
/* 0805923c */
.asciz "風切るドラム"
.balign 4, 0

@ Tap Drum
/* 0805924c */
.asciz "タップなドラム"
.balign 4, 0

@ Sound Effects Drum
/* 0805925c */
.asciz "音効なドラム"
.balign 4, 0

@ Heel Tech Drum 2
/* 0805926c */
.asciz "カカトテクなドラム ２"
.balign 4, 0

@ Heel Tech Drum 1
/* 08059284 */
.asciz "カカトテクなドラム １"
.balign 4, 0

@ Hi-hat Drum
/* 0805929c */
.asciz "ハットテクなドラム"
.balign 4, 0

@ Heavy Drum
/* 080592b0 */
.asciz "ハードなドラム"
.balign 4, 0

@ Light Drum
/* 080592c0 */
.asciz "ライトなドラム"
.balign 4, 0

@ Asian Drum
/* 080592d0 */
.asciz "アジアなドラム"
.balign 4, 0

@ Matte Drum
/* 080592e0 */
.asciz "マットなドラム"
.balign 4, 0

@ Techno Drum
/* 080592f0 */
.asciz "テクノなドラム"
.balign 4, 0

@ Power Drum
/* 08059300 */
.asciz "パワーなドラム"
.balign 4, 0

@ Dry Drum
/* 08059310 */
.asciz "ドライなドラム"
.balign 4, 0

@ Regular Drum
/* 08059320 */
.asciz "フツーなドラム"
.balign 4, 0

/* 08059330 */
.asciz ""
.balign 4, 0

/* 08059334 */
.asciz "\x04\x38."
.balign 4, 0

@ ???
/* 08059338 */
.asciz "？？？"
.balign 4, 0

@ There's not much memory left.
@ Perform anyway?
/* 08059340 */
.asciz "メモリが少なくなってきてます。
このまま演奏する？"
.balign 4, 0

@ You can only save 10 recitals.
@ Perform without saving?
/* 08059374 */
.asciz "演奏データは10コしか残せません。
データは残らないけど演奏する？"
.balign 4, 0

@ You can't save any more data.
@ Perform without saving?
/* 080593b4 */
.asciz "メモリがいっぱいです。
データは残らないけど演奏する？"
.balign 4, 0

@ Mark
/* 080593ec */
.asciz "チェック"
.balign 4, 0

@ Sort
/* 080593f8 */
.asciz "ならびかえ"
.balign 4, 0

@ Drum
/* 08059404 */
.asciz "ドラミング"
.balign 4, 0

@ Listen
/* 08059410 */
.asciz "リスニング"
.balign 4, 0

@ Erase Data
/* 0805941c */
.asciz "データ消去"
.balign 4, 0

/* 08059428 */
.asciz ""
.balign 4, 0

@ Not even one song has
@ a check mark on it.
/* 0805942c */
.asciz "チェックのついている曲が、
ひとつもありません。"
.balign 4, 0

@ In listening mode, only the songs
@ with a check mark will be played.
/* 0805945c */
.asciz "リスニングではチェックのある曲だけ再生します。　よろしいですか～？"
.balign 4, 0

@ You'll erase this performance
@ data! Is that really OK?
/* 080594a0 */
.asciz "この演奏データを削除するヨ！
ホントにOK？"
.balign 4, 0

@ Beat Box
/* 080594cc */
.asciz "ラップ マシーン"
.balign 4, 0

@ Love Machine
/* 080594dc */
.asciz "告白 マシーン"
.balign 4, 0

@ Mechanical Horse
/* 080594ec */
.asciz "うま マシーン"
.balign 4, 0

@ Meow Mixer
/* 080594fc */
.asciz "ネコ マシーン"
.balign 4, 0

@ Head Spinner
/* 0805950c */
.asciz "マネキン工場"
.balign 4, 0

@ Quiz Show EX
/* 0805951c */
.asciz "クイズ　スペシャル"
.balign 4, 0

@ Sick Beats EX
/* 08059530 */
.asciz "バイキンはかせＳＰ"
.balign 4, 0

@ Mr. Upbeat
/* 08059544 */
.asciz "ウラおとこ"
.balign 4, 0

@ Expert 2
/* 08059550 */
.asciz "ハイテク　２"
.balign 4, 0

@ Expert 1
/* 08059560 */
.asciz "ハイテク　１"
.balign 4, 0

@ Long 6
/* 08059570 */
.asciz "ロング　６"
.balign 4, 0

@ Long 5
/* 0805957c */
.asciz "ロング　５"
.balign 4, 0

@ Long 4
/* 08059588 */
.asciz "ロング　４"
.balign 4, 0

@ Long 3
/* 08059594 */
.asciz "ロング　３"
.balign 4, 0

@ Long 2
/* 080595a0 */
.asciz "ロング　２"
.balign 4, 0

@ Long 1
/* 080595ac */
.asciz "ロング　１"
.balign 4, 0

@ Short 9
/* 080595b8 */
.asciz "ショート　９"
.balign 4, 0

@ Short 8
/* 080595c8 */
.asciz "ショート　８"
.balign 4, 0

@ Short 7
/* 080595d8 */
.asciz "ショート　７"
.balign 4, 0

@ Short 6
/* 080595e8 */
.asciz "ショート　６"
.balign 4, 0

@ Short 5
/* 080595f8 */
.asciz "ショート　５"
.balign 4, 0

@ Short 4
/* 08059608 */
.asciz "ショート　４"
.balign 4, 0

@ Short 3
/* 08059618 */
.asciz "ショート　３"
.balign 4, 0

@ Short 2
/* 08059628 */
.asciz "ショート　２"
.balign 4, 0

@ Short 1
/* 08059638 */
.asciz "ショート　１"
.balign 4, 0

@ Basic 2
/* 08059648 */
.asciz "ベーシック　２"
.balign 4, 0

@ Basic 1
/* 08059658 */
.asciz "ベーシック　１"
.balign 4, 0

/* 08059668 */
.asciz "＿"
.balign 4, 0

@ (Lots of stuff from here on isnt translated, but is mostly game names anyway)
/* 0805966c */
.asciz "シーケンス　テスト"
.balign 4, 0

/* 08059680 */
.asciz "＊"
.balign 4, 0

/* 08059684 */
.asciz "１／１"
.balign 4, 0

@ Data Clear
/* 0805968c */
.asciz "データクリア"
.balign 4, 0

/* 0805969c */
.asciz "エンディング（おまけから）"
.balign 4, 0

/* 080596b8 */
.asciz "エンディング（クリアご）"
.balign 4, 0

/* 080596d4 */
.asciz "Ｒ－ＩＱ　（おもちゃ）"
.balign 4, 0

/* 080596ec */
.asciz "Ｒ－ＩＱ　（ドラムレッスン）"
.balign 4, 0

/* 0805970c */
.asciz "Ｒ－ＩＱ　（ミニゲーム）"
.balign 4, 0

/* 08059728 */
.asciz "Ｒ－ＩＱ　（カウンセラー）"
.balign 4, 0

/* 08059744 */
.asciz "Ｒ－ＩＱ　（パーフェクト）"
.balign 4, 0

/* 08059760 */
.asciz "Ｒ－ＩＱ　（にゅうか）"
.balign 4, 0

/* 08059778 */
.asciz "Ｒ－ＩＱ　（リザルト４）"
.balign 4, 0

/* 08059794 */
.asciz "Ｒ－ＩＱ　（リザルト３）"
.balign 4, 0

/* 080597b0 */
.asciz "Ｒ－ＩＱ　（リザルト２）"
.balign 4, 0

/* 080597cc */
.asciz "Ｒ－ＩＱ　（リザルト）"
.balign 4, 0

/* 080597e4 */
.asciz "Ｒ－ＩＱ　（オプション）"
.balign 4, 0

/* 08059800 */
.asciz "Ｒ－ＩＱ　（スタジオ）"
.balign 4, 0

/* 08059818 */
.asciz "Ｒ－ＩＱ　（しりょうしつ）"
.balign 4, 0

/* 08059834 */
.asciz "Ｒ－ＩＱ　（ゲーム）"
.balign 4, 0

/* 0805984c */
.asciz "Ｒ－ＩＱ　（メニュー）"
.balign 4, 0

/* 08059864 */
.asciz "Ｒ－ＩＱ　（タイトル）"
.balign 4, 0

@ Karate Man 2
/* 0805987c */
.asciz "カラテカ　２"
.balign 4, 0

@ Karate Man
/* 0805988c */
.asciz "カラテカ"
.balign 4, 0

@ The Snappy Trio
/* 08059898 */
.asciz "バリバリ３にんしゅう"
.balign 4, 0

@ The Clappy Trio
/* 080598b0 */
.asciz "パチパチ３にんしゅう"
.balign 4, 0

/* 080598c8 */
.asciz "ポリリズム　２"
.balign 4, 0

/* 080598d8 */
.asciz "ポリリズム"
.balign 4, 0

/* 080598e4 */
.asciz "ナイト　ウォーク　２"
.balign 4, 0

/* 080598fc */
.asciz "ナイト　ウォーク"
.balign 4, 0

/* 08059910 */
.asciz "リズムだつもう　２"
.balign 4, 0

/* 08059924 */
.asciz "リズムだつもう"
.balign 4, 0

/* 08059934 */
.asciz "バイキン　はかせ"
.balign 4, 0

/* 08059948 */
.asciz "ホッピングロード　２"
.balign 4, 0

/* 08059960 */
.asciz "ホッピングロード"
.balign 4, 0

/* 08059974 */
.asciz "ニンジャ　２"
.balign 4, 0

/* 08059984 */
.asciz "ニンジャ"
.balign 4, 0

/* 08059990 */
.asciz "しろいおばけ　２"
.balign 4, 0

/* 080599a4 */
.asciz "しろいおばけ"
.balign 4, 0

/* 080599b4 */
.asciz "エアーバッター２"
.balign 4, 0

/* 080599c8 */
.asciz "エアーバッター"
.balign 4, 0

/* 080599d8 */
.asciz "いあいぎり"
.balign 4, 0

/* 080599e4 */
.asciz "スーパータップ"
.balign 4, 0

/* 080599f4 */
.asciz "タップダンズ"
.balign 4, 0

/* 08059a04 */
.asciz "うま（スピード）"
.balign 4, 0

/* 08059a18 */
.asciz "マーチャ　２"
.balign 4, 0

/* 08059a28 */
.asciz "マーチャ"
.balign 4, 0

/* 08059a34 */
.asciz "まほうつかい"
.balign 4, 0

/* 08059a44 */
.asciz "ダンスレッスン　１"
.balign 4, 0

/* 08059a58 */
.asciz "ウサギとび"
.balign 4, 0

/* 08059a64 */
.asciz "メトロノーム"
.balign 4, 0

/* 08059a74 */
.asciz "ハナビ"
.balign 4, 0

/* 08059a7c */
.asciz "フラッシュメモリテスト"
.balign 4, 0

/* 08059a94 */
.asciz "こっそりラット"
.balign 4, 0

/* 08059aa4 */
.asciz "リズム　おしゅうじ"
.balign 4, 0

/* 08059ab8 */
.asciz "ドラムガールズ"
.balign 4, 0

/* 08059ac8 */
.asciz "トスボーイズ　２"
.balign 4, 0

/* 08059adc */
.asciz "トスボーイズ"
.balign 4, 0

@ Tram and Pauline
/* 08059aec */
.asciz "トランとポリン"
.balign 4, 0

@ Opening (A Type)
/* 08059afc */
.asciz "オープニング　（Ａ　Ｔｙｐｅ）"
.balign 4, 0

@ @ Opening (B Type)
/* 08059b1c */
.asciz "オープニング　（Ｂ　Ｔｙｐｅ）"
.balign 4, 0

/* 08059b3c */
.asciz "ＲＩＱデータチェック"
.balign 4, 0

@ Showtime
/* 08059b54 */
.asciz "ショータイム"
.balign 4, 0

/* 08059b64 */
.asciz "コスモダンス"
.balign 4, 0

/* 08059b74 */
.asciz "スペースダンス"
.balign 4, 0

/* 08059b84 */
.asciz "ラップ　ウィメン（ｂｙ　ＫＡＺＵ）"
.balign 4, 0

/* 08059ba8 */
.asciz "ラップ　ウィメン（ｂｙ　ＹＯＮＥ）"
.balign 4, 0

@ Rap Men
/* 08059bcc */
.asciz "ラップメン"
.balign 4, 0

@ Quiz Show
/* 08059bd8 */
.asciz "クイズ"
.balign 4, 0

@ Text
/* 08059be0 */
.asciz "テキスト"
.balign 4, 0

@ Check Machine (Total)
/* 08059bec */
.asciz "チェックマシン　（トータル）"
.balign 4, 0

/* 08059c0c */
.asciz "チェックマシン　（トリッキー）"
.balign 4, 0

/* 08059c2c */
.asciz "チェックマシン　（キューフ）"
.balign 4, 0

@ Check Machine (Click)
/* 08059c4c */
.asciz "チェックマシン　（クリック）"
.balign 4, 0

/* 08059c6c */
.asciz "スタジオドラマー"
.balign 4, 0

/* 08059c80 */
.asciz "レッスン（じっせん８）"
.balign 4, 0

/* 08059c98 */
.asciz "レッスン（じっせん７）"
.balign 4, 0

/* 08059cb0 */
.asciz "レッスン（じっせん６）"
.balign 4, 0

/* 08059cc8 */
.asciz "レッスン（じっせん５）"
.balign 4, 0

/* 08059ce0 */
.asciz "レッスン（じっせん４）"
.balign 4, 0

/* 08059cf8 */
.asciz "レッスン（じっせん３）"
.balign 4, 0

/* 08059d10 */
.asciz "レッスン（じっせん２）"
.balign 4, 0

/* 08059d28 */
.asciz "レッスン（じっせん１）"
.balign 4, 0

/* 08059d40 */
.asciz "レッスン（スネアテクニック）"
.balign 4, 0

/* 08059d60 */
.asciz "レッスン（はやい８ビート）"
.balign 4, 0

/* 08059d7c */
.asciz "レッスン（バスとスネア）"
.balign 4, 0

/* 08059d98 */
.asciz "レッスン（スネア）"
.balign 4, 0

/* 08059dac */
.asciz "レッスン（ボッサ）"
.balign 4, 0

/* 08059dc0 */
.asciz "レッスン（デスコビート）"
.balign 4, 0

/* 08059ddc */
.asciz "レッスン（キメパターン２）"
.balign 4, 0

/* 08059df8 */
.asciz "レッスン（キメパターン１）"
.balign 4, 0

/* 08059e14 */
.asciz "レッスン（ハード２）"
.balign 4, 0

/* 08059e2c */
.asciz "レッスン（ハード１）"
.balign 4, 0

/* 08059e44 */
.asciz "レッスン（イージー）"
.balign 4, 0

/* 08059e5c */
.asciz "こえマシン（ラップ）"
.balign 4, 0

/* 08059e74 */
.asciz "こえマシン（ラブ）"
.balign 4, 0

/* 08059e88 */
.asciz "こえマシン（ネコ）"
.balign 4, 0

/* 08059e9c */
.asciz "ボンダンス"
.balign 4, 0

/* 08059ea8 */
.asciz "ぼんおどり"
.balign 4, 0

/* 08059eb4 */
.asciz "リミックス　１"
.balign 4, 0

/* 08059ec4 */
.asciz "リミックス　２"
.balign 4, 0

/* 08059ed4 */
.asciz "リミックス　３"
.balign 4, 0

/* 08059ee4 */
.asciz "リミックス　４"
.balign 4, 0

/* 08059ef4 */
.asciz "リミックス　５"
.balign 4, 0

/* 08059f04 */
.asciz "リミックス　６"
.balign 4, 0

/* 08059f14 */
.asciz "リミックス　７"
.balign 4, 0

/* 08059f24 */
.asciz "リミックス　８"
.balign 4, 0

/* 08059f34 */
.asciz "ウラおとこ"
.balign 4, 0

/* 08059f40 */
.asciz "マネキンこうじょう"
.balign 4, 0

/* 08059f54 */
.asciz "クイズ（スペシャル）"
.balign 4, 0

/* 08059f6c */
.asciz "バイキン　はかせ　ＳＰ"
.balign 4, 0

/* 08059f84 */
.asciz "ライブ"
.balign 4, 0

/* 08059f8c */
.asciz "／"
.balign 4, 0

/* 08059f90 */
.asciz ""
.balign 4, 0

/* 08059f94 */
.asciz ""
.balign 4, 0

/* 08059f98 */
.asciz ""
.balign 4, 0

/* 08059f9c */
.asciz "\nスタートだけに集中！"
.balign 4, 0

/* 08059fb4 */
.asciz "\nちゃんと　アタマを狙おう。"
.balign 4, 0

/* 08059fd0 */
.asciz "\nボーッと　しないで！"
.balign 4, 0

/* 08059fe8 */
.asciz "\nＡボタンもしっかり押そう。"
.balign 4, 0

/* 0805a004 */
.asciz "\nＲボタンもしっかり押そう。"
.balign 4, 0

/* 0805a020 */
.asciz "\n同時に押してないです。"
.balign 4, 0

/* 0805a038 */
.asciz "\n前のめりです。"
.balign 4, 0

/* 0805a048 */
.asciz "\n遅れてます。"
.balign 4, 0

/* 0805a058 */
.asciz "\nベリー　グッド！！"
.balign 4, 0

/* 0805a06c */
.asciz "\nグー！"
.balign 4, 0

/* 0805a074 */
.asciz "\nカンペキッス！！"
.balign 4, 0

/* 0805a088 */
.asciz "\nバッチグー！！"
.balign 4, 0

/* 0805a098 */
.asciz "\nなかなかいいヨ！"
.balign 4, 0

/* 0805a0ac */
.asciz "\nまずまずだネ！"
.balign 4, 0

/* 0805a0bc */
.asciz "\n"
.balign 4, 0

/* 0805a0c0 */
.asciz "\n評価 "
.balign 4, 0

/* 0805a0c8 */
.asciz "."
.balign 4, 0

/* 0805a0cc */
.asciz " 点"
.balign 4, 0

/* 0805a0d0 */ .word D_08c71ed4
/* 0805a0d4 */ .word (VRAMBase + 0x8000)
/* 0805a0d8 */ .word 0xffffffff
/* 0805a0dc */ .word D_08c762e8
/* 0805a0e0 */ .word (VRAMBase + 0xf000)
/* 0805a0e4 */ .word 0xffffffff
/* 0805a0e8 */ .word D_08c76300
/* 0805a0ec */ .word (VRAMBase + 0xf800)
/* 0805a0f0 */ .word 0xffffffff
/* 0805a0f4 */ .word 0x00000000
/* 0805a0f8 */ .word 0x00000000
/* 0805a0fc */ .word 0x00000000

/* 0805a100 */ .word D_08c71340
/* 0805a104 */ .word (VRAMBase + 0x8000)
/* 0805a108 */ .word 0xffffffff
/* 0805a10c */ .word D_08c745e0
/* 0805a110 */ .word (VRAMBase + 0xf000)
/* 0805a114 */ .word 0xffffffff
/* 0805a118 */ .word D_08c74754
/* 0805a11c */ .word (VRAMBase + 0xf800)
/* 0805a120 */ .word 0xffffffff
/* 0805a124 */ .word 0x00000000
/* 0805a128 */ .word 0x00000000
/* 0805a12c */ .word 0x00000000

/* 0805a130 */ .word D_08c7069c
/* 0805a134 */ .word (VRAMBase + 0x8000)
/* 0805a138 */ .word 0xffffffff
/* 0805a13c */ .word D_08c737a4
/* 0805a140 */ .word (VRAMBase + 0xf000)
/* 0805a144 */ .word 0xffffffff
/* 0805a148 */ .word D_08c73978
/* 0805a14c */ .word (VRAMBase + 0xf800)
/* 0805a150 */ .word 0xffffffff
/* 0805a154 */ .word 0x00000000
/* 0805a158 */ .word 0x00000000
/* 0805a15c */ .word 0x00000000

/* 0805a160 */ .word D_08c71908
/* 0805a164 */ .word (VRAMBase + 0x8000)
/* 0805a168 */ .word 0xffffffff
/* 0805a16c */ .word D_08c74ef8
/* 0805a170 */ .word (VRAMBase + 0xf000)
/* 0805a174 */ .word 0xffffffff
/* 0805a178 */ .word D_08c75100
/* 0805a17c */ .word (VRAMBase + 0xf800)
/* 0805a180 */ .word 0xffffffff
/* 0805a184 */ .word 0x00000000
/* 0805a188 */ .word 0x00000000
/* 0805a18c */ .word 0x00000000

/* 0805a190 */ .word D_08c71c8c
/* 0805a194 */ .word (VRAMBase + 0x8000)
/* 0805a198 */ .word 0xffffffff
/* 0805a19c */ .word D_08c756bc
/* 0805a1a0 */ .word (VRAMBase + 0xf000)
/* 0805a1a4 */ .word 0xffffffff
/* 0805a1a8 */ .word D_08c758bc
/* 0805a1ac */ .word (VRAMBase + 0xf800)
/* 0805a1b0 */ .word 0xffffffff
/* 0805a1b4 */ .word 0x00000000
/* 0805a1b8 */ .word 0x00000000
/* 0805a1bc */ .word 0x00000000

/* 0805a1c0 */ .word D_08c70b4c
/* 0805a1c4 */ .word (VRAMBase + 0x8000)
/* 0805a1c8 */ .word 0xffffffff
/* 0805a1cc */ .word D_08c73ea4
/* 0805a1d0 */ .word (VRAMBase + 0xf000)
/* 0805a1d4 */ .word 0xffffffff
/* 0805a1d8 */ .word D_08c7408c
/* 0805a1dc */ .word (VRAMBase + 0xf800)
/* 0805a1e0 */ .word 0xffffffff
/* 0805a1e4 */ .word 0x00000000
/* 0805a1e8 */ .word 0x00000000
/* 0805a1ec */ .word 0x00000000

/* 0805a1f0 */ .word D_08c71b6c
/* 0805a1f4 */ .word (VRAMBase + 0x8000)
/* 0805a1f8 */ .word 0xffffffff
/* 0805a1fc */ .word D_08c7534c
/* 0805a200 */ .word (VRAMBase + 0xf000)
/* 0805a204 */ .word 0xffffffff
/* 0805a208 */ .word D_08c75478
/* 0805a20c */ .word (VRAMBase + 0xf800)
/* 0805a210 */ .word 0xffffffff
/* 0805a214 */ .word 0x00000000
/* 0805a218 */ .word 0x00000000
/* 0805a21c */ .word 0x00000000

/* 0805a220 */ .word D_08c71658
/* 0805a224 */ .word (VRAMBase + 0x8000)
/* 0805a228 */ .word 0xffffffff
/* 0805a22c */ .word D_08c749d4
/* 0805a230 */ .word (VRAMBase + 0xf000)
/* 0805a234 */ .word 0xffffffff
/* 0805a238 */ .word D_08c74bb0
/* 0805a23c */ .word (VRAMBase + 0xf800)
/* 0805a240 */ .word 0xffffffff
/* 0805a244 */ .word 0x00000000
/* 0805a248 */ .word 0x00000000
/* 0805a24c */ .word 0x00000000

/* 0805a250 */ .word D_08c710e8
/* 0805a254 */ .word (VRAMBase + 0x8000)
/* 0805a258 */ .word 0xffffffff
/* 0805a25c */ .word D_08c74210
/* 0805a260 */ .word (VRAMBase + 0xf000)
/* 0805a264 */ .word 0xffffffff
/* 0805a268 */ .word D_08c74404
/* 0805a26c */ .word (VRAMBase + 0xf800)
/* 0805a270 */ .word 0xffffffff
/* 0805a274 */ .word 0x00000000
/* 0805a278 */ .word 0x00000000
/* 0805a27c */ .word 0x00000000

/* 0805a280 */ .word D_08c71e64
/* 0805a284 */ .word (VRAMBase + 0x8000)
/* 0805a288 */ .word 0xffffffff
/* 0805a28c */ .word D_08c759cc
/* 0805a290 */ .word (VRAMBase + 0xf000)
/* 0805a294 */ .word 0xffffffff
/* 0805a298 */ .word D_08c75ad0
/* 0805a29c */ .word (VRAMBase + 0xf800)
/* 0805a2a0 */ .word 0xffffffff
/* 0805a2a4 */ .word 0x00000000
/* 0805a2a8 */ .word 0x00000000
/* 0805a2ac */ .word 0x00000000

/* 0805a2b0 */ .word D_08c709a8
/* 0805a2b4 */ .word (VRAMBase + 0x8000)
/* 0805a2b8 */ .word 0xffffffff
/* 0805a2bc */ .word D_08c73b6c
/* 0805a2c0 */ .word (VRAMBase + 0xf000)
/* 0805a2c4 */ .word 0xffffffff
/* 0805a2c8 */ .word D_08c73cf8
/* 0805a2cc */ .word (VRAMBase + 0xf800)
/* 0805a2d0 */ .word 0xffffffff
/* 0805a2d4 */ .word 0x00000000
/* 0805a2d8 */ .word 0x00000000
/* 0805a2dc */ .word 0x00000000

/* 0805a2e0 */ .word D_08c70580
/* 0805a2e4 */ .word (VRAMBase + 0x8000)
/* 0805a2e8 */ .word 0xffffffff
/* 0805a2ec */ .word D_08c73544
/* 0805a2f0 */ .word (VRAMBase + 0xf000)
/* 0805a2f4 */ .word 0xffffffff
/* 0805a2f8 */ .word D_08c73618
/* 0805a2fc */ .word (VRAMBase + 0xf800)
/* 0805a300 */ .word 0xffffffff
/* 0805a304 */ .word 0x00000000
/* 0805a308 */ .word 0x00000000
/* 0805a30c */ .word 0x00000000

/* 0805a310 */ .word D_08c70490
/* 0805a314 */ .word (VRAMBase + 0x8000)
/* 0805a318 */ .word 0xffffffff
/* 0805a31c */ .word D_08c72518
/* 0805a320 */ .word (VRAMBase + 0xf000)
/* 0805a324 */ .word 0xffffffff
/* 0805a328 */ .word D_08c72634
/* 0805a32c */ .word (VRAMBase + 0xf800)
/* 0805a330 */ .word 0xffffffff
/* 0805a334 */ .word 0x00000000
/* 0805a338 */ .word 0x00000000
/* 0805a33c */ .word 0x00000000

/* 0805a340 */ .word D_08c704e8
/* 0805a344 */ .word (VRAMBase + 0x8000)
/* 0805a348 */ .word 0xffffffff
/* 0805a34c */ .word D_08c72e4c
/* 0805a350 */ .word (VRAMBase + 0xf000)
/* 0805a354 */ .word 0xffffffff
/* 0805a358 */ .word D_08c7346c
/* 0805a35c */ .word (VRAMBase + 0xf800)
/* 0805a360 */ .word 0xffffffff
/* 0805a364 */ .word 0x00000000
/* 0805a368 */ .word 0x00000000
/* 0805a36c */ .word 0x00000000

/* 0805a370 */ .word D_08c703a8
/* 0805a374 */ .word (VRAMBase + 0x8000)
/* 0805a378 */ .word 0xffffffff
/* 0805a37c */ .word D_08c720a0
/* 0805a380 */ .word (VRAMBase + 0xf000)
/* 0805a384 */ .word 0xffffffff
/* 0805a388 */ .word D_08c72400
/* 0805a38c */ .word (VRAMBase + 0xf800)
/* 0805a390 */ .word 0xffffffff
/* 0805a394 */ .word 0x00000000
/* 0805a398 */ .word 0x00000000
/* 0805a39c */ .word 0x00000000


/* 0805a3a0 */
.asciz "今の演奏データですが、\nセーブしときますか？"
.balign 4, 0

/* 0805a3cc */ .word 0x0

.end
