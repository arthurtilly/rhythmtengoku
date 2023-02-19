#include "global.h"
#include "text.h"
#include "debug_text.h"


/* Debug Menu */


// Underscore
const char D_08059668[] = "�Q";

// Sequence Test
const char D_0805966c[] = "�V�[�P���X�@�e�X�g";

// Asterisk
const char D_08059680[] = "��";

// 1/1
const char D_08059684[] = "�P�^�P";

// Data Clear
const char text_debug_menu_data_clear[] = "�f�[�^�N���A";

// Ending (from Medal Corner)
const char text_debug_menu_credits_again[] = "�G���f�B���O�i���܂�����j";

// Ending (from clearing Remix 6)
const char text_debug_menu_credits_first_time[] = "�G���f�B���O�i�N���A���j";

// R-IQ (Rhythm Toys)
const char text_debug_menu_riq_rhythm_toys[] = "�q�|�h�p�@�i��������j";

// R-IQ (Drum Lessons)
const char text_debug_menu_riq_drum_lessons[] = "�q�|�h�p�@�i�h�������b�X���j";

// R-IQ (Endless Games)
const char text_debug_menu_riq_endless_games[] = "�q�|�h�p�@�i�~�j�Q�[���j";

// R-IQ (Cafe)
const char text_debug_menu_riq_cafe[] = "�q�|�h�p�@�i�J�E���Z���[�j";

// R-IQ (Perfect)
const char text_debug_menu_riq_perfect[] = "�q�|�h�p�@�i�p�[�t�F�N�g�j";

// R-IQ (Rhythm Library)
const char text_debug_menu_riq_library[] = "�q�|�h�p�@�i�ɂイ���j";

// R-IQ (Result 4)
const char text_debug_menu_riq_results4[] = "�q�|�h�p�@�i���U���g�S�j";

// R-IQ (Result 3)
const char text_debug_menu_riq_results3[] = "�q�|�h�p�@�i���U���g�R�j";

// R-IQ (Result 2)
const char text_debug_menu_riq_results2[] = "�q�|�h�p�@�i���U���g�Q�j";

// R-IQ (Result [1])
const char text_debug_menu_riq_results[] = "�q�|�h�p�@�i���U���g�j";

// R-IQ (Options)
const char text_debug_menu_riq_options[] = "�q�|�h�p�@�i�I�v�V�����j";

// R-IQ (Studio)
const char text_debug_menu_riq_studio[] = "�q�|�h�p�@�i�X�^�W�I�j";

// R-IQ (Rhythm Data Room)
const char text_debug_menu_riq_data_room[] = "�q�|�h�p�@�i����傤���j";

// R-IQ (Game Select)
const char text_debug_menu_riq_game_select[] = "�q�|�h�p�@�i�Q�[���j";

// R-IQ (Main Menu)
const char text_debug_menu_riq_main_menu[] = "�q�|�h�p�@�i���j���[�j";

// R-IQ (Title Screen)
const char text_debug_menu_riq_title[] = "�q�|�h�p�@�i�^�C�g���j";

// Karate Man 2
const char text_debug_menu_karate_man_2[] = "�J���e�J�@�Q";

// Karate Man
const char text_debug_menu_karate_man[] = "�J���e�J";

// The Snappy Trio
const char text_debug_menu_snappy_trio[] = "�o���o���R�ɂ񂵂イ";

// The Clappy Trio
const char text_debug_menu_clappy_trio[] = "�p�`�p�`�R�ɂ񂵂イ";

// Polyrhythm 2
const char text_debug_menu_polyrhythm_2[] = "�|�����Y���@�Q";

// Polyrhythm
const char text_debug_menu_polyrhythm[] = "�|�����Y��";

// Night Walk 2
const char text_debug_menu_night_walk_2[] = "�i�C�g�@�E�H�[�N�@�Q";

// Night Walk
const char text_debug_menu_night_walk[] = "�i�C�g�@�E�H�[�N";

// Rhythm Tweezers 2
const char text_debug_menu_rhythm_tweezers_2[] = "���Y���������@�Q";

// Rhythm Tweezers
const char text_debug_menu_rhythm_tweezers[] = "���Y��������";

// Sick Beats
const char text_debug_menu_sick_beats[] = "�o�C�L���@�͂���";

// Bouncy Road 2
const char text_debug_menu_bouncy_road_2[] = "�z�b�s���O���[�h�@�Q";

// Bouncy Road
const char text_debug_menu_bouncy_road[] = "�z�b�s���O���[�h";

// Ninja Bodyguard 2
const char text_debug_menu_ninja_reincarnate[] = "�j���W���@�Q";

// Ninja Bodyguard
const char text_debug_menu_ninja_bodyguard[] = "�j���W��";

// Sneaky Spirits 2
const char text_debug_menu_sneaky_spirits_2[] = "���낢���΂��@�Q";

// Sneaky Spirits
const char text_debug_menu_sneaky_spirits[] = "���낢���΂�";

// Spaceball 2
const char text_debug_menu_spaceball_2[] = "�G�A�[�o�b�^�[�Q";

// Spaceball
const char text_debug_menu_spaceball[] = "�G�A�[�o�b�^�[";

// Samurai Slice
const char text_debug_menu_samurai_slice[] = "����������";

// Tap Trial 2
const char text_debug_menu_tap_trial_2[] = "�X�[�p�[�^�b�v";

// Tap Trial
const char text_debug_menu_tap_trial[] = "�^�b�v�_���Y";

// Horse Machine
const char text_debug_menu_horse_machine[] = "���܁i�X�s�[�h�j";

// Marching Orders 2
const char text_debug_menu_marching_orders_2[] = "�}�[�`���@�Q";

// Marching Orders
const char text_debug_menu_marching_orders[] = "�}�[�`��";

// Wizard's Waltz
const char text_debug_menu_wizards_waltz[] = "�܂ق�����";

// Dance Lesson 1
const char text_debug_menu_dance_lesson_1[] = "�_���X���b�X���@�P";

// Bunny Hop
const char text_debug_menu_bunny_hop[] = "�E�T�M�Ƃ�";

// Metronome
const char text_debug_menu_metronome[] = "���g���m�[��";

// Fireworks
const char text_debug_menu_fireworks[] = "�n�i�r";

// Flash Memory Test
const char text_debug_menu_flash_memory_test[] = "�t���b�V���������e�X�g";

// Rat Race
const char text_debug_menu_rat_race[] = "�������胉�b�g";

// Power Calligraphy
const char text_debug_menu_power_calligraphy[] = "���Y���@�����イ��";

// Drum Girls LIVE
const char text_debug_menu_drum_girls_live[] = "�h�����K�[���Y";

// Toss Boys 2
const char text_debug_menu_toss_boys_2[] = "�g�X�{�[�C�Y�@�Q";

// Toss Boys
const char text_debug_menu_toss_boys[] = "�g�X�{�[�C�Y";

// Tram & Pauline
const char text_debug_menu_tram_pauline[] = "�g�����ƃ|����";

// Opening (A Type)
const char text_debug_menu_opening_a[] = "�I�[�v�j���O�@�i�`�@�s�������j";

// Opening (B Type)
const char text_debug_menu_opening_b[] = "�I�[�v�j���O�@�i�a�@�s�������j";

// RIQ Data Check
const char text_debug_menu_riq_data_check[] = "�q�h�p�f�[�^�`�F�b�N";

// Showtime
const char text_debug_menu_showtime[] = "�V���[�^�C��";

// Cosmic Dance
const char text_debug_menu_cosmic_dance[] = "�R�X���_���X";

// Space Dance
const char text_debug_menu_space_dance[] = "�X�y�[�X�_���X";

// Rap Women (by KAZU)
const char text_debug_menu_rap_women_kazu[] = "���b�v�@�E�B�����i�����@�j�`�y�t�j";

// Rap Women (by YONE)
const char text_debug_menu_rap_women_yone[] = "���b�v�@�E�B�����i�����@�x�n�m�d�j";

// Rap Men
const char text_debug_menu_rap_men[] = "���b�v����";

// Quiz Show
const char text_debug_menu_quiz_show[] = "�N�C�Y";

// Reading Material
const char text_debug_menu_reading_material[] = "�e�L�X�g";

// Rhythm Test (Total)
const char text_debug_menu_rhythm_test_total[] = "�`�F�b�N�}�V���@�i�g�[�^���j";

// Rhythm Test (Trick)
const char text_debug_menu_rhythm_test_trick[] = "�`�F�b�N�}�V���@�i�g���b�L�[�j";

// Rhythm Test (Cue)
const char text_debug_menu_rhythm_test_cue[] = "�`�F�b�N�}�V���@�i�L���[�t�j";

// Check Machine (Click)
const char text_debug_menu_rhythm_test_click[] = "�`�F�b�N�}�V���@�i�N���b�N�j";

// Studio Drummer
const char text_debug_menu_studio_drummer[] = "�X�^�W�I�h���}�[";

// Lesson (High-Tech 2)
const char text_debug_menu_drum_lesson_hi_tech_2[] = "���b�X���i��������W�j";

// Lesson (High-Tech 1)
const char text_debug_menu_drum_lesson_hi_tech_1[] = "���b�X���i��������V�j";

// Lesson (Long 6)
const char text_debug_menu_drum_lesson_long_6[] = "���b�X���i��������U�j";

// Lesson (Long 5)
const char text_debug_menu_drum_lesson_long_5[] = "���b�X���i��������T�j";

// Lesson (Long 1)
const char text_debug_menu_drum_lesson_long_1[] = "���b�X���i��������S�j";

// Lesson (Long 3)
const char text_debug_menu_drum_lesson_long_3[] = "���b�X���i��������R�j";

// Lesson (Long 2)
const char text_debug_menu_drum_lesson_long_2[] = "���b�X���i��������Q�j";

// Lesson (Long 4)
const char text_debug_menu_drum_lesson_long_4[] = "���b�X���i��������P�j";

// Lesson (Short 3)
const char text_debug_menu_drum_lesson_short_3[] = "���b�X���i�X�l�A�e�N�j�b�N�j";

// Lesson (Short 2)
const char text_debug_menu_drum_lesson_short_2[] = "���b�X���i�͂₢�W�r�[�g�j";

// Lesson (Basic 2)
const char text_debug_menu_drum_lesson_basic_2[] = "���b�X���i�o�X�ƃX�l�A�j";

// Lesson (Basic 1)
const char text_debug_menu_drum_lesson_basic_1[] = "���b�X���i�X�l�A�j";

// Lesson (Short 9)
const char text_debug_menu_drum_lesson_short_9[] = "���b�X���i�{�b�T�j";

// Lesson (Short 6)
const char text_debug_menu_drum_lesson_short_6[] = "���b�X���i�f�X�R�r�[�g�j";

// Lesson (Short 7)
const char text_debug_menu_drum_lesson_short_7[] = "���b�X���i�L���p�^�[���Q�j";

// Lesson (Short 5)
const char text_debug_menu_drum_lesson_short_5[] = "���b�X���i�L���p�^�[���P�j";

// Lesson (Short 8)
const char text_debug_menu_drum_lesson_short_8[] = "���b�X���i�n�[�h�Q�j";

// Lesson (Short 4)
const char text_debug_menu_drum_lesson_short_4[] = "���b�X���i�n�[�h�P�j";

// Lesson (Short 1)
const char text_debug_menu_drum_lesson_short_1[] = "���b�X���i�C�[�W�[�j";

// Rhythm Toys (Rap Machine)
const char text_debug_menu_rap_machine[] = "�����}�V���i���b�v�j";

// Rhythm Toys (Confession Machine)
const char text_debug_menu_confession_machine[] = "�����}�V���i���u�j";

// Rhythm Toys (Cat Machine)
const char text_debug_menu_cat_machine[] = "�����}�V���i�l�R�j";

// Bon Dance
const char text_debug_menu_bon_dance[] = "�{���_���X";

// Bon Odori
const char text_debug_menu_bon_odori[] = "�ڂ񂨂ǂ�";

// Remix 1
const char text_debug_menu_remix_1[] = "���~�b�N�X�@�P";

// Remix 2
const char text_debug_menu_remix_2[] = "���~�b�N�X�@�Q";

// Remix 3
const char text_debug_menu_remix_3[] = "���~�b�N�X�@�R";

// Remix 4
const char text_debug_menu_remix_4[] = "���~�b�N�X�@�S";

// Remix 5
const char text_debug_menu_remix_5[] = "���~�b�N�X�@�T";

// Remix 6
const char text_debug_menu_remix_6[] = "���~�b�N�X�@�U";

// Remix 7
const char text_debug_menu_remix_7[] = "���~�b�N�X�@�V";

// Remix 8
const char text_debug_menu_remix_8[] = "���~�b�N�X�@�W";

// Mr. Upbeat
const char text_debug_menu_mr_upbeat[] = "�E�����Ƃ�";

// Mannequin Factory
const char text_debug_menu_mannequin_factory[] = "�}�l�L���������傤";

// Quiz Show Endless
const char text_debug_menu_quiz_show_endless[] = "�N�C�Y�i�X�y�V�����j";

// Sick Beats Endless
const char text_debug_menu_sick_beats_endless[] = "�o�C�L���@�͂����@�r�o";

// LIVE
const char text_debug_menu_concert_hall[] = "���C�u";

// Backslash
const char D_08059f8c[] = "�^";
