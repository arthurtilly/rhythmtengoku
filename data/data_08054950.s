.section .rodata
.syntax unified

.include "include/gba.inc"

@ Erase ALL data?
@�@�@�@�@�@�@�@Erase
@�@�@�@�@�@�@�@Cancel
glabel D_08054950
.asciz "\x02\x33\x01\x33\x01\x43�z���g�ɏ����́H
\x02\x31\x01\x31\x01\x4c�@�@�@�@�@�@�@�͂�
�@�@�@�@�@�@�@������"
.balign 4, 0

@ Clear Save Data
@ Erase progress, gifts, drum lessons,
@ <everything>! Think about it!
/* 08054998 */
.asciz "\x02\x33\x01\x33\x01\x43�f�[�^�̃N���A
\x02\x31\x01\x31\x01\x4c���܂܂ł̋L�^��S�������āA�͂��߂���
���Ȃ����܂��B�悭�l���ăl�I"
.balign 4, 0

@ Sound Mode
@ <Stereo>  For headphones, Nintendo DS, etc.
@ <Mono>  For GBAs without headphones.
/* 080549fc */
.asciz "\x02\x33\x01\x33\x01\x43�T�E���h���[�h
\x02\x31\x01\x31\x01\x4c�X�e���I�@�@�w�b�h�z���Ȃ炱�����I�I�X�X���I
���m�����@�@�{�̂̃X�s�[�J�[�Ȃ炱�����B"
.balign 4, 0

/* 08054a70 */
.asciz ""
.balign 4, 0

@ You can read it
@ in your e-mail. There are still
/* 08054a74 */
.asciz "�i���Y���������Ł@����郈�j\n"
.balign 4, 0

@ You can play it
@ in the studio. There are still
/* 08054a94 */
.asciz "�i�X�^�W�I�Ł@�������郈�j\n"
.balign 4, 0

@ You can listen to
@ it in the studio. There are now
/* 08054ab0 */
.asciz "�i�X�^�W�I�Ł@�����郈�j \n"
.balign 4, 0

glabel D_08054acc
.asciz "\x02\x31\x01\x31\x01\x43\x03\x30\x01\x73\x05\x34\x01\x38�u"
.balign 4, 0

glabel D_08054ae0
.asciz "�v"
.balign 4, 0

glabel D_08054ae4
.asciz "�̋�"
.balign 4, 0

@ You've earned a gift!
glabel D_08054aec
.asciz "\x02\x30\x01\x30���v���[���g�I\n"
.balign 4, 0

glabel D_08054b00
.asciz "�v���[���g�́@���Ɓ@\x02\x31\x01\x31"
.balign 4, 0

@ gifts
@ left to get. Keep going!
glabel D_08054b1c
.asciz "�R\x02\x30\x01\x30�@���邩��A
���̃L�����y�[���ɂ��`�������W���Ă݂ăl�I"
.balign 4, 0

@ 0 gifts left.
@ You finally got them all!
glabel D_08054b5c
.asciz "�v���[���g�́@�����\x02\x31\x01\x31�I�V�}�C\x02\x30\x01\x30�ł��B\n"
.balign 4, 0

@ Congratulations!
glabel D_08054b88
.asciz "�p�[�t�F�N�g�L�����y�[���A�R���v���[�g�ł��I"
.balign 4, 0

@ A lot of stuff here is not translated

/* 08054bb8 */
.asciz "���`��c"
.balign 4, 0

/* 08054bc4 */
.asciz "��������B"
.balign 4, 0

/* 08054bd0 */
.asciz "�l���݂ł��B"
.balign 4, 0

/* 08054be0 */
.asciz "���Ȃ�ǂ��ł��I"
.balign 4, 0

/* 08054bf4 */
.asciz "�ō����x���ł��I�I"
.balign 4, 0

/* 08054c08 */
.asciz ":1.2�r"
.balign 4, 0

/* 08054c10 */
.asciz ":1.6�`"
.balign 4, 0

/* 08054c18 */
.asciz ":1.4�a"
.balign 4, 0

/* 08054c20 */
.asciz ":1.5�b"
.balign 4, 0

/* 08054c28 */
.asciz ":1.1�c"
.balign 4, 0

/* 08054c30 */
.asciz "�Ȃ��Ƃ��́@����������"
.balign 4, 0

/* 08054c48 */
.asciz "���Y������@�o�b�`�V��"
.balign 4, 0

/* 08054c60 */
.asciz "�v������@�݂��@�s�b�^�V��"
.balign 4, 0

@ Reflexes
/* 08054c7c */
.asciz "�����܂́@�����Ă�@�X�s�[�h"
.balign 4, 0

@ Adaptability
/* 08054c9c */
.asciz "�Ă������@�̂���傭"
.balign 4, 0

@ Technique Level
/* 08054cb4 */
.asciz "�e�N�j�b�N�@���x��"
.balign 4, 0

@ Steadiness
/* 08054cc8 */
.asciz "�Ă������@����"
.balign 4, 0

/* 08054cdc */
.asciz "�����@�C�b�p�c"
.balign 4, 0

@ Responsibility
/* 08054cec */
.asciz "�����ɂ񂩂�"
.balign 4, 0

/* 08054cfc */
.asciz "�قǂقǂ́@����������"
.balign 4, 0

/* 08054d14 */
.asciz "�����ς�Ă��@�o�b�`�V��"
.balign 4, 0

/* 08054d30 */
.asciz "�V���[�g�߂́@�s�b�^�V��"
.balign 4, 0

/* 08054d4c */
.asciz "������"
.balign 4, 0

/* 08054d58 */
.asciz "������Ă��@�����̂�"
.balign 4, 0

/* 08054d70 */
.asciz "���₭�@�̂���傭"
.balign 4, 0

/* 08054d88 */
.asciz "�������񂹂��@�݂����Ȃ���"
.balign 4, 0

/* 08054da4 */
.asciz "���Y���́@����"
.balign 4, 0

/* 08054db4 */
.asciz "����Ă��́@�ق�"
.balign 4, 0

/* 08054dc8 */
.asciz "�܂��ނ��ȁ@������"
.balign 4, 0

/* 08054ddc */
.asciz "�ǂ������@����傭"
.balign 4, 0

/* 08054df0 */
.asciz "��邫"
.balign 4, 0

/* 08054df8 */
.asciz "���イ���Ԃ���"
.balign 4, 0

/* 08054e08 */
.asciz "���イ�Ȃ񂹂�"
.balign 4, 0

/* 08054e18 */
.asciz "��񂫂����ւ�"
.balign 4, 0

/* 08054e28 */
.asciz "�ɂ񂰂񂹂�"
.balign 4, 0

/* 08054e38 */
.asciz "�������́@�悳"
.balign 4, 0

/* 08054e48 */
.asciz "�����������i���������j"
.balign 4, 0

/* 08054e64 */
.asciz "���̂��́@�₵�傭"
.balign 4, 0

/* 08054e78 */
.asciz "�������́@�Ă�"
.balign 4, 0

/* 08054e8c */
.asciz "���Ƃ��́@���񂹂�@����"
.balign 4, 0

/* 08054ea8 */
.asciz "�炢�˂�́@��񂠂��@����"
.balign 4, 0

glabel D_08054ec4
.asciz ":1��������:0�@�@�����Ă�@�@:1��������"
.balign 4, 0

glabel D_08054eec
.asciz ".5:1�q�|�h�p�@�@.6:0"
.balign 4, 0


/* 08054f04 */
.asciz "���ƁA"
.balign 4, 0

/* 08054f0c */
.asciz "�܂��A"
.balign 4, 0

glabel D_08054f14
.asciz ""
.balign 4, 0

glabel D_08054f18
.asciz "�c�ł��A"
.balign 4, 0

glabel D_08054f24
.asciz "�������A"
.balign 4, 0

glabel D_08054f30
.asciz "����ɁA"
.balign 4, 0

/* 08054f3c */
.asciz "���`��D�D�D"
.balign 4, 0

/* 08054f4c */
.asciz "�܂��܂��A�@���ȁB"
.balign 4, 0

/* 08054f60 */
.asciz "�Ƃ肠�����D�D�D"
.balign 4, 0

/* 08054f74 */
.asciz "�悵�Ɓ@���܂��B"
.balign 4, 0

@ \x94\x5c should be ��, why isn't it assembling properly? it just assembles to \x94

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
\x01\x4c\x03\x32\x01\x6c�b���悤
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c�N�ł������Ă�
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6c���Y����
\x01\x4c\x03\x32\x01\x6c
\x01\x4c\x03\x30\x01\x73�u���ݓI�ȃ��Y�����́A�P���ɂ���Đ��������邱�Ƃ���\x94\x5c�B���X�̔������K���ł����ʓI�v

\x01\x4c\x03\x32\x01\x6c�����
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c�����͂���Ȃ�
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6c���Y�~�J��
\x01\x4c\x03\x30\x01\x73�u���Y�����͓��퐶���̒��ŏ�Ɋ����A��Ă�Ɨǂ��B�������⎕�����A�����̎����A���Y�����ӎ����ē����Ă݂�ׂ��v

\x01\x4c\x03\x32\x01\x6c���Y����
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c�m�����悯���
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6c�Ȃ��N�[��
\x01\x4c\x03\x32\x01\x6c
\x01\x4c\x03\x30\x01\x73�u�������A���Y�����ƃm���͕ʃ��m�B���Y�����ӎ����b���Ȃ���A�����Ƀm���̗ǂ����g�ɕt���悤�v

\x01\x4c\x03\x32\x01\x6c�u���C�N��
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c�҂ĂȂ��A�m����
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6c�n���p���m
\x01\x4c\x03\x30\x01\x73�u�u���C�N�𐳊m�ɃJ�E���g���邱�Ƃ͓���A�����݋C���ɂȂ肪���B���������đ҂Ă邩�ǂ������A�������悳��傫�����E����v

\x01\x4c\x03\x32\x01\x6c��l�ł�
\x01\x4c\x03\x32\x01\x6c
\x01\x43\x03\x32\x01\x6c���L���L�L�т�
\x01\x4c\x03\x32\x01\x6c
\x01\x52\x03\x32\x01\x6c���Y����
\x01\x4c\x03\x32\x01\x6c
\x01\x4c\x03\x30\x01\x73�u���Y�����ӎ����悤�Ƃ���S�����ŁA���Y�����͐��l���Ă���ł��i�i�ɗǂ��Ȃ��Ă䂭�v\n"
.balign 4, 0

@ Rhythm Haiku Folio
/* 08055304 */
.asciz "���Y���o��W"
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
.asciz "\x01\x43\x03\x31\x01\x6d�u�����Ă�v

\x01\x43\x03\x30\x01\x73�킽���͂������ĂĂ���B
�����傫���H�΂������̂��߂ɁB
�Ȃɂ��Ȃ�����̐����̒��ŁA
���A���R��
���A�y�����B
���͂܂������ۂ��ȁA
�킽���̃��Y�������c
\x01\x43\x03\x31\x01\x6d�uKarate Rhythm�v
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
.asciz "���Y���|�G���W"
.balign 4, 0

@ \x95\x5c should be �\, assembles to \x95

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
.asciz "\x01\x43\x03\x31\x01\x6d���Y�����^�C�v�f�f
\x03\x30\x01\x73
���Ȃ��̃��Y������f�f���܂��B
���Ă͂܂���̂�I��ł����ăl�I

�����̓��Y����������ق����Ǝv���B
YES  2�y�[�W��GO!
 NO  3�y�[�W��GO!
-1-

���b�N�ƃ|�b�v�X�A�D���Ȃ̂́c

���b�N  4�y�[�W��GO!
�|�b�v�X 5�y�[�W��GO!



-2-

�W���Y�ƃN���V�b�N�A�D���Ȃ̂́c

�W���Y  6�y�[�W��GO!
�N���V�b�N 7�y�[�W��GO!



-3-

���Y�������Ȃ���΃_���X�͗x��Ȃ��Ǝv���B

YES  8�y�[�W��GO!
 NO  9�y�[�W��GO!



-4-

���Y�����͒����Ƃ��΁A\x95\x5c���ł�����̂��Ǝv���B

YES  10�y�[�W��GO!
 NO  11�y�[�W��GO!



-5-

���Y�����̑S���Ȃ��l�Ȃ�Ă��Ȃ��Ǝv���B

YES  9�y�[�W��GO!
 NO  8�y�[�W��GO!



-6-

���Y�����͐��܂���̂��̂Ȃ̂ŁA
�P���ł͐������Ȃ��Ǝv���B

YES  10�y�[�W��GO!
 NO  11�y�[�W��GO!


-7-

���Y�����́A�m���������ق����J�b�R�C�C�Ǝv���B

YES  12�y�[�W��GO!
 NO  13�y�[�W��GO!



-8-

���Y�����ƃm���́A�قƂ�Ǔ������̂��Ǝv���B

YES  14�y�[�W��GO!
 NO  15�y�[�W��GO!



-9-

���Y�������悭�Ă��A���e�Ȃ��Ǝv���B

YES  16�y�[�W��GO!
 NO  17�y�[�W��GO!



-10-

���Y���������������ŁA
�I���`�ɕ������ɂ����Ǝv���B

YES  18�y�[�W��GO!
 NO  19�y�[�W��GO!


-11-

���Y�����͔N��Ⴂ�����g�ɂ��₷���Ǝv���B

YES  23�y�[�W��GO!
 NO  21�y�[�W��GO!



-12-

���l���Ă���ł̓��Y�����̐����͖]�߂Ȃ��Ǝv���B

YES  21�y�[�W��GO!
 NO  22�y�[�W��GO!



-13-

���Y�������āA���퐶���Ƃ͖������Ǝv���B

YES  23�y�[�W��GO!
 NO  22�y�[�W��GO!



-14-

���Ƃ�3�N�ȏォ���Đg�ɕt�������Y������
�ӎ������Ă��Ȃ���΂����ɖY��Ă��܂��Ǝv���B

YES  23�y�[�W��GO!
 NO  20�y�[�W��GO!


-15-

���Y�����́A�����Ă炭������
�P�������������g�ɂ悭���Ǝv���B

YES  23�y�[�W��GO!
 NO  22�y�[�W��GO!


-16-

���Y�����͈ӎ�����΁A
��������30���ł��悭�Ȃ�Ǝv���B

YES  22�y�[�W��GO!
 NO  23�y�[�W��GO!


-17-

���Y�����́A��Ɋ����Ă����
�������Ă悭�Ȃ��Ǝv���B

YES  23�y�[�W��GO!
 NO  20�y�[�W��GO!


-18-

���Y�����́A���_�𗝉�����̂ł͂Ȃ�
�J��Ԃ��Őg�ɂ�����̂��Ǝv���B

YES  23�y�[�W��GO!
 NO  21�y�[�W��GO!


-19-
\x01\x43���Ȃ��̃��Y�����^�C�v
\x03\x31\x01\x6d�m���m���^\x03\x30\x01\x73

\x01\x4c���Ȃ��̃��Y�����ɑ΂���l�����́A�Ƃ��Ă��i�C�X�ł��B�������̃��Y�����Ɏ��M�����ĂȂ��Ă��A���ꂩ�烊�Y���� ��������Ɋy�����l�����������ł��傤�B�m���m���ŃG���W���C���ăl�I

\x01\x43-20-
\x01\x43���Ȃ��̃��Y�����^�C�v
\x03\x31\x01\x6d�Ă�₳��^\x03\x30\x01\x73

\x01\x4c���Y�����Ƃ������Ƃɑ΂��āA�������r�r���Ă܂��񂩁H���Y�����݂͂�Ȃ������Ă�����̂Ȃ�ł��B�y���݂Ȃ��炷�������ł����Y�����ӎ�����΁A���Y�����͐������܂��B���S���ăl�B

\x01\x43-21-
\x01\x43���Ȃ��̃��Y�����^�C�v
\x03\x31\x01\x6d�����傤���Ҍ^\x03\x30\x01\x73

\x01\x4c���Y�����ƃm���̂悳�̂������������ƈӎ�����ƁA�x�^�[�ł��B�m�����悭�Ă��̐S�̃��Y��������邢�ƁA�m���̂悳�����肵�Ă��܂��Ă��������Ȃ��ł��B���Y��������������Ƃ������̂ɂ��Ă����΁A���Ȃ��̌��C�݂͂�Ȃ������ƃn�b�s�[�ɂ��邩���I�H
\x01\x43-22-
\x01\x43���Ȃ��̃��Y�����^�C�v
\x03\x31\x01\x6d�J�b�`���^\x03\x30\x01\x73

\x01\x4c���Ȃ��̓��Y�����Ƃ������Ƃ������ނ��������Ƃ炦������������܂���B�������������Y���ƋC�y�ɂ������āA���퐶���ɂƂ����܂���Ǝ��R�Ƀ��Y�������悭�Ȃ�̂ł͂Ȃ��ł��傤���B���̂ق����A�����Ɗy�����ł����I
\x01\x43-23-\n"
.balign 4, 0

@ Rhythm Diagnosis
/* 080560bc */
.asciz "���Y�����^�C�v�f�f"
.balign 4, 0

@ \x95\x5c should be �\, assembles to \x95

@ Rhythm Sense �� Flow

@ Rhythm Sense �� Flow

@ Explanation: Flow is just one
@ element of Rhythm Sense; Flow
@ is not Rhythm Sense itself.


@ Rhythm �� Rhythm Sense


@ Explanation: rhythm is the ability to
@ count time, while Rhythm Sense is
@ what you express, feel, engender, and
@ naturally create through Flow.


@ Good dancer �� Strong Rhythm Sense


@ Explanation: A good dancer does not
@ necessarily have good Rhythm Sense.
/* 080560d0 */
.asciz "\x01\x43\x03\x32\x01\x6c

���Y���� �� �m��

���Y���� �� �m��
\x01\x4c\x03\x30\x01\x73

����F�m���́A���Y�����Ɋ܂܂��v�f�̂P�ł���A���Y�������̂��̂ł͂Ȃ��̂��B
\x01\x43\x03\x32\x01\x6c

���Y�� �� ���Y����


\x01\x4c\x03\x30\x01\x73
����F���Y���͎��Ԃ����ނ��́A���Y�����̓m����\x95\x5c��������A��������A���R�ɂ������o�����肷����̂Ȃ̂��B
\x01\x43\x03\x31\x01\x6d


�O�b�h�ȃ_���T�[ �� �i�C�X�ȃ��Y����

\x01\x4c\x03\x30\x01\x73

����F�_���X�̏��Ȑl���A�u���Y�������ǂ��v�Ƃ͌���Ȃ��̂��B\n"
.balign 4, 0

@ The Rhythm Formula
/* 08056258 */
.asciz "�킩��I���Y���̌���"
.balign 4, 0

@ \x95\x5c should be �\, assembles to \x95

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
���Y���V�����y����ł��������������炽������̂�낱�т̐����͂��܂����B���܂�ɑ����̕����炨�莆�⃁�[�������������i�I�j�A���ׂĂ͏Љ����܂��񂪁A���̂Ȃ��̂����ꕔ�������ŏЉ���Ă��������܂��B�݂Ȃ�����A���Ј�x��������������A���̌��ʂ����F�B�ɂ����`�����������I�I


���Y�������ǂ��Ȃ��������Ȃ̂Ɂc

\x03\x31\x01\x6d����ȂɃ��e�āA�z���g�ɂ����́I�H
\x03\x30\x01\x73
�u���Y���V���v�ɏo��܂ł́A�S�������ɉ��̂Ȃ��������ł����A���ł̓��e���e�Łc�l���ς��ς��܂����B
\x01\x52T���� �R�W�� ��Ј�
\x01\x4c
���Y�������ǂ��Ȃ��������Ȃ̂Ɂc

\x03\x31\x01\x6d�̂���肾�˂��Č���ꂿ������I�H
\x03\x30\x01\x73
�u���Y���V���v�ɏo��܂ł́A�I���`�̑�\x95\x5c�݂����Ɍ����Ă����Ȃ̂ɁA�ŋ߂悭�z�������ł��B���ς�炸�I���`�Ȃ̂ɕs�v�c�B�ł����ꂵ���I
\x01\x52H���� �Q�X�� ��w
\x01\x4c"
.balign 4, 0

@ Fan Mailbag
/* 08056548 */
.asciz "��낱�т̐�"
.balign 4, 0

@ \x83\x5c should be �\, assembles to \x83

@ Kii-yan: �gGreetings, I'm Kii-yan!!�h

@ Ao-kun: �gGreetings, I'm Ao-kun!!�h

@ Both: �gWe're Yellow and Blue! Thanks for coming
@ to our show!"




@ Kii-yan: �gHey hey, Ao-kun. Did I tell you I
@ started taking music lessons?�h

@ Ao-kun: �gNo, you didn't tell me!  When did this
@ happen?! What instrument did you pick? Guitar?
@ Piano? The triangle?�h



@ Kii-yan: �gWell, I'm learning...�h

@ Ao-kun: �gYeah, yeah?�h

@ Kii-yan: �gI'm learning to play the rhythm!�h

@ Ao-kun: �gWhat? Rhythm? Kii-yan, you dope!
@ Rhythm isn't an instrument! What are you
@ really playing?�h


@ Kii-yan: �gI told the teacher that I want to play
@ the drums, but she said that I have to work on
@ the 'rhythm' first!�h

@ Ao-kun: �gKii-yan, she meant you needed to
@ practice your sense of rhythm with the drums!�h



@ Kii-yan: �gThat's right!  She did say that!
@ Ao-kun, you're amazing! How did you know? Are
@ you a mind reader?�h

@ Ao-kun: �gYou big dummy! I didn't use psychic
@ powers, I used common sense!!�h

@ Kii-yan: �gHey hey, you don't have to get all[l
@ angry about it.�h


@ Ao-kun: �gYou're right, you're right. Sorry.�h

@ Kii-yan: �gAlso, Ao-kun, don't look now but your
@ fly is open!�h

@ Ao-kun: �gWhat?! Why didn't you warn me before
@ we got on stage?!"


@ Kii-yan: �gMade you look!�h

@ Ao-kun: �gWhy you little...�h

@ Kii-yan: �gLittle? I'm three inches taller than
@ you!�h

@ Ao-kun: �gQuiet!! You knew what I meant!!�h


@ Kii-yan: �gARGHH-!�h

@ Ao-kun: �gWoah! Wh, why are you getting mad?
@ calm down, Kii-yan!�h

@ Kii-yan: �gAnyway, we were talking about sense of
@ rhythm, weren't we?�h

@ Ao-kun: �gYeah, that's right.�h

@ Kii-yan: �gThat was, until you derailed the
@ conversation just like that...�h

@ Ao-kun: �gLook, I'm sorry... no, wait!!! Kii-yan,
@ you're the one that took us on that tangent
@ by lying about my fly being open!!!�h

@ Kii-yan: �gYeah, but you're the one who fell
@ for the joke.�h


@ Ao-kun: �gOh, be quiet!  Anyway, what did your
@ music teacher have to say about your sense of
@ rhythm?�h

@ Kii-yan: �gI figure I won't need all that much
@ practice, since the teacher said my sense of
@ rhythm was very blatant.�h



@ Ao-kun: �gYou blockhead! She said your sense of
@ rhythm was latent, like your ability to tell
@ funny jokes!�h

@ Both: �gThank you ladies and gentlemen, and
@ enjoy the rest of the game!�h
/* 08056558 */
.asciz "���[���u�ǂ����[�A���[���Ł[���I�v
��������u�ǂ����[�A��������Ł[���I�v
�ӂ���uY&B�Ł[���I��낵���ǂ����`�I�v
���[���u�Ȃ��Ȃ��A��������B����ȁA���̑O�ȁA���y�����ɑ̌����w���Ă�I�v
��������u�G�[�I�E\x83\x5c�[�I�H�����ĂȂ���[�I���[���A�y��͂��߂��I�H�M�^�[�H�h�����H�ȂɂȂɁH�v
���[���u�I���̃p�[�g�͂ȁc�v
��������u���񂤂�A�ȂɂȂɁH�v
���[���u�I���̃p�[�g�� ���Y����˂�I�v
��������u�́H���Y�����āA���[���A����y�킿�Ⴄ���I�Ȃ�⃊�Y�����āv
���[���u���Ⴄ�˂�A�h������肽�����Đ搶�ɂ䂤����ȁA�܂����Y�������Ȃ������Č����Ă�I�v
��������u���[���A����A���Ԃ�ȁA���Y�������������Ȃ������Ă䂤�����Ǝv���Łv
���[���u���A������I���������������Ă���I��������A�������ȁI�Ȃ�ŕ������I�H�G�X�p�[���H�v
��������u�Ȃ�ł��āc�A�������I�I�펯���I�I�I�v
���[���u�܂��܂��A����Ȃɓ{���Ƃ��ā`��v
��������u���A�����A����ȁA���߂�ȁc�v
���[���u���I��������A�`���b�N�����Ă�Łv
��������u�G�b�I�H����A�E\x83\x5c�I�I�}�W�I�H�v
���[���u�E\x83\x5c�v
��������u������I�v
���[���u������āA�Â��ȁv
��������u���邳���I�ق��Ƃ��I�I�v
���[���u���J�[�I�I�I�v
��������u������I�ȁA�Ȃ�ŋt�M����˂�B�����A�킯�킩����I�v
���[���u�ق�łȁA���Y�����̘b�₯�ǂȁv
��������u���A�����A����������ȁv
���[���u�܂������c�A�b��E��������Ƃ��Ă�v
��������u�����A���߂�ȁc���āA�ǂ�������˂�I�I�I�b�A�E����������A���[����낪�[�[�[�I�I�`���b�N�����Ă�Ƃ��E\x83\x5c�Ԃ������Ƃ��ā[�I�I�I�v
���[���u�܂��܂��A����Ȃɓ{���ł��v
��������u�₩�܂�����I�܂������c�A�ق�ŁA�Ȃ�Ȃ�A���Y�����̘b���āH�v
���[���u��ܓI�ȃA���~�ʂ́A�P�������琬��������āB�v
��������u���فI ����������Ȃ�A���ݓI�ȃ��Y�������I�v
�ӂ���u�����ꂢ���܂����[�I�v"
.balign 4, 0

@ Rhythm Standup
/* 08056c08 */
.asciz "���Y������"
.balign 4, 0

@ Nice to meet you, everyone. My name's Tanaka.
@ That's my real name, but don't tell my
@ friends that, okay? To them, I'm �gHammer."

@ I recently found a scroll in the attic.
@ This is what was written in it...


@ �gThou who reads this: You did not find this
@ scroll by chance. I have used my ninjutsu to
@ ensure that you find it. This may be hard to
@ believe, but I, the person writing this, am a
@ ninja. I am also your ancestor."


@ �gThe other day, I protected my lord from a
@ hail of arrows at risk to my life. That night, 
@ I had a dream about a young man.
@ A young man who lives with his back turned
@ toward the world... a discontented young man."


@ �gAccording to the fortune teller, you are
@ that young man. Like me, you risked your life
@ to protect a person... a woman. This woman
@ is the distant granddaughter of my lord.
@ You may choose whether or not to believe me.
@ Nonetheless, I ask that you continue to
@ protect her for both of our sakes."


@ The scroll was simply signed �gA Ninja".


@ You see, the other day I did save a woman,
@ one who is very important to me. We were
@ at the arcade when some thugs attacked. I
@ was greatly outnumbered, and it took all
@ my effort to save her.


@ Could my ancestor's ninjitsu been at work?
@ Perhaps I should put my anger behind me
@ and study the way of the ninja instead...
/* 08056c14 */
.asciz "�݂Ȃ���A�͂��߂܂��āB�I���͓c�����Ă����܂��B���̑O�A����̑q�ɂŌÂ��������݂�����ł��B���̒��ɂ͂��������Ă���܂����B

�u��������Ă���I�k�V�B�I�k�V�́A���̊��������܂��܌������̂ł͂Ȃ��B������ׂ����āA������悤�ɔE�p�������Ă��������̂Ȃ̂��B�킩�邩�H�����A����������Ă��郏�V�͔E�҂ł���A�I�k�V�̂���c���܂Ƃ����킯���B
������V�́A���V�̎�l�ł���g�m���̉J���炨��肵���B�������A���������B���̑�d�����I������A�����݂��B�����ɂ́A�Ⴂ�j�������B���̒��ɔw���ނ��Đ����Ă���A�Ƃ񂪂�����҂��B�肢�I�o�o�ɂ��ƁA���̎�ҁA�ǂ����I�k�V�炵���̂��B�����āA���V�Ɠ����悤�ɖ������ŁA����l������Ă���B�������B���̏����̓g�m�̎q���Ȃ̂��������B����Ȋ�����ˑR���Ă��A���܂�s���Ƃ��Ȃ���������Ȃ����A��킭�΂��̏����̓I�k�V����葱���ė~�����B�v
���A�I���̐S�ɂ͂��鏗�������܂��B���̏����́A����A�p�`���R�ő_���������ꂻ���ɂȂ��Ă���̂��A�I�����K���ŏ����������ł��B���ꂩ��A�ǂ��Ȃ���Ă킯����Ȃ����ǁA�����͂ЂƂA����c�l�̔E�p�ɂ܂�܂Ƃ������Ă݂悤���ȁc"
.balign 4, 0

@ The Ninja Scroll
/* 08057004 */
.asciz "�E�҂̊���"
.balign 4, 0

@ \x95\x5c should be �\, assembles to \x95
@ \x8f\x5c should be �\, assembles to \x8f

@ A strange letter has arrived from the
@ Rhythm League.


@ �hCongratulations!! Remix 8 was almost
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

@ Thank you for playing!�h


@ Sincerely, 
@ Representative for the Rhythm League

@ Space Uncle
/* 08057010 */
.asciz "�Ȃ��̃��Y���g�D����Ō�̒ʒB���͂��܂����B

�u���߂łƂ��I�I���~�b�N�X�W�̃p�[�t�F�N�g�A���Ȃ�T�C�R�[�ł����`�I�c�ƁA���邭�j������̂͂�߂Ă����B�������ɃL�~�́A���́u���Y���V���v�ŃX�o���V�C���т��c�����B����͂܂�����Ȃ������ŁA��X��\x8f\x5c���݂Ƃ߂Ă���B�L�~�͍ō����I�����A���T�C�R�[�Ȃ�Ł[���I�I�c�ƁA���A���ꂵ���Ȃ��Ă��܂����A�y������������̂� ��߂Ă����B
����A���̃Q�[���ŃL�~���̊��������Y���́A���Y���E�̂ق�̃`���R�b�g�ł���B�����L�~�����Y���ɑ΂��āA��肢�������̋����������Ă��ꂽ�Ȃ�΁A���Ђ�����@��Ƀm���m���ɂȂ��Ăق����I�����āA�m���m�����ăT�C�R�[�Ȃ񂾃��I�I�����A���I�X�X���Ȃ񂾂���[�I�I�c�ƁA���A�E�L�E�L���Ă��܂����A������ăI�X�X������̂͂�߂Ă����B
��X�́A�{�C���B
�{�C�ŃL�~�ɁA�m���m���ł����Ăق����̂��I
���̃��Y���E�����[�h����̂��A�L�~�ł���ƐM���Ă���I���Ă������A�L�~�����M�����ȁ[���I�I
�����A�L�~���ăT�C�R�[�Ȃ񂾂��[��I�I
�V��ł���Ă��肪�Ƃ��I�v


\x01\x52�Ȃ��̃��Y���g�D��\x95\x5c
\x01\x52�X�y�[�X��������"
.balign 4, 0

@ The Final Letter
/* 080573d0 */
.asciz "�������̒ʒB"
.balign 4, 0


@ WISH Can't Wait For You

@ Vocals: Tanaka Soushi
@ Lyrics and Composition: Tsunku��
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
.asciz "�v�h�r�g�@�N��҂ĂȂ��ā@
�����F�c�����j
�쎌/��ȁF��
�ҋȁF�������

�N��҂ĂȂ��ā@���邳��Ȃ�
�����ƈ���������������
�ǓƂȖ邪�@�K������������
��������z���o������
���̊X�ŏo����� ��������������

�˘f���������� �������ߍ����Ă�

����͋C�܂��ꂾ��
�������Ă��z��

���̊Ԃɂ��₽��
�L�X�����Ă���


����������ōs��
�N��������ōs��
�M���M��
���̒ɂ�
�䖝�ł��Ȃ���


�N��҂ĂȂ��ā@���邳��Ȃ�
�����ƈ���������������
�ǓƂȖ邪�@�K������������
��������z���o������

�N��҂ĂȂ��ā@���邳��Ȃ�
��l�����݂�������
�����̉w���@�K������������
�₵���z���o������"
.balign 4, 0

@ Lyrics: WISH
/* 08057628 */
.asciz "�̎��J�[�h�B"
.balign 4, 0


@ Honey Sweet Angel of Love

@ Vocals: Ami Tokito
@ Lyrics and Composition: Tsunku��
@ Arrangement: Suzuki �gDaichi�h Hideyoki
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
.asciz "���̃n�j�[�X�C�`�g�G���W�F��
�����F��������
�쎌/��ȁF��
�ҋȁF���Daichi�G�s
 
���̖���  ���̕s�v�c
���̌`  ���̃j���A���X
�n�j�[�X�C�`�g�G���W�F��



�t�̈Ӗ��� �u�D���v���ĉ���I
���킩��ȁ`��

����ɋt�� �����������
�X�L �݂����Ȃ�ł���



�߂����� ���܂����ς� ���������~���N
����Ȋ����� ������
I�@LOVE�@U�@�@

���̖��� ���̕s�v�c
���̌` ���̃j���A���X
�n�j�[�X�C�`�g�G���W�F��\n"
.balign 4, 0

@ Lyrics: Sweet Angel
/* 080577c4 */
.asciz "�̎��J�[�h�A"
.balign 4, 0


@ The��Bon-Odori

@ Vocals: Ami Tokito
@ Lyrics and Composition: Tsunku��
@ Localization: SirNiko

@ Original lyrics, in latin script:

@ Ha�` Hanabi agareba�`
@ Ha Ah�` Kansei agaru�`
@ Ha�` Ninki agareba�`
@ Ha Ah�` Kyuuryou agaru�`


@ Matsuri da wasshoi!
@ Nippon juu ga wasshoi!
@ Sore hikkuri kaette
@ dondo pa--n pan
@ Ha�` Bon-Odori


@ Ha�` Ame ga agareba�`
@ Ha Ah�` Yagura ni agaru�`
@ Hora! Matsuri da wasshoi!
@ Korezo Meido in Japan!
@ Sore hikkuri kaette
@ dondo pa--n pan
@ Ha�` Bon-Odori


@ Localized lyrics:

@ Ha�` When rockets start to fly�`
@ Ha Ah�` Cheers will fill the sky�`
@ Ha�` When the spirits are high�`
@ Ha Ah�` The more people will buy�`


@ It�fs a festival, hooray!
@ All Japan says hooray!
@ Now we turn around and
@ dondo pa--n pan
@ Haa�` Bon-Odori 


@ Ha�` When the rain is dry�`
@ Ha Ah�` Climb up the turret and spy�`
@ Oh! It�fs a festival, hooray!
@ This is it! It�fs made in Japan!
@ Now we turn around and
@ dondo pa--n pan
@ Haa�` Bon-Odori 
/* 080577d4 */
.asciz "�U���ڂ񂨂ǂ�
�����F��������
�쎌/��ȁF��

�́`�ԉ΂�����΁`
�́`���`����������`

�́`�@�l�C������΁`
�́`���`�@����������`
�Ղ肾������傢�I
�ɂ��ۂ񒆂�������傢�I

����@�Ђ�����Ԃ��ā@�h���h�p���p��
�́`�@�~�x��`

�́`�J��������΁`
�́`���`�₮��� ������`


�ق�I�Ղ肾������傢�I
���ꂼ�@���C�h �C�� �W���p���@

����@�Ђ�����Ԃ��ā@�h���h�p���p��
�́`�@�~�x��`"
.balign 4, 0

@ Lyrics: The��Bon-Odori
/* 08057958 */
.asciz "�̎��J�[�h�@"
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

@ RM: It said �gSecret snacking is the BEST!�h

@ DJ: Wow, that's just harsh...


@ RM: Ain't it?  I was so mad that I yelled out...

@ DJ: �gLack of snacks makes me DEPRESSED!�h

@ RM: Uh!? How did you know?

@ DJ: 'Cuz I've been playing Rhythm Heaven!
@ And now for a commercial break!


@ From our sponsers...

@ Raise your mood with a little music...
@ Rhythm Heaven! Buy it!
/* 08057968 */
.asciz "�͂��ǁ[���[�IDJ SALU�Ł[���I
�������X�e�L�ȃQ�X�g�����Ă���Ă��܂��B���b�v�����iRM�j�̂��ӂ���Ł[���B��낵���ǂ����`�I
RM�u���A�ǂ��� ���b�v�����ł��v
DJ�u�V�ȁA��������Ȃ��ł����`�I�v
RM�u�����`�B�킩��܂����H�v
DJ�u����A����B�T�C�R�[�I�v
RM�u�Ƃ���ŁA�Ȃ�݂������ł���v
DJ�u���I�H���`���ƁA�c�ǁA�ǂ�ȁH�v
RM�u�Ȃ񂩁A������̃o�b�^���������ꂽ��ł���A���b�v�E�B�����Ƃ������v
DJ�u�ق�Ƃł����I�H�v
RM�u����B�������y���ɂ����� ������̂�����Ȃ�����ŐH�ׂĂ�������ł���v
DJ�u�G�[�I�V���b�N�ł��˂��c�v
RM�u�������A�����莆�������Ăˁv
DJ�u�Ȃ�āH�v

RM�u�ׂ΂� �T�C�R�[���āv
DJ�u�Ȃ�đ�_�ȁc�v
RM�u�ł������H���₵���ċ��т܂����v
DJ�u������i�C���`���Ăł����H�v
RM�u�I�H �Ȃ�ł����Ă�́H�v
DJ�u�����ă��Y���V������Ă���[��I�ł͂�����CM�Ł[���v
CM�u�m�����A�b�v�Ɂc ���Y���V���I�����ăl�I�v
\x01\x52�����"
.balign 4, 0

@ Rap Report
/* 08057cb4 */
.asciz "�Ƃ��郉�W�I�ԑg"
.balign 4, 0

@ April 16 - Today I enlisted in the Marcher Corps!
@ I'm gonna do my best for my new comrades!

@ April 20 - Today the commander got angry at
@ me for not being able to march in step with
@ the others.

@ April 28 - Today I swept the front of the station.
@ An old woman said to me, �gThank you for your
@ hard work.�h and gave me a piece of candy.
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
.asciz "�S���P�U�� ��������}�[�`���ɓ����I�݂�Ȃ̖��ɗ��悤�ɂ���΂邼�[�I

�S���Q�O�� �����݂͂�ȂƁu�����Ԃ݁v������킸�A�����ɂ�����ꂿ������B

�S���Q�W�� �����͉w�O�̐��|�����������B�݂���ʂ��΂�����񂪁u�L���C�ɂ��Ă���Ă��肪�Ƃ��v�ƌ����ăA�������ꂽ�B���ꂵ�������I
�T���S�� �ŋ߂Ȃ񂾂����邢�B���ꂪ�T���a�Ƃ������̂Ȃ̂��ȁH�������肵�Ȃ��ƁA�����Ă��ڂ�����ꂻ�����c

�T���W�� �����̂悤�������������c ����A�F���ŃE�T�M�ƗV�񂾂ƌ����Ă���B���v���ȁc�H

�T���P�U�� �ŋ߁A������������̐l���悭�݂�����B
�C�̂������낤���H
�T���Q�Q�� �{�N�͌��Ă��܂����B�������c


�����L�^�͂����ŏI����Ă���B
���������A�����̐g�ɂȂɂ��I�H"
.balign 4, 0

@ Marcher's Diary
/* 08057f50 */
.asciz "�}�[�`�������L�^"
.balign 4, 0

@ \x95\x5c should be �\, assembles to \x95

@ The Secret Story Behind the
@ Development of the Horse Machine

@ Today we have a special interview with
@ �gMr. F", the developer of the �gHorse Machine�h.
@ The Horse Machine can be played in the
@ �gToys" menu if you have seven medals.


@ Mr. F: �gI started developing (the Horse Machine)
@ in order to share the good feeling of riding
@ a horse."

@ Though his words may be simple, Mr. F speaks
@ with passion in his voice.


@ Mr. F: �gBut when I tried to fulfill all the conditions
@ of a game, I often lost sight of the answer and
@ there were times when I thought of giving up.�h

@ Mr. F has experienced hard times. It is often
@ difficult to express yourself properly within the
@ framework you are given.


@ Mr. F: �gBut if the people who play (The Horse
@ Machine) become even the slightest bit happier, 
@ all those hardships will fly away!�h

@ You are so dedicated to your craft, Mr. F.
@ We will anxiously await your next creation.
@ Thank you.
/* 08057f64 */
.asciz "���_���ł��炦�邨�܂��u���܃}�V�[���v�̊J���ɂ�����������AF����ɊJ���̂��b���������Ƃ��ł��܂����B
F����u���܂𑖂点��C�����悳��`�������Ƃ����z������J�����X�^�[�g���܂����v
�V���v���Ȃ���M���z�������Ƃ΂ɑ���F����B
F����u�������A�Q�[���Ƃ��Ă̂��낢��ȏ����𖞂������Ƃ���Əo���������炸�A�J���̒f�O���ӎ���������������܂����v
�ꂵ��������������F����B�����̑z�����̂����߂�ꂽ�g����\x95\x5c������̂͑�ςȂ�ł��ˁB
F����u�V��ł��ꂽ�l���ق�̃`���b�g�ł��n�b�s�[�ɂȂ��Ă��ꂽ��A��������ŋ�J�Ȃ񂩐�����񂶂Ⴂ�܂����ǃl�I�v
�T�[�r�X���_������F����B���ꂩ��̍�i�����҂��Ă���܂��B���肪�Ƃ��������܂����B"
.balign 4, 0

@ Horse Machine's Story
/* 080581dc */
.asciz "���܃}�V�[���J����b"
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
.asciz "�������܉F����ԂŊ������̃G�A�[�o�b�^�[����ɃC���^�r���[���Ă݂܂����I

Q�D���V�[�Y���̒��q�͂ǂ��ł����H
A�D���ɂ���H�ׂĂ邩��A�o�b�`�V�ł��I

Q�D�ڕW�́H
A�D���ɂ�����������Ȃ����ƁI�ł��B

Q�D�ޏ��͂��܂����H
A�D�͂��A���܂��B

Q�D�ޏ��̓��ӗ����́H
A�D���ɂ���ł��I

Q�D�Ȃ��A�Q�[������ ���Ԃ���̂��H
A�D�Ȃ�̂��Ƃł����H

Q�D�Ȃ� �E�T�M�Ȃǂ̃R�X�`���[�����H
A�D����܂���B

Q�D����ɓ����Ă��������I
A�D�����A���Ԃł��̂Ŏ��炵�܂��B

�����ŁA�G�A�[�o�b�^�[����͐Ȃ��O����Ă��܂��܂����B�Ȃɂ����P����̂悤�ł��B�ȏ�A�F����Ԃ���ł����B"
.balign 4, 0

@ Inside Spaceball
/* 08058424 */
.asciz "�G�A�[�o�b�^�[����"
.balign 4, 0

@ You know that little guy in Night Walk?
@ It turns out he really loves music.
@ Actually, it seems he's appeared in other
@ music-related games before, and it's
@ because of that connection that he appears
@ in Rhythm Heaven.


@ Recently, I had a chance encounter with
@ him on the street, but when I tried to
@ talk to him, he just said �gI love music!�h
@ and disappeared up some stairs. He's such
@ a musical buff! I hope I meet him again.
@ But... I don't even know his real name!


@ So, here we have the Night Walk quiz!

@ The music loving fellow is named...

@ �@�A�B�C-�D�E�F



@ All you have to do is fill in the letters!
@ To figure it out, try filling in the blanks
@ on the next page!


@ The Secret of the �gQuiz Show�h game

@ You know how the �@layer in Quiz has to push
@ the button the right number of times to wi�F?
@ Wel�A, instead of stopping on the right
@ answer tr�D pushing the buttons as m�Bny
@ times �Es possible for a cool surprise!
@ Well, at least I think it's prett�C cool.
/* 08058438 */
.asciz "�i�C�g�E�H�[�N�ɏo�����Ă���ނ́A�Ƃ��Ă����y���X�L�Ȃ̂������ł��B�ȑO�����y�֌W�̎d�������Ă��������ŁA���̃R�l�ō��񂱂̃Q�[���ɏo�����Ă���̂������ł��B���̑O�A�X�ŋ��R�ނ��݂����̂Řb�������Ă݂�Ɓu���y��X�L�I�v�ƌ����c���A�K�i���̂ڂ��Ăǂ����ɍs�����Ⴂ�܂����B����ȉ��y�D���̔ނ� �܂��ǂ����ŉ���炢���Ȃ��ƁA�`���b�g�����v���܂����B���������ΔށA�Ȃ�Ă������O�Ȃ̂��Ȃ��H
�����A�����ŃN�C�Y�ł��I
���̔ނ͖��O�́c

\x01\x43\x03\x31\x01\x6d�@�A�B�C�D
\x01\x4c\x03\x30\x01\x73
�e�ԍ��ɓ��镶���𓚂��Ă��������l�I
��������ƁA���̃y�[�W�̕��͂�ǂނ��Ƃ��ł��܁[���I�I


\x03\x31\x01\x6d\x01\x43���Y���Q�[���́u�N�C�Y�v�̃q�~�c
\x03\x30\x01\x73\x01\x4c
���̃Q�[���́A\x03\x31\x01\x6d�@�A�B�C\x03\x30\x01\x73�[���{�^\x03\x31\x01\x6d�D\x03\x30\x01\x73���������ƁA����\x03\x31\x01\x6d�B\x03\x30\x01\x73���������J�E���g����܂���ˁH���́A�Q�[�����ق���\x03\x31\x01\x6d�B\x03\x30\x01\x73�āA�{�^\x03\x31\x01\x6d�D\x03\x30\x01\x73���������܂���ƁA��\x03\x31\x01\x6d�B\x03\x30\x01\x73��\x03\x31\x01\x6d�D\x03\x30\x01\x73�Ȃ��Ƃ�������\x03\x31\x01\x6d�D\x03\x30\x01\x73�ł��B��\x03\x31\x01\x6d�B\x03\x30\x01\x73���Ă��A�܂��A���܂���҂���\x03\x31\x01\x6d�B\x03\x30\x01\x73�Ńl�`�I"
.balign 4, 0

@ Night Walk Riddle
/* 080587ac */
.asciz "�i�C�g�E�H�[�N���"
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
.asciz "�킽���͖�؂������Ă��邨������ł��B�ŋ߁A�����̖�؂����Ƀq�Q���������ł��I�ƂĂ��u�L�~�����A����ł͔��蕨�ɂȂ�Ȃ���Ńq�Q���ʂ���ł����A���ꂪ�܂��L���C�ɂʂ��Ȃ��̂ł��B���܂����킽���͋C���܂���킹�悤�ƁA���y�������Ȃ���m���m���Ŗ�؂����̖т��ʂ��܂����B����ƂȂ�ƁI�L���C�ɂʂ���̂ł��I�������Ȃ񂾂��y������ł��I���y�̃`�J�����Ă��΂炵���ł��ˁB�݂Ȃ�������Ж�؂̖т��ʂ��Ă݂Ă��������I"
.balign 4, 0

@ Letter to the Editor
/* 08058960 */
.asciz "�тʂ�����"
.balign 4, 0

@ Hi there. I run the local cafe. You can say I'm
@ a �gmanager." Thanks to the regulars, the
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
.asciz "���͋i���X���o�c���Ă���܂��B�܂��A������₷�������Ƌi���X�̃}�X�^�[�ł��B�o�c�̂ق��͏�A����̂������ŁA�܂��܂��Ƃ������J���W�ł��ˁB���A���������A��Ɍ����Ă����܂����A���͌��ł��B
�����̂��q����́A���y���D���ȕ���������ł���˂��B�Ƃ��ɁA���Y���Ɋւ��āA���Ȃ�̂��������������̕��������܂��B�Ȃ��ɂ́A�p�[�t�F�N�g�L�����y�[�����������B������Ă���������������āA���� �r�b�N�������Ⴂ�܂����I
�܂��A�����͂���ȃJ���W�ŋi���X�̂ق����c��ł���܂����A���͂���A���̂������Ȃ�ł��B�{���̎��́c ���͂��������b�ł����A���p�̃w�b�h�z�������Ȃ���m���m���ŁA�͂��Ⴌ�܂���Ă����ł��I��͂�A�m���m���Ȃ��ł͂���Ă��Ȃ���ł���˂��B���܂������̂ł��B�͂͂́B
���Ƃ��낢��ȏ��ɗV�тɏo������������Ă���̂ŁA��������������i�f�i�f���ĉ������l�`�I
�ł͂܂��B"
.balign 4, 0

@ More Than a Barista
/* 08058c7c */
.asciz "�o�c�҂ɕ���"
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
.asciz "���̃Q�[���̗V�ѕ�

���Ă������A�Ƃ��ɐ���������قǕ��G�ȃQ�[������Ȃ���ł����`�B������A�����ɏ������Ƃ��Ƃ��ɂȂ���ł���˂��B
���A���������A���y�Ƀm��̂��|�C���g�Ȃ̂ŁA�m���m���ŗV�Ԃ̂������ł����I�I�X�X���Ł[���I
����ȂƂ��ł��ˁB��낵���ǂ����`�B"
.balign 4, 0

@ Handling Instructions
/* 08058d94 */
.asciz "��舵��������"
.balign 4, 0

@ Hello!

@ Thanks for purchasing �gRhythm Heaven Silver.�h Huh? You borrowed it from a friend? Or bought
@ it u-used?


@ Well, putting that aside, we're honored that
@ you're interested in this game. We are glad we
@ met you!

@ We hope you enjoy it for a long, long time!!

@ Thank you.

@ <Translator's Note and translation credits go here>
/* 08058da4 */
.asciz "����������
���̂��т́A�u���Y���V���v���������グ���������܂��Ƃɂ��肪�Ƃ��������܂��B���A���Ƃ������Ɏ؂�Ă���̂��ȁH���A����Ƃ��A����A���Âł����I�H
�܁A����͂��Ă����B���̃Q�[���ɋ����������Ă��������Č��h�ł��B���Ȃ��Ƃ̏o��Ɋ��ӂł��I
���i���y����ł�����������A���ꂵ���Ł[���I�I
���肪�Ƃ��������܂����B"
.balign 4, 0

@ Rhythm Heaven Welcome
/* 08058ee8 */
.asciz "���Y���V���ւ悤�����I"
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



�����f�[�^"
.balign 4, 0

@ Error
/* 08058f48 */
.asciz "\x02\x33\x01\x33\x01\x43�G���["
.balign 4, 0

.end
