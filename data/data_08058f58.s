.section .rodata
.syntax unified

.include "include/gba.inc"

@ 0x34 is actually 4 but byte escape characters suck ass
/* 08058f58 */
.asciz "\x04\x31\x34."
.balign 4, 0

@ Perfect
/* 08058f60 */
.asciz "�p�[�t�F�N�g"
.balign 4, 0

@ Superb
/* 08058f70 */
.asciz "�n�C���x��"
.balign 4, 0

@ OK
/* 08058f7c */
.asciz "���}"
.balign 4, 0

@ Try Again
/* 08058f84 */
.asciz "���Ȃ���"
.balign 4, 0

@ Cafe
/* 08058f90 */
.asciz "�i���J�E���Z��"
.balign 4, 0

@ Game Select 2
/* 08058fa0 */
.asciz "�Q�[���Z���N�g�Q"
.balign 4, 0

@ Credits
/* 08058fb4 */
.asciz "�X�^�b�t�N���W�b�g"
.balign 4, 0

@ Introduction
/* 08058fc8 */
.asciz "�I�[�v�j���O"
.balign 4, 0

@ E-Mail
/* 08058fd8 */
.asciz "���Y��������"
.balign 4, 0

@ Game Select
/* 08058fe8 */
.asciz "�Q�[���Z���N�g"
.balign 4, 0

@ Menu
/* 08058ff8 */
.asciz "���j���["
.balign 4, 0

@ Title
/* 08059004 */
.asciz "�^�C�g��"
.balign 4, 0

@ Remix 6
/* 08059010 */
.asciz "���~�b�N�X�U"
.balign 4, 0

@ Remix 8
/* 08059020 */
.asciz "���~�b�N�X�W"
.balign 4, 0

@ Remix 7
/* 08059030 */
.asciz "���~�b�N�X�V"
.balign 4, 0

@ Fireworks
/* 08059040 */
.asciz "�ԉ�"
.balign 4, 0

@ Toss Boys
/* 08059048 */
.asciz "�g�X�{�[�C�Y"
.balign 4, 0

@ Bouncy Road
/* 08059058 */
.asciz "�z�b�s���O���[�h"
.balign 4, 0

@ Polyrhythm
/* 0805906c */
.asciz "�|�����Y��"
.balign 4, 0

@ Power Calligraphy
/* 08059078 */
.asciz "���Y�����K��"
.balign 4, 0

@ Quiz Show
/* 08059088 */
.asciz "�N�C�Y"
.balign 4, 0

@ Tram & Pauline
/* 08059090 */
.asciz "�g�����ƃ|����"
.balign 4, 0

@ Bunny Hop
/* 080590a0 */
.asciz "�E�T�M�Ƃ�"
.balign 4, 0

@ Showtime
/* 080590ac */
.asciz "�V���[�^�C��"
.balign 4, 0

@ Sick Beats
/* 080590bc */
.asciz "�o�C�L���͂���"
.balign 4, 0

@ Rat Race
/* 080590cc */
.asciz "�������胉�b�g"
.balign 4, 0

@ Samurai Slice
/* 080590dc */
.asciz "��Ўa��"
.balign 4, 0

@ Sneaky Spirits
/* 080590e8 */
.asciz "���낢���΂�"
.balign 4, 0

@ Spaceball
/* 080590f8 */
.asciz "�G�A�[�o�b�^�["
.balign 4, 0

@ Marching Orders
/* 08059108 */
.asciz "�}�[�`��"
.balign 4, 0

@ Wizard's Waltz
/* 08059114 */
.asciz "�܂ق�����"
.balign 4, 0

@ Turbo Tap Trial
/* 08059124 */
.asciz "�X�[�p�[�^�b�v"
.balign 4, 0

@ The Snappy Trio
/* 08059134 */
.asciz "�o���o���O�l�O"
.balign 4, 0

@ Rhythm Tweezers
/* 08059144 */
.asciz "���Y���E��"
.balign 4, 0

@ Cosmic Dance
/* 08059150 */
.asciz "�R�X���_���X"
.balign 4, 0

@ The��Bon Dance
/* 08059160 */
.asciz "�{���_���X"
.balign 4, 0

@ The��Bon-Odori
/* 0805916c */
.asciz "�U���ڂ񂨂ǂ�"
.balign 4, 0

@ Night Walk
/* 0805917c */
.asciz "�i�C�g�E�H�[�N"
.balign 4, 0

@ WISH Can't Wait...
/* 0805918c */
.asciz "WISH �N��҂āc"
.balign 4, 0

@ WISH Can't Wait For You
/* 0805919c */
.asciz "WISH �N��҂ĂȂ���"
.balign 4, 0

@ Love's Honey Swe...
/* 080591b0 */
.asciz "���̃n�j�[�X�C�`�c"
.balign 4, 0

@ Love's Honey Sweet Angel
/* 080591c4 */
.asciz "���̃n�j�[�X�C�`�g�G���W�F��"
.balign 4, 0

@ Space Dance
/* 080591e4 */
.asciz "�X�y�[�X�_���X"
.balign 4, 0

@ Tap Trial
/* 080591f4 */
.asciz "�^�b�v�_���Y"
.balign 4, 0

@ The Clappy Trio
/* 08059204 */
.asciz "�p�`�p�`�O�l�O"
.balign 4, 0

@ Karate Man
/* 08059214 */
.asciz "�J���e��"
.balign 4, 0

@ Silence
/* 08059220 */
.asciz "�T�C�����g"
.balign 4, 0

@ Samurai Drum
/* 0805922c */
.asciz "���ނ炢�h����"
.balign 4, 0

@ Air-Cutter Drum
/* 0805923c */
.asciz "���؂�h����"
.balign 4, 0

@ Tap Drum
/* 0805924c */
.asciz "�^�b�v�ȃh����"
.balign 4, 0

@ Sound Effects Drum
/* 0805925c */
.asciz "�����ȃh����"
.balign 4, 0

@ Heel Tech Drum 2
/* 0805926c */
.asciz "�J�J�g�e�N�ȃh���� �Q"
.balign 4, 0

@ Heel Tech Drum 1
/* 08059284 */
.asciz "�J�J�g�e�N�ȃh���� �P"
.balign 4, 0

@ Hi-hat Drum
/* 0805929c */
.asciz "�n�b�g�e�N�ȃh����"
.balign 4, 0

@ Heavy Drum
/* 080592b0 */
.asciz "�n�[�h�ȃh����"
.balign 4, 0

@ Light Drum
/* 080592c0 */
.asciz "���C�g�ȃh����"
.balign 4, 0

@ Asian Drum
/* 080592d0 */
.asciz "�A�W�A�ȃh����"
.balign 4, 0

@ Matte Drum
/* 080592e0 */
.asciz "�}�b�g�ȃh����"
.balign 4, 0

@ Techno Drum
/* 080592f0 */
.asciz "�e�N�m�ȃh����"
.balign 4, 0

@ Power Drum
/* 08059300 */
.asciz "�p���[�ȃh����"
.balign 4, 0

@ Dry Drum
/* 08059310 */
.asciz "�h���C�ȃh����"
.balign 4, 0

@ Regular Drum
/* 08059320 */
.asciz "�t�c�[�ȃh����"
.balign 4, 0

/* 08059330 */
.asciz ""
.balign 4, 0

/* 08059334 */
.asciz "\x04\x38."
.balign 4, 0

@ ???
/* 08059338 */
.asciz "�H�H�H"
.balign 4, 0

@ There's not much memory left.
@ Perform anyway?
/* 08059340 */
.asciz "�����������Ȃ��Ȃ��Ă��Ă܂��B
���̂܂܉��t����H"
.balign 4, 0

@ You can only save 10 recitals.
@ Perform without saving?
/* 08059374 */
.asciz "���t�f�[�^��10�R�����c���܂���B
�f�[�^�͎c��Ȃ����ǉ��t����H"
.balign 4, 0

@ You can't save any more data.
@ Perform without saving?
/* 080593b4 */
.asciz "�������������ς��ł��B
�f�[�^�͎c��Ȃ����ǉ��t����H"
.balign 4, 0

@ Mark
/* 080593ec */
.asciz "�`�F�b�N"
.balign 4, 0

@ Sort
/* 080593f8 */
.asciz "�Ȃ�т���"
.balign 4, 0

@ Drum
/* 08059404 */
.asciz "�h���~���O"
.balign 4, 0

@ Listen
/* 08059410 */
.asciz "���X�j���O"
.balign 4, 0

@ Erase Data
/* 0805941c */
.asciz "�f�[�^����"
.balign 4, 0

/* 08059428 */
.asciz ""
.balign 4, 0

@ Not even one song has
@ a check mark on it.
/* 0805942c */
.asciz "�`�F�b�N�̂��Ă���Ȃ��A
�ЂƂ�����܂���B"
.balign 4, 0

@ In listening mode, only the songs
@ with a check mark will be played.
/* 0805945c */
.asciz "���X�j���O�ł̓`�F�b�N�̂���Ȃ����Đ����܂��B�@��낵���ł����`�H"
.balign 4, 0

@ You'll erase this performance
@ data! Is that really OK?
/* 080594a0 */
.asciz "���̉��t�f�[�^���폜���郈�I
�z���g��OK�H"
.balign 4, 0

@ Beat Box
/* 080594cc */
.asciz "���b�v �}�V�[��"
.balign 4, 0

@ Love Machine
/* 080594dc */
.asciz "���� �}�V�[��"
.balign 4, 0

@ Mechanical Horse
/* 080594ec */
.asciz "���� �}�V�[��"
.balign 4, 0

@ Meow Mixer
/* 080594fc */
.asciz "�l�R �}�V�[��"
.balign 4, 0

@ Head Spinner
/* 0805950c */
.asciz "�}�l�L���H��"
.balign 4, 0

@ Quiz Show EX
/* 0805951c */
.asciz "�N�C�Y�@�X�y�V����"
.balign 4, 0

@ Sick Beats EX
/* 08059530 */
.asciz "�o�C�L���͂����r�o"
.balign 4, 0

@ Mr. Upbeat
/* 08059544 */
.asciz "�E�����Ƃ�"
.balign 4, 0

@ Expert 2
/* 08059550 */
.asciz "�n�C�e�N�@�Q"
.balign 4, 0

@ Expert 1
/* 08059560 */
.asciz "�n�C�e�N�@�P"
.balign 4, 0

@ Long 6
/* 08059570 */
.asciz "�����O�@�U"
.balign 4, 0

@ Long 5
/* 0805957c */
.asciz "�����O�@�T"
.balign 4, 0

@ Long 4
/* 08059588 */
.asciz "�����O�@�S"
.balign 4, 0

@ Long 3
/* 08059594 */
.asciz "�����O�@�R"
.balign 4, 0

@ Long 2
/* 080595a0 */
.asciz "�����O�@�Q"
.balign 4, 0

@ Long 1
/* 080595ac */
.asciz "�����O�@�P"
.balign 4, 0

@ Short 9
/* 080595b8 */
.asciz "�V���[�g�@�X"
.balign 4, 0

@ Short 8
/* 080595c8 */
.asciz "�V���[�g�@�W"
.balign 4, 0

@ Short 7
/* 080595d8 */
.asciz "�V���[�g�@�V"
.balign 4, 0

@ Short 6
/* 080595e8 */
.asciz "�V���[�g�@�U"
.balign 4, 0

@ Short 5
/* 080595f8 */
.asciz "�V���[�g�@�T"
.balign 4, 0

@ Short 4
/* 08059608 */
.asciz "�V���[�g�@�S"
.balign 4, 0

@ Short 3
/* 08059618 */
.asciz "�V���[�g�@�R"
.balign 4, 0

@ Short 2
/* 08059628 */
.asciz "�V���[�g�@�Q"
.balign 4, 0

@ Short 1
/* 08059638 */
.asciz "�V���[�g�@�P"
.balign 4, 0

@ Basic 2
/* 08059648 */
.asciz "�x�[�V�b�N�@�Q"
.balign 4, 0

@ Basic 1
/* 08059658 */
.asciz "�x�[�V�b�N�@�P"
.balign 4, 0

/* 08059668 */
.asciz "�Q"
.balign 4, 0

@ (Lots of stuff from here on isnt translated, but is mostly game names anyway)
/* 0805966c */
.asciz "�V�[�P���X�@�e�X�g"
.balign 4, 0

/* 08059680 */
.asciz "��"
.balign 4, 0

/* 08059684 */
.asciz "�P�^�P"
.balign 4, 0

@ Data Clear
/* 0805968c */
.asciz "�f�[�^�N���A"
.balign 4, 0

/* 0805969c */
.asciz "�G���f�B���O�i���܂�����j"
.balign 4, 0

/* 080596b8 */
.asciz "�G���f�B���O�i�N���A���j"
.balign 4, 0

/* 080596d4 */
.asciz "�q�|�h�p�@�i��������j"
.balign 4, 0

/* 080596ec */
.asciz "�q�|�h�p�@�i�h�������b�X���j"
.balign 4, 0

/* 0805970c */
.asciz "�q�|�h�p�@�i�~�j�Q�[���j"
.balign 4, 0

/* 08059728 */
.asciz "�q�|�h�p�@�i�J�E���Z���[�j"
.balign 4, 0

/* 08059744 */
.asciz "�q�|�h�p�@�i�p�[�t�F�N�g�j"
.balign 4, 0

/* 08059760 */
.asciz "�q�|�h�p�@�i�ɂイ���j"
.balign 4, 0

/* 08059778 */
.asciz "�q�|�h�p�@�i���U���g�S�j"
.balign 4, 0

/* 08059794 */
.asciz "�q�|�h�p�@�i���U���g�R�j"
.balign 4, 0

/* 080597b0 */
.asciz "�q�|�h�p�@�i���U���g�Q�j"
.balign 4, 0

/* 080597cc */
.asciz "�q�|�h�p�@�i���U���g�j"
.balign 4, 0

/* 080597e4 */
.asciz "�q�|�h�p�@�i�I�v�V�����j"
.balign 4, 0

/* 08059800 */
.asciz "�q�|�h�p�@�i�X�^�W�I�j"
.balign 4, 0

/* 08059818 */
.asciz "�q�|�h�p�@�i����傤���j"
.balign 4, 0

/* 08059834 */
.asciz "�q�|�h�p�@�i�Q�[���j"
.balign 4, 0

/* 0805984c */
.asciz "�q�|�h�p�@�i���j���[�j"
.balign 4, 0

/* 08059864 */
.asciz "�q�|�h�p�@�i�^�C�g���j"
.balign 4, 0

@ Karate Man 2
/* 0805987c */
.asciz "�J���e�J�@�Q"
.balign 4, 0

@ Karate Man
/* 0805988c */
.asciz "�J���e�J"
.balign 4, 0

@ The Snappy Trio
/* 08059898 */
.asciz "�o���o���R�ɂ񂵂イ"
.balign 4, 0

@ The Clappy Trio
/* 080598b0 */
.asciz "�p�`�p�`�R�ɂ񂵂イ"
.balign 4, 0

/* 080598c8 */
.asciz "�|�����Y���@�Q"
.balign 4, 0

/* 080598d8 */
.asciz "�|�����Y��"
.balign 4, 0

/* 080598e4 */
.asciz "�i�C�g�@�E�H�[�N�@�Q"
.balign 4, 0

/* 080598fc */
.asciz "�i�C�g�@�E�H�[�N"
.balign 4, 0

/* 08059910 */
.asciz "���Y���������@�Q"
.balign 4, 0

/* 08059924 */
.asciz "���Y��������"
.balign 4, 0

/* 08059934 */
.asciz "�o�C�L���@�͂���"
.balign 4, 0

/* 08059948 */
.asciz "�z�b�s���O���[�h�@�Q"
.balign 4, 0

/* 08059960 */
.asciz "�z�b�s���O���[�h"
.balign 4, 0

/* 08059974 */
.asciz "�j���W���@�Q"
.balign 4, 0

/* 08059984 */
.asciz "�j���W��"
.balign 4, 0

/* 08059990 */
.asciz "���낢���΂��@�Q"
.balign 4, 0

/* 080599a4 */
.asciz "���낢���΂�"
.balign 4, 0

/* 080599b4 */
.asciz "�G�A�[�o�b�^�[�Q"
.balign 4, 0

/* 080599c8 */
.asciz "�G�A�[�o�b�^�["
.balign 4, 0

/* 080599d8 */
.asciz "����������"
.balign 4, 0

/* 080599e4 */
.asciz "�X�[�p�[�^�b�v"
.balign 4, 0

/* 080599f4 */
.asciz "�^�b�v�_���Y"
.balign 4, 0

/* 08059a04 */
.asciz "���܁i�X�s�[�h�j"
.balign 4, 0

/* 08059a18 */
.asciz "�}�[�`���@�Q"
.balign 4, 0

/* 08059a28 */
.asciz "�}�[�`��"
.balign 4, 0

/* 08059a34 */
.asciz "�܂ق�����"
.balign 4, 0

/* 08059a44 */
.asciz "�_���X���b�X���@�P"
.balign 4, 0

/* 08059a58 */
.asciz "�E�T�M�Ƃ�"
.balign 4, 0

/* 08059a64 */
.asciz "���g���m�[��"
.balign 4, 0

/* 08059a74 */
.asciz "�n�i�r"
.balign 4, 0

/* 08059a7c */
.asciz "�t���b�V���������e�X�g"
.balign 4, 0

/* 08059a94 */
.asciz "�������胉�b�g"
.balign 4, 0

/* 08059aa4 */
.asciz "���Y���@�����イ��"
.balign 4, 0

/* 08059ab8 */
.asciz "�h�����K�[���Y"
.balign 4, 0

/* 08059ac8 */
.asciz "�g�X�{�[�C�Y�@�Q"
.balign 4, 0

/* 08059adc */
.asciz "�g�X�{�[�C�Y"
.balign 4, 0

@ Tram and Pauline
/* 08059aec */
.asciz "�g�����ƃ|����"
.balign 4, 0

@ Opening (A Type)
/* 08059afc */
.asciz "�I�[�v�j���O�@�i�`�@�s�������j"
.balign 4, 0

@ @ Opening (B Type)
/* 08059b1c */
.asciz "�I�[�v�j���O�@�i�a�@�s�������j"
.balign 4, 0

/* 08059b3c */
.asciz "�q�h�p�f�[�^�`�F�b�N"
.balign 4, 0

@ Showtime
/* 08059b54 */
.asciz "�V���[�^�C��"
.balign 4, 0

/* 08059b64 */
.asciz "�R�X���_���X"
.balign 4, 0

/* 08059b74 */
.asciz "�X�y�[�X�_���X"
.balign 4, 0

/* 08059b84 */
.asciz "���b�v�@�E�B�����i�����@�j�`�y�t�j"
.balign 4, 0

/* 08059ba8 */
.asciz "���b�v�@�E�B�����i�����@�x�n�m�d�j"
.balign 4, 0

@ Rap Men
/* 08059bcc */
.asciz "���b�v����"
.balign 4, 0

@ Quiz Show
/* 08059bd8 */
.asciz "�N�C�Y"
.balign 4, 0

@ Text
/* 08059be0 */
.asciz "�e�L�X�g"
.balign 4, 0

@ Check Machine (Total)
/* 08059bec */
.asciz "�`�F�b�N�}�V���@�i�g�[�^���j"
.balign 4, 0

/* 08059c0c */
.asciz "�`�F�b�N�}�V���@�i�g���b�L�[�j"
.balign 4, 0

/* 08059c2c */
.asciz "�`�F�b�N�}�V���@�i�L���[�t�j"
.balign 4, 0

@ Check Machine (Click)
/* 08059c4c */
.asciz "�`�F�b�N�}�V���@�i�N���b�N�j"
.balign 4, 0

/* 08059c6c */
.asciz "�X�^�W�I�h���}�["
.balign 4, 0

/* 08059c80 */
.asciz "���b�X���i��������W�j"
.balign 4, 0

/* 08059c98 */
.asciz "���b�X���i��������V�j"
.balign 4, 0

/* 08059cb0 */
.asciz "���b�X���i��������U�j"
.balign 4, 0

/* 08059cc8 */
.asciz "���b�X���i��������T�j"
.balign 4, 0

/* 08059ce0 */
.asciz "���b�X���i��������S�j"
.balign 4, 0

/* 08059cf8 */
.asciz "���b�X���i��������R�j"
.balign 4, 0

/* 08059d10 */
.asciz "���b�X���i��������Q�j"
.balign 4, 0

/* 08059d28 */
.asciz "���b�X���i��������P�j"
.balign 4, 0

/* 08059d40 */
.asciz "���b�X���i�X�l�A�e�N�j�b�N�j"
.balign 4, 0

/* 08059d60 */
.asciz "���b�X���i�͂₢�W�r�[�g�j"
.balign 4, 0

/* 08059d7c */
.asciz "���b�X���i�o�X�ƃX�l�A�j"
.balign 4, 0

/* 08059d98 */
.asciz "���b�X���i�X�l�A�j"
.balign 4, 0

/* 08059dac */
.asciz "���b�X���i�{�b�T�j"
.balign 4, 0

/* 08059dc0 */
.asciz "���b�X���i�f�X�R�r�[�g�j"
.balign 4, 0

/* 08059ddc */
.asciz "���b�X���i�L���p�^�[���Q�j"
.balign 4, 0

/* 08059df8 */
.asciz "���b�X���i�L���p�^�[���P�j"
.balign 4, 0

/* 08059e14 */
.asciz "���b�X���i�n�[�h�Q�j"
.balign 4, 0

/* 08059e2c */
.asciz "���b�X���i�n�[�h�P�j"
.balign 4, 0

/* 08059e44 */
.asciz "���b�X���i�C�[�W�[�j"
.balign 4, 0

/* 08059e5c */
.asciz "�����}�V���i���b�v�j"
.balign 4, 0

/* 08059e74 */
.asciz "�����}�V���i���u�j"
.balign 4, 0

/* 08059e88 */
.asciz "�����}�V���i�l�R�j"
.balign 4, 0

/* 08059e9c */
.asciz "�{���_���X"
.balign 4, 0

/* 08059ea8 */
.asciz "�ڂ񂨂ǂ�"
.balign 4, 0

/* 08059eb4 */
.asciz "���~�b�N�X�@�P"
.balign 4, 0

/* 08059ec4 */
.asciz "���~�b�N�X�@�Q"
.balign 4, 0

/* 08059ed4 */
.asciz "���~�b�N�X�@�R"
.balign 4, 0

/* 08059ee4 */
.asciz "���~�b�N�X�@�S"
.balign 4, 0

/* 08059ef4 */
.asciz "���~�b�N�X�@�T"
.balign 4, 0

/* 08059f04 */
.asciz "���~�b�N�X�@�U"
.balign 4, 0

/* 08059f14 */
.asciz "���~�b�N�X�@�V"
.balign 4, 0

/* 08059f24 */
.asciz "���~�b�N�X�@�W"
.balign 4, 0

/* 08059f34 */
.asciz "�E�����Ƃ�"
.balign 4, 0

/* 08059f40 */
.asciz "�}�l�L���������傤"
.balign 4, 0

/* 08059f54 */
.asciz "�N�C�Y�i�X�y�V�����j"
.balign 4, 0

/* 08059f6c */
.asciz "�o�C�L���@�͂����@�r�o"
.balign 4, 0

/* 08059f84 */
.asciz "���C�u"
.balign 4, 0

/* 08059f8c */
.asciz "�^"
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
.asciz "\n�X�^�[�g�����ɏW���I"
.balign 4, 0

/* 08059fb4 */
.asciz "\n�����Ɓ@�A�^�}��_�����B"
.balign 4, 0

/* 08059fd0 */
.asciz "\n�{�[�b�Ɓ@���Ȃ��ŁI"
.balign 4, 0

/* 08059fe8 */
.asciz "\n�`�{�^�����������艟�����B"
.balign 4, 0

/* 0805a004 */
.asciz "\n�q�{�^�����������艟�����B"
.balign 4, 0

/* 0805a020 */
.asciz "\n�����ɉ����ĂȂ��ł��B"
.balign 4, 0

/* 0805a038 */
.asciz "\n�O�̂߂�ł��B"
.balign 4, 0

/* 0805a048 */
.asciz "\n�x��Ă܂��B"
.balign 4, 0

/* 0805a058 */
.asciz "\n�x���[�@�O�b�h�I�I"
.balign 4, 0

/* 0805a06c */
.asciz "\n�O�[�I"
.balign 4, 0

/* 0805a074 */
.asciz "\n�J���y�L�b�X�I�I"
.balign 4, 0

/* 0805a088 */
.asciz "\n�o�b�`�O�[�I�I"
.balign 4, 0

/* 0805a098 */
.asciz "\n�Ȃ��Ȃ��������I"
.balign 4, 0

/* 0805a0ac */
.asciz "\n�܂��܂����l�I"
.balign 4, 0

/* 0805a0bc */
.asciz "\n"
.balign 4, 0

/* 0805a0c0 */
.asciz "\n�]�� "
.balign 4, 0

/* 0805a0c8 */
.asciz "."
.balign 4, 0

/* 0805a0cc */
.asciz " �_"
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
.asciz "���̉��t�f�[�^�ł����A\n�Z�[�u���Ƃ��܂����H"
.balign 4, 0

/* 0805a3cc */ .word 0x0

.end
