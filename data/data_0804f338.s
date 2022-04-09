.section .rodata
.syntax unified

.include "include/gba.inc"

/* 0804f338 */
.asciz "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ"
.balign 4, 0

glabel D_0804f370
.asciz "＿"
.balign 4, 0

glabel D_0804f374
.asciz "！"
.balign 4, 0

glabel D_0804f378
.asciz "？"
.balign 4, 0

glabel D_0804f37c
.asciz "，"
.balign 4, 0

glabel D_0804f380
.asciz "－"
.balign 4, 0

@ Notification from the Rhythm Reference Room
glabel D_0804f384
.asciz "　リズム資料室からお知らせ"
.balign 4, 0

@ You have recieved [_______]
glabel D_0804f3a0
.asciz "　　　　　　　　　　　　　　　　　　　　を入荷しました。"
.balign 4, 0

glabel D_0804f3dc
.asciz "「　"
.balign 4, 0

glabel D_0804f3e4
.asciz "　」"
.balign 4, 0

@ See you later.
/* 0804f3ec */
.asciz "

では　また。
\n"
.balign 4, 0

@ I'm still unpacking boxes, so
@ please come back in a bit.
/* 0804f400 */
.asciz "
いま　ちょっと　しこみ中なので
また　あとで　きてくださいね。
\n"
.balign 4, 0

@ I'm pretty good at Rhythm Games.
@ If you need help, <come to the Cafe>.
/* 0804f444 */
.ascii "
わたしに　できることが　あれば、\n"
.text_gold
.ascii "ちからに　なりますよ"
.text_normal
.asciz "。
\n"
.balign 4, 0

@ This is the Cafe.
@ <When you can't finish a game>,
@ or when you just want a break,
@ please come here and relax.
/* 0804f488 */
.ascii "
ここは　いわゆる　キッサ店です。
ゲームが　"
.text_gold
.ascii "うまくできないとき"
.text_normal
.asciz "や
つかれたときにでも　おいで下さい。"
.balign 4, 0

@ Welcome. This is your
@ first time here, isn't it?
/* 0804f4f4 */
.asciz "
いらっしゃいませ。
こちらに　来たのは　はじめてですね？
\n"
.balign 4, 0

@ Come back in a while!
/* 0804f530 */
.asciz "

しばらく　してから　きてね～。
\n"
.balign 4, 0

@ Don't let it frustrate you.
@ You're supposed to enjoy yourself.
/* 0804f554 */
.asciz "
あまり　ムキに　ならずに
楽しんで下さいね…
\n"
.balign 4, 0

@ Just keep moving to the music,
@ and you'll have fun doing it, too.
/* 0804f584 */
.asciz "
それと同時に　音楽に　ノるのが
楽しくなるとも思うんです。
\n"
.balign 4, 0

@ You know, after a few tries
@ I think you'll manage that superb.
/* 0804f5c4 */
.asciz "
なんどか　やるうちに　コツが
つかめると　思いますよ。
\n"
.balign 4, 0

@ Please try your best
@ for those Perfects.
@ See you soon!
/* 0804f600 */
.asciz "
パーフェクト　がんばってくださいね。
ではまた。
\n"
.balign 4, 0

@ Sorry for yelling. I just got
@ a little too excited there.
/* 0804f634 */
.asciz "
大きい声をだして　すみません。
なんだか　うれしかったものですから…
\n"
.balign 4, 0

@ Please enjoy the
@ game. See you!
/* 0804f67c */
.asciz "
ゲーム　楽しんでくださいね。
ではまた。
\n"
.balign 4, 0

@ Is that right? Loose lips can sink
@ friendships... please forgive me.
/* 0804f6a8 */
.asciz "
そうですか。
ウワサ話なんて　してしまい
しつれいしました。"
.balign 4, 0

@ Had enough, I suppose? Go
@ get some rest. I'll be waiting.
/* 0804f6e4 */
.asciz "
おつかれでしょう？
少し　休んでくださいネ。
では　また。"
.balign 4, 0

@ Wow. It looks like you've
@ mastered the game. Not bad.
/* 0804f720 */
.asciz "
いやいや、しかし　なんと　まぁ
コンプリートですか。
やりますな～。"
.balign 4, 0

@ Well, in celebration I've added
@ more songs to the studio.
/* 0804f764 */
.asciz "
そうそう、
お祝いに　ささやかでは　ありますが
スタジオの曲をふやしておきました。\n"
.balign 4, 0

@ Oh, I'm so happy I think
@ I might just start to cry.
/* 0804f7b8 */
.asciz "
なんだか　私も、すっごく
うれしくって　ウルウルです…
\n"
.balign 4, 0

@ You must have excellent rhythm
@ sense to have gotten this far.
/* 0804f7f4 */
.asciz "
もう、そこまで　やりこんだら
リズム感　かなり　良くなって
いるでしょうネ！"
.balign 4, 0

@ Unbelievable!!
/* 0804f840 */
.text_large
.text_gold
.ascii "

アンビリーバボー!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Good job!!
/* 0804f868 */
.text_large
.text_gold
.ascii "

グッド　ジョブ!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Congratulations!!
/* 0804f88c */
.text_large
.text_gold
.ascii "

おめでとー!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ You're good!!
/* 0804f8ac */
.text_large
.text_gold
.ascii "

やるじゃなーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Not too bad!!
/* 0804f8d0 */
.text_large
.text_gold
.ascii "

すごいじゃなーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ I was moved!
/* 0804f8f8 */
.text_large
.text_gold
.ascii "

感動したー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Good luck!
/* 0804f918 */
.text_large
.text_gold
.ascii "

グッド　ラック！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Go! Go!>
/* 0804f93c */
.text_large
.text_gold
.ascii "

イケイケー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Fight!>
/* 0804f95c */
.text_large
.text_gold
.ascii "

ファイトー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ <Go for it!>
/* 0804f97c */
.text_large
.text_gold
.ascii "

がんばれー！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Maybe I should try a little harder
@ to get good at Rhythm Heaven...
/* 0804f99c */
.asciz "

私も　ゲーム　してみようかな…
\n"
.balign 4, 0

@ But you'll be a bit happier once you
@ find your Rhythm Sense, I'm sure.
/* 0804f9c0 */
.asciz "
でも、リズム感が　よくなると　きっと　ちょっと　ハッピーに　なるんでしょうね。"
.balign 4, 0

@ Well, not that I'm very
@ aware of it myself.
/* 0804fa10 */
.asciz "
ま、私なんかは　あんまり
いしきすることも　ないんですがね。
\n"
.balign 4, 0

@ By the way, I wonder how
@ Rhythm Sense is for humans?
/* 0804fa50 */
.asciz "
それはそうと、リズム感って　人間にとって　どういうものなんでしょうねぇ。
\n"
.balign 4, 0

@ Did you know that already?
@ Sorry if it seems like I'm
@ talking down to you.
@ Anyways, see you again.
/* 0804fa9c */
.asciz "
まぁ、そういうモン　らしいです。
テキトーで　ごめんなさいネ。
では　また。"
.balign 4, 0

@ Halfway between one clap
@ and the next (the "onbeats")
@ is called the "offbeat".
@ At least, so I understand.
/* 0804fae8 */
.asciz "
その　手びょうしと手びょうしの
ちょうど　まん中のタイミングが
「ウラ」なんだそうです。"
.balign 4, 0

@ How do I explain it...
@ Well, you naturally clap
@ your hands to music, right?
/* 0804fb40 */
.asciz "
たとえば、音楽にあわせて
自然に手をたたくとしますね。
\n"
.balign 4, 0

@ Honestly, I wasn't sure
@ what it meant either.
@ So, the other day I looked
@ up the definition.
/* 0804fb7c */
.asciz "
ま、私も　それほど　詳しくはないので　アレなんですけどネ。
\n"
.balign 4, 0

@ I hear the word "offbeat" often. 
@ Do you know what an "offbeat" is?
/* 0804fbbc */
.asciz "
それはそうと、この世界でよく聞く
「ウラ」って　どういうものか
知ってますか？"
.balign 4, 0

@ Well, nothing we can do but practice.
@ Take care for now.
/* 0804fc0c */
.asciz "
ま、ぼちぼち　やっていきましょうネ。
では　また。
\n"
.balign 4, 0

@ Counting to yourself is hard, isn't it?
@ I always go too fast or lose my place.
/* 0804fc44 */
.asciz "
空白を　カウントするってのは
ムズいもんですね～。
\n"
.balign 4, 0

@ I always have trouble with
@ the rests in the second test.
/* 0804fc7c */
.asciz "
なかなか　どうして　２つめのテストが　うまく　できないんですヨ。
\n"
.balign 4, 0

@ I just tried it again yesterday, but
@ 65 points seems to be my limit...
/* 0804fcc0 */
.asciz "
私も　ときどき　やるんですけど
６５点くらいが　限界なんですよねぇ…
\n"
.balign 4, 0

@ Say, when was the last time you
@ checked your "Rhythm Test" score?
/* 0804fd08 */
.asciz "
それはそうと、
最近　「リズム感測定」してます？
\n"
.balign 4, 0

@ Maybe it's for the best.
@ For musical instruments, you
@ just have to keep at it.
@ You should try your best, too.
/* 0804fd3c */
.asciz "
ま、楽器は　すぐには　うまくならないでしょうし、じっくりと　つきあってみましょうかね…"
.balign 4, 0

@ You'll find it's hard to quit
@ once you start a lesson.
/* 0804fd94 */
.asciz "
レッスンを　やりだすと　これが
なかなか　やめられないんですよね～。
\n"
.balign 4, 0

@ The teacher is really strict.
@ I asked him for an easier
@ lesson, but he told me to
@ just keep on trying my best.
/* 0804fddc */
.asciz "
先生が、こういうのは　すききらいが
あるから、ムリして　しないでネって
言ってましたけど、"
.balign 4, 0

@ I take lessons once a week, but
@ I don't really seem to improve.
/* 0804fe38 */
.asciz "
私は　週に１回だけ　レッスンを
うけてるんですが、なかなか
上達しませんねぇ。"
.balign 4, 0

@ Let me ask... have you tried the
@ Drum Lessons in the Prize Corner?
/* 0804fe88 */
.asciz "
それはそうと、おまけコーナーの　ドラムレッスンって　やったことあります？
\n"
.balign 4, 0

@ Learn from me, and don't forget
@ to take a break every so often.
@ Anyway, see you again.
/* 0804fed4 */
.asciz "
こんど　ドライブでも　行きませんか？
ま、よかったら　ですけどネ。
では　また。"
.balign 4, 0

@ What? Oh, I was talking to myself.
@ It was a monologue... sorry.
/* 0804ff24 */
.asciz "
あ、いや、こっちの話です。
ひとりごとですので…　すみませんね。
\n"
.balign 4, 0

@ I was up all last night playing.
@ I just couldn't stop myself...
/* 0804ff68 */
.asciz "

きのう　おそくまで　遊んでたからなぁ…
\n"
.balign 4, 0

@ By the way, right now
@ I'm terribly tired...
/* 0804ff94 */
.asciz "
それはそうと、
なんだか　今　すごく　ねむいのです…
\n"
.balign 4, 0

@ All I can do is pour
@ the coffee, but... heh.
/* 0804ffcc */
.asciz "
私は、コーヒーを　入れるだけしか
できませんが…　ははは…
\n"
.balign 4, 0

@ Well... he isn't a talkative person,
@ but you seem to be getting along.
/* 0805000c */
.asciz "
ま、まぁ　無口な方ですが
なかよくしたいんじゃないですか？
\n"
.balign 4, 0

@ Hm? You didn't order it?
@ Ah, I see. This is actually
@ for the guy next to you...
/* 0805004c */
.asciz "
え？　たのんでないって？　あぁ、これは　おとなりから　なんですが…
\n"
.balign 4, 0

@ By the way, here's the
@ coffee you ordered.
/* 08050094 */
.asciz "
それはそうと、
コーヒー　入りましたヨ。
\n"
.balign 4, 0

@ Hey, you're a human, right?
@ Well, despite our species I still
@ hope that we can get along
/* 080500c0 */
.asciz "
お客さんは　人間ですよね？
まぁ、私は　犬ですが　これからも
なかよくしてくださいネ～。"
.balign 4, 0

@ When you get to be my age,
@ time really does seem to fly.
/* 08050118 */
.asciz "
いやはや、このトシになると
時がたつのが　はやいですねぇ。
\n"
.balign 4, 0

@ I'm not one of those young pups,
@ either. I'm nine years old.
/* 08050158 */
.asciz "
かれこれ　９才で　もう　けっこう
いいトシなんです。
\n"
.balign 4, 0

@ By the way, if you hadn't
@ noticed, I'm actually a dog.
/* 08050190 */
.asciz "
それはそうと、
実は　私　犬なんですヨ。
\n"
.balign 4, 0

@ Just don't think that good
@ rhythm makes you qualified
@ to be a doctor, ha ha ha.
/* 080501bc */
.asciz "
まぁ、私には　詳しい理屈なんて
わからないですけどネ。ははは。
\n"
.balign 4, 0

@ Music is strange, isn't it?
@ It has this mysterious
@ power to heal the heart.
/* 08050200 */
.asciz "
音楽って　フシギですよね～。
どうして　あんなにも　心を
ゆさぶるんでしょうね。"
.balign 4, 0

@ Taking out a good old record and
@ reminiscing about the past
@ always makes me feel better.
/* 08050250 */
.asciz "
けっこう古いレコードなんかを　出してきて　当時を　思い出したりすると、ホッとするんです。"
.balign 4, 0

@ By the way, what do
@ you do when you're sad?
@ I always listen to music.
/* 080502ac */
.asciz "
それはそうと、悲しいときって
どうしてますか？
私は　もっぱら　音楽を　ききますねぇ。"
.balign 4, 0

@ Then again, if we gave speeches
@ with bongos or the neighbors
@ argued with trumpets, it'd get
@ noisy, don't you think? Ha ha ha.
/* 08050304 */
.asciz "
でも　もし、ドラムで　選挙演説とか
ボンゴで　夫婦ゲンカとかあったら
やかましそうですネ。ははは。"
.balign 4, 0

@ I learned it from another
@ customer, and now I want
@ to try it for myself.
/* 08050368 */
.asciz "
このまえ　いらっしゃった　お客さんが
教えてくれたんですけど、ちょっと
面白そうじゃないですか？"
.balign 4, 0

@ For example... you could play
@ a drum beat to ask "How are
@ you?" or say "Please come
@ visit!" even from far away.
/* 080503c8 */
.asciz "
タイコの大きな音で　リズムをきざんで
はなれた人と　コミュニケーションを
とるらしいんですヨ。"
.balign 4, 0

@ By attaching words and meanings
@ to certain beats, you can have a
@ conversation without speaking.
/* 08050428 */
.asciz "
リズムパターンに　言葉や　意味を　対応させて、会話をするんだそうです。
\n"
.balign 4, 0

@ Say... did you know that you can
@ have a conversation with rhythm?
/* 08050474 */
.asciz "
それはそうと、リズムで
会話ができるって　知ってました？
\n"
.balign 4, 0

@ Oh... but if you already knew that,
@ I'm sorry if I bored you.
@ See you later.
/* 080504b0 */
.asciz "
ご存知でしたら　つまらない話でしたネ。
すみません。ではまた。
\n"
.balign 4, 0

@ Collecting lots of medals will
@ unlock all sorts of prizes that
@ you can play with. Please do your
@ best to collect them all!
/* 080504f4 */
.asciz "
メダルを　集めると　いろいろな
おまけが　遊べるようになるので
がんばって　集めてくださいネ。"
.balign 4, 0

@ If you get a "Superb",
@ you'll even get a medal.
/* 08050554 */
.asciz "
で、「ハイレベル」をとると
メダルが　もらえるんです。
\n"
.balign 4, 0

@ There are three grades, you know:
@ "Try Again", "OK" and "Superb".
/* 08050590 */
.asciz "
ゲームの成績は「やりなおし」「平凡」「ハイレベル」の３つが、あるんですヨ。
\n"
.balign 4, 0

@ By the way, have you ever
@ gotten a "Superb" rating on a game?
/* 080505e0 */
.asciz "
それはそうと、ゲームで
「ハイレベル」っていう成績を
とったことありますか？"
.balign 4, 0

@ Oh! You're here, you're here!
@ I've been waiting, you know!!
glabel D_0805062c
.asciz "
お、きたきた！
待ってたヨ～！！
\n"
.balign 4, 0

@ Are you making progress?
@ Please do your best!
glabel D_08050650
.asciz "
ゲーム　すすんでますか？
がんばって　くださいね～。
\n"
.balign 4, 0

@ Aren't you getting tired?
@ Don't forget to rest now and then.
glabel D_08050688
.asciz "
だいぶ　つかれたのでは　ないですか？
ときどき　休んだほうが　よいですよ。
\n"
.balign 4, 0

@ You've been at this a while,
@ haven't you? Please rest a little.
glabel D_080506d8
.asciz "
かなり　はまってますねぇ。
すこしは　休んでくださいね。
\n"
.balign 4, 0

glabel D_08050714
.asciz ""
.balign 4, 0

glabel D_08050718
.asciz "\n"
.balign 4, 0
 
 @ Was that you on <
glabel D_0805071c
.asciz "そうそう、"
.balign 4, 0

glabel D_08050728
.text_gold
.asciz ""
.balign 4, 0

@ >?
glabel D_08050730
.text_normal
.asciz "で\n"
.balign 4, 0

@ I heard you just got a Perfect!?
glabel D_08050738
.asciz "パーフェクト　だしたんだって！？"
.balign 4, 0

@ You're still on ______
glabel D_0805075c
.asciz "そういえば、"
.balign 4, 0

@ Are you having trouble?
glabel D_0805076c
.asciz "行きづまってませんか？
\n"
.balign 4, 0

@ Hmmm... is
glabel D_08050788
.asciz "う～む…　"
.balign 4, 0

@ giving
glabel D_08050794
.text_normal
.asciz "に\n"
.balign 4, 0

@ you trouble earning that medal?
glabel D_0805079c
.asciz "てこずってるんですねぇ。
\n"
.balign 4, 0

@ Rumor has it
glabel D_080507b8
.asciz "ウワサを　きいたんですけど、\n"
.balign 4, 0

@ was doing a perfect campaign.
glabel D_080507d8
.text_normal
.asciz "　ばかり\n"
.balign 4, 0

@ Weren't you playing it just now?
glabel D_080507e8
.asciz "してるみたいですね。"
.balign 4, 0

@ Ah! Wait, I remember!
glabel D_08050800
.asciz "

あ、　ちょっと　思い出しました！
\n"
.balign 4, 0

@ Hey, here's a tip!
@ Soon
glabel D_08050828
.asciz "そうそう、
もうすぐ"
.balign 4, 0

@ is going
@ to be having a perfect campaign.
glabel D_0805083c
.text_normal
.asciz "で、
パーフェクトキャンペーンを
するそうですヨ。"
.balign 4, 0

@ Please keep on working hard.
@ I'll be here rooting for you~!
glabel D_08050874
.asciz "
これからも　がんばってね。
おうえん　してるからね～！
\n"
.balign 4, 0

@ If you like, I could let you
@ <skip that game> if you want to...
@
@ "Please skip it."
@ "No, thank you."
glabel D_080508b0
.ascii "う～ん、もし　よければ　なんだけどね、\n"
.text_gold
.ascii "進めるようにしておく"
.text_normal
.asciz "けど…？

　　　　　　　　「おねがいします」
　　　　　　　　「けっこうです」"
.balign 4, 0

@ <Leave it to me!>
glabel D_08050944
.ascii "
\n"
.text_large
.text_gold
.ascii "まかせとき！"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Oh, is that so?
@ You're determined to beat
@ it with your own strength.
@ Excellent!
glabel D_08050964
.asciz "そうですか。
じぶんの　チカラで
がんばるんですね。
エライ！！"
.balign 4, 0

@ I hope the next game will go
@ much better for you.
@ Tell me about it next time.
glabel D_080509a4
.asciz "
次のゲーム　どんなのでしょうね。
うまくできると　いいね～。
ではまた。"
.balign 4, 0

@ Well then, please
@ do your best!
glabel D_080509ec
.asciz "

では　がんばってくださいね～。
\n"
.balign 4, 0

@ Were you practicing for the
@ <Perfect Campaign>?
@
@         "That's right."
@         "Not right now."
glabel D_08050a10
.text_gold
.ascii "パーフェクト　キャンペーン"
.text_normal
.asciz "　に　そなえて　れんしゅうですか？

　　　　　　　　「そうなんです」
　　　　　　　　「ちがいますヨ」"
.balign 4, 0

@ Just try your best and
@ go get that Perfect!
glabel D_08050a98
.asciz "
がんばって　パーフェクト、
とってくださいネ！
\n"
.balign 4, 0

@ At long last...
@ You have completed
@ the Perfect Campaign!
glabel D_08050acc
.asciz "
とうとう、
パーフェクト　キャンペーンを
コンプリートしたんだって！？"
.balign 4, 0

@ Crazy awesome!!
glabel D_08050b14
.text_large
.text_gold
.ascii "

めちゃすごーい!!"
.text_small
.text_normal
.asciz ""
.balign 4, 0

@ Gameplay Logs
glabel D_08050b38
.asciz "ゲームプレイ履歴"
.balign 4, 0

glabel D_08050b4c
.asciz "  "
.balign 4, 0

glabel D_08050b50
.asciz "No. "
.balign 4, 0

glabel D_08050b58
.asciz "---"
.balign 4, 0

@ Average points: 
glabel D_08050b5c
.asciz "平均点 "
.balign 4, 0

@  (Out of 1000 points)
glabel D_08050b64
.asciz " (1000点満点)"
.balign 4, 0

@ Number of times played: 
glabel D_08050b74
.asciz "遊んだ回数 "
.balign 4, 0

@ (x) times
glabel D_08050b80
.asciz "回"
.balign 4, 0

@ (First OK: 
glabel D_08050b84
.asciz "  ( 初合格: "
.balign 4, 0

@ not yet
glabel D_08050b94
.asciz "まだ"
.balign 4, 0

@ th time
glabel D_08050b9c
.asciz "回目"
.balign 4, 0

@ First Superb: 
glabel D_08050ba4
.asciz "  初大合格: "
.balign 4, 0

@ not yet )
glabel D_08050bb4
.asciz "まだ )"
.balign 4, 0

@ th time )
glabel D_08050bbc
.asciz "回目 )"
.balign 4, 0

glabel D_08050bc4
.asciz ""
.balign 4, 0

glabel D_08050bc8
.asciz "???"
.balign 4, 0

glabel D_08050bcc
.asciz ""
.balign 4, 0

@ New Game
glabel D_08050bd0
.asciz "新ゲーム"
.balign 4, 0

glabel D_08050bdc
.asciz "ただいま「"
.balign 4, 0

@ Get a perfect on this
glabel D_08050be8
.asciz "」でパーフェクトを達成すると"
.balign 4, 0

@ game, and you'll recieve
glabel D_08050c08
.asciz "もれなく"
.balign 4, 0

glabel D_08050c14
.asciz "「"
.balign 4, 0

glabel D_08050c18
.asciz "」"
.balign 4, 0

@ 's song
glabel D_08050c1c
.asciz "の曲"
.balign 4, 0

@ recieved as a present!!
glabel D_08050c24
.asciz "をプレゼント!!"
.balign 4, 0

/* 08050c34 */ .word D_08c8ede0
/* 08050c38 */ .word D_06000000
/* 08050c3c */ .word 0xffffffff
/* 08050c40 */ .word D_08c8f214
/* 08050c44 */ .word D_0600e800
/* 08050c48 */ .word 0xffffffff
/* 08050c4c */ .word D_088fed8c
/* 08050c50 */ .word D_03004b64
/* 08050c54 */ .word 0x00000140
/* 08050c58 */ .word 0x00000000
/* 08050c5c */ .word 0x00000000
/* 08050c60 */ .word 0x00000000

/* 08050c64 */ .word D_08c8ede0
/* 08050c68 */ .word D_06000000
/* 08050c6c */ .word 0xffffffff
/* 08050c70 */ .word D_08c8f094
/* 08050c74 */ .word D_0600e800
/* 08050c78 */ .word 0xffffffff
/* 08050c7c */ .word D_088fed8c
/* 08050c80 */ .word D_03004b64
/* 08050c84 */ .word 0x00000140
/* 08050c88 */ .word 0x00000000
/* 08050c8c */ .word 0x00000000
/* 08050c90 */ .word 0x00000000

/* 08050c94 */ .word D_08c8ede0
/* 08050c98 */ .word D_06000000
/* 08050c9c */ .word 0xffffffff
/* 08050ca0 */ .word D_08c8ef24
/* 08050ca4 */ .word D_0600e800
/* 08050ca8 */ .word 0xffffffff
/* 08050cac */ .word D_088fed8c
/* 08050cb0 */ .word D_03004b64
/* 08050cb4 */ .word 0x00000140
/* 08050cb8 */ .word 0x00000000
/* 08050cbc */ .word 0x00000000
/* 08050cc0 */ .word 0x00000000

/* 08050cc4 */ .word D_08c98078
/* 08050cc8 */ .word D_06000000
/* 08050ccc */ .word 0xffffffff
/* 08050cd0 */ .word D_08c98448
/* 08050cd4 */ .word D_0600e800
/* 08050cd8 */ .word 0xffffffff
/* 08050cdc */ .word D_088ff2ac
/* 08050ce0 */ .word D_03004b64
/* 08050ce4 */ .word 0x00000140
/* 08050ce8 */ .word 0x00000000
/* 08050cec */ .word 0x00000000
/* 08050cf0 */ .word 0x00000000

/* 08050cf4 */ .word D_08c98078
/* 08050cf8 */ .word D_06000000
/* 08050cfc */ .word 0xffffffff
/* 08050d00 */ .word D_08c982d0
/* 08050d04 */ .word D_0600e800
/* 08050d08 */ .word 0xffffffff
/* 08050d0c */ .word D_088ff2ac
/* 08050d10 */ .word D_03004b64
/* 08050d14 */ .word 0x00000140
/* 08050d18 */ .word 0x00000000
/* 08050d1c */ .word 0x00000000
/* 08050d20 */ .word 0x00000000

/* 08050d24 */ .word D_08c98078
/* 08050d28 */ .word D_06000000
/* 08050d2c */ .word 0xffffffff
/* 08050d30 */ .word D_08c98188
/* 08050d34 */ .word D_0600e800
/* 08050d38 */ .word 0xffffffff
/* 08050d3c */ .word D_088ff2ac
/* 08050d40 */ .word D_03004b64
/* 08050d44 */ .word 0x00000140
/* 08050d48 */ .word 0x00000000
/* 08050d4c */ .word 0x00000000
/* 08050d50 */ .word 0x00000000

/* 08050d54 */ .word D_08c992d8
/* 08050d58 */ .word D_06000000
/* 08050d5c */ .word 0xffffffff
/* 08050d60 */ .word D_08c996f4
/* 08050d64 */ .word D_0600e800
/* 08050d68 */ .word 0xffffffff
/* 08050d6c */ .word D_088ff2ec
/* 08050d70 */ .word D_03004b64
/* 08050d74 */ .word 0x00000140
/* 08050d78 */ .word 0x00000000
/* 08050d7c */ .word 0x00000000
/* 08050d80 */ .word 0x00000000

/* 08050d84 */ .word D_08c992d8
/* 08050d88 */ .word D_06000000
/* 08050d8c */ .word 0xffffffff
/* 08050d90 */ .word D_08c99580
/* 08050d94 */ .word D_0600e800
/* 08050d98 */ .word 0xffffffff
/* 08050d9c */ .word D_088ff2ec
/* 08050da0 */ .word D_03004b64
/* 08050da4 */ .word 0x00000140
/* 08050da8 */ .word 0x00000000
/* 08050dac */ .word 0x00000000
/* 08050db0 */ .word 0x00000000

/* 08050db4 */ .word D_08c992d8
/* 08050db8 */ .word D_06000000
/* 08050dbc */ .word 0xffffffff
/* 08050dc0 */ .word D_08c99420
/* 08050dc4 */ .word D_0600e800
/* 08050dc8 */ .word 0xffffffff
/* 08050dcc */ .word D_088ff2ec
/* 08050dd0 */ .word D_03004b64
/* 08050dd4 */ .word 0x00000140
/* 08050dd8 */ .word 0x00000000
/* 08050ddc */ .word 0x00000000
/* 08050de0 */ .word 0x00000000

/* 08050de4 */ .word D_08c9f1e0
/* 08050de8 */ .word D_06000000
/* 08050dec */ .word 0xffffffff
/* 08050df0 */ .word D_08c9f4e4
/* 08050df4 */ .word D_0600e800
/* 08050df8 */ .word 0xffffffff
/* 08050dfc */ .word D_088ff44c
/* 08050e00 */ .word D_03004b64
/* 08050e04 */ .word 0x00000140
/* 08050e08 */ .word 0x00000000
/* 08050e0c */ .word 0x00000000
/* 08050e10 */ .word 0x00000000

/* 08050e14 */ .word D_08c9f1e0
/* 08050e18 */ .word D_06000000
/* 08050e1c */ .word 0xffffffff
/* 08050e20 */ .word D_08c9f394
/* 08050e24 */ .word D_0600e800
/* 08050e28 */ .word 0xffffffff
/* 08050e2c */ .word D_088ff44c
/* 08050e30 */ .word D_03004b64
/* 08050e34 */ .word 0x00000140
/* 08050e38 */ .word 0x00000000
/* 08050e3c */ .word 0x00000000
/* 08050e40 */ .word 0x00000000

/* 08050e44 */ .word D_08c9f1e0
/* 08050e48 */ .word D_06000000
/* 08050e4c */ .word 0xffffffff
/* 08050e50 */ .word D_08c9f2a0
/* 08050e54 */ .word D_0600e800
/* 08050e58 */ .word 0xffffffff
/* 08050e5c */ .word D_088ff44c
/* 08050e60 */ .word D_03004b64
/* 08050e64 */ .word 0x00000140
/* 08050e68 */ .word 0x00000000
/* 08050e6c */ .word 0x00000000
/* 08050e70 */ .word 0x00000000

/* 08050e74 */ .word D_08c91cd0
/* 08050e78 */ .word D_06000000
/* 08050e7c */ .word 0xffffffff
/* 08050e80 */ .word D_08c92084
/* 08050e84 */ .word D_0600e800
/* 08050e88 */ .word 0xffffffff
/* 08050e8c */ .word D_088fee0c
/* 08050e90 */ .word D_03004b64
/* 08050e94 */ .word 0x00000140
/* 08050e98 */ .word 0x00000000
/* 08050e9c */ .word 0x00000000
/* 08050ea0 */ .word 0x00000000

/* 08050ea4 */ .word D_08c91cd0
/* 08050ea8 */ .word D_06000000
/* 08050eac */ .word 0xffffffff
/* 08050eb0 */ .word D_08c91f04
/* 08050eb4 */ .word D_0600e800
/* 08050eb8 */ .word 0xffffffff
/* 08050ebc */ .word D_088fee0c
/* 08050ec0 */ .word D_03004b64
/* 08050ec4 */ .word 0x00000140
/* 08050ec8 */ .word 0x00000000
/* 08050ecc */ .word 0x00000000
/* 08050ed0 */ .word 0x00000000

/* 08050ed4 */ .word D_08c91cd0
/* 08050ed8 */ .word D_06000000
/* 08050edc */ .word 0xffffffff
/* 08050ee0 */ .word D_08c91e20
/* 08050ee4 */ .word D_0600e800
/* 08050ee8 */ .word 0xffffffff
/* 08050eec */ .word D_088fee0c
/* 08050ef0 */ .word D_03004b64
/* 08050ef4 */ .word 0x00000140
/* 08050ef8 */ .word 0x00000000
/* 08050efc */ .word 0x00000000
/* 08050f00 */ .word 0x00000000

/* 08050f04 */ .word D_08c9582c
/* 08050f08 */ .word D_06000000
/* 08050f0c */ .word 0xffffffff
/* 08050f10 */ .word D_08c95c8c
/* 08050f14 */ .word D_0600e800
/* 08050f18 */ .word 0xffffffff
/* 08050f1c */ .word D_088ff04c
/* 08050f20 */ .word D_03004b64
/* 08050f24 */ .word 0x00000140
/* 08050f28 */ .word 0x00000000
/* 08050f2c */ .word 0x00000000
/* 08050f30 */ .word 0x00000000

/* 08050f34 */ .word D_08c9582c
/* 08050f38 */ .word D_06000000
/* 08050f3c */ .word 0xffffffff
/* 08050f40 */ .word D_08c95b24
/* 08050f44 */ .word D_0600e800
/* 08050f48 */ .word 0xffffffff
/* 08050f4c */ .word D_088ff04c
/* 08050f50 */ .word D_03004b64
/* 08050f54 */ .word 0x00000140
/* 08050f58 */ .word 0x00000000
/* 08050f5c */ .word 0x00000000
/* 08050f60 */ .word 0x00000000

/* 08050f64 */ .word D_08c9582c
/* 08050f68 */ .word D_06000000
/* 08050f6c */ .word 0xffffffff
/* 08050f70 */ .word D_08c959ac
/* 08050f74 */ .word D_0600e800
/* 08050f78 */ .word 0xffffffff
/* 08050f7c */ .word D_088ff04c
/* 08050f80 */ .word D_03004b64
/* 08050f84 */ .word 0x00000140
/* 08050f88 */ .word 0x00000000
/* 08050f8c */ .word 0x00000000
/* 08050f90 */ .word 0x00000000

/* 08050f94 */ .word D_08cbcbd8
/* 08050f98 */ .word D_06000000
/* 08050f9c */ .word 0xffffffff
/* 08050fa0 */ .word D_08cbcf98
/* 08050fa4 */ .word D_0600e800
/* 08050fa8 */ .word 0xffffffff
/* 08050fac */ .word D_088fff4c
/* 08050fb0 */ .word D_03004b64
/* 08050fb4 */ .word 0x00000140
/* 08050fb8 */ .word 0x00000000
/* 08050fbc */ .word 0x00000000
/* 08050fc0 */ .word 0x00000000

/* 08050fc4 */ .word D_08cbcbd8
/* 08050fc8 */ .word D_06000000
/* 08050fcc */ .word 0xffffffff
/* 08050fd0 */ .word D_08cbce60
/* 08050fd4 */ .word D_0600e800
/* 08050fd8 */ .word 0xffffffff
/* 08050fdc */ .word D_088fff4c
/* 08050fe0 */ .word D_03004b64
/* 08050fe4 */ .word 0x00000140
/* 08050fe8 */ .word 0x00000000
/* 08050fec */ .word 0x00000000
/* 08050ff0 */ .word 0x00000000

/* 08050ff4 */ .word D_08cbcbd8
/* 08050ff8 */ .word D_06000000
/* 08050ffc */ .word 0xffffffff
/* 08051000 */ .word D_08cbcd28
/* 08051004 */ .word D_0600e800
/* 08051008 */ .word 0xffffffff
/* 0805100c */ .word D_088fff4c
/* 08051010 */ .word D_03004b64
/* 08051014 */ .word 0x00000140
/* 08051018 */ .word 0x00000000
/* 0805101c */ .word 0x00000000
/* 08051020 */ .word 0x00000000

/* 08051024 */ .word D_08c93cfc
/* 08051028 */ .word D_06000000
/* 0805102c */ .word 0xffffffff
/* 08051030 */ .word D_08c94064
/* 08051034 */ .word D_0600e800
/* 08051038 */ .word 0xffffffff
/* 0805103c */ .word D_088ff02c
/* 08051040 */ .word D_03004b64
/* 08051044 */ .word 0x00000140
/* 08051048 */ .word 0x00000000
/* 0805104c */ .word 0x00000000
/* 08051050 */ .word 0x00000000

/* 08051054 */ .word D_08c93cfc
/* 08051058 */ .word D_06000000
/* 0805105c */ .word 0xffffffff
/* 08051060 */ .word D_08c93f48
/* 08051064 */ .word D_0600e800
/* 08051068 */ .word 0xffffffff
/* 0805106c */ .word D_088ff02c
/* 08051070 */ .word D_03004b64
/* 08051074 */ .word 0x00000140
/* 08051078 */ .word 0x00000000
/* 0805107c */ .word 0x00000000
/* 08051080 */ .word 0x00000000

/* 08051084 */ .word D_08c93cfc
/* 08051088 */ .word D_06000000
/* 0805108c */ .word 0xffffffff
/* 08051090 */ .word D_08c93e18
/* 08051094 */ .word D_0600e800
/* 08051098 */ .word 0xffffffff
/* 0805109c */ .word D_088ff02c
/* 080510a0 */ .word D_03004b64
/* 080510a4 */ .word 0x00000140
/* 080510a8 */ .word 0x00000000
/* 080510ac */ .word 0x00000000
/* 080510b0 */ .word 0x00000000

/* 080510b4 */ .word D_08cb28a4
/* 080510b8 */ .word D_06000000
/* 080510bc */ .word 0xffffffff
/* 080510c0 */ .word D_08cb2ccc
/* 080510c4 */ .word D_0600e800
/* 080510c8 */ .word 0xffffffff
/* 080510cc */ .word D_088ffc4c
/* 080510d0 */ .word D_03004b64
/* 080510d4 */ .word 0x00000140
/* 080510d8 */ .word 0x00000000
/* 080510dc */ .word 0x00000000
/* 080510e0 */ .word 0x00000000

/* 080510e4 */ .word D_08cb28a4
/* 080510e8 */ .word D_06000000
/* 080510ec */ .word 0xffffffff
/* 080510f0 */ .word D_08cb2b54
/* 080510f4 */ .word D_0600e800
/* 080510f8 */ .word 0xffffffff
/* 080510fc */ .word D_088ffc4c
/* 08051100 */ .word D_03004b64
/* 08051104 */ .word 0x00000140
/* 08051108 */ .word 0x00000000
/* 0805110c */ .word 0x00000000
/* 08051110 */ .word 0x00000000

/* 08051114 */ .word D_08cb28a4
/* 08051118 */ .word D_06000000
/* 0805111c */ .word 0xffffffff
/* 08051120 */ .word D_08cb2a08
/* 08051124 */ .word D_0600e800
/* 08051128 */ .word 0xffffffff
/* 0805112c */ .word D_088ffc4c
/* 08051130 */ .word D_03004b64
/* 08051134 */ .word 0x00000140
/* 08051138 */ .word 0x00000000
/* 0805113c */ .word 0x00000000
/* 08051140 */ .word 0x00000000

/* 08051144 */ .word D_08cb38ac
/* 08051148 */ .word D_06000000
/* 0805114c */ .word 0xffffffff
/* 08051150 */ .word D_08cb3c48
/* 08051154 */ .word D_0600e800
/* 08051158 */ .word 0xffffffff
/* 0805115c */ .word D_088ffc6c
/* 08051160 */ .word D_03004b64
/* 08051164 */ .word 0x00000140
/* 08051168 */ .word 0x00000000
/* 0805116c */ .word 0x00000000
/* 08051170 */ .word 0x00000000

/* 08051174 */ .word D_08cb38ac
/* 08051178 */ .word D_06000000
/* 0805117c */ .word 0xffffffff
/* 08051180 */ .word D_08cb3b10
/* 08051184 */ .word D_0600e800
/* 08051188 */ .word 0xffffffff
/* 0805118c */ .word D_088ffc6c
/* 08051190 */ .word D_03004b64
/* 08051194 */ .word 0x00000140
/* 08051198 */ .word 0x00000000
/* 0805119c */ .word 0x00000000
/* 080511a0 */ .word 0x00000000

/* 080511a4 */ .word D_08cb38ac
/* 080511a8 */ .word D_06000000
/* 080511ac */ .word 0xffffffff
/* 080511b0 */ .word D_08cb39d0
/* 080511b4 */ .word D_0600e800
/* 080511b8 */ .word 0xffffffff
/* 080511bc */ .word D_088ffc6c
/* 080511c0 */ .word D_03004b64
/* 080511c4 */ .word 0x00000140
/* 080511c8 */ .word 0x00000000
/* 080511cc */ .word 0x00000000
/* 080511d0 */ .word 0x00000000

/* 080511d4 */ .word D_08c89a70
/* 080511d8 */ .word D_06000000
/* 080511dc */ .word 0xffffffff
/* 080511e0 */ .word D_08c89dd4
/* 080511e4 */ .word D_0600e800
/* 080511e8 */ .word 0xffffffff
/* 080511ec */ .word D_088fe8cc
/* 080511f0 */ .word D_03004b64
/* 080511f4 */ .word 0x00000140
/* 080511f8 */ .word 0x00000000
/* 080511fc */ .word 0x00000000
/* 08051200 */ .word 0x00000000

/* 08051204 */ .word D_08c89a70
/* 08051208 */ .word D_06000000
/* 0805120c */ .word 0xffffffff
/* 08051210 */ .word D_08c89cb0
/* 08051214 */ .word D_0600e800
/* 08051218 */ .word 0xffffffff
/* 0805121c */ .word D_088fe8cc
/* 08051220 */ .word D_03004b64
/* 08051224 */ .word 0x00000140
/* 08051228 */ .word 0x00000000
/* 0805122c */ .word 0x00000000
/* 08051230 */ .word 0x00000000

/* 08051234 */ .word D_08c89a70
/* 08051238 */ .word D_06000000
/* 0805123c */ .word 0xffffffff
/* 08051240 */ .word D_08c89ba4
/* 08051244 */ .word D_0600e800
/* 08051248 */ .word 0xffffffff
/* 0805124c */ .word D_088fe8cc
/* 08051250 */ .word D_03004b64
/* 08051254 */ .word 0x00000140
/* 08051258 */ .word 0x00000000
/* 0805125c */ .word 0x00000000
/* 08051260 */ .word 0x00000000

/* 08051264 */ .word D_08c9a4d4
/* 08051268 */ .word D_06000000
/* 0805126c */ .word 0xffffffff
/* 08051270 */ .word D_08c9a890
/* 08051274 */ .word D_0600e800
/* 08051278 */ .word 0xffffffff
/* 0805127c */ .word D_088ff30c
/* 08051280 */ .word D_03004b64
/* 08051284 */ .word 0x00000140
/* 08051288 */ .word 0x00000000
/* 0805128c */ .word 0x00000000
/* 08051290 */ .word 0x00000000

/* 08051294 */ .word D_08c9a4d4
/* 08051298 */ .word D_06000000
/* 0805129c */ .word 0xffffffff
/* 080512a0 */ .word D_08c9a71c
/* 080512a4 */ .word D_0600e800
/* 080512a8 */ .word 0xffffffff
/* 080512ac */ .word D_088ff30c
/* 080512b0 */ .word D_03004b64
/* 080512b4 */ .word 0x00000140
/* 080512b8 */ .word 0x00000000
/* 080512bc */ .word 0x00000000
/* 080512c0 */ .word 0x00000000

/* 080512c4 */ .word D_08c9a4d4
/* 080512c8 */ .word D_06000000
/* 080512cc */ .word 0xffffffff
/* 080512d0 */ .word D_08c9a610
/* 080512d4 */ .word D_0600e800
/* 080512d8 */ .word 0xffffffff
/* 080512dc */ .word D_088ff30c
/* 080512e0 */ .word D_03004b64
/* 080512e4 */ .word 0x00000140
/* 080512e8 */ .word 0x00000000
/* 080512ec */ .word 0x00000000
/* 080512f0 */ .word 0x00000000

/* 080512f4 */ .word D_08c8ac68
/* 080512f8 */ .word D_06000000
/* 080512fc */ .word 0xffffffff
/* 08051300 */ .word D_08c8b14c
/* 08051304 */ .word D_0600e800
/* 08051308 */ .word 0xffffffff
/* 0805130c */ .word D_088feacc
/* 08051310 */ .word D_03004b64
/* 08051314 */ .word 0x00000140
/* 08051318 */ .word 0x00000000
/* 0805131c */ .word 0x00000000
/* 08051320 */ .word 0x00000000

/* 08051324 */ .word D_08c8ac68
/* 08051328 */ .word D_06000000
/* 0805132c */ .word 0xffffffff
/* 08051330 */ .word D_08c8afd0
/* 08051334 */ .word D_0600e800
/* 08051338 */ .word 0xffffffff
/* 0805133c */ .word D_088feacc
/* 08051340 */ .word D_03004b64
/* 08051344 */ .word 0x00000140
/* 08051348 */ .word 0x00000000
/* 0805134c */ .word 0x00000000
/* 08051350 */ .word 0x00000000

/* 08051354 */ .word D_08c8ac68
/* 08051358 */ .word D_06000000
/* 0805135c */ .word 0xffffffff
/* 08051360 */ .word D_08c8ae7c
/* 08051364 */ .word D_0600e800
/* 08051368 */ .word 0xffffffff
/* 0805136c */ .word D_088feacc
/* 08051370 */ .word D_03004b64
/* 08051374 */ .word 0x00000140
/* 08051378 */ .word 0x00000000
/* 0805137c */ .word 0x00000000
/* 08051380 */ .word 0x00000000

/* 08051384 */ .word D_08cb5fdc
/* 08051388 */ .word D_06000000
/* 0805138c */ .word 0xffffffff
/* 08051390 */ .word D_08cb6394
/* 08051394 */ .word D_0600e800
/* 08051398 */ .word 0xffffffff
/* 0805139c */ .word D_088ffcac
/* 080513a0 */ .word D_03004b64
/* 080513a4 */ .word 0x00000140
/* 080513a8 */ .word 0x00000000
/* 080513ac */ .word 0x00000000
/* 080513b0 */ .word 0x00000000

/* 080513b4 */ .word D_08cb5fdc
/* 080513b8 */ .word D_06000000
/* 080513bc */ .word 0xffffffff
/* 080513c0 */ .word D_08cb6244
/* 080513c4 */ .word D_0600e800
/* 080513c8 */ .word 0xffffffff
/* 080513cc */ .word D_088ffcac
/* 080513d0 */ .word D_03004b64
/* 080513d4 */ .word 0x00000140
/* 080513d8 */ .word 0x00000000
/* 080513dc */ .word 0x00000000
/* 080513e0 */ .word 0x00000000

/* 080513e4 */ .word D_08cb5fdc
/* 080513e8 */ .word D_06000000
/* 080513ec */ .word 0xffffffff
/* 080513f0 */ .word D_08cb60f0
/* 080513f4 */ .word D_0600e800
/* 080513f8 */ .word 0xffffffff
/* 080513fc */ .word D_088ffcac
/* 08051400 */ .word D_03004b64
/* 08051404 */ .word 0x00000140
/* 08051408 */ .word 0x00000000
/* 0805140c */ .word 0x00000000
/* 08051410 */ .word 0x00000000

/* 08051414 */ .word D_08cb7644
/* 08051418 */ .word D_06000000
/* 0805141c */ .word 0xffffffff
/* 08051420 */ .word D_08cb7ab8
/* 08051424 */ .word D_0600e800
/* 08051428 */ .word 0xffffffff
/* 0805142c */ .word D_088ffcec
/* 08051430 */ .word D_03004b64
/* 08051434 */ .word 0x00000140
/* 08051438 */ .word 0x00000000
/* 0805143c */ .word 0x00000000
/* 08051440 */ .word 0x00000000

/* 08051444 */ .word D_08cb7644
/* 08051448 */ .word D_06000000
/* 0805144c */ .word 0xffffffff
/* 08051450 */ .word D_08cb793c
/* 08051454 */ .word D_0600e800
/* 08051458 */ .word 0xffffffff
/* 0805145c */ .word D_088ffcec
/* 08051460 */ .word D_03004b64
/* 08051464 */ .word 0x00000140
/* 08051468 */ .word 0x00000000
/* 0805146c */ .word 0x00000000
/* 08051470 */ .word 0x00000000

/* 08051474 */ .word D_08cb7644
/* 08051478 */ .word D_06000000
/* 0805147c */ .word 0xffffffff
/* 08051480 */ .word D_08cb77bc
/* 08051484 */ .word D_0600e800
/* 08051488 */ .word 0xffffffff
/* 0805148c */ .word D_088ffcec
/* 08051490 */ .word D_03004b64
/* 08051494 */ .word 0x00000140
/* 08051498 */ .word 0x00000000
/* 0805149c */ .word 0x00000000
/* 080514a0 */ .word 0x00000000

/* 080514a4 */ .word D_08c9d2e8
/* 080514a8 */ .word D_06000000
/* 080514ac */ .word 0xffffffff
/* 080514b0 */ .word D_08c9d740
/* 080514b4 */ .word D_0600e800
/* 080514b8 */ .word 0xffffffff
/* 080514bc */ .word D_088ff40c
/* 080514c0 */ .word D_03004b64
/* 080514c4 */ .word 0x00000140
/* 080514c8 */ .word 0x00000000
/* 080514cc */ .word 0x00000000
/* 080514d0 */ .word 0x00000000

/* 080514d4 */ .word D_08c9d2e8
/* 080514d8 */ .word D_06000000
/* 080514dc */ .word 0xffffffff
/* 080514e0 */ .word D_08c9d5c0
/* 080514e4 */ .word D_0600e800
/* 080514e8 */ .word 0xffffffff
/* 080514ec */ .word D_088ff40c
/* 080514f0 */ .word D_03004b64
/* 080514f4 */ .word 0x00000140
/* 080514f8 */ .word 0x00000000
/* 080514fc */ .word 0x00000000
/* 08051500 */ .word 0x00000000

/* 08051504 */ .word D_08c9d2e8
/* 08051508 */ .word D_06000000
/* 0805150c */ .word 0xffffffff
/* 08051510 */ .word D_08c9d450
/* 08051514 */ .word D_0600e800
/* 08051518 */ .word 0xffffffff
/* 0805151c */ .word D_088ff40c
/* 08051520 */ .word D_03004b64
/* 08051524 */ .word 0x00000140
/* 08051528 */ .word 0x00000000
/* 0805152c */ .word 0x00000000
/* 08051530 */ .word 0x00000000

/* 08051534 */ .word D_08c9e338
/* 08051538 */ .word D_06000000
/* 0805153c */ .word 0xffffffff
/* 08051540 */ .word D_08c9e744
/* 08051544 */ .word D_0600e800
/* 08051548 */ .word 0xffffffff
/* 0805154c */ .word D_088ff42c
/* 08051550 */ .word D_03004b64
/* 08051554 */ .word 0x00000140
/* 08051558 */ .word 0x00000000
/* 0805155c */ .word 0x00000000
/* 08051560 */ .word 0x00000000

/* 08051564 */ .word D_08c9e338
/* 08051568 */ .word D_06000000
/* 0805156c */ .word 0xffffffff
/* 08051570 */ .word D_08c9e5c4
/* 08051574 */ .word D_0600e800
/* 08051578 */ .word 0xffffffff
/* 0805157c */ .word D_088ff42c
/* 08051580 */ .word D_03004b64
/* 08051584 */ .word 0x00000140
/* 08051588 */ .word 0x00000000
/* 0805158c */ .word 0x00000000
/* 08051590 */ .word 0x00000000

/* 08051594 */ .word D_08c9e338
/* 08051598 */ .word D_06000000
/* 0805159c */ .word 0xffffffff
/* 080515a0 */ .word D_08c9e484
/* 080515a4 */ .word D_0600e800
/* 080515a8 */ .word 0xffffffff
/* 080515ac */ .word D_088ff42c
/* 080515b0 */ .word D_03004b64
/* 080515b4 */ .word 0x00000140
/* 080515b8 */ .word 0x00000000
/* 080515bc */ .word 0x00000000
/* 080515c0 */ .word 0x00000000

/* 080515c4 */ .word D_08cbdd28
/* 080515c8 */ .word D_06000000
/* 080515cc */ .word 0xffffffff
/* 080515d0 */ .word D_08cbe0f8
/* 080515d4 */ .word D_0600e800
/* 080515d8 */ .word 0xffffffff
/* 080515dc */ .word D_088fff6c
/* 080515e0 */ .word D_03004b64
/* 080515e4 */ .word 0x00000140
/* 080515e8 */ .word 0x00000000
/* 080515ec */ .word 0x00000000
/* 080515f0 */ .word 0x00000000

/* 080515f4 */ .word D_08cbdd28
/* 080515f8 */ .word D_06000000
/* 080515fc */ .word 0xffffffff
/* 08051600 */ .word D_08cbdf84
/* 08051604 */ .word D_0600e800
/* 08051608 */ .word 0xffffffff
/* 0805160c */ .word D_088fff6c
/* 08051610 */ .word D_03004b64
/* 08051614 */ .word 0x00000140
/* 08051618 */ .word 0x00000000
/* 0805161c */ .word 0x00000000
/* 08051620 */ .word 0x00000000

/* 08051624 */ .word D_08cbdd28
/* 08051628 */ .word D_06000000
/* 0805162c */ .word 0xffffffff
/* 08051630 */ .word D_08cbde58
/* 08051634 */ .word D_0600e800
/* 08051638 */ .word 0xffffffff
/* 0805163c */ .word D_088fff6c
/* 08051640 */ .word D_03004b64
/* 08051644 */ .word 0x00000140
/* 08051648 */ .word 0x00000000
/* 0805164c */ .word 0x00000000
/* 08051650 */ .word 0x00000000

/* 08051654 */ .word D_08ca23c0
/* 08051658 */ .word D_06000000
/* 0805165c */ .word 0xffffffff
/* 08051660 */ .word D_08ca29f0
/* 08051664 */ .word D_0600e800
/* 08051668 */ .word 0xffffffff
/* 0805166c */ .word D_088ff5cc
/* 08051670 */ .word D_03004b64
/* 08051674 */ .word 0x00000140
/* 08051678 */ .word 0x00000000
/* 0805167c */ .word 0x00000000
/* 08051680 */ .word 0x00000000

/* 08051684 */ .word D_08ca23c0
/* 08051688 */ .word D_06000000
/* 0805168c */ .word 0xffffffff
/* 08051690 */ .word D_08ca27d0
/* 08051694 */ .word D_0600e800
/* 08051698 */ .word 0xffffffff
/* 0805169c */ .word D_088ff5cc
/* 080516a0 */ .word D_03004b64
/* 080516a4 */ .word 0x00000140
/* 080516a8 */ .word 0x00000000
/* 080516ac */ .word 0x00000000
/* 080516b0 */ .word 0x00000000

/* 080516b4 */ .word D_08ca23c0
/* 080516b8 */ .word D_06000000
/* 080516bc */ .word 0xffffffff
/* 080516c0 */ .word D_08ca25b4
/* 080516c4 */ .word D_0600e800
/* 080516c8 */ .word 0xffffffff
/* 080516cc */ .word D_088ff5cc
/* 080516d0 */ .word D_03004b64
/* 080516d4 */ .word 0x00000140
/* 080516d8 */ .word 0x00000000
/* 080516dc */ .word 0x00000000
/* 080516e0 */ .word 0x00000000

/* 080516e4 */ .word D_08c96e80
/* 080516e8 */ .word D_06000000
/* 080516ec */ .word 0xffffffff
/* 080516f0 */ .word D_08c972dc
/* 080516f4 */ .word D_0600e800
/* 080516f8 */ .word 0xffffffff
/* 080516fc */ .word D_088ff0ac
/* 08051700 */ .word D_03004b64
/* 08051704 */ .word 0x00000140
/* 08051708 */ .word 0x00000000
/* 0805170c */ .word 0x00000000
/* 08051710 */ .word 0x00000000

/* 08051714 */ .word D_08c96e80
/* 08051718 */ .word D_06000000
/* 0805171c */ .word 0xffffffff
/* 08051720 */ .word D_08c9715c
/* 08051724 */ .word D_0600e800
/* 08051728 */ .word 0xffffffff
/* 0805172c */ .word D_088ff0ac
/* 08051730 */ .word D_03004b64
/* 08051734 */ .word 0x00000140
/* 08051738 */ .word 0x00000000
/* 0805173c */ .word 0x00000000
/* 08051740 */ .word 0x00000000

/* 08051744 */ .word D_08c96e80
/* 08051748 */ .word D_06000000
/* 0805174c */ .word 0xffffffff
/* 08051750 */ .word D_08c96ff4
/* 08051754 */ .word D_0600e800
/* 08051758 */ .word 0xffffffff
/* 0805175c */ .word D_088ff0ac
/* 08051760 */ .word D_03004b64
/* 08051764 */ .word 0x00000140
/* 08051768 */ .word 0x00000000
/* 0805176c */ .word 0x00000000
/* 08051770 */ .word 0x00000000

/* 08051774 */ .word D_08c9b9fc
/* 08051778 */ .word D_06000000
/* 0805177c */ .word 0xffffffff
/* 08051780 */ .word D_08c9be48
/* 08051784 */ .word D_0600e800
/* 08051788 */ .word 0xffffffff
/* 0805178c */ .word D_088ff3ac
/* 08051790 */ .word D_03004b64
/* 08051794 */ .word 0x00000140
/* 08051798 */ .word 0x00000000
/* 0805179c */ .word 0x00000000
/* 080517a0 */ .word 0x00000000

/* 080517a4 */ .word D_08c9b9fc
/* 080517a8 */ .word D_06000000
/* 080517ac */ .word 0xffffffff
/* 080517b0 */ .word D_08c9bcd0
/* 080517b4 */ .word D_0600e800
/* 080517b8 */ .word 0xffffffff
/* 080517bc */ .word D_088ff3ac
/* 080517c0 */ .word D_03004b64
/* 080517c4 */ .word 0x00000140
/* 080517c8 */ .word 0x00000000
/* 080517cc */ .word 0x00000000
/* 080517d0 */ .word 0x00000000

/* 080517d4 */ .word D_08c9b9fc
/* 080517d8 */ .word D_06000000
/* 080517dc */ .word 0xffffffff
/* 080517e0 */ .word D_08c9bb60
/* 080517e4 */ .word D_0600e800
/* 080517e8 */ .word 0xffffffff
/* 080517ec */ .word D_088ff3ac
/* 080517f0 */ .word D_03004b64
/* 080517f4 */ .word 0x00000140
/* 080517f8 */ .word 0x00000000
/* 080517fc */ .word 0x00000000
/* 08051800 */ .word 0x00000000

/* 08051804 */ .word D_08cb8de4
/* 08051808 */ .word D_06000000
/* 0805180c */ .word 0xffffffff
/* 08051810 */ .word D_08cb9264
/* 08051814 */ .word D_0600e800
/* 08051818 */ .word 0xffffffff
/* 0805181c */ .word D_088ffd0c
/* 08051820 */ .word D_03004b64
/* 08051824 */ .word 0x00000140
/* 08051828 */ .word 0x00000000
/* 0805182c */ .word 0x00000000
/* 08051830 */ .word 0x00000000

/* 08051834 */ .word D_08cb8de4
/* 08051838 */ .word D_06000000
/* 0805183c */ .word 0xffffffff
/* 08051840 */ .word D_08cb90e4
/* 08051844 */ .word D_0600e800
/* 08051848 */ .word 0xffffffff
/* 0805184c */ .word D_088ffd0c
/* 08051850 */ .word D_03004b64
/* 08051854 */ .word 0x00000140
/* 08051858 */ .word 0x00000000
/* 0805185c */ .word 0x00000000
/* 08051860 */ .word 0x00000000

/* 08051864 */ .word D_08cb8de4
/* 08051868 */ .word D_06000000
/* 0805186c */ .word 0xffffffff
/* 08051870 */ .word D_08cb8f64
/* 08051874 */ .word D_0600e800
/* 08051878 */ .word 0xffffffff
/* 0805187c */ .word D_088ffd0c
/* 08051880 */ .word D_03004b64
/* 08051884 */ .word 0x00000140
/* 08051888 */ .word 0x00000000
/* 0805188c */ .word 0x00000000
/* 08051890 */ .word 0x00000000

/* 08051894 */ .word D_08cb9fd8
/* 08051898 */ .word D_06000000
/* 0805189c */ .word 0xffffffff
/* 080518a0 */ .word D_08cba3ec
/* 080518a4 */ .word D_0600e800
/* 080518a8 */ .word 0xffffffff
/* 080518ac */ .word D_088fff0c
/* 080518b0 */ .word D_03004b64
/* 080518b4 */ .word 0x00000140
/* 080518b8 */ .word 0x00000000
/* 080518bc */ .word 0x00000000
/* 080518c0 */ .word 0x00000000

/* 080518c4 */ .word D_08cb9fd8
/* 080518c8 */ .word D_06000000
/* 080518cc */ .word 0xffffffff
/* 080518d0 */ .word D_08cba28c
/* 080518d4 */ .word D_0600e800
/* 080518d8 */ .word 0xffffffff
/* 080518dc */ .word D_088fff0c
/* 080518e0 */ .word D_03004b64
/* 080518e4 */ .word 0x00000140
/* 080518e8 */ .word 0x00000000
/* 080518ec */ .word 0x00000000
/* 080518f0 */ .word 0x00000000

/* 080518f4 */ .word D_08cb9fd8
/* 080518f8 */ .word D_06000000
/* 080518fc */ .word 0xffffffff
/* 08051900 */ .word D_08cba154
/* 08051904 */ .word D_0600e800
/* 08051908 */ .word 0xffffffff
/* 0805190c */ .word D_088fff0c
/* 08051910 */ .word D_03004b64
/* 08051914 */ .word 0x00000140
/* 08051918 */ .word 0x00000000
/* 0805191c */ .word 0x00000000
/* 08051920 */ .word 0x00000000

/* 08051924 */ .word D_08ca5684
/* 08051928 */ .word D_06000000
/* 0805192c */ .word 0xffffffff
/* 08051930 */ .word D_08ca59d0
/* 08051934 */ .word D_0600e800
/* 08051938 */ .word 0xffffffff
/* 0805193c */ .word D_088ff80c
/* 08051940 */ .word D_03004b64
/* 08051944 */ .word 0x00000140
/* 08051948 */ .word 0x00000000
/* 0805194c */ .word 0x00000000
/* 08051950 */ .word 0x00000000

/* 08051954 */ .word D_08ca5684
/* 08051958 */ .word D_06000000
/* 0805195c */ .word 0xffffffff
/* 08051960 */ .word D_08ca5884
/* 08051964 */ .word D_0600e800
/* 08051968 */ .word 0xffffffff
/* 0805196c */ .word D_088ff80c
/* 08051970 */ .word D_03004b64
/* 08051974 */ .word 0x00000140
/* 08051978 */ .word 0x00000000
/* 0805197c */ .word 0x00000000
/* 08051980 */ .word 0x00000000

/* 08051984 */ .word D_08ca5684
/* 08051988 */ .word D_06000000
/* 0805198c */ .word 0xffffffff
/* 08051990 */ .word D_08ca5784
/* 08051994 */ .word D_0600e800
/* 08051998 */ .word 0xffffffff
/* 0805199c */ .word D_088ff80c
/* 080519a0 */ .word D_03004b64
/* 080519a4 */ .word 0x00000140
/* 080519a8 */ .word 0x00000000
/* 080519ac */ .word 0x00000000
/* 080519b0 */ .word 0x00000000

/* 080519b4 */ .word D_08cbb530
/* 080519b8 */ .word D_06000000
/* 080519bc */ .word 0xffffffff
/* 080519c0 */ .word D_08cbb938
/* 080519c4 */ .word D_0600e800
/* 080519c8 */ .word 0xffffffff
/* 080519cc */ .word D_088fff2c
/* 080519d0 */ .word D_03004b64
/* 080519d4 */ .word 0x00000140
/* 080519d8 */ .word 0x00000000
/* 080519dc */ .word 0x00000000
/* 080519e0 */ .word 0x00000000

/* 080519e4 */ .word D_08cbb530
/* 080519e8 */ .word D_06000000
/* 080519ec */ .word 0xffffffff
/* 080519f0 */ .word D_08cbb7bc
/* 080519f4 */ .word D_0600e800
/* 080519f8 */ .word 0xffffffff
/* 080519fc */ .word D_088fff2c
/* 08051a00 */ .word D_03004b64
/* 08051a04 */ .word 0x00000140
/* 08051a08 */ .word 0x00000000
/* 08051a0c */ .word 0x00000000
/* 08051a10 */ .word 0x00000000

/* 08051a14 */ .word D_08cbb530
/* 08051a18 */ .word D_06000000
/* 08051a1c */ .word 0xffffffff
/* 08051a20 */ .word D_08cbb67c
/* 08051a24 */ .word D_0600e800
/* 08051a28 */ .word 0xffffffff
/* 08051a2c */ .word D_088fff2c
/* 08051a30 */ .word D_03004b64
/* 08051a34 */ .word 0x00000140
/* 08051a38 */ .word 0x00000000
/* 08051a3c */ .word 0x00000000
/* 08051a40 */ .word 0x00000000

/* 08051a44 */ .word D_08c92fc0
/* 08051a48 */ .word D_06000000
/* 08051a4c */ .word 0xffffffff
/* 08051a50 */ .word D_08c93340
/* 08051a54 */ .word D_0600e800
/* 08051a58 */ .word 0xffffffff
/* 08051a5c */ .word D_088ff00c
/* 08051a60 */ .word D_03004b64
/* 08051a64 */ .word 0x00000140
/* 08051a68 */ .word 0x00000000
/* 08051a6c */ .word 0x00000000
/* 08051a70 */ .word 0x00000000

/* 08051a74 */ .word D_08c92fc0
/* 08051a78 */ .word D_06000000
/* 08051a7c */ .word 0xffffffff
/* 08051a80 */ .word D_08c931c0
/* 08051a84 */ .word D_0600e800
/* 08051a88 */ .word 0xffffffff
/* 08051a8c */ .word D_088ff00c
/* 08051a90 */ .word D_03004b64
/* 08051a94 */ .word 0x00000140
/* 08051a98 */ .word 0x00000000
/* 08051a9c */ .word 0x00000000
/* 08051aa0 */ .word 0x00000000

/* 08051aa4 */ .word D_08c92fc0
/* 08051aa8 */ .word D_06000000
/* 08051aac */ .word 0xffffffff
/* 08051ab0 */ .word D_08c930c4
/* 08051ab4 */ .word D_0600e800
/* 08051ab8 */ .word 0xffffffff
/* 08051abc */ .word D_088ff00c
/* 08051ac0 */ .word D_03004b64
/* 08051ac4 */ .word 0x00000140
/* 08051ac8 */ .word 0x00000000
/* 08051acc */ .word 0x00000000
/* 08051ad0 */ .word 0x00000000

/* 08051ad4 */ .word D_08cb4fbc
/* 08051ad8 */ .word D_06000000
/* 08051adc */ .word 0xffffffff
/* 08051ae0 */ .word D_08cb542c
/* 08051ae4 */ .word D_0600e800
/* 08051ae8 */ .word 0xffffffff
/* 08051aec */ .word D_088ffc8c
/* 08051af0 */ .word D_03004b64
/* 08051af4 */ .word 0x00000140
/* 08051af8 */ .word 0x00000000
/* 08051afc */ .word 0x00000000
/* 08051b00 */ .word 0x00000000

/* 08051b04 */ .word D_08cb4fbc
/* 08051b08 */ .word D_06000000
/* 08051b0c */ .word 0xffffffff
/* 08051b10 */ .word D_08cb52ac
/* 08051b14 */ .word D_0600e800
/* 08051b18 */ .word 0xffffffff
/* 08051b1c */ .word D_088ffc8c
/* 08051b20 */ .word D_03004b64
/* 08051b24 */ .word 0x00000140
/* 08051b28 */ .word 0x00000000
/* 08051b2c */ .word 0x00000000
/* 08051b30 */ .word 0x00000000

/* 08051b34 */ .word D_08cb4fbc
/* 08051b38 */ .word D_06000000
/* 08051b3c */ .word 0xffffffff
/* 08051b40 */ .word D_08cb513c
/* 08051b44 */ .word D_0600e800
/* 08051b48 */ .word 0xffffffff
/* 08051b4c */ .word D_088ffc8c
/* 08051b50 */ .word D_03004b64
/* 08051b54 */ .word 0x00000140
/* 08051b58 */ .word 0x00000000
/* 08051b5c */ .word 0x00000000
/* 08051b60 */ .word 0x00000000

/* 08051b64 */ .word D_08c904a0
/* 08051b68 */ .word D_06000000
/* 08051b6c */ .word 0xffffffff
/* 08051b70 */ .word D_08c90910
/* 08051b74 */ .word D_0600e800
/* 08051b78 */ .word 0xffffffff
/* 08051b7c */ .word D_088fedcc
/* 08051b80 */ .word D_03004b64
/* 08051b84 */ .word 0x00000140
/* 08051b88 */ .word 0x00000000
/* 08051b8c */ .word 0x00000000
/* 08051b90 */ .word 0x00000000

/* 08051b94 */ .word D_08c904a0
/* 08051b98 */ .word D_06000000
/* 08051b9c */ .word 0xffffffff
/* 08051ba0 */ .word D_08c907a0
/* 08051ba4 */ .word D_0600e800
/* 08051ba8 */ .word 0xffffffff
/* 08051bac */ .word D_088fedcc
/* 08051bb0 */ .word D_03004b64
/* 08051bb4 */ .word 0x00000140
/* 08051bb8 */ .word 0x00000000
/* 08051bbc */ .word 0x00000000
/* 08051bc0 */ .word 0x00000000

/* 08051bc4 */ .word D_08c904a0
/* 08051bc8 */ .word D_06000000
/* 08051bcc */ .word 0xffffffff
/* 08051bd0 */ .word D_08c90620
/* 08051bd4 */ .word D_0600e800
/* 08051bd8 */ .word 0xffffffff
/* 08051bdc */ .word D_088fedcc
/* 08051be0 */ .word D_03004b64
/* 08051be4 */ .word 0x00000140
/* 08051be8 */ .word 0x00000000
/* 08051bec */ .word 0x00000000
/* 08051bf0 */ .word 0x00000000

/* 08051bf4 */ .word D_08ca37cc
/* 08051bf8 */ .word D_06000000
/* 08051bfc */ .word 0xffffffff
/* 08051c00 */ .word D_08ca3b88
/* 08051c04 */ .word D_0600e800
/* 08051c08 */ .word 0xffffffff
/* 08051c0c */ .word D_088ff7cc
/* 08051c10 */ .word D_03004b64
/* 08051c14 */ .word 0x00000140
/* 08051c18 */ .word 0x00000000
/* 08051c1c */ .word 0x00000000
/* 08051c20 */ .word 0x00000000

/* 08051c24 */ .word D_08ca37cc
/* 08051c28 */ .word D_06000000
/* 08051c2c */ .word 0xffffffff
/* 08051c30 */ .word D_08ca3a08
/* 08051c34 */ .word D_0600e800
/* 08051c38 */ .word 0xffffffff
/* 08051c3c */ .word D_088ff7cc
/* 08051c40 */ .word D_03004b64
/* 08051c44 */ .word 0x00000140
/* 08051c48 */ .word 0x00000000
/* 08051c4c */ .word 0x00000000
/* 08051c50 */ .word 0x00000000

/* 08051c54 */ .word D_08ca37cc
/* 08051c58 */ .word D_06000000
/* 08051c5c */ .word 0xffffffff
/* 08051c60 */ .word D_08ca38fc
/* 08051c64 */ .word D_0600e800
/* 08051c68 */ .word 0xffffffff
/* 08051c6c */ .word D_088ff7cc
/* 08051c70 */ .word D_03004b64
/* 08051c74 */ .word 0x00000140
/* 08051c78 */ .word 0x00000000
/* 08051c7c */ .word 0x00000000
/* 08051c80 */ .word 0x00000000

/* 08051c84 */ .word D_08ca48dc
/* 08051c88 */ .word D_06000000
/* 08051c8c */ .word 0xffffffff
/* 08051c90 */ .word D_08ca4c84
/* 08051c94 */ .word D_0600e800
/* 08051c98 */ .word 0xffffffff
/* 08051c9c */ .word D_088ff7ec
/* 08051ca0 */ .word D_03004b64
/* 08051ca4 */ .word 0x00000140
/* 08051ca8 */ .word 0x00000000
/* 08051cac */ .word 0x00000000
/* 08051cb0 */ .word 0x00000000

/* 08051cb4 */ .word D_08ca48dc
/* 08051cb8 */ .word D_06000000
/* 08051cbc */ .word 0xffffffff
/* 08051cc0 */ .word D_08ca4b08
/* 08051cc4 */ .word D_0600e800
/* 08051cc8 */ .word 0xffffffff
/* 08051ccc */ .word D_088ff7ec
/* 08051cd0 */ .word D_03004b64
/* 08051cd4 */ .word 0x00000140
/* 08051cd8 */ .word 0x00000000
/* 08051cdc */ .word 0x00000000
/* 08051ce0 */ .word 0x00000000

/* 08051ce4 */ .word D_08ca48dc
/* 08051ce8 */ .word D_06000000
/* 08051cec */ .word 0xffffffff
/* 08051cf0 */ .word D_08ca4a00
/* 08051cf4 */ .word D_0600e800
/* 08051cf8 */ .word 0xffffffff
/* 08051cfc */ .word D_088ff7ec
/* 08051d00 */ .word D_03004b64
/* 08051d04 */ .word 0x00000140
/* 08051d08 */ .word 0x00000000
/* 08051d0c */ .word 0x00000000
/* 08051d10 */ .word 0x00000000

/* 08051d14 */ .word D_08ca0ee0
/* 08051d18 */ .word D_06000000
/* 08051d1c */ .word 0xffffffff
/* 08051d20 */ .word D_08ca1324
/* 08051d24 */ .word D_0600e800
/* 08051d28 */ .word 0xffffffff
/* 08051d2c */ .word D_088ff56c
/* 08051d30 */ .word D_03004b64
/* 08051d34 */ .word 0x00000140
/* 08051d38 */ .word 0x00000000
/* 08051d3c */ .word 0x00000000
/* 08051d40 */ .word 0x00000000

/* 08051d44 */ .word D_08ca0ee0
/* 08051d48 */ .word D_06000000
/* 08051d4c */ .word 0xffffffff
/* 08051d50 */ .word D_08ca11a8
/* 08051d54 */ .word D_0600e800
/* 08051d58 */ .word 0xffffffff
/* 08051d5c */ .word D_088ff56c
/* 08051d60 */ .word D_03004b64
/* 08051d64 */ .word 0x00000140
/* 08051d68 */ .word 0x00000000
/* 08051d6c */ .word 0x00000000
/* 08051d70 */ .word 0x00000000

/* 08051d74 */ .word D_08ca0ee0
/* 08051d78 */ .word D_06000000
/* 08051d7c */ .word 0xffffffff
/* 08051d80 */ .word D_08ca103c
/* 08051d84 */ .word D_0600e800
/* 08051d88 */ .word 0xffffffff
/* 08051d8c */ .word D_088ff56c
/* 08051d90 */ .word D_03004b64
/* 08051d94 */ .word 0x00000140
/* 08051d98 */ .word 0x00000000
/* 08051d9c */ .word 0x00000000
/* 08051da0 */ .word 0x00000000

/* 08051da4 */ .word D_08c8d650
/* 08051da8 */ .word D_06000000
/* 08051dac */ .word 0xffffffff
/* 08051db0 */ .word D_08c8da08
/* 08051db4 */ .word D_0600e800
/* 08051db8 */ .word 0xffffffff
/* 08051dbc */ .word D_088fecec
/* 08051dc0 */ .word D_03004b64
/* 08051dc4 */ .word 0x00000140
/* 08051dc8 */ .word 0x00000000
/* 08051dcc */ .word 0x00000000
/* 08051dd0 */ .word 0x00000000

/* 08051dd4 */ .word D_08c8d650
/* 08051dd8 */ .word D_06000000
/* 08051ddc */ .word 0xffffffff
/* 08051de0 */ .word D_08c8d8a8
/* 08051de4 */ .word D_0600e800
/* 08051de8 */ .word 0xffffffff
/* 08051dec */ .word D_088fecec
/* 08051df0 */ .word D_03004b64
/* 08051df4 */ .word 0x00000140
/* 08051df8 */ .word 0x00000000
/* 08051dfc */ .word 0x00000000
/* 08051e00 */ .word 0x00000000

/* 08051e04 */ .word D_08c8d650
/* 08051e08 */ .word D_06000000
/* 08051e0c */ .word 0xffffffff
/* 08051e10 */ .word D_08c8d7d0
/* 08051e14 */ .word D_0600e800
/* 08051e18 */ .word 0xffffffff
/* 08051e1c */ .word D_088fecec
/* 08051e20 */ .word D_03004b64
/* 08051e24 */ .word 0x00000140
/* 08051e28 */ .word 0x00000000
/* 08051e2c */ .word 0x00000000
/* 08051e30 */ .word 0x00000000

/* 08051e34 */ .word D_08c8c564
/* 08051e38 */ .word D_06000000
/* 08051e3c */ .word 0xffffffff
/* 08051e40 */ .word D_08c8c95c
/* 08051e44 */ .word D_0600e800
/* 08051e48 */ .word 0xffffffff
/* 08051e4c */ .word D_088feccc
/* 08051e50 */ .word D_03004b64
/* 08051e54 */ .word 0x00000140
/* 08051e58 */ .word 0x00000000
/* 08051e5c */ .word 0x00000000
/* 08051e60 */ .word 0x00000000

/* 08051e64 */ .word D_08c8c564
/* 08051e68 */ .word D_06000000
/* 08051e6c */ .word 0xffffffff
/* 08051e70 */ .word D_08c8c7e4
/* 08051e74 */ .word D_0600e800
/* 08051e78 */ .word 0xffffffff
/* 08051e7c */ .word D_088feccc
/* 08051e80 */ .word D_03004b64
/* 08051e84 */ .word 0x00000140
/* 08051e88 */ .word 0x00000000
/* 08051e8c */ .word 0x00000000
/* 08051e90 */ .word 0x00000000

/* 08051e94 */ .word D_08c8c564
/* 08051e98 */ .word D_06000000
/* 08051e9c */ .word 0xffffffff
/* 08051ea0 */ .word D_08c8c694
/* 08051ea4 */ .word D_0600e800
/* 08051ea8 */ .word 0xffffffff
/* 08051eac */ .word D_088feccc
/* 08051eb0 */ .word D_03004b64
/* 08051eb4 */ .word 0x00000140
/* 08051eb8 */ .word 0x00000000
/* 08051ebc */ .word 0x00000000
/* 08051ec0 */ .word 0x00000000

/* 08051ec4 */ .word D_08ca66dc
/* 08051ec8 */ .word D_06000000
/* 08051ecc */ .word 0xffffffff
/* 08051ed0 */ .word D_08ca69c8
/* 08051ed4 */ .word D_0600e800
/* 08051ed8 */ .word 0xffffffff
/* 08051edc */ .word D_088ffa0c
/* 08051ee0 */ .word D_03004b64
/* 08051ee4 */ .word 0x00000140
/* 08051ee8 */ .word 0x00000000
/* 08051eec */ .word 0x00000000
/* 08051ef0 */ .word 0x00000000

/* 08051ef4 */ .word D_08ca66dc
/* 08051ef8 */ .word D_06000000
/* 08051efc */ .word 0xffffffff
/* 08051f00 */ .word D_08ca6868
/* 08051f04 */ .word D_0600e800
/* 08051f08 */ .word 0xffffffff
/* 08051f0c */ .word D_088ffa0c
/* 08051f10 */ .word D_03004b64
/* 08051f14 */ .word 0x00000140
/* 08051f18 */ .word 0x00000000
/* 08051f1c */ .word 0x00000000
/* 08051f20 */ .word 0x00000000

/* 08051f24 */ .word D_08ca66dc
/* 08051f28 */ .word D_06000000
/* 08051f2c */ .word 0xffffffff
/* 08051f30 */ .word D_08ca676c
/* 08051f34 */ .word D_0600e800
/* 08051f38 */ .word 0xffffffff
/* 08051f3c */ .word D_088ffa0c
/* 08051f40 */ .word D_03004b64
/* 08051f44 */ .word 0x00000140
/* 08051f48 */ .word 0x00000000
/* 08051f4c */ .word 0x00000000
/* 08051f50 */ .word 0x00000000

/* 08051f54 */ .word D_08ca7cbc
/* 08051f58 */ .word D_06000000
/* 08051f5c */ .word 0xffffffff
/* 08051f60 */ .word D_08ca82dc
/* 08051f64 */ .word D_0600e800
/* 08051f68 */ .word 0xffffffff
/* 08051f6c */ .word D_088ffa2c
/* 08051f70 */ .word D_03004b64
/* 08051f74 */ .word 0x00000140
/* 08051f78 */ .word 0x00000000
/* 08051f7c */ .word 0x00000000
/* 08051f80 */ .word 0x00000000

/* 08051f84 */ .word D_08ca7cbc
/* 08051f88 */ .word D_06000000
/* 08051f8c */ .word 0xffffffff
/* 08051f90 */ .word D_08ca80c0
/* 08051f94 */ .word D_0600e800
/* 08051f98 */ .word 0xffffffff
/* 08051f9c */ .word D_088ffa2c
/* 08051fa0 */ .word D_03004b64
/* 08051fa4 */ .word 0x00000140
/* 08051fa8 */ .word 0x00000000
/* 08051fac */ .word 0x00000000
/* 08051fb0 */ .word 0x00000000

/* 08051fb4 */ .word D_08ca7cbc
/* 08051fb8 */ .word D_06000000
/* 08051fbc */ .word 0xffffffff
/* 08051fc0 */ .word D_08ca7ecc
/* 08051fc4 */ .word D_0600e800
/* 08051fc8 */ .word 0xffffffff
/* 08051fcc */ .word D_088ffa2c
/* 08051fd0 */ .word D_03004b64
/* 08051fd4 */ .word 0x00000140
/* 08051fd8 */ .word 0x00000000
/* 08051fdc */ .word 0x00000000
/* 08051fe0 */ .word 0x00000000

/* 08051fe4 */ .word D_08ca94f0
/* 08051fe8 */ .word D_06000000
/* 08051fec */ .word 0xffffffff
/* 08051ff0 */ .word D_08ca9afc
/* 08051ff4 */ .word D_0600e800
/* 08051ff8 */ .word 0xffffffff
/* 08051ffc */ .word D_088ffa8c
/* 08052000 */ .word D_03004b64
/* 08052004 */ .word 0x00000140
/* 08052008 */ .word 0x00000000
/* 0805200c */ .word 0x00000000
/* 08052010 */ .word 0x00000000

/* 08052014 */ .word D_08ca94f0
/* 08052018 */ .word D_06000000
/* 0805201c */ .word 0xffffffff
/* 08052020 */ .word D_08ca98f8
/* 08052024 */ .word D_0600e800
/* 08052028 */ .word 0xffffffff
/* 0805202c */ .word D_088ffa8c
/* 08052030 */ .word D_03004b64
/* 08052034 */ .word 0x00000140
/* 08052038 */ .word 0x00000000
/* 0805203c */ .word 0x00000000
/* 08052040 */ .word 0x00000000

/* 08052044 */ .word D_08ca94f0
/* 08052048 */ .word D_06000000
/* 0805204c */ .word 0xffffffff
/* 08052050 */ .word D_08ca96e4
/* 08052054 */ .word D_0600e800
/* 08052058 */ .word 0xffffffff
/* 0805205c */ .word D_088ffa8c
/* 08052060 */ .word D_03004b64
/* 08052064 */ .word 0x00000140
/* 08052068 */ .word 0x00000000
/* 0805206c */ .word 0x00000000
/* 08052070 */ .word 0x00000000

/* 08052074 */ .word D_08caaf8c
/* 08052078 */ .word D_06000000
/* 0805207c */ .word 0xffffffff
/* 08052080 */ .word D_08cab5bc
/* 08052084 */ .word D_0600e800
/* 08052088 */ .word 0xffffffff
/* 0805208c */ .word D_088ffaac
/* 08052090 */ .word D_03004b64
/* 08052094 */ .word 0x00000140
/* 08052098 */ .word 0x00000000
/* 0805209c */ .word 0x00000000
/* 080520a0 */ .word 0x00000000

/* 080520a4 */ .word D_08caaf8c
/* 080520a8 */ .word D_06000000
/* 080520ac */ .word 0xffffffff
/* 080520b0 */ .word D_08cab3ac
/* 080520b4 */ .word D_0600e800
/* 080520b8 */ .word 0xffffffff
/* 080520bc */ .word D_088ffaac
/* 080520c0 */ .word D_03004b64
/* 080520c4 */ .word 0x00000140
/* 080520c8 */ .word 0x00000000
/* 080520cc */ .word 0x00000000
/* 080520d0 */ .word 0x00000000

/* 080520d4 */ .word D_08caaf8c
/* 080520d8 */ .word D_06000000
/* 080520dc */ .word 0xffffffff
/* 080520e0 */ .word D_08cab1a8
/* 080520e4 */ .word D_0600e800
/* 080520e8 */ .word 0xffffffff
/* 080520ec */ .word D_088ffaac
/* 080520f0 */ .word D_03004b64
/* 080520f4 */ .word 0x00000140
/* 080520f8 */ .word 0x00000000
/* 080520fc */ .word 0x00000000
/* 08052100 */ .word 0x00000000

/* 08052104 */ .word D_08cac550
/* 08052108 */ .word D_06000000
/* 0805210c */ .word 0xffffffff
/* 08052110 */ .word D_08cac908
/* 08052114 */ .word D_0600e800
/* 08052118 */ .word 0xffffffff
/* 0805211c */ .word D_088ffb0c
/* 08052120 */ .word D_03004b64
/* 08052124 */ .word 0x00000140
/* 08052128 */ .word 0x00000000
/* 0805212c */ .word 0x00000000
/* 08052130 */ .word 0x00000000

/* 08052134 */ .word D_08cac550
/* 08052138 */ .word D_06000000
/* 0805213c */ .word 0xffffffff
/* 08052140 */ .word D_08cac7e0
/* 08052144 */ .word D_0600e800
/* 08052148 */ .word 0xffffffff
/* 0805214c */ .word D_088ffb0c
/* 08052150 */ .word D_03004b64
/* 08052154 */ .word 0x00000140
/* 08052158 */ .word 0x00000000
/* 0805215c */ .word 0x00000000
/* 08052160 */ .word 0x00000000

/* 08052164 */ .word D_08cac550
/* 08052168 */ .word D_06000000
/* 0805216c */ .word 0xffffffff
/* 08052170 */ .word D_08cac6ac
/* 08052174 */ .word D_0600e800
/* 08052178 */ .word 0xffffffff
/* 0805217c */ .word D_088ffb0c
/* 08052180 */ .word D_03004b64
/* 08052184 */ .word 0x00000140
/* 08052188 */ .word 0x00000000
/* 0805218c */ .word 0x00000000
/* 08052190 */ .word 0x00000000

/* 08052194 */ .word D_08cad9f4
/* 08052198 */ .word D_06000000
/* 0805219c */ .word 0xffffffff
/* 080521a0 */ .word D_08cadff0
/* 080521a4 */ .word D_0600e800
/* 080521a8 */ .word 0xffffffff
/* 080521ac */ .word D_088ffb2c
/* 080521b0 */ .word D_03004b64
/* 080521b4 */ .word 0x00000140
/* 080521b8 */ .word 0x00000000
/* 080521bc */ .word 0x00000000
/* 080521c0 */ .word 0x00000000

/* 080521c4 */ .word D_08cad9f4
/* 080521c8 */ .word D_06000000
/* 080521cc */ .word 0xffffffff
/* 080521d0 */ .word D_08caddf8
/* 080521d4 */ .word D_0600e800
/* 080521d8 */ .word 0xffffffff
/* 080521dc */ .word D_088ffb2c
/* 080521e0 */ .word D_03004b64
/* 080521e4 */ .word 0x00000140
/* 080521e8 */ .word 0x00000000
/* 080521ec */ .word 0x00000000
/* 080521f0 */ .word 0x00000000

/* 080521f4 */ .word D_08cad9f4
/* 080521f8 */ .word D_06000000
/* 080521fc */ .word 0xffffffff
/* 08052200 */ .word D_08cadbe0
/* 08052204 */ .word D_0600e800
/* 08052208 */ .word 0xffffffff
/* 0805220c */ .word D_088ffb2c
/* 08052210 */ .word D_03004b64
/* 08052214 */ .word 0x00000140
/* 08052218 */ .word 0x00000000
/* 0805221c */ .word 0x00000000
/* 08052220 */ .word 0x00000000

/* 08052224 */ .word D_08caf878
/* 08052228 */ .word D_06000000
/* 0805222c */ .word 0xffffffff
/* 08052230 */ .word D_08cafce8
/* 08052234 */ .word D_0600e800
/* 08052238 */ .word 0xffffffff
/* 0805223c */ .word D_088ffb8c
/* 08052240 */ .word D_03004b64
/* 08052244 */ .word 0x00000140
/* 08052248 */ .word 0x00000000
/* 0805224c */ .word 0x00000000
/* 08052250 */ .word 0x00000000

/* 08052254 */ .word D_08caf878
/* 08052258 */ .word D_06000000
/* 0805225c */ .word 0xffffffff
/* 08052260 */ .word D_08cafb68
/* 08052264 */ .word D_0600e800
/* 08052268 */ .word 0xffffffff
/* 0805226c */ .word D_088ffb8c
/* 08052270 */ .word D_03004b64
/* 08052274 */ .word 0x00000140
/* 08052278 */ .word 0x00000000
/* 0805227c */ .word 0x00000000
/* 08052280 */ .word 0x00000000

/* 08052284 */ .word D_08caf878
/* 08052288 */ .word D_06000000
/* 0805228c */ .word 0xffffffff
/* 08052290 */ .word D_08caf9f4
/* 08052294 */ .word D_0600e800
/* 08052298 */ .word 0xffffffff
/* 0805229c */ .word D_088ffb8c
/* 080522a0 */ .word D_03004b64
/* 080522a4 */ .word 0x00000140
/* 080522a8 */ .word 0x00000000
/* 080522ac */ .word 0x00000000
/* 080522b0 */ .word 0x00000000

/* 080522b4 */ .word D_08cb14f8
/* 080522b8 */ .word D_06000000
/* 080522bc */ .word 0xffffffff
/* 080522c0 */ .word D_08cb1b08
/* 080522c4 */ .word D_0600e800
/* 080522c8 */ .word 0xffffffff
/* 080522cc */ .word D_088ffbec
/* 080522d0 */ .word D_03004b64
/* 080522d4 */ .word 0x00000140
/* 080522d8 */ .word 0x00000000
/* 080522dc */ .word 0x00000000
/* 080522e0 */ .word 0x00000000

/* 080522e4 */ .word D_08cb14f8
/* 080522e8 */ .word D_06000000
/* 080522ec */ .word 0xffffffff
/* 080522f0 */ .word D_08cb18ec
/* 080522f4 */ .word D_0600e800
/* 080522f8 */ .word 0xffffffff
/* 080522fc */ .word D_088ffbec
/* 08052300 */ .word D_03004b64
/* 08052304 */ .word 0x00000140
/* 08052308 */ .word 0x00000000
/* 0805230c */ .word 0x00000000
/* 08052310 */ .word 0x00000000

/* 08052314 */ .word D_08cb14f8
/* 08052318 */ .word D_06000000
/* 0805231c */ .word 0xffffffff
/* 08052320 */ .word D_08cb16f0
/* 08052324 */ .word D_0600e800
/* 08052328 */ .word 0xffffffff
/* 0805232c */ .word D_088ffbec
/* 08052330 */ .word D_03004b64
/* 08052334 */ .word 0x00000140
/* 08052338 */ .word 0x00000000
/* 0805233c */ .word 0x00000000
/* 08052340 */ .word 0x00000000

/* 08052344 */ .word D_08cbe458
/* 08052348 */ .word D_06000000
/* 0805234c */ .word 0xffffffff
/* 08052350 */ .word D_08cbe730
/* 08052354 */ .word D_0600e800
/* 08052358 */ .word 0xffffffff
/* 0805235c */ .word D_088fffec
/* 08052360 */ .word D_03004b64
/* 08052364 */ .word 0x00000140
/* 08052368 */ .word 0x00000000
/* 0805236c */ .word 0x00000000
/* 08052370 */ .word 0x00000000

/* 08052374 */ .word D_08cbe458
/* 08052378 */ .word D_06000000
/* 0805237c */ .word 0xffffffff
/* 08052380 */ .word D_08cbe634
/* 08052384 */ .word D_0600e800
/* 08052388 */ .word 0xffffffff
/* 0805238c */ .word D_088fffec
/* 08052390 */ .word D_03004b64
/* 08052394 */ .word 0x00000140
/* 08052398 */ .word 0x00000000
/* 0805239c */ .word 0x00000000
/* 080523a0 */ .word 0x00000000

/* 080523a4 */ .word D_08cbe458
/* 080523a8 */ .word D_06000000
/* 080523ac */ .word 0xffffffff
/* 080523b0 */ .word D_08cbe54c
/* 080523b4 */ .word D_0600e800
/* 080523b8 */ .word 0xffffffff
/* 080523bc */ .word D_088fffec
/* 080523c0 */ .word D_03004b64
/* 080523c4 */ .word 0x00000140
/* 080523c8 */ .word 0x00000000
/* 080523cc */ .word 0x00000000
/* 080523d0 */ .word 0x00000000

/* 080523d4 */ .word D_08c9113c
/* 080523d8 */ .word D_06000000
/* 080523dc */ .word 0xffffffff
/* 080523e0 */ .word D_08c913b4
/* 080523e4 */ .word D_0600e800
/* 080523e8 */ .word 0xffffffff
/* 080523ec */ .word D_088fedec
/* 080523f0 */ .word D_03004b64
/* 080523f4 */ .word 0x00000140
/* 080523f8 */ .word 0x00000000
/* 080523fc */ .word 0x00000000
/* 08052400 */ .word 0x00000000

/* 08052404 */ .word D_08c9113c
/* 08052408 */ .word D_06000000
/* 0805240c */ .word 0xffffffff
/* 08052410 */ .word D_08c912dc
/* 08052414 */ .word D_0600e800
/* 08052418 */ .word 0xffffffff
/* 0805241c */ .word D_088fedec
/* 08052420 */ .word D_03004b64
/* 08052424 */ .word 0x00000140
/* 08052428 */ .word 0x00000000
/* 0805242c */ .word 0x00000000
/* 08052430 */ .word 0x00000000

/* 08052434 */ .word D_08c9113c
/* 08052438 */ .word D_06000000
/* 0805243c */ .word 0xffffffff
/* 08052440 */ .word D_08c91208
/* 08052444 */ .word D_0600e800
/* 08052448 */ .word 0xffffffff
/* 0805244c */ .word D_088fedec
/* 08052450 */ .word D_03004b64
/* 08052454 */ .word 0x00000140
/* 08052458 */ .word 0x00000000
/* 0805245c */ .word 0x00000000
/* 08052460 */ .word 0x00000000

@ Producer: "Have you considered going on tour?"
/* 08052464 */
.asciz "プロデューサー「うちで、ガンバってみない？」"
.balign 4, 0

@ Owner: "You've got a lot of talent, you know!"
/* 08052494 */
.asciz "オーナー「キミ、なかなか スジあるヨ」"
.balign 4, 0

@ Lady: "Do your best at the next show, too!"
/* 080524bc */
.asciz "おばちゃん「またつぎ、がんばりなよ！」"
.balign 4, 0

@ It's a live concert!
@ Your Sense of Rhythm
@ is good, so you get
@ to play in the band!
/* 080524e4 */
.asciz "ライブに出演だ！
キミのリズム感は
よいと思うから
どうぞお気楽に～"
.balign 4, 0

@ Concert Hall
/* 08052528 */
.asciz "ライブ"
.balign 4, 0

@ If you have the time,
@ take a look. They're
@ the people who made
@ the game.
/* 08052530 */
.asciz "もし よかったら
見てみてネ。
このゲームの
スタッフたちです。"
.balign 4, 0

@ Credits
/* 08052570 */
.asciz "スタッフ"
.balign 4, 0

@ Our game comes with
@ free drum lessons!
@ You paid good money
@ for them, so why not?
/* 0805257c */
.asciz "メダルを あつめて
ドラムのレッスンを
うけてみよう。
上手になってネ！"
.balign 4, 0

@ Drum Lessons
/* 080525c4 */
.asciz "ドラムレッスン"
.balign 4, 0

@ Earn medals to
@ unlock special
@ games. See how
@ far you can get!
/* 080525d4 */
.asciz "メダルを あつめて
とくべつなゲームに
挑戦してみてネ！
いくつかあるヨ。"
.balign 4, 0

@ Endless Games
/* 0805261c */
.asciz "ゲーム"
.balign 4, 0

@ Collect medals
@ to play with more
@ toys. Everyone
@ likes toys!
/* 08052624 */
.asciz "メダルを あつめて
音のでるおもちゃで
あそんでみてネ！
いくつかあるヨ。"
.balign 4, 0

@ Rhythm Toys
/* 0805266c */
.asciz "おもちゃ"
.balign 4, 0

@ How's your mood
@ been lately?
@ Come here for
@ a consultation.
/* 08052678 */
.asciz "最近の調子 どう？
なにか気になれば
ここで相談を
してみよう。"
.balign 4, 0

@ Cafe
/* 080526b8 */
.asciz "喫茶カウンセル"
.balign 4, 0


@ Today's trip was... an exhilarating drive!!
/* 080526c8 */
.asciz "今回のドライブ ： とっても爽快！！"
.balign 4, 0

@ Today's trip was... long and stressful.
/* 080526ec */
.asciz "今回のドライブ ： まだまだかかるなぁ"
.balign 4, 0

@ Today's trip was... pretty much a total wreck.
/* 08052714 */
.asciz "今回のドライブ ： んもぅ…"
.balign 4, 0

@ Remix 8
/* 08052730 */
.asciz "リミックス ８"
.balign 4, 0


@ Your dinosaur was... having too much fun!!
/* 08052740 */
.asciz "今回のきょうりゅう ： 楽しすぎ～！！"
.balign 4, 0

@ Your dinosaur was... feeling pretty lazy.
/* 08052768 */
.asciz "今回のきょうりゅう ： ほのぼの"
.balign 4, 0

@ Your dinosaur was... not very friendly.
/* 08052788 */
.asciz "今回のきょうりゅう ： いじわる"
.balign 4, 0

@ Remix 7
/* 080527a8 */
.asciz "リミックス ７"
.balign 4, 0


@ Your fishtank contains... something unbelievable!!
/* 080527b8 */
.asciz "今回の内容 ： アンビリーバボーなカンジ！！"
.balign 4, 0

@ Your fishtank contains... something unexpected!
/* 080527e4 */
.asciz "今回の内容 ： 意外なカンジ"
.balign 4, 0

@ Your fishtank contains... something lonely.
/* 08052800 */
.asciz "今回の内容 ： ややさみしいカンジ"
.balign 4, 0

@ Remix 6
/* 08052824 */
.asciz "リミックス ６"
.balign 4, 0


@ The couple's future... happily ever after!
/* 08052834 */
.asciz "今回のふたり ： 幸せになりました♪"
.balign 4, 0

@ The couple's future... an awkward wedding.
/* 08052858 */
.asciz "今回のふたり ： このさき、チョット不安かも…"
.balign 4, 0

@ The couple's future... forever apart!
/* 08052888 */
.asciz "今回のふたり ： ジャマされてしまった！"
.balign 4, 0

@ Remix 5
/* 080528b0 */
.asciz "リミックス ５"
.balign 4, 0


@ Your weather forecast... a happy, clear day!!
/* 080528c0 */
.asciz "今回の天気 ： ハッピーな晴れ！！"
.balign 4, 0

@ Your weather forecast... cloudy and gray.
/* 080528e4 */
.asciz "今回の天気 ： くもり"
.balign 4, 0

@ Your weather forecast... rain, rain and rain.
/* 080528fc */
.asciz "今回の天気 ： 雨"
.balign 4, 0

@ Remix 4
/* 08052910 */
.asciz "リミックス ４"
.balign 4, 0


@ Your love fortune... it's Lovey-Dovey!!
/* 08052920 */
.asciz "今回のラブ ： ラブラブでーす！！"
.balign 4, 0

@ Your love fortune... you'll be best friends♪
/* 08052944 */
.asciz "今回のラブ ： とってもフレンドリーな感じ♪"
.balign 4, 0

@ Your love fortune... your heart might break soon...
/* 08052970 */
.asciz "今回のラブ ： ブロークンハートかも…"
.balign 4, 0

@ Remix 3
/* 08052998 */
.asciz "リミックス ３"
.balign 4, 0


@ Your hype level was... a baseball tournament!!
/* 080529a8 */
.asciz "今回の熱気 ： すごい大会レベル！！"
.balign 4, 0

@ Your hype level was... a short round of catch.
/* 080529cc */
.asciz "今回の熱気 ： 楽しくキャッチボールレベル"
.balign 4, 0

@ Your hype level was... practicing alone.
/* 080529f8 */
.asciz "今回の熱気 ： ひとりで練習レベル"
.balign 4, 0

@ Remix 2
/* 08052a1c */
.asciz "リミックス ２"
.balign 4, 0


@ Your performance was like... a filling dinner!!
/* 08052a2c */
.asciz "今回のデキ ： なんと、 ディナークラス！！"
.balign 4, 0

@ Your performance was like... a breakfast.
/* 08052a58 */
.asciz "今回のデキ ： 朝食クラス"
.balign 4, 0

@ Your performance was like... a cat's snack.
/* 08052a74 */
.asciz "今回のデキ ： 猫のおやつクラス"
.balign 4, 0

@ Want to test your
@ merit? Your skill so
@ far speaks for
@ itself, you know! (NP)
/* 08052a94 */
.asciz "キミの実力を
試してみてみる？
これまでの経験が
モノを言うヨ～！"
.balign 4, 0

@ Remix 1
/* 08052ad4 */
.asciz "リミックス １"
.balign 4, 0


@ Bon dancing is awfully fun!
/* 08052ae4 */
.asciz "ボンダンスって すごく楽しいよネー！"
.balign 4, 0

@ Oh darn, it's raining.
/* 08052b08 */
.asciz "うーん、雨がふってきちゃった。"
.balign 4, 0

@ Just forget it...
/* 08052b28 */
.asciz "もういや…"
.balign 4, 0

@ It's time for the
@ Bon festival again!
@ We're all in high
@ spirits, yay! (NP)
/* 08052b34 */
.asciz "これが いまどきの
ぼんおどり！
ノリノリだヨ！
イェーイ！"
.balign 4, 0

@ The☆Bon Dance
/* 08052b70 */
.asciz "ボンダンス"
.balign 4, 0


@ Whee! That was fun!
/* 08052b7c */
.asciz "あー、楽しかった！"
.balign 4, 0

@ Sparklers are kind of melancholic, aren't they?
/* 08052b90 */
.asciz "せんこう花火って、せつないね。"
.balign 4, 0

@ I'm cold...
/* 08052bb0 */
.asciz "さむいわ…"
.balign 4, 0

@ It's the traditional
@ Bon festival!
@ Clap your hands
@ and sing along!
/* 08052bbc */
.asciz "ぼんおどりの
うたに あわせて
パンッと 手を
たたきましょう。"
.balign 4, 0

@ The☆Bon-Odori
/* 08052bf8 */
.asciz "ザ☆ぼんおどり"
.balign 4, 0


@ I won a trip to Rhythm Heaven!
/* 08052c08 */
.asciz "世界旅行 もらっちゃった！"
.balign 4, 0

@ Must study for next time... after a nap.
/* 08052c24 */
.asciz "次回に向けて 勉強、勉強…Zzz"
.balign 4, 0

@ This is way better than any gameshow.
/* 08052c44 */
.asciz "ま、 こんなものさ。"
.balign 4, 0

@ A gameshow that's
@ all style and no
@ substance... just
@ what viewers want.
/* 08052c58 */
.asciz "司会者の、
「たたいた回数」を
当てるカンタンな
クイズです。"
.balign 4, 0

@ Quiz Show
/* 08052c94 */
.asciz "クイズ"
.balign 4, 0


@ Those rap boys have nothing on us!
/* 08052c9c */
.asciz "そうそう コレコレ、これやわー！！イェーイ！"
.balign 4, 0

@ We can't lose to the Rap Men...!
/* 08052cc8 */
.asciz "なんか ちょっと イマイチかも…！"
.balign 4, 0

@ That was not our best take...
/* 08052cec */
.asciz "こんなん ちゃうわぁ…"
.balign 4, 0

@ The rivals of the
@ Rap Men are here!
@ Be charmed by their
@ cute voices! (NP)
/* 08052d04 */
.asciz "あのラップメンに
ライバルが登場だ！
キュートなボイスに
もう メロメロ！"
.balign 4, 0

@ Rap Women
/* 08052d4c */
.asciz "ラップウイメン"
.balign 4, 0


@ The record company wants a word with you two!!
/* 08052d5c */
.asciz "これからも よろしく たのんまっせー！！"
.balign 4, 0

@ I think our tone was off.
/* 08052d84 */
.asciz "チェッ。 なんか 調子わるいわぁ。"
.balign 4, 0

@ Man, we're uncool.
/* 08052da8 */
.asciz "オレたち、 ダサいやん…"
.balign 4, 0

@ The Rap Men are here
@ with a cool rap.
@ Fitting, because they
@ are pretty cool too.
/* 08052dc0 */
.asciz "クールなふたり組が
やってきた！
アツいラップで
大コーフンだぜ！"
.balign 4, 0

@ Rap Men
/* 08052e00 */
.asciz "ラップメン"
.balign 4, 0


@ We are super cosmic stars!!
/* 08052e0c */
.asciz "ボクたちは スーパーコスモスターさ！！"
.balign 4, 0

@ Is that all you guys have?
/* 08052e34 */
.asciz "あなたたちって こんなものなの？"
.balign 4, 0

@ M-mission failed!!
/* 08052e54 */
.asciz "お、おわりだー！！"
.balign 4, 0

@ We are emissaries
@ from deep space.
@ We come... in style.
@ (No practice)
/* 08052e68 */
.asciz "宇宙を代表\\する
ダンサーたち！
キレた動きに
くぎづけです！！"
.balign 4, 0

@ Cosmic Dance
/* 08052ea4 */
.asciz "コスモダンス"
.balign 4, 0


@ We are space superstars!!
/* 08052eb4 */
.asciz "ボクたちは スペーススーパースター！！"
.balign 4, 0

@ Someday we'll shine like the stars...
/* 08052edc */
.asciz "あの星のように かがやきたいな…"
.balign 4, 0

@ We danced right into a black hole!
/* 08052efc */
.asciz "ブ、 ブラックホールだー！！"
.balign 4, 0

@ This is zero gravity
@ outer space.
@ But, let's dance.
@ Let's Space Dance!
/* 08052f18 */
.asciz "ここは無重力の宇宙。
でも、 おどろうヨ！
レッツスペースダンス！"
.balign 4, 0

@ Space Dance
/* 08052f58 */
.asciz "スペースダンス"
.balign 4, 0


@ Woohoo! The crowd loves us!!
/* 08052f68 */
.asciz "やった！！ お客さん 楽しんでくれたー！！"
.balign 4, 0

@ This shouldn't have been a problem for us...
/* 08052f94 */
.asciz "ボクたち こんなもんじゃないはず…"
.balign 4, 0

@ The customers looked angry...
/* 08052fb8 */
.asciz "お客さん、 おこってたネ…"
.balign 4, 0

@ It's a sold out show
@ for the penguins'
@ opening night!
/* 08052fd4 */
.asciz "ペンギン君たちの
ショータイムが
はじまるヨ！
わーいわーい！"
.balign 4, 0

@ Showtime
/* 08053010 */
.asciz "ショータイム"
.balign 4, 0


@ Tram and Pauline, we're the perfect team!!
/* 08053020 */
.asciz "コンビネーション バッチシ！！"
.balign 4, 0

@ We could only get halfway there...
/* 08053040 */
.asciz "ちゅうとハンパでした…"
.balign 4, 0

@ Maybe we need to try a different act!
/* 08053058 */
.asciz "大しっぱいだ～！！"
.balign 4, 0

@ Tram and Pauline are
@ acrobatic foxes!
@ Quick, their show
@ is about to start!
/* 0805306c */
.asciz "こぎつねトラン、
そしてポリンの
アクロバティックショーがはじまるヨ！"
.balign 4, 0

@ Tram & Pauline
/* 080530b4 */
.asciz "トランとポリン"
.balign 4, 0


@ Want to hear about Daddy's big heist?
/* 080530c4 */
.asciz "みんな、 よかったネ！"
.balign 4, 0

@ I love you... and this cheese!
/* 080530dc */
.asciz "チーズ おいしいね。"
.balign 4, 0

@ The important thing is that we're together.
/* 080530f0 */
.asciz "チーズ 食べたいよ～…"
.balign 4, 0

@ I got a family now.
@ One last job, and
@ I'm out of this
@ business for good.
/* 08053108 */
.asciz "あなたはネズミ。
大スキなチーズを
めざして
ストップ＆ゴー！！"
.balign 4, 0

@ Rat Race
/* 08053148 */
.asciz "こっそり ラット"
.balign 4, 0


@ Together, we are unstoppable!!
/* 08053158 */
.asciz "最強メンバーのたんじょうだー！！"
.balign 4, 0

@ We're completely pooped!
/* 0805317c */
.asciz "ボロボロだァ～！"
.balign 4, 0

@ Toss Boys 2
/* 08053190 */
.asciz "トスボーイズ ２"
.balign 4, 0

@ Next, we'll become World Champion Tossers!!
/* 080531a0 */
.asciz "目標は、 トス世界選手権 優勝だー！！"
.balign 4, 0

@ We're good, but we can get better!
/* 080531c8 */
.asciz "まだまだもっと上手にできるはず！"
.balign 4, 0

@ No good, no good at all!!
/* 080531ec */
.asciz "ダメダメだァ～！"
.balign 4, 0

@ Practice your
@ tossing technique
@ with these three
@ close friends!
/* 08053200 */
.asciz "なかよし３人組、
声をかけあいながら
いつも楽しくトスの
練習してます。"
.balign 4, 0

@ Toss Boys
/* 08053248 */
.asciz "トスボーイズ"
.balign 4, 0


@ Power Calligraphy 2
/* 08053258 */
.asciz "リズムお習字 ２"
.balign 4, 0

@ Hooray for Japanese calligraphy!!
/* 08053268 */
.asciz "お習字って ノリノリだネ！！"
.balign 4, 0

@ Who says calligraphy isn't fun?
/* 08053284 */
.asciz "お習字を もっと楽しもう！"
.balign 4, 0

@ Maybe I should stick with pencils...
/* 080532a0 */
.asciz "ふ～…  アカンわ。"
.balign 4, 0

@ Write Japanese
@ with the brush.
@ (You only have to
@ do the fun parts.)
/* 080532b4 */
.asciz "筆を使って日本語を
書きます。
あなたがするのは
オイシイとこだけ。"
.balign 4, 0

@ Power Calligraphy
/* 080532f8 */
.asciz "リズムお習字"
.balign 4, 0


@ Just leave the fireworks to me!!
/* 08053308 */
.asciz "花火のことならオレにまかせろ！！"
.balign 4, 0

@ I think I put on a pretty good show!
/* 0805332c */
.asciz "なかなかのデキだぜ！"
.balign 4, 0

@ Hack cough... where'd everyone go?!
/* 08053344 */
.asciz "ゲホゲホッ… 失敗。"
.balign 4, 0

@ If it's summer, that
@ means it's time for
@ fireworks. The colors
@ are amazing!
/* 08053358 */
.asciz "夏といえばさ、
やっぱ花火かな？
色あざやかに
打ち上げよう！"
.balign 4, 0

@ Fireworks
/* 08053394 */
.asciz "花火"
.balign 4, 0


@ That one's a perfect 10!
/* 0805339c */
.asciz "まん点！！"
.balign 4, 0

@ Now you just need to practice the landing...
/* 080533a8 */
.asciz "着地は失敗しちゃった…"
.balign 4, 0

@ I want to go back to the moon!
/* 080533c0 */
.asciz "月に帰りた～い！"
.balign 4, 0

@ White rabbit, jump
@ to the beat and
@ cross the sea!
@ (No practice.)
/* 080533d4 */
.asciz "ジャンプが得意な
白いウサギさん。
ビートにのって
海をわたろう！"
.balign 4, 0

@ Bunny Hop
/* 08053414 */
.asciz "ウサギとび"
.balign 4, 0


@ Hooray! I'm not lonely any more!
/* 08053420 */
.asciz "わーい、 わたし もう さみしくないヨ！"
.balign 4, 0

@ I'd be even more happy if more flowers bloomed...
/* 08053448 */
.asciz "もっと 花がさくと うれしいな～。"
.balign 4, 0

@ I don't like this! It was better when I was alone!
/* 0805346c */
.asciz "こんなのヤダ～、 こわいヨ～！"
.balign 4, 0

@ Nothing brightens up
@ a sad face like a
@ beautiful flower!
@ Let's see some magic!
/* 0805348c */
.asciz "あなたはまほう使い。
さみしがりやの
おじょうちゃんに花を
プレゼントしよう。"
.balign 4, 0

@ Wizard's Waltz
/* 080534d8 */
.asciz "まほうつかい"
.balign 4, 0


@ The Hare-force will march on to victory!
/* 080534e8 */
.asciz "ごほうびに、こんなのもらってしまった！！"
.balign 4, 0

@ Hmph! You've gotta march cooler than that!
/* 08053514 */
.asciz "ぐっ！ もっとカッコよくおどらなければ！"
.balign 4, 0

@ Th-this could be the end of the Marchers!
/* 0805353c */
.asciz "こ、これでは、イカン！う～む…"
.balign 4, 0

@ Now let's march to
@ a different beat.
@ Listen to the cues
@ and hop to it! (NP)
/* 0805355c */
.asciz "行進をするのだ。
こんどのは ちょっと
テクニカルだ！
がんばりたまえ。"
.balign 4, 0

@ Marcher 2
/* 080535a4 */
.asciz "マーチャ ２"
.balign 4, 0


@ The alien rescue was a huge success!
/* 080535b0 */
.asciz "宇宙人の救出、大成功！！"
.balign 4, 0

@ Today's duty is cleaning～♪
/* 080535cc */
.asciz "今日の任務は、おそうじでーす♪"
.balign 4, 0

@ Aaah! We got left behind!
/* 080535ec */
.asciz "わぁっ！おいてけぼりされた！"
.balign 4, 0

@ Following orders as a
@ unit builds a sense
@ of camaraderie.
@ Also, rhythm.
/* 0805360c */
.asciz "行進をするのだ。
かってな行動はチームをダメにする！
がんばりたまえ。"
.balign 4, 0

@ Marching Orders
/* 08053654 */
.asciz "マーチャ"
.balign 4, 0


@ With tap, we can do anything!
/* 08053660 */
.asciz "この気持ち、とまらなーい！"
.balign 4, 0

@ Hm... feels a little off.
/* 0805367c */
.asciz "う～ん… すこし ちがうカンジ…"
.balign 4, 0

@ We're tapped out!
/* 0805369c */
.asciz "ガーン！"
.balign 4, 0

@ The monkeys have
@ powered up! Can you
@ keep up? Don't lose!
@ (No practice.)
/* 080536a8 */
.asciz "サルがパワーアップ！
あなたは かれらに
ついていけるか！？
まけるな～！"
.balign 4, 0

@ Turbo Tap Trial
/* 080536f0 */
.asciz "スーパータップ"
.balign 4, 0


@ It feels good to belong!
/* 08053700 */
.asciz "気分は もう、サイコー！！"
.balign 4, 0

@ Pretty good...for a human.
/* 0805371c */
.asciz "ちょっと、 ヘンなトコあったけどネ！"
.balign 4, 0

@ Disappointing...
/* 08053740 */
.asciz "無念だわ。"
.balign 4, 0

@ Think you've got
@ what it takes to
@ tap-dance with
@ the monkeys?
/* 0805374c */
.asciz "あなたは女の子。
となりのサルたちに
合わせてタップを
きざむッス！"
.balign 4, 0

@ Tap Trial
/* 08053790 */
.asciz "タップダンズ"
.balign 4, 0


@ Look mom, I finally made it!
/* 080537a0 */
.asciz "みんな、見て見てー！"
.balign 4, 0

@ I'll make the big leagues yet!
/* 080537b8 */
.asciz "こんなところで 終われない！"
.balign 4, 0

@ What do you think you're doing?!
/* 080537d4 */
.asciz "ナニスルノデスカー！"
.balign 4, 0

@ Close your eyes.
@ Free your mind.
@ Hit the ball.
@ Don't cry. (NP)
/* 080537ec */
.asciz "ズームをきにするな！
心でボールを打て！
視覚に頼るな！
涙もふくな～！"
.balign 4, 0

@ Spaceball 2
/* 08053834 */
.asciz "エアーバッター ２"
.balign 4, 0


@ Look what I got!
/* 08053848 */
.asciz "こんなの もらっちゃったー！"
.balign 4, 0

@ Practice is the key to reaching new heights!
/* 08053864 */
.asciz "さらに上を目指して練習だ！"
.balign 4, 0

@ I hope this makes it up to you.
/* 08053880 */
.asciz "これで ゆるしてください。"
.balign 4, 0

@ Don't worry about
@ the zoom! Follow
@ the trajectories
@ in your heart!
/* 0805389c */
.asciz "ズームをきにするな！
心でボールを打て！
視覚に頼るな！
どんと行け～！"
.balign 4, 0

@ Spaceball
/* 080538e4 */
.asciz "エアーバッター"
.balign 4, 0


@ The feeling of a sharp blade is unbeatable!!
/* 080538f4 */
.asciz "切れあじ、 サイコーだ！！"
.balign 4, 0

@ Must concentrate more!
/* 08053910 */
.asciz "さらに精進（しょうじん）すべし！"
.balign 4, 0

@ You have bested me!
/* 08053934 */
.asciz "刃こぼれしちまった！"
.balign 4, 0

@ Run! They're coming!
@ You're a samurai, so
@ you can stay behind
@ and stop them. (NP)
/* 0805394c */
.asciz "そこのけ そこのけ
奴らが通る。
おぬしは サムライ、
斬り捨て 御免！"
.balign 4, 0

@ Samurai Slice
/* 08053990 */
.asciz "ゐあひ斬り"
.balign 4, 0

@ Time out!  In the corner, all of you!
/* 0805399c */
.asciz "みんな、反省してネ！"
.balign 4, 0

@ “Let me go, please~?”
/* 080539b4 */
.asciz "おばけ「ナ、ナンダヨ～」"
.balign 4, 0

@ Wow! Put down the bow, and help me clean up.
/* 080539d0 */
.asciz "うわー！ やられほうだいだ！"
.balign 4, 0

@ Those ghosts are at
@ it again! Grab your
@ arrows and aim
@ for their souls! (NP)
/* 080539ec */
.asciz "白いヤツが こちらを
ナメきっている！
ムカムカーッ！！
こらしめちゃおう！"
.balign 4, 0

@ Sneaky Spirits 2
/* 08053a38 */
.asciz "しろいおばけ ２"
.balign 4, 0


@ No ghost escapes on your watch!
/* 08053a48 */
.asciz "いっぱい しとめた！！"
.balign 4, 0

@ You got one!
/* 08053a60 */
.asciz "しとめた！"
.balign 4, 0

@ Escaped ghosts are nothing but trouble.
/* 08053a6c */
.asciz "逃げたヤツにイタズラされた！"
.balign 4, 0

@ Ghosts are trying
@ to escape their
@ haunted house! Grab
@ your trusty bow!
/* 08053a8c */
.asciz "白いヤツが こちらを
バカにしている！
ムキーッ！！
こらしめちゃおう！"
.balign 4, 0

@ Sneaky Spirits
/* 08053ad4 */
.asciz "しろいおばけ"
.balign 4, 0


@ Thou art strong. Live happily!
/* 08053ae4 */
.asciz "オヌシは強い。お幸せに…！"
.balign 4, 0

@ You have courage. Work harder!
/* 08053b00 */
.asciz "うむ、スジは良いな。がんばれ！"
.balign 4, 0

@ Don't lose! People depend on you!
/* 08053b20 */
.asciz "まけるな！ おまえが頼りなのだー！！"
.balign 4, 0

@ Watch out! I'm a
@ warrior just like
@ my ancestors!
@ (No practice.)
/* 08053b44 */
.asciz "オレのじいちゃんの
じいちゃんの
じいちゃんは
忍者なんだぜ。"
.balign 4, 0

@ Ninja Reincarnate
/* 08053b80 */
.asciz "忍者の子孫"
.balign 4, 0


@ He told me “great job!"
/* 08053b8c */
.asciz "アッパレって 言われちゃったゼ！！"
.balign 4, 0

@ Forgive me, my lord!
/* 08053bb0 */
.asciz "トノ！ ごめんなさ～い。"
.balign 4, 0

@ No! The feudal lord has fainted!
/* 08053bc8 */
.asciz "ゲッ！ トノが きぜつしてる！！"
.balign 4, 0

@ It's an enemy raid!
@ Take on their
@ challenge with both
@ of your hands. (NP)
/* 08053be8 */
.asciz "敵襲(てきしゅう)だ！
十\\字ボタンとAボタンで応戦(おうせん)だ！
フジヤマ（ふじさん）！！"
.balign 4, 0

@ Ninja Bodyguard
/* 08053c40 */
.asciz "忍者"
.balign 4, 0


@ Way too easy for us♪
/* 08053c48 */
.asciz "らくちん らくちん♪"
.balign 4, 0

@ Whew, that was hard!
/* 08053c5c */
.asciz "なかなか がんばっていたネ！"
.balign 4, 0

@ Ouch! I think I've sprained something.
/* 08053c78 */
.asciz "エーン！ しっぱい！！"
.balign 4, 0

@ Protect those balls!
@ They're our good
@ friends, and they
@ need our help! (NP)
/* 08053c90 */
.asciz "とんでくる丸い玉。
ほんとにイイやつ
なんですヨ～。
落とさないでネ！"
.balign 4, 0

@ Bouncy Road 2
/* 08053cd4 */
.asciz "ホッピングロード２"
.balign 4, 0


@ This is super simple♪
/* 08053ce8 */
.asciz "かんたん かんたん♪"
.balign 4, 0

@ We're good partners!
/* 08053cfc */
.asciz "けっこうな コンビネーションだったネ！"
.balign 4, 0

@ This is tough!
/* 08053d24 */
.asciz "なかなか ムズカシー！"
.balign 4, 0

@ The bouncing balls
@ need your help.
@ They're good to us,
@ so don't drop them!
/* 08053d3c */
.asciz "とんでくる丸い玉。
あれはイイやつです。
落とさないでネ！"
.balign 4, 0

@ Bouncy Road
/* 08053d78 */
.asciz "ホッピングロード"
.balign 4, 0


@ This medicine will save lives!!
/* 08053d8c */
.asciz "ものすごいクスリができた！！"
.balign 4, 0

@ Unwanted results are a step towards success!
/* 08053dac */
.asciz "失敗は成功のもとカモ！"
.balign 4, 0

@ They'll cut my funding...
/* 08053dc4 */
.asciz "研究は失敗だ。"
.balign 4, 0

@ <Memo from Assistant>
@ We have quite a germ
@ outbreak on our
@ hands. Help us! (NP)
/* 08053dd4 */
.asciz "助手からの知らせ
「大変です！
バイキン発生です！！
先生、たすけて～」"
.balign 4, 0

@ Sick Beats
/* 08053e1c */
.asciz "バイキン はかせ"
.balign 4, 0


@ The air tastes as good as my produce!
/* 08053e2c */
.asciz "スッキリそうかい！ 空気がうますぎ！！"
.balign 4, 0

@ I guess I could market these as “organic.”
/* 08053e54 */
.asciz "しかしなんで うちのヤサイだけに 毛が…？"
.balign 4, 0

@ Note to self: sell all veggies before five o'clock.
/* 08053e80 */
.asciz "なんで 毛が はえるんだー！？"
.balign 4, 0

@ The hairs are gone,
@ but their heirs
@ are a huge pain!
@ (No practice.)
/* 08053ea0 */
.asciz "またしても生えてくる
うっとうしい「毛」！
ぬいちゃえ、 
ぬいちゃえ！"
.balign 4, 0

@ Rhythm Tweezers 2
/* 08053ee8 */
.asciz "リズム脱毛 ２"
.balign 4, 0


@ Fresh and so clean! The air is delicious!
/* 08053ef8 */
.asciz "スッキリそうかい！ 空気がうまい！！"
.balign 4, 0

@ Why do our vegetables grow hair...?
/* 08053f1c */
.asciz "なんで うちのヤサイは 毛がはえるんだ？"
.balign 4, 0

@ I can't sell this!
/* 08053f44 */
.asciz "これじゃ 売りものに ならん！"
.balign 4, 0

@ These weird hairs
@ keep growing!
@ Pluck'em,
@ pluck'em!
/* 08053f64 */
.asciz "どんどん生えてくる
うっとうしい「毛」！
ぬいちゃえ、 
ぬいちゃえ！"
.balign 4, 0

@ Rhythm Tweezers
/* 08053fa8 */
.asciz "リズム脱毛"
.balign 4, 0


@ You're friends with the stars!
/* 08053fb4 */
.asciz "星たちと おともだちだヨ！"
.balign 4, 0

@ The night wind feels so nice~
/* 08053fd0 */
.asciz "夜風が とっても きもちいいな。"
.balign 4, 0

@ Eek! You messed up!
/* 08053ff0 */
.asciz "うひゃー！ しっぱいしちゃった！！"
.balign 4, 0

@ It's a beautiful night.
@ We just have to
@ watch out for those
@ fish! (No practice.)
/* 08054014 */
.asciz "音楽にあわせて
ジャンプしてネ！
ビリビリウオに
気をつけよう。"
.balign 4, 0

@ Night Walk 2
/* 08054054 */
.asciz "ナイトウォーク ２"
.balign 4, 0


@ The stars welcome you!
/* 08054068 */
.asciz "星たちが かんげいしてるヨ！"
.balign 4, 0

@ Night sky walks are so fun.
/* 08054084 */
.asciz "夜空の おさんぽ、 たのしいな。"
.balign 4, 0

@ Try harder next time.
/* 080540a4 */
.asciz "つぎは もっと がんばってネ…"
.balign 4, 0

@ Jump with the music!
@ The stars will gather
@ and put a spring in
@ your step. (NP)
/* 080540c4 */
.asciz "音楽にあわせて
ジャンプしてネ！
星たちが あつまって
あなたも夜空へ…"
.balign 4, 0

@ Night Walk
/* 0805410c */
.asciz "ナイトウォーク"
.balign 4, 0


@ That's how you become employee of the year!
/* 0805411c */
.asciz "赤いモノを じゃんじゃん生産しちゃうヨ！！"
.balign 4, 0

@ Let's keep the production lines moving!
/* 08054148 */
.asciz "もっともっと 赤いモノを 生産だ！"
.balign 4, 0

@ At this rate, we'll go out of business.
/* 0805416c */
.asciz "赤いモノ、もっと生産しなきゃ…"
.balign 4, 0

@ Orders keep coming
@ for our widgets! Use
@ both hands to meet
@ our quotas! (NP)
/* 0805418c */
.asciz "これぞ左右独立！
テンポよく こなして
レッツ ポリリズム！
イェーイ！"
.balign 4, 0

@ Polyrhythm 2
/* 080541d0 */
.asciz "ポリリズム ２"
.balign 4, 0


@ Widgets, Inc. is a huge success!
/* 080541e0 */
.asciz "赤いモノを 生産しまくりだネ！！"
.balign 4, 0

@ You can't beat running your own business.
/* 08054200 */
.asciz "どんどん 赤いモノを 生産だ！"
.balign 4, 0

@ Maybe I should be a craftsman...
/* 08054220 */
.asciz "赤いモノ、量産は たいへんだなぁ…"
.balign 4, 0

@ Master pressing
@ different buttons
@ at the same time! It
@ should be easy... (NP)
/* 08054244 */
.asciz "十\\字ボタンとＡボタンの同時押しをマスターだ！けっこうカンタンだ。たぶん…"
.balign 4, 0

@ Polyrhythm
/* 08054290 */
.asciz "ポリリズム"
.balign 4, 0


@ The Clappy Trio is still in perfect sync!
/* 0805429c */
.asciz "息ピッタリでーす！ イェーイ！"
.balign 4, 0

@ I need just a little more practice...
/* 080542bc */
.asciz "あとチョットなんだけどね…"
.balign 4, 0

@ Oh no! I've done it again!
/* 080542d8 */
.asciz "キャー！ ゆるしてー！！"
.balign 4, 0

@ The Clappy Trio
@ is on a world tour!
@ Their new style is
@ just too cool! (NP)
/* 080542f0 */
.asciz "ラフだった彼らが
バリっとスーツを
着てきたヨ！
カッコイイ！！"
.balign 4, 0

@ The Snappy Trio
/* 08054330 */
.asciz "バリバリ三人衆"
.balign 4, 0


@ Trio-riffic!
/* 08054340 */
.asciz "この三人衆、 息ピッタリだ！！"
.balign 4, 0

@ Please show up for more of our practice sessions.
/* 08054360 */
.asciz "満足するのは まだ早いかもね。"
.balign 4, 0

@ The trio just went solo!
/* 08054380 */
.asciz "仲間が帰っちゃった！"
.balign 4, 0

@ The world-famous
@ Clappy Trio never
@ misses a beat. Watch
@ the other two!
/* 08054398 */
.asciz "順番に拍手をするヨ！
あなたは３番目。
前の2人をよく見てネ！"
.balign 4, 0

@ The Clappy Trio
/* 080543d4 */
.asciz "パチパチ三人衆"
.balign 4, 0


@ This is how you do it, baby!
/* 080543e4 */
.asciz "ざっと こんなモンだぜー！！"
.balign 4, 0

@ Well, that's good enough. So let's eat!
/* 08054400 */
.asciz "ま、さておき。 ごはん 食べよう！"
.balign 4, 0

@ What was wrong with the tempo?!
/* 08054424 */
.asciz "テンポが なんだー！！"
.balign 4, 0

@Let's punch to the
@ rhythm again...
@ But watch for the
@ tempo change! (NP)
/* 0805443c */
.asciz "とんでくるモノを
Aボタンでパンチ！
でも、 スピードが
ヘンテコだヨ。"
.balign 4, 0

@ Karate Man 2
/* 08054480 */
.asciz "カラテ家 ２"
.balign 4, 0


@ You sent all of this flying!!
/* 0805448c */
.asciz "こんなに ブッとばしちゃった！！"
.balign 4, 0

@ Let's break for lunch!
/* 080544ac */
.asciz "とりあえず、ごはん 食べとこう！"
.balign 4, 0

@ There's always tomorrow.
/* 080544cc */
.asciz "明日が あるさ。"
.balign 4, 0

@ This is karate
@ training at its most
@ intense! (Or, at its
@ most unorthodox...)
/* 080544dc */
.asciz "とんでくるモノを
Aボタンでパンチ！
よくあるゲーム？
…かもね。"
.balign 4, 0

@ Karate Man
/* 0805451c */
.asciz "カラテ家"

@ fuck is this?
glabel D_08054525
.byte 9, 6, 9, 10, 9, 11, 255, 255

glabel D_0805452d
.byte 2, 9, 11, 2, 9, 10, 2, 9, 9, 2, 9, 8, 2, 9, 7, 2, 9, 6, 255

glabel D_08054540
.byte 8, 6, 8, 10, 8, 11, 255, 255

glabel D_08054548
.byte 2, 8, 11, 2, 8, 10, 2, 8, 9, 2, 8, 8, 2, 8, 7, 2, 8, 6, 255

glabel D_0805455b
.byte 7, 6, 7, 10, 7, 11, 255, 255

glabel D_08054563
.byte 2, 7, 11, 2, 7, 10, 2, 7, 9, 2, 7, 8, 2, 7, 7, 2, 7, 6, 255

glabel D_08054576
.byte 6, 6, 6, 10, 6, 11, 255, 255

glabel D_0805457e
.byte 2, 6, 11, 2, 6, 10, 2, 6, 9, 2, 6, 8, 2, 6, 7, 2, 6, 6, 255

glabel D_08054591
.byte 5, 6, 5, 10, 5, 11, 255, 255

glabel D_08054599
.byte 2, 5, 11, 2, 5, 10, 2, 5, 9, 2, 5, 8, 2, 5, 7, 2, 5, 6, 255

glabel D_080545ac
.byte 4, 6, 4, 10, 4, 11, 255, 255

glabel D_080545b4
.byte 2, 4, 11, 2, 4, 10, 2, 4, 9, 2, 4, 8, 2, 4, 7, 2, 4, 6, 255

glabel D_080545c7
.byte 3, 6, 3, 10, 3, 11, 255, 255

glabel D_080545cf
.byte 2, 3, 11, 2, 3, 10, 2, 3, 9, 2, 3, 8, 2, 3, 7, 2, 3, 6, 255

glabel D_080545e2
.byte 2, 6, 2, 7, 2, 8, 2, 9, 2, 10, 255, 255

glabel D_080545ee
.byte 1, 11, 255, 255

glabel D_080545f2
.byte 2, 1, 11, 255

glabel D_080545f6
.byte 9, 6, 9, 9, 9, 11, 255, 255

glabel D_080545fe
.byte 4, 9, 11, 255

glabel D_08054602
.byte 8, 6, 8, 9, 8, 11, 255, 255

glabel D_0805460a
.byte 4, 8, 11, 255

glabel D_0805460e
.byte 7, 6, 7, 9, 7, 11, 255, 255

glabel D_08054616
.byte 4, 7, 11, 255

glabel D_0805461a
.byte 6, 6, 6, 9, 6, 11, 255, 255

glabel D_08054622
.byte 4, 6, 11, 255

glabel D_08054626
.byte 5, 6, 5, 9, 5, 11, 255, 255

glabel D_0805462e
.byte 4, 5, 11, 255

glabel D_08054632
.byte 4, 6, 4, 9, 4, 11, 255, 255

glabel D_0805463a
.byte 4, 4, 11, 255

glabel D_0805463e
.byte 3, 6, 3, 9, 3, 11, 255, 255

glabel D_08054646
.byte 4, 3, 11, 255

glabel D_0805464a
.byte 2, 6, 2, 9, 255, 255

glabel D_08054650
.byte 4, 2, 11, 255

glabel D_08054654
.byte 1, 10, 255, 255

glabel D_08054658
.byte 2, 1, 10, 255

glabel D_0805465c
.byte 9, 6, 9, 8, 9, 11, 255, 255

glabel D_08054664
.byte 4, 9, 10, 255

glabel D_08054668
.byte 8, 6, 8, 8, 8, 11, 255, 255

glabel D_08054670
.byte 4, 8, 10, 255

glabel D_08054674
.byte 7, 6, 7, 8, 7, 11, 255, 255

glabel D_0805467c
.byte 4, 7, 10, 255

glabel D_08054680
.byte 6, 6, 6, 8, 6, 11, 255, 255

glabel D_08054688
.byte 4, 6, 10, 255

glabel D_0805468c
.byte 5, 6, 5, 8, 5, 11, 255, 255

glabel D_08054694
.byte 4, 5, 10, 255

glabel D_08054698
.byte 4, 6, 4, 8, 4, 11, 255, 255

glabel D_080546a0
.byte 4, 4, 10, 255

glabel D_080546a4
.byte 3, 6, 3, 8, 3, 11, 255, 255

glabel D_080546ac
.byte 4, 3, 10, 255

glabel D_080546b0
.byte 2, 6, 2, 8, 255, 255

glabel D_080546b6
.byte 4, 2, 10, 255

glabel D_080546ba
.byte 1, 9, 255, 255

glabel D_080546be
.byte 2, 1, 9, 255

glabel D_080546c2
.byte 9, 6, 9, 7, 9, 11, 255, 255

glabel D_080546ca
.byte 4, 9, 9, 255

glabel D_080546ce
.byte 8, 6, 8, 7, 8, 11, 255, 255

glabel D_080546d6
.byte 4, 8, 9, 255

glabel D_080546da
.byte 7, 6, 7, 7, 7, 11, 255, 255

glabel D_080546e2
.byte 4, 7, 9, 255

glabel D_080546e6
.byte 6, 6, 6, 7, 6, 11, 255, 255

glabel D_080546ee
.byte 4, 6, 9, 255

glabel D_080546f2
.byte 5, 6, 5, 7, 5, 11, 255, 255

glabel D_080546fa
.byte 4, 5, 9, 255

glabel D_080546fe
.byte 4, 6, 4, 7, 4, 11, 255, 255

glabel D_08054706
.byte 4, 4, 9, 255

glabel D_0805470a
.byte 3, 6, 3, 7, 3, 11, 255, 255

glabel D_08054712
.byte 4, 3, 9, 255

glabel D_08054716
.byte 2, 6, 2, 7, 255, 255

glabel D_0805471c
.byte 4, 2, 9, 255

glabel D_08054720
.byte 1, 8, 255, 255

glabel D_08054724
.byte 2, 1, 8, 255

glabel D_08054728
.byte 9, 6, 9, 11, 255, 255

glabel D_0805472e
.byte 4, 9, 8, 255

glabel D_08054732
.byte 8, 6, 8, 11, 255, 255

glabel D_08054738
.byte 4, 8, 8, 255

glabel D_0805473c
.byte 7, 6, 7, 11, 255, 255

glabel D_08054742
.byte 4, 7, 8, 255

glabel D_08054746
.byte 6, 6, 6, 11, 255, 255

glabel D_0805474c
.byte 4, 6, 8, 255

glabel D_08054750
.byte 5, 6, 5, 11, 255, 255

glabel D_08054756
.byte 4, 5, 8, 255

glabel D_0805475a
.byte 4, 6, 4, 11, 255, 255

glabel D_08054760
.byte 4, 4, 8, 255

glabel D_08054764
.byte 3, 6, 3, 11, 255, 255

glabel D_0805476a
.byte 4, 3, 8, 255

glabel D_0805476e
.byte 2, 6, 255, 255

glabel D_08054772
.byte 4, 2, 8, 255

glabel D_08054776
.byte 1, 6, 9, 11, 255, 255

glabel D_0805477c
.byte 4, 9, 7, 4, 9, 8, 4, 9, 9, 4, 9, 10, 4, 9, 11, 255

glabel D_0805478c
.byte 4, 8, 6, 255

glabel D_08054790
.byte 9, 6, 9, 7, 9, 8, 9, 9, 9, 10, 8, 11, 9, 11, 255, 255

glabel D_080547a0
.byte 4, 8, 7, 4, 8, 8, 4, 8, 9, 4, 8, 10, 4, 8, 11, 255

glabel D_080547b0
.byte 4, 7, 6, 255

glabel D_080547b4
.byte 8, 6, 1, 7, 8, 7, 8, 8, 8, 9, 8, 10, 7, 11, 8, 11, 255, 255

glabel D_080547c6
.byte 4, 7, 7, 4, 7, 8, 4, 7, 9, 4, 7, 10, 4, 7, 11, 255

glabel D_080547d6
.byte 4, 6, 6, 255

glabel D_080547da
.byte 7, 6, 7, 7, 7, 8, 7, 9, 7, 10, 6, 11, 7, 11, 255, 255

glabel D_080547ea
.byte 4, 6, 7, 4, 6, 8, 4, 6, 9, 4, 6, 10, 4, 6, 11, 255

glabel D_080547fa
.byte 4, 5, 6, 255

glabel D_080547fe
.byte 6, 6, 6, 7, 6, 8, 6, 9, 6, 10, 5, 11, 6, 11, 255, 255

glabel D_0805480e
.byte 4, 5, 7, 4, 5, 8, 4, 5, 9, 4, 5, 10, 4, 5, 11, 255

glabel D_0805481e
.byte 4, 4, 6, 255

glabel D_08054822
.byte 5, 6, 5, 7, 5, 8, 5, 9, 5, 10, 4, 11, 5, 11, 255, 255

glabel D_08054832
.byte 4, 4, 7, 4, 4, 8, 4, 4, 9, 4, 4, 10, 4, 4, 11, 255

glabel D_08054842
.byte 4, 3, 6, 255

glabel D_08054846
.byte 4, 6, 4, 7, 4, 8, 4, 9, 4, 10, 3, 11, 4, 11, 255, 255

glabel D_08054856
.byte 4, 3, 7, 4, 3, 8, 4, 3, 9, 4, 3, 10, 4, 3, 11, 255

glabel D_08054866
.byte 2, 1, 6, 255

glabel D_0805486a
.byte 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 255, 255

glabel D_08054878
.byte 4, 2, 7, 4, 2, 8, 4, 2, 9, 4, 2, 10, 4, 2, 11, 255

glabel D_08054888
.byte 2, 2, 11, 255

glabel D_0805488c
.byte 3, 6, 3, 7, 3, 8, 3, 9, 3, 10, 3, 11, 255, 255

glabel D_0805489a
.byte 4, 9, 6, 255

glabel D_0805489e
.byte 4, 2, 6, 255

glabel D_080548a2
.byte 0, 0, 2, 48, 1, 48, 5, 49, 1, 53, 131, 137, 131, 147, 131, 78, 32, 2, 50, 1, 50, 5, 51, 1, 55, 131, 110, 131, 67, 131, 140, 131, 120, 131, 139, 0, 0, 0, 2, 48, 1, 48, 5, 49, 1, 53, 131, 137, 131, 147, 131, 78, 32, 2, 50, 1, 50, 5, 51, 1, 55, 149, 189, 150, 125, 0, 0, 0, 0, 0, 0, 1, 254, 1, 24, 2, 24, 255

glabel D_080548f0
.byte 0, 5, 1, 2, 2, 2, 3, 2, 4, 2, 5, 2, 6, 2, 7, 2, 8, 5, 8, 5, 7, 2, 6, 2, 5, 2, 4, 2, 3, 2, 2, 2, 1, 2, 0, 5, 255

glabel D_08054915
.byte 4, 2, 5, 2, 6, 2, 7, 2, 8, 5, 8, 5, 7, 2, 6, 2, 5, 2, 4, 2, 12, 2, 11, 2, 10, 2, 9, 5, 9, 5, 10, 2, 11, 2, 12, 2, 255

glabel D_0805493a
.byte 0, 40, 1, 3, 2, 3, 3, 3, 4, 3, 255

glabel D_08054945
.byte 0, 3, 1, 3, 2, 3, 3, 3, 255

.end
