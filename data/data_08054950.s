.section .rodata
.syntax unified

.include "include/gba.inc"

@ Erase ALL data?
@　　　　　　　Erase
@　　　　　　　Cancel
glabel D_08054950
.asciz "\x02\x33\x01\x33\x01\x43ホントに消すの？
\x02\x31\x01\x31\x01\x4c　　　　　　　はい
　　　　　　　いいえ"
.balign 4, 0

@ Clear Save Data
@ Erase progress, gifts, drum lessons,
@ <everything>! Think about it!
/* 08054998 */
.asciz "\x02\x33\x01\x33\x01\x43データのクリア
\x02\x31\x01\x31\x01\x4cいままでの記録を全部けして、はじめから
やりなおします。よく考えてネ！"
.balign 4, 0

@ Sound Mode
@ <Stereo>  For headphones, Nintendo DS, etc.
@ <Mono>  For GBAs without headphones.
/* 080549fc */
.asciz "\x02\x33\x01\x33\x01\x43サウンドモード
\x02\x31\x01\x31\x01\x4cステレオ　　ヘッドホンならこっち！オススメ！
モノラル　　本体のスピーカーならこっち。"
.balign 4, 0

/* 08054a70 */
.asciz ""
.balign 4, 0

@ You can read it
@ in your e-mail. There are still
/* 08054a74 */
.asciz "（リズム資料室で　見れるヨ）\n"
.balign 4, 0

@ You can play it
@ in the studio. There are still
/* 08054a94 */
.asciz "（スタジオで　たたけるヨ）\n"
.balign 4, 0

@ You can listen to
@ it in the studio. There are now
/* 08054ab0 */
.asciz "（スタジオで　きけるヨ） \n"
.balign 4, 0

glabel D_08054acc
.asciz "\x02\x31\x01\x31\x01\x43\x03\x30\x01\x73\x05\x34\x01\x38「"
.balign 4, 0

glabel D_08054ae0
.asciz "」"
.balign 4, 0

glabel D_08054ae4
.asciz "の曲"
.balign 4, 0

@ You've earned a gift!
glabel D_08054aec
.asciz "\x02\x30\x01\x30をプレゼント！\n"
.balign 4, 0

glabel D_08054b00
.asciz "プレゼントは　あと　\x02\x31\x01\x31"
.balign 4, 0

@ gifts
@ left to get. Keep going!
glabel D_08054b1c
.asciz "コ\x02\x30\x01\x30　あるから、
他のキャンペーンにもチャレンジしてみてネ！"
.balign 4, 0

@ 0 gifts left.
@ You finally got them all!
glabel D_08054b5c
.asciz "プレゼントは　これで\x02\x31\x01\x31オシマイ\x02\x30\x01\x30です。\n"
.balign 4, 0

@ Congratulations!
glabel D_08054b88
.asciz "パーフェクトキャンペーン、コンプリートです！"
.balign 4, 0

@ A lot of stuff here is not translated

/* 08054bb8 */
.asciz "う～ん…"
.balign 4, 0

/* 08054bc4 */
.asciz "もう一歩。"
.balign 4, 0

/* 08054bd0 */
.asciz "人並みです。"
.balign 4, 0

/* 08054be0 */
.asciz "かなり良いです！"
.balign 4, 0

/* 08054bf4 */
.asciz "最高レベルです！！"
.balign 4, 0

/* 08054c08 */
.asciz ":1.2Ｓ"
.balign 4, 0

/* 08054c10 */
.asciz ":1.6Ａ"
.balign 4, 0

/* 08054c18 */
.asciz ":1.4Ｂ"
.balign 4, 0

/* 08054c20 */
.asciz ":1.5Ｃ"
.balign 4, 0

/* 08054c28 */
.asciz ":1.1Ｄ"
.balign 4, 0

/* 08054c30 */
.asciz "なっとくの　せいかくさ"
.balign 4, 0

/* 08054c48 */
.asciz "リズムかん　バッチシさ"
.balign 4, 0

/* 08054c60 */
.asciz "プロから　みた　ピッタシさ"
.balign 4, 0

@ Reflexes
/* 08054c7c */
.asciz "あたまの　かいてん　スピード"
.balign 4, 0

@ Adaptability
/* 08054c9c */
.asciz "てきおう　のうりょく"
.balign 4, 0

@ Technique Level
/* 08054cb4 */
.asciz "テクニック　レベル"
.balign 4, 0

@ Steadiness
/* 08054cc8 */
.asciz "てがたい　かんじ"
.balign 4, 0

/* 08054cdc */
.asciz "ここ　イッパツ"
.balign 4, 0

@ Responsibility
/* 08054cec */
.asciz "せきにんかん"
.balign 4, 0

/* 08054cfc */
.asciz "ほどほどの　せいかくさ"
.balign 4, 0

/* 08054d14 */
.asciz "いっぱんてき　バッチシど"
.balign 4, 0

/* 08054d30 */
.asciz "シロートめの　ピッタシさ"
.balign 4, 0

/* 08054d4c */
.asciz "おちつき"
.balign 4, 0

/* 08054d58 */
.asciz "ごうりてき　さいのう"
.balign 4, 0

/* 08054d70 */
.asciz "せつやく　のうりょく"
.balign 4, 0

/* 08054d88 */
.asciz "いっかんせい　みたいなもの"
.balign 4, 0

/* 08054da4 */
.asciz "リズムの　しん"
.balign 4, 0

/* 08054db4 */
.asciz "あんていの　ほど"
.balign 4, 0

/* 08054dc8 */
.asciz "まえむきな　しせい"
.balign 4, 0

/* 08054ddc */
.asciz "どうたい　しりょく"
.balign 4, 0

/* 08054df0 */
.asciz "やるき"
.balign 4, 0

/* 08054df8 */
.asciz "ちゅういぶかさ"
.balign 4, 0

/* 08054e08 */
.asciz "じゅうなんせい"
.balign 4, 0

/* 08054e18 */
.asciz "りんきおうへん"
.balign 4, 0

/* 08054e28 */
.asciz "にんげんせい"
.balign 4, 0

/* 08054e38 */
.asciz "そだちの　よさ"
.balign 4, 0

/* 08054e48 */
.asciz "けつえきがた（すいそく）"
.balign 4, 0

/* 08054e64 */
.asciz "きのうの　やしょく"
.balign 4, 0

/* 08054e78 */
.asciz "あしたの　てんき"
.balign 4, 0

/* 08054e8c */
.asciz "ことしの　きんせん　うん"
.balign 4, 0

/* 08054ea8 */
.asciz "らいねんの　れんあい　うん"
.balign 4, 0

glabel D_08054ec4
.asciz ":1＊＊＊＊:0　　さいてん　　:1＊＊＊＊"
.balign 4, 0

glabel D_08054eec
.asciz ".5:1Ｒ－ＩＱ　　.6:0"
.balign 4, 0


/* 08054f04 */
.asciz "あと、"
.balign 4, 0

/* 08054f0c */
.asciz "また、"
.balign 4, 0

glabel D_08054f14
.asciz ""
.balign 4, 0

glabel D_08054f18
.asciz "…でも、"
.balign 4, 0

glabel D_08054f24
.asciz "しかも、"
.balign 4, 0

glabel D_08054f30
.asciz "さらに、"
.balign 4, 0

/* 08054f3c */
.asciz "う～ん．．．"
.balign 4, 0

/* 08054f4c */
.asciz "まぁまぁ、　かな。"
.balign 4, 0

/* 08054f60 */
.asciz "とりあえず．．．"
.balign 4, 0

/* 08054f74 */
.asciz "よしと　します。"
.balign 4, 0

@ \x94\x5c should be 煤, why isn't it assembling properly? it just assembles to \x94

@ Together let's forge
@ The skill that everyone has:
@ Our sense of rhythm

@ "It is possible to develop latent
@ rhythm sesne with practice.
@ Daily repetition is even more effective."


@ Moving and doing
@ As I go about my day.
@ Is this called rhythm?

@ "It's good to feel and embrace your rhythm
@ sense during everyday life. While walking,
@ brushing your teeth or cooking you should
@ move with conciousness of your rhythm."


@ You have good rhythm,
@ But if your flow is better,
@ Your rhythm's its best.

@ "Rhythm sense and flow are separate
@ things. While honing your sense of rhythm,
@ you should also try to develop good flow."


@ Let's not be hasty.
@ Wait patiently for the rest,
@ And don't lose the flow.

@ "Counting accurately during a rest is difficult,
@ and it's tempting to start too soon. The ability
@ to stay composed during the rests is
@ critical to good flow and rhythm."


@ Even in old age,
@ Rhythm sense can sprout and grow.
@ Just go with your flow!

@ "Rhythm sense will grow exceptionally
@ even in adults so long as you try
@ to be concious of your rhythm."
/* 08054f88 */
.asciz "
\x01\x4c\x03\x32\x01\x6c鍛えよう
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c誰でも持ってる
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6cリズム感
\x01\x4c\x03\x32\x01\x6c
\x01\x4c\x03\x30\x01\x73「潜在的なリズム感は、訓練によって成長させることが可\x94\x5c。日々の反復練習が最も効果的」

\x01\x4c\x03\x32\x01\x6c日常の
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c動きはこんなに
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6cリズミカル
\x01\x4c\x03\x30\x01\x73「リズム感は日常生活の中で常に感じ、育てると良い。歩き方や歯磨き、料理の時等、リズムを意識して動いてみるべし」

\x01\x4c\x03\x32\x01\x6cリズム感
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6cノリがよければ
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6cなおクール
\x01\x4c\x03\x32\x01\x6c
\x01\x4c\x03\x30\x01\x73「ただし、リズム感とノリは別モノ。リズムを意識し鍛えながら、同時にノリの良さも身に付けよう」

\x01\x4c\x03\x32\x01\x6cブレイクを
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c待てないアノ娘は
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6cハンパモノ
\x01\x4c\x03\x30\x01\x73「ブレイクを正確にカウントすることは難しく、つっこみ気味になりがち。落ち着いて待てるかどうかが、かっこよさを大きく左右する」

\x01\x4c\x03\x32\x01\x6c大人でも
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6cメキメキ伸びる
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6cリズム感
\x01\x4c\x03\x32\x01\x6c
\x01\x4c\x03\x30\x01\x73「リズムを意識しようとする心がけで、リズム感は成人してからでも格段に良くなってゆく」\n"
.balign 4, 0

@ Rhythm Haiku Folio
/* 08055304 */
.asciz "リズム俳句集"
.balign 4, 0


@ "Nurture"

@ I nurture it,
@ For the day it will spread its wings.
@ Every day in my ordinary life,
@ To live more naturally,
@ To live more enjoyably,
@ I nurture that which is yet so small,
@ My sense of rhythm...

@ "Karate Rhythm"

@ Hey! Baby! How's it going?
@ This beat is non stop.
@ Hey! Baby! Listen to my phrase.
@ I can give you
@ the sense of rhythm.
@ Oh, Yeah.
@ Awake, baby! Trust me!

@ This beat is non stop!
@ New groove in your soul.
@ Oh, Yeah!
@ This beat!
@ You are growing up well.
@ Hey, Baby!
@ Hold onto your ambition.
@ Hey! Oh, Yeah!
/* 08055314 */
.asciz "\x01\x43\x03\x31\x01\x6d「そだてる」

\x01\x43\x03\x30\x01\x73わたしはそれを育てている。
いつか大きく羽ばたく日のために。
なにげない日常の生活の中で、
より、自然に
より、楽しく。
今はまだちっぽけな、
わたしのリズム感を…
\x01\x43\x03\x31\x01\x6d「Karate Rhythm」
\x01\x43\x03\x30\x01\x73
Hey! Baby! How's it going?
This beat is non stop.
Hey! Baby! Listen to my phrase.
I can give you
the sense of rhythm.
Oh, Yeah.
Awake,baby! Trust me!
This beat is non stop!
New groove in your soul.
Oh, Yeah!
This beat!
You are growing up well.
Hey, Baby!
Hold onto your ambition.
Hey! Oh, Yeah!\n"
.balign 4, 0

@ Rhythm Poem Digest
/* 08055514 */
.asciz "リズムポエム集"
.balign 4, 0

@ \x95\x5c should be 表, assembles to \x95

@ Your Rhythm Sense is really important!
@ What is Rhythm Sense?

@ "Rhythm Sense" is just like it sounds. It's your
@ sense of rhythm!

@ We're going to diagnose what style of rhythm
@ you have. Please choose the choices you most
@ agree with.

@ -1-

@ I have Rhythm Sense.

@ True   - Go to page 2!
@ False  - Go to page 3!


@ -1-
@ -2-

@ Between rock music and pop music, I like...

@ Rock  - Go to page 4!
@ Pop   - Go to page 5!


@ -2-
@ -3-

@ Between jazz music and classical music, I like...

@ Jazz       - Go to page 6!
@ Classical  - Go to page 7!


@ -3-
@ -4-
@ You can't dance if you don't
@ have a sense of rhythm.

@ True   - Go to page 8!
@ False  - Go to page 9!


@ -4-
@ -5-
@ If you can recognise rhythm, then
@ you personally can express it.

@ True   - Go to page 10!
@ False  - Go to page 11!


@ -5-
@ -6-

@ Everyone has a sense of rhythm.

@ True   - Go to page 8!
@ False  - Go to page 9!


@ -6-
@ -7-
@ Rhythm Sense is inherent; you can't
@ improve it with practice.

@ True   - Go to page 10!
@ False  - Go to page 11!


@ -7-
@ -8-

@ Having rhythm is cooler when you have flow.

@ True   - Go to page 12!
@ False  - Go to page 13!


@ -8-
@ -9-

@ Rhythm and flow are just about the same thing.

@ True   - Go to page 14!
@ False  - Go to page 15!


@ -9-
@ -10-
@ Even if you have good rhythm,
@ you won't be popular.

@ True   - Go to page 16!
@ False  - Go to page 17!


@ -10-
@ -11-
@ If you have good rhythm,
@ it's hard to be tone-deaf.

@ True   - Go to page 18!
@ False  - Go to page 19!


@ -11-
@ -12-
@ Rhythm is easier to acquire
@ the younger you are.

@ True   - Go to page 23!
@ False  - Go to page 21!


@ -12-
@ -13-
@ You can't seek Rhythm Sense
@ after you're an adult.

@ True   - Go to page 21!
@ False  - Go to page 22!


@ -13-
@ -14-

@ Rhythm and daily life are unrelated.

@ True   - Go to page 23!
@ False  - Go to page 22!


@ -14-
@ -15-
@ Even a well-honed and long-standing
@ Rhythm Sense will quickly fade if you
@ don't conciously think about it.

@ True   - Go to page 23!
@ False  - Go to page 20!

@ -15-
@ -16-
@ You'll train your Rhythm Sense better if
@ you work hard at it with a strict regimen.

@ True   - Go to page 23!
@ False  - Go to page 22!


@ -16-
@ -17-
@ Your rhythm will improve even in 30
@ seconds if you're concious of it.

@ True   - Go to page 22!
@ False  - Go to page 23!


@ -17-
@ -18-

@ Feeling rhythm constantly is not good.

@ True   - Go to page 23!
@ False  - Go to page 20!


@ -18-
@ -19-
@ Rhythm is gained not by understanding
@ theory, but by repetition.

@ True   - Go to page 23!
@ False  - Go to page 21!


@ -19-
@ -20-
@ Your Rhythm Sense - Groovy

@ You have a good attitude towards rhythm. Even
@ if you don't have confidence in your Rhythm
@ Sense with now, you'll probably lead an
@ enjoyable life full of rhythm. Rock on!

@ -20-
@ -21-
@ Your Rhythm Sense - Shy
@ Isn't your attitude towards rhythm a little
@ flustered? Rhythm is something that everyone
@ has. If you become conscious of rhythm little by
@ little and enjoy yourself while doing it, your
@ Rhythm Sense will grow. Relax.

@ -21-
@ -22-
@ Your Rhythm Sense - Carefree
@ You should be aware of the difference
@ between flow and rhythm. Even if your
@ flow is good, if your Rhythm Sense is bad,
@ your smooth flow goes to waste. Tighten up
@ your Rhythm Sense, and your energy and
@ spirit might make others happier!
@ -22-
@ -23-
@ Your Rhythm Sense - Strict
@ You might be having some trouble seeing your
@ Rhythm Sense. Mightn't it improve naturally if
@ you spend time working with it? Mix rhythm into
@ every day life, and don't take it so seriously!
@ It would probably be more enjoyable that way.

@ -23-
/* 08055524 */
.asciz "\x01\x43\x03\x31\x01\x6dリズム感タイプ診断
\x03\x30\x01\x73
あなたのリズム感を診断します。
当てはまるものを選んでいってネ！

自分はリズム感があるほうだと思う。
YES  2ページへGO!
 NO  3ページへGO!
-1-

ロックとポップス、好きなのは…

ロック  4ページへGO!
ポップス 5ページへGO!



-2-

ジャズとクラシック、好きなのは…

ジャズ  6ページへGO!
クラシック 7ページへGO!



-3-

リズム感がなければダンスは踊れないと思う。

YES  8ページへGO!
 NO  9ページへGO!



-4-

リズム感は聴きとれれば、\x95\x5c現できるものだと思う。

YES  10ページへGO!
 NO  11ページへGO!



-5-

リズム感の全くない人なんていないと思う。

YES  9ページへGO!
 NO  8ページへGO!



-6-

リズム感は生まれつきのものなので、
訓練では成長しないと思う。

YES  10ページへGO!
 NO  11ページへGO!


-7-

リズム感は、ノリがいいほうがカッコイイと思う。

YES  12ページへGO!
 NO  13ページへGO!



-8-

リズム感とノリは、ほとんど同じものだと思う。

YES  14ページへGO!
 NO  15ページへGO!



-9-

リズム感がよくても、モテないと思う。

YES  16ページへGO!
 NO  17ページへGO!



-10-

リズム感がいいだけで、
オンチに聞こえにくいと思う。

YES  18ページへGO!
 NO  19ページへGO!


-11-

リズム感は年齢が若い方が身につきやすいと思う。

YES  23ページへGO!
 NO  21ページへGO!



-12-

成人してからではリズム感の成長は望めないと思う。

YES  21ページへGO!
 NO  22ページへGO!



-13-

リズム感って、日常生活とは無縁だと思う。

YES  23ページへGO!
 NO  22ページへGO!



-14-

たとえ3年以上かけて身に付けたリズム感も
意識をしていなければすぐに忘れてしまうと思う。

YES  23ページへGO!
 NO  20ページへGO!


-15-

リズム感は、あえてつらく厳しい
訓練をした方が身によくつくと思う。

YES  23ページへGO!
 NO  22ページへGO!


-16-

リズム感は意識すれば、
たったの30分でもよくなると思う。

YES  22ページへGO!
 NO  23ページへGO!


-17-

リズム感は、常に感じていると
かえってよくないと思う。

YES  23ページへGO!
 NO  20ページへGO!


-18-

リズム感は、理論を理解するのではなく
繰り返しで身につけるものだと思う。

YES  23ページへGO!
 NO  21ページへGO!


-19-
\x01\x43あなたのリズム感タイプ
\x03\x31\x01\x6dノリノリ型\x03\x30\x01\x73

\x01\x4cあなたのリズム感に対する考え方は、とってもナイスです。もし今のリズム感に自信をもてなくても、これからリズムと いっしょに楽しい人生をおくれるでしょう。ノリノリでエンジョイしてネ！

\x01\x43-20-
\x01\x43あなたのリズム感タイプ
\x03\x31\x01\x6dてれやさん型\x03\x30\x01\x73

\x01\x4cリズム感ということに対して、すこしビビってませんか？リズム感はみんながもっているものなんです。楽しみながらすこしずつでもリズムを意識すれば、リズム感は成長します。安心してネ。

\x01\x43-21-
\x01\x43あなたのリズム感タイプ
\x03\x31\x01\x6dおちょうし者型\x03\x30\x01\x73

\x01\x4cリズム感とノリのよさのちがいをもっと意識すると、ベターです。ノリがよくても肝心のリズム感がわるいと、ノリのよさが空回りしてしまってもったいないです。リズム感をしっかりとしたものにしておけば、あなたの元気はみんなをもっとハッピーにするかも！？
\x01\x43-22-
\x01\x43あなたのリズム感タイプ
\x03\x31\x01\x6dカッチリ型\x03\x30\x01\x73

\x01\x4cあなたはリズム感ということを少しむずかしくとらえすぎかもしれません。もうすこしリズムと気軽につきあって、日常生活にとけこませると自然にリズム感がよくなるのではないでしょうか。そのほうが、きっと楽しいですヨ！
\x01\x43-23-\n"
.balign 4, 0

@ Rhythm Diagnosis
/* 080560bc */
.asciz "リズム感タイプ診断"
.balign 4, 0

@ \x95\x5c should be 表, assembles to \x95

@ Rhythm Sense ⊃ Flow

@ Rhythm Sense ≠ Flow

@ Explanation: Flow is just one
@ element of Rhythm Sense; Flow
@ is not Rhythm Sense itself.


@ Rhythm ≠ Rhythm Sense


@ Explanation: rhythm is the ability to
@ count time, while Rhythm Sense is
@ what you express, feel, engender, and
@ naturally create through Flow.


@ Good dancer ≠ Strong Rhythm Sense


@ Explanation: A good dancer does not
@ necessarily have good Rhythm Sense.
/* 080560d0 */
.asciz "\x01\x43\x03\x32\x01\x6c

リズム感 ⊃ ノリ

リズム感 ≠ ノリ
\x01\x4c\x03\x30\x01\x73

解説：ノリは、リズム感に含まれる要素の１つであり、リズム感そのものではないのだ。
\x01\x43\x03\x32\x01\x6c

リズム ≠ リズム感


\x01\x4c\x03\x30\x01\x73
解説：リズムは時間を刻むもの、リズム感はノリで\x95\x5c現したり、感じたり、自然にかもし出したりするものなのだ。
\x01\x43\x03\x31\x01\x6d


グッドなダンサー ≠ ナイスなリズム感

\x01\x4c\x03\x30\x01\x73

解説：ダンスの上手な人が、「リズム感が良い」とは限らないのだ。\n"
.balign 4, 0

@ The Rhythm Formula
/* 08056258 */
.asciz "わかる！リズムの公式"
.balign 4, 0

@ \x95\x5c should be 表, assembles to \x95

@ Since release, we have been inundated with
@ fan mail from people who have been enjoying
@ Rhythm Heaven. We have received so many
@ letters and emails that we can't possibly
@ share them all, so here is just a taste of
@ what our players have been saying.



@ I've been improving my sense of rhythm...
@ and suddenly I'm the life of the party!?
@ Before finding Rhythm Heaven, I had
@ absolutely no luck with women. Now, I've got a
@ date every Friday. ... My whole outlook on life
@ has changed. Thanks, Rhythm Heaven!

@ Mr. T, accountant, age 38


@ I've been working on my sense of rhythm...
@ and suddenly everyone loves my singing!?
@ Before finding Rhythm Heaven, I was just
@ your typical tone-deaf person. Lately,
@ though, I've been getting complements on my
@ singing, even though I'm still tone-deaf...
@ But it makes me happy anyway! Thank you!

@ Mrs. H, housewife, 29 years old



@ Now try it for yourself, to see where
@ your sense of rhythm takes you! Tell your
@ friends and share the magic of Rhythm Heaven!!
/* 08056270 */
.asciz "
リズム天国を楽しんでいただいた方からたくさんのよろこびの声が届きました。あまりに多くの方からお手紙やメールをいただき（！）、すべては紹介しきれませんが、そのなかのごく一部をここで紹介させていただきます。みなさんも、ぜひ一度お試しくださり、その効果をお友達にもお伝えください！！


リズム感が良くなっただけなのに…

\x03\x31\x01\x6dこんなにモテて、ホントにいいの！？
\x03\x30\x01\x73
「リズム天国」に出会うまでは、全く女性に縁のなかった私ですが、今ではモテモテで…人生観が変わりました。
\x01\x52Tさん ３８才 会社員
\x01\x4c
リズム感が良くなっただけなのに…

\x03\x31\x01\x6d歌が上手だねって言われちゃった！？
\x03\x30\x01\x73
「リズム天国」に出会うまでは、オンチの代\x95\x5cみたいに言われてた私なのに、最近よくホメられるんです。相変わらずオンチなのに不思議。でもうれしい！
\x01\x52Hさん ２９才 主婦
\x01\x4c"
.balign 4, 0

@ Fan Mailbag
/* 08056548 */
.asciz "よろこびの声"
.balign 4, 0

@ \x83\x5c should be ソ, assembles to \x83

@ Kii-yan: “Greetings, I'm Kii-yan!!”

@ Ao-kun: “Greetings, I'm Ao-kun!!”

@ Both: “We're Yellow and Blue! Thanks for coming
@ to our show!"




@ Kii-yan: “Hey hey, Ao-kun. Did I tell you I
@ started taking music lessons?”

@ Ao-kun: “No, you didn't tell me!  When did this
@ happen?! What instrument did you pick? Guitar?
@ Piano? The triangle?”



@ Kii-yan: “Well, I'm learning...”

@ Ao-kun: “Yeah, yeah?”

@ Kii-yan: “I'm learning to play the rhythm!”

@ Ao-kun: “What? Rhythm? Kii-yan, you dope!
@ Rhythm isn't an instrument! What are you
@ really playing?”


@ Kii-yan: “I told the teacher that I want to play
@ the drums, but she said that I have to work on
@ the 'rhythm' first!”

@ Ao-kun: “Kii-yan, she meant you needed to
@ practice your sense of rhythm with the drums!”



@ Kii-yan: “That's right!  She did say that!
@ Ao-kun, you're amazing! How did you know? Are
@ you a mind reader?”

@ Ao-kun: “You big dummy! I didn't use psychic
@ powers, I used common sense!!”

@ Kii-yan: “Hey hey, you don't have to get all[l
@ angry about it.”


@ Ao-kun: “You're right, you're right. Sorry.”

@ Kii-yan: “Also, Ao-kun, don't look now but your
@ fly is open!”

@ Ao-kun: “What?! Why didn't you warn me before
@ we got on stage?!"


@ Kii-yan: “Made you look!”

@ Ao-kun: “Why you little...”

@ Kii-yan: “Little? I'm three inches taller than
@ you!”

@ Ao-kun: “Quiet!! You knew what I meant!!”


@ Kii-yan: “ARGHH-!”

@ Ao-kun: “Woah! Wh, why are you getting mad?
@ calm down, Kii-yan!”

@ Kii-yan: “Anyway, we were talking about sense of
@ rhythm, weren't we?”

@ Ao-kun: “Yeah, that's right.”

@ Kii-yan: “That was, until you derailed the
@ conversation just like that...”

@ Ao-kun: “Look, I'm sorry... no, wait!!! Kii-yan,
@ you're the one that took us on that tangent
@ by lying about my fly being open!!!”

@ Kii-yan: “Yeah, but you're the one who fell
@ for the joke.”


@ Ao-kun: “Oh, be quiet!  Anyway, what did your
@ music teacher have to say about your sense of
@ rhythm?”

@ Kii-yan: “I figure I won't need all that much
@ practice, since the teacher said my sense of
@ rhythm was very blatant.”



@ Ao-kun: “You blockhead! She said your sense of
@ rhythm was latent, like your ability to tell
@ funny jokes!”

@ Both: “Thank you ladies and gentlemen, and
@ enjoy the rest of the game!”
/* 08056558 */
.asciz "きーやん「どうもー、きーやんでーす！」
あおくん「どうもー、あおくんでーす！」
ふたり「Y&Bでーす！よろしくどうぞ～！」
きーやん「なぁなぁ、あおくん。あんな、この前な、音楽教室に体験入学してん！」
あおくん「エー！ウ\x83\x5cー！？きいてないよー！きーやん、楽器はじめるん！？ギター？ドラム？なになに？」
きーやん「オレのパートはな…」
あおくん「うんうん、なになに？」
きーやん「オレのパートは リズムやねん！」
あおくん「は？リズムって、きーやん、それ楽器ちゃうやん！なんやリズムって」
きーやん「ちゃうねん、ドラムやりたいって先生にゆうたらな、まずリズムをしなさいって言われてん！」
あおくん「きーやん、それ、たぶんな、リズム感をきたえなさいってゆうたんやと思うで」
きーやん「あ、そうや！たしかそう言ってたわ！あおくん、すごいな！なんで分かるん！？エスパーか？」
あおくん「なんでって…、分かるわ！！常識やわ！！！」
きーやん「まぁまぁ、そんなに怒らんといて～や」
あおくん「あ、あぁ、せやな、ごめんな…」
きーやん「あ！あおくん、チャックあいてるで」
あおくん「エッ！？うゎ、ウ\x83\x5c！！マジ！？」
きーやん「ウ\x83\x5c」
あおくん「ずるっ！」
きーやん「ずるって、古いな」
あおくん「うるさい！ほっとけ！！」
きーやん「ムカー！！！」
あおくん「うわっ！な、なんで逆ギレやねん。もう、わけわからんわ！」
きーやん「ほんでな、リズム感の話やけどな」
あおくん「あ、あぁ、そうやったな」
きーやん「まったく…、話を脱線させんといてや」
あおくん「あぁ、ごめんな…って、どっちがやねん！！！話、脱線させたん、きーやんやろがーーー！！チャックあいてるとかウ\x83\x5cぶっこいといてー！！！」
きーやん「まぁまぁ、そんなに怒らんでも」
あおくん「やかましいわ！まったく…、ほんで、なんなん、リズム感の話って？」
きーやん「洗剤的なアルミ缶は、訓練したら成長するんやて。」
あおくん「あほ！ それを言うなら、潜在的なリズム感やろ！」
ふたり「しっつれいしましたー！」"
.balign 4, 0

@ Rhythm Standup
/* 08056c08 */
.asciz "リズム漫才"
.balign 4, 0

@ Nice to meet you, everyone. My name's Tanaka.
@ That's my real name, but don't tell my
@ friends that, okay? To them, I'm “Hammer."

@ I recently found a scroll in the attic.
@ This is what was written in it...


@ “Thou who reads this: You did not find this
@ scroll by chance. I have used my ninjutsu to
@ ensure that you find it. This may be hard to
@ believe, but I, the person writing this, am a
@ ninja. I am also your ancestor."


@ “The other day, I protected my lord from a
@ hail of arrows at risk to my life. That night, 
@ I had a dream about a young man.
@ A young man who lives with his back turned
@ toward the world... a discontented young man."


@ “According to the fortune teller, you are
@ that young man. Like me, you risked your life
@ to protect a person... a woman. This woman
@ is the distant granddaughter of my lord.
@ You may choose whether or not to believe me.
@ Nonetheless, I ask that you continue to
@ protect her for both of our sakes."


@ The scroll was simply signed “A Ninja".


@ You see, the other day I did save a woman,
@ one who is very important to me. We were
@ at the arcade when some thugs attacked. I
@ was greatly outnumbered, and it took all
@ my effort to save her.


@ Could my ancestor's ninjitsu been at work?
@ Perhaps I should put my anger behind me
@ and study the way of the ninja instead...
/* 08056c14 */
.asciz "みなさん、はじめまして。オレは田中っていいます。この前、うらの倉庫で古い巻物をみつけたんです。その中にはこう書いてありました。

「これを見ているオヌシ。オヌシは、この巻物をたまたま見つけたのではない。見つけるべくして、見つかるように忍術をかけておいたものなのだ。わかるか？そう、これを書いているワシは忍者であり、オヌシのご先祖さまというわけだ。
先日ワシは、ワシの主人であるトノを矢の雨からお守りした。もちろん、命がけだ。その大仕事を終えた夜、夢をみた。そこには、若い男がいた。世の中に背をむけて生きている、とんがった若者だ。占いオババによると、その若者、どうもオヌシらしいのだ。そして、ワシと同じように命がけで、ある人を守っている。女性だ。その女性はトノの子孫なのだそうだ。こんな巻物を突然見ても、あまりピンとこないかもしれないが、願わくばその女性はオヌシが守り続けて欲しい。」
今、オレの心にはある女性がいます。その女性は、先日、パチンコで狙いうちされそうになっているのを、オレが必死で助けた女性です。これから、どうなるってわけじゃないけど、ここはひとつ、ご先祖様の忍術にまんまとかけられてみようかな…"
.balign 4, 0

@ The Ninja Scroll
/* 08057004 */
.asciz "忍者の巻物"
.balign 4, 0

@ \x95\x5c should be 表, assembles to \x95
@ \x8f\x5c should be 十, assembles to \x8f

@ A strange letter has arrived from the
@ Rhythm League.


@ ”Congratulations!! Remix 8 was almost
@ impossible, but you beat it! ...that would
@ be the extravagant way to congratulate you,
@ but we're going to show restraint.  At any
@ rate, you've earned a lot of medals and
@ gotten a really high flow score, haven't you?
@ This is an incontestable fact that we
@ recognize.  You are the greatest! No,
@ you're the super greatest!

@ ...that is how we feel, but we're not going
@ to spoil you with too much praise.  The
@ rhythm that your body felt in this game is
@ only a tiny fraction of all of Rhythm Heaven.
@ If this game has made you take an interest
@ in rhythm, you should seize this opportunity
@ to explore your rhythmic limits!  Developing
@ your sense of rhythm is awesome, man!!
@ You totally need to go for it!!

@ ...is what we'd say if we wanted to pressure
@ you, but we're not going to force you to do
@ anything you don't want to do.

@ However, we are serious.

@ We really want you to grow and master your
@ rhythm!


@ We believe that someday you will return as
@ the leader of Rhythm Heaven! In fact, we
@ believe only YOU can master the rhythm
@ necessary to do so!!

@ You really are the best!

@ Thank you for playing!”


@ Sincerely, 
@ Representative for the Rhythm League

@ Space Uncle
/* 08057010 */
.asciz "なぞのリズム組織から最後の通達が届きました。

「おめでとう！！リミックス８のパーフェクト、かなりサイコーでした～！…と、明るく祝福するのはやめておく。たしかにキミは、この「リズム天国」でスバラシイ成績を残した。これはまぎれもない事実で、我々も\x8f\x5c分みとめている。キミは最高だ！もう、超サイコーなんでーす！！…と、つい、うれしくなってしまうが、楽しくたたえるのは やめておく。
今回、このゲームでキミが体感したリズムは、リズム界のほんのチョコットである。もしキミがリズムに対して、よりいっそうの興味を持ってくれたならば、ぜひこれを機会にノリノリになってほしい！だって、ノリノリってサイコーなんだヨ！！もう、超オススメなんだからー！！…と、つい、ウキウキしてしまうが、うかれてオススメするのはやめておく。
我々は、本気だ。
本気でキミに、ノリノリであってほしいのだ！
このリズム界をリードするのが、キミであると信じている！っていうか、キミしか信じられなーい！！
もう、キミってサイコーなんだもーん！！
遊んでくれてありがとう！」


\x01\x52なぞのリズム組織代\x95\x5c
\x01\x52スペースおじさん"
.balign 4, 0

@ The Final Letter
/* 080573d0 */
.asciz "さいごの通達"
.balign 4, 0


@ WISH Can't Wait For You

@ Vocals: Tanaka Soushi
@ Lyrics and Composition: Tsunku♂
@ Arrangement: Yuasa Kouichi


@ I can't wait for you so tonight is my goodbye
@ I wanted for us to love each other more
@ This lonely night makes me remember 
@ Many of our happy moments
@ The meeting in this city and
@ the burning passion we had
@ Without any doubts we held each other tight


@ It's the caprice of life, isn't it
@ This wish for us to meet again

@ Before I could notice
@ You were giving me a cold kiss


@ My dreams are becoming hazy
@ You are becoming hazy
@ It's burning, burning
@ The pain in my chest
@ I can't really take it


@ I can't wait for you so tonight is my goodbye
@ I wanted for us to love each other more

@ This lonely night makes me remember 
@ Many of our happy moments


@ I can't wait for you so tonight is my goodbye
@ I hoped we could be together

@ Our favorite station makes me remember
@ Lonely, our happy moments
/* 080573e0 */
.asciz "ＷＩＳＨ　君を待てなくて　
うた：田中総史
作詞/作曲：つんく
編曲：湯浅公一

君を待てなくて　今夜さよなら
もっと愛しあいたかった
孤独な夜が　幸せだった頃を
たくさん想い出させる
この街で出会って 激しく恋をした

戸惑う事も無く 抱きしめ合ってた

それは気まぐれだね
すれ違ってく想い

いつの間にか冷たい
キスをしていた


夢がかすんで行く
君がかすんで行く
熱い熱い
胸の痛み
我慢できないね


君を待てなくて　今夜さよなら
もっと愛しあいたかった
孤独な夜が　幸せだった頃を
たくさん想い出させる

君を待てなくて　今夜さよなら
二人夢つかみたかった
いつもの駅が　幸せだった頃を
寂しく想い出させる"
.balign 4, 0

@ Lyrics: WISH
/* 08057628 */
.asciz "歌詞カード③"
.balign 4, 0


@ Honey Sweet Angel of Love

@ Vocals: Ami Tokito
@ Lyrics and Composition: Tsunku♂
@ Arrangement: Suzuki “Daichi” Hideyoki
@ Translation: Trickart


@ Charm of love Wonder of love
@ Shape of love Nuance of love
@ Honey sweet angel

@ What is the meaning of love in reverse!
@ I do not understand it at all


@ Moreover, in other words to reverse
@ it means love

@ Very sweet-sour strawberry milk
@ We look like it
@ I LOVE U


@ Charm of love Wonder of love
@ Shape of love Nuance of love
@ Honey sweet angel
/* 08057638 */
.asciz "恋のハニースイ～トエンジェル
うた：時東ぁみ
作詞/作曲：つんく
編曲：鈴木Daichi秀行
 
恋の魅力  恋の不思議
恋の形  恋のニュアンス
ハニースイ～トエンジェル



逆の意味で 「好き」って何よ！
超わかんな～い

さらに逆に 言い換えると
スキ みたいなんですよ



めっちゃ あまずっぱい いっちごミルク
そんな感じね 私たち
I　LOVE　U　　

恋の魅力 恋の不思議
恋の形 恋のニュアンス
ハニースイ～トエンジェル\n"
.balign 4, 0

@ Lyrics: Sweet Angel
/* 080577c4 */
.asciz "歌詞カード②"
.balign 4, 0


@ The☆Bon-Odori

@ Vocals: Ami Tokito
@ Lyrics and Composition: Tsunku♂
@ Localization: SirNiko

@ Original lyrics, in latin script:

@ Ha～ Hanabi agareba～
@ Ha Ah～ Kansei agaru～
@ Ha～ Ninki agareba～
@ Ha Ah～ Kyuuryou agaru～


@ Matsuri da wasshoi!
@ Nippon juu ga wasshoi!
@ Sore hikkuri kaette
@ dondo pa--n pan
@ Ha～ Bon-Odori


@ Ha～ Ame ga agareba～
@ Ha Ah～ Yagura ni agaru～
@ Hora! Matsuri da wasshoi!
@ Korezo Meido in Japan!
@ Sore hikkuri kaette
@ dondo pa--n pan
@ Ha～ Bon-Odori


@ Localized lyrics:

@ Ha～ When rockets start to fly～
@ Ha Ah～ Cheers will fill the sky～
@ Ha～ When the spirits are high～
@ Ha Ah～ The more people will buy～


@ It’s a festival, hooray!
@ All Japan says hooray!
@ Now we turn around and
@ dondo pa--n pan
@ Haa～ Bon-Odori 


@ Ha～ When the rain is dry～
@ Ha Ah～ Climb up the turret and spy～
@ Oh! It’s a festival, hooray!
@ This is it! It’s made in Japan!
@ Now we turn around and
@ dondo pa--n pan
@ Haa～ Bon-Odori 
/* 080577d4 */
.asciz "ザ☆ぼんおどり
うた：時東ぁみ
作詞/作曲：つんく

は～花火あがれば～
は～あ～歓声あがる～

は～　人気あがれば～
は～あ～　給料あがる～
祭りだわっしょい！
にっぽん中がわっしょい！

それ　ひっくり返って　ドンドパンパン
は～　盆踊り～

は～雨があがれば～
は～あ～やぐらに あがる～


ほら！祭りだわっしょい！
これぞ　メイド イン ジャパン　

それ　ひっくり返って　ドンドパンパン
は～　盆踊り～"
.balign 4, 0

@ Lyrics: The☆Bon-Odori
/* 08057958 */
.asciz "歌詞カード①"
.balign 4, 0

@ Hello! This is DJ MAN-K!!
@ We have another fantastic guest today,
@ the Rap Men (RM). Pleasure to meet you!

@ RM: Aw, yeah, pleasure to meet you,
@ we ARE the Rap Men.

@ DJ: Your new single is great!

@ RM: Ain't it? You know what I mean?

@ DJ: Uh, uh, the BEST!

@ RM: Unfortunately, we have a problem.

@ DJ: Woah! What kind of problem?

@ RM: A rip-off duo has appeared, and
@ they call themselves the Rap Women.

@ DJ: That's crazy, isn't it!?

@ RM: Uh! Not only that, they secretly
@ ate the snacks in our dressing room.

@ DJ: No way!  That must've been a shock!

@  RM: And then they left a note.

@ DJ: What did it say?

@ RM: It said “Secret snacking is the BEST!”

@ DJ: Wow, that's just harsh...


@ RM: Ain't it?  I was so mad that I yelled out...

@ DJ: “Lack of snacks makes me DEPRESSED!”

@ RM: Uh!? How did you know?

@ DJ: 'Cuz I've been playing Rhythm Heaven!
@ And now for a commercial break!


@ From our sponsers...

@ Raise your mood with a little music...
@ Rhythm Heaven! Buy it!
/* 08057968 */
.asciz "はいどーもー！DJ SALUでーす！
今日もステキなゲストが来てくれています。ラップメン（RM）のおふたりでーす。よろしくどうぞ～！
RM「あ、どうも ラップメンです」
DJ「新曲、いいじゃないですか～！」
RM「せやろ～。わかりますか？」
DJ「うん、うん。サイコー！」
RM「ところで、なやみがあるんですわ」
DJ「え！？え～っと、…ど、どんな？」
RM「なんか、うちらのバッタモンが現れたんですわ、ラップウィメンとかいう」
DJ「ほんとですか！？」
RM「うん。しかも楽屋にあった うちらのおやつをないしょで食べてもうたんですわ」
DJ「エー！ショックですねぇ…」
RM「しかも、おき手紙があってね」
DJ「なんて？」

RM「べつばら サイコーって」
DJ「なんて大胆な…」
RM「でっしゃろ？くやしくて叫びました」
DJ「おやつがナイヨ～ってですか？」
RM「！？ なんでしってんの？」
DJ「だってリズム天国やってるもーん！ではここでCMでーす」
CM「ノリ感アップに… リズム天国！買ってネ！」
\x01\x52おわり"
.balign 4, 0

@ Rap Report
/* 08057cb4 */
.asciz "とあるラジオ番組"
.balign 4, 0

@ April 16 - Today I enlisted in the Marcher Corps!
@ I'm gonna do my best for my new comrades!

@ April 20 - Today the commander got angry at
@ me for not being able to march in step with
@ the others.

@ April 28 - Today I swept the front of the station.
@ An old woman said to me, “Thank you for your
@ hard work.” and gave me a piece of candy.
@ I'm so happy!

@ May 4 - I've been feeling listless lately. Maybe
@ this is what they call the summer doldrums. If I
@ don't shape up, I might get left behind...

@ May 8 - The commander has been acting weird...
@ He just told me he played with rabbits in space
@ yesterday.  I wonder if he's OK...?

@ May 16 - Today, I saw a group of people that
@ looked just like the commander.  This can't
@ just be my imagination!

@ May 22 - I saw it!  The commander...

@ The diary ends here.

@ What could have happened to the commander!?
/* 08057cc8 */
.asciz "４月１６日 今日からマーチャに入隊！みんなの役に立つようにがんばるぞー！

４月２０日 今日はみんなと「あしぶみ」がそろわず、隊長におこられちゃった。

４月２８日 今日は駅前の清掃活動をした。みしらぬおばあちゃんが「キレイにしてくれてありがとう」と言ってアメをくれた。うれしかった！
５月４日 最近なんだかだるい。これが５月病というものなのかな？しっかりしないと、おいてけぼりをされそうだ…

５月８日 隊長のようすがおかしい… 昨日、宇宙でウサギと遊んだと言っている。大丈夫かな…？

５月１６日 最近、隊長そっくりの人をよくみかける。
気のせいだろうか？
５月２２日 ボクは見てしまった。隊長が…


活動記録はここで終わっている。
いったい、隊長の身になにが！？"
.balign 4, 0

@ Marcher's Diary
/* 08057f50 */
.asciz "マーチャ活動記録"
.balign 4, 0

@ \x95\x5c should be 表, assembles to \x95

@ The Secret Story Behind the
@ Development of the Horse Machine

@ Today we have a special interview with
@ “Mr. F", the developer of the “Horse Machine”.
@ The Horse Machine can be played in the
@ “Toys" menu if you have seven medals.


@ Mr. F: “I started developing (the Horse Machine)
@ in order to share the good feeling of riding
@ a horse."

@ Though his words may be simple, Mr. F speaks
@ with passion in his voice.


@ Mr. F: “But when I tried to fulfill all the conditions
@ of a game, I often lost sight of the answer and
@ there were times when I thought of giving up.”

@ Mr. F has experienced hard times. It is often
@ difficult to express yourself properly within the
@ framework you are given.


@ Mr. F: “But if the people who play (The Horse
@ Machine) become even the slightest bit happier, 
@ all those hardships will fly away!”

@ You are so dedicated to your craft, Mr. F.
@ We will anxiously await your next creation.
@ Thank you.
/* 08057f64 */
.asciz "メダルでもらえるおまけ「うまマシーン」の開発にたずさわった、Fさんに開発のお話をきくことができました。
Fさん「うまを走らせる気持ちよさを伝えたいという想いから開発がスタートしました」
シンプルながら熱い想いをことばに託すFさん。
Fさん「しかし、ゲームとしてのいろいろな条件を満たそうとすると出口が見つからず、開発の断念を意識した時期もありました」
苦しい時期もあったFさん。自分の想うものを決められた枠内で\x95\x5c現するのは大変なんですね。
Fさん「遊んでくれた人がほんのチョットでもハッピーになってくれたら、もうそれで苦労なんか吹っ飛んじゃいますけどネ！」
サービス精神旺盛なFさん。これからの作品も期待しております。ありがとうございました。"
.balign 4, 0

@ Horse Machine's Story
/* 080581dc */
.asciz "うまマシーン開発秘話"
.balign 4, 0


@ From Radio Heaven News in Deep Space, I'm Ryan
@ Williams.

@ I'm here live in the void of space for an
@ exclusive interview! To my right is Mr.
@ Spaceballer. How are you today?
@ I'm well. I think I really gave it my all in the last
@ game.


@ Good to hear. How's the season looking right
@ now?
@ I'm eating rice balls, so it's right on the mark!

@ And what is your goal in all this?
@ To not forget the rice balls!


@ Makes sense to me. Do you have a girlfriend?
@ Yes, I do. She's right over there. Celeste comes
@ to all of my practices and games.

@ What else does Celeste do for you?
@ What else? Her cooking specialty is rice balls!


@ So it sounds like you two are the perfect match.
@ Indeed. It may be trite, but we were made for
@ each other.


@ I'm watching you in the middle of the game.
@ You're getting homerun after homerun. Then
@ suddenly, after watching a ball sail into outer
@ space, I look back, and you're not there.
@ Why the masks?
@ What are you talking about?


@ Why do you put on, for example, a rabbit
@ costume?
@ I don't know what you're talking about.

@ Answer the question!
@ Ah, time is up. Excuse me.


@ That's it, folks! Mr. Spaceballer left his seat.
@ There seems to be some kind of special
@ circumstance that we cannot be privy to.
@ That's all the information we're getting out
@ of him. Ryan Williams, Radio Heaven News,
@ Deep Space.
/* 080581f4 */
.asciz "ただいま宇宙空間で活躍中のエアーバッターさんにインタビューしてみました！

Q．今シーズンの調子はどうですか？
A．おにぎり食べてるから、バッチシです！

Q．目標は？
A．おにぎりを欠かさないこと！です。

Q．彼女はいますか？
A．はい、います。

Q．彼女の得意料理は？
A．おにぎりです！

Q．なぜ、ゲーム中に かぶりものを？
A．なんのことですか？

Q．なぜ ウサギなどのコスチュームを？
A．しりません。

Q．質問に答えてください！
A．もう、時間ですので失礼します。

ここで、エアーバッターさんは席を外されてしまいました。なにかワケありのようです。以上、宇宙空間からでした。"
.balign 4, 0

@ Inside Spaceball
/* 08058424 */
.asciz "エアーバッター速報"
.balign 4, 0

@ You know that little guy in Night Walk?
@ It turns out he really loves music.
@ Actually, it seems he's appeared in other
@ music-related games before, and it's
@ because of that connection that he appears
@ in Rhythm Heaven.


@ Recently, I had a chance encounter with
@ him on the street, but when I tried to
@ talk to him, he just said “I love music!”
@ and disappeared up some stairs. He's such
@ a musical buff! I hope I meet him again.
@ But... I don't even know his real name!


@ So, here we have the Night Walk quiz!

@ The music loving fellow is named...

@ ①②③④-⑤⑥⑦



@ All you have to do is fill in the letters!
@ To figure it out, try filling in the blanks
@ on the next page!


@ The Secret of the “Quiz Show” game

@ You know how the ①layer in Quiz has to push
@ the button the right number of times to wi⑦?
@ Wel②, instead of stopping on the right
@ answer tr⑤ pushing the buttons as m③ny
@ times ⑥s possible for a cool surprise!
@ Well, at least I think it's prett④ cool.
/* 08058438 */
.asciz "ナイトウォークに出演している彼は、とっても音楽がスキなのだそうです。以前も音楽関係の仕事をしていたそうで、そのコネで今回このゲームに出演しているのだそうです。この前、街で偶然彼をみつけたので話をきいてみると「音楽大スキ！」と言い残し、階段をのぼってどっかに行っちゃいました。そんな音楽好きの彼に またどこかで会えたらいいなぁと、チョットだけ思いました。そういえば彼、なんていう名前なのかなぁ？
さぁ、ここでクイズです！
その彼は名前は…

\x01\x43\x03\x31\x01\x6d①②③④⑤
\x01\x4c\x03\x30\x01\x73
各番号に入る文字を答えてくださいネ！
正解すると、次のページの文章を読むことができまーす！！


\x03\x31\x01\x6d\x01\x43リズムゲームの「クイズ」のヒミツ
\x03\x30\x01\x73\x01\x4c
あのゲームは、\x03\x31\x01\x6d①②③④\x03\x30\x01\x73ーがボタ\x03\x31\x01\x6d⑤\x03\x30\x01\x73をたたくと、たた\x03\x31\x01\x6d③\x03\x30\x01\x73た数だけカウントされますよね？実は、ゲームをほっと\x03\x31\x01\x6d③\x03\x30\x01\x73て、ボタ\x03\x31\x01\x6d⑤\x03\x30\x01\x73をたたきまくると、た\x03\x31\x01\x6d③\x03\x30\x01\x73へ\x03\x31\x01\x6d⑤\x03\x30\x01\x73なことがおきる\x03\x31\x01\x6d⑤\x03\x30\x01\x73です。と\x03\x31\x01\x6d③\x03\x30\x01\x73っても、まぁ、あまり期待しな\x03\x31\x01\x6d③\x03\x30\x01\x73でネ～！"
.balign 4, 0

@ Night Walk Riddle
/* 080587ac */
.asciz "ナイトウォーク情報"
.balign 4, 0

@ I'm retired, but I grow vegetables to pass the
@ time. Lately, my vegetables have been growing
@ facial hair! Obviously, customers don't want to
@ buy gross, hairy vegetables. Since the
@ vegetables won't sell if they're covered in
@ hair, I've been plucking the hairs -- But I
@ couldn't always pluck them perfectly.

@ This was quite a dilemma.
@ While trying to liven up the mood, I decided to
@ pluck the hairs while listening to music. Then
@ I was able to pluck them cleanly every time, and
@ it's somehow more enjoyable now! The power
@ of music really is incredible. I think everyone
@ should try plucking the hairs from vegetables!

@ - Uncle Sabiir
/* 080587c0 */
.asciz "わたしは野菜をつくっているおじさんです。最近、うちの野菜たちにヒゲが生えるんです！とてもブキミだし、これでは売り物にならないんでヒゲをぬくんですが、これがまたキレイにぬけないのです。こまったわたしは気をまぎらわせようと、音楽をききながらノリノリで野菜たちの毛をぬきました。するとなんと！キレイにぬけるのです！しかもなんだか楽しいんです！音楽のチカラってすばらしいですね。みなさんもぜひ野菜の毛をぬいてみてください！"
.balign 4, 0

@ Letter to the Editor
/* 08058960 */
.asciz "毛ぬき投書"
.balign 4, 0

@ Hi there. I run the local cafe. You can say I'm
@ a “manager." Thanks to the regulars, the
@ business is about tolerable. Ah, right, I get
@ ahead of myself. I'm a dog.

@ ...

@ But being a dog doesn't mean I can't own a
@ cafe. In fact, people say that my doggedness
@ is what keeps this little shop open. I also hear
@ that many of my customers really like music.


@ Especially when it comes to rhythm: a lot of
@ them are really into it. There is even one who
@ has completed a bunch of Perfect Campaigns.
@ I am always so surprised when they come in
@ with yet another medal! Anyway...


@ Although I am always running the cafe, to tell
@ you the truth, it's only a front for my real
@ passion. Truthfully, I...

@ Well, it's a bit embarrassing, but I'm always
@ merrily listening to music with my dog
@ headphones! Basically,  I can't brew coffee
@ without grooving to the music. I'm in a fix. Heh.


@ I hang out at all sorts of places around town,
@ so if you see me, please pet me!
/* 0805896c */
.asciz "私は喫茶店を経営しております。まぁ、分かりやすく言うと喫茶店のマスターです。経営のほうは常連さんのおかげで、まずまずといったカンジですね。あ、そうそう、先に言っておきますが、私は犬です。
うちのお客さんは、音楽が好きな方が多いんですよねぇ。とくに、リズムに関して、かなりのこだわりをお持ちの方が来られます。なかには、パーフェクトキャンペーンをいくつも達成されてる方もいらっしゃって、もう ビックリしちゃいますヨ！
まぁ、いつもはこんなカンジで喫茶店のほうを営んでおりますが、実はこれ、仮のすがたなんです。本当の私は… おはずかしい話ですが、犬用のヘッドホンをしながらノリノリで、はしゃぎまわっているんです！やはり、ノリノリなしではやってられないんですよねぇ。こまったものです。ははは。
わりといろいろな所に遊びに出かけたりもしているので、もし見かけたらナデナデして下さいネ～！
ではまた。"
.balign 4, 0

@ More Than a Barista
/* 08058c7c */
.asciz "経営者に聞く"
.balign 4, 0

@ How to Play this Game

@ It's not such a complicated game that it needs
@ explanation. So there's actually not much to
@ write here.


@ Well, there is one thing. The whole point is to get
@ into the music, so you should play with that goal
@ in mind. You'll enjoy it much more if your whole
@ body feels the beat. That's our advice.

@ That's about it. Pleasure to meet you!
/* 08058c8c */
.asciz "このゲームの遊び方

っていうか、とくに説明がいるほど複雑なゲームじゃないんですヨ～。だから、ここに書くこともとくにないんですよねぇ。
あ、そうそう、音楽にノるのがポイントなので、ノリノリで遊ぶのがいいですヨ！オススメでーす！
そんなとこですね。よろしくどうぞ～。"
.balign 4, 0

@ Handling Instructions
/* 08058d94 */
.asciz "取り扱い説明書"
.balign 4, 0

@ Hello!

@ Thanks for purchasing “Rhythm Heaven Silver.” Huh? You borrowed it from a friend? Or bought
@ it u-used?


@ Well, putting that aside, we're honored that
@ you're interested in this game. We are glad we
@ met you!

@ We hope you enjoy it for a long, long time!!

@ Thank you.

@ <Translator's Note and translation credits go here>
/* 08058da4 */
.asciz "ごあいさつ
このたびは、「リズム天国」をお買い上げいただきまことにありがとうございます。あ、おともだちに借りているのかな？そ、それとも、ちゅ、中古ですか！？
ま、それはさておき。このゲームに興味をもっていただいて光栄です。あなたとの出会いに感謝です！
末永く楽しんでいただけたら、うれしいでーす！！
ありがとうございました。"
.balign 4, 0

@ Rhythm Heaven Welcome
/* 08058ee8 */
.asciz "リズム天国へようこそ！"
.balign 4, 0

@ lmao random table entry over here? wtf?
@ Reading Material background 2
/* 08058f00 */ .word D_08cd29ac
/* 08058f04 */ .word D_06000000
/* 08058f08 */ .word 0xffffffff
/* 08058f0c */ .word D_08cd2cec
/* 08058f10 */ .word D_0600e800
/* 08058f14 */ .word 0xffffffff
/* 08058f18 */ .word D_0890b330
/* 08058f1c */ .word D_03004b64
/* 08058f20 */ .word 0x00000200
/* 08058f24 */ .word 0x00000000
/* 08058f28 */ .word 0x00000000
/* 08058f2c */ .word 0x00000000

@ Invalid Data
/* 08058f30 */
.asciz "\x01\x43\x03\x32\x01\x6c



無効データ"
.balign 4, 0

@ Error
/* 08058f48 */
.asciz "\x02\x33\x01\x33\x01\x43エラー"
.balign 4, 0

.end
