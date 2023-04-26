#include "global.h"
#include "graphics.h"
#include "scenes.h"
#include "src/scenes/debug_menu.h"


  /* DEBUG MENU - MISC. DATA */

// Sequence Test
const char D_0805966c[] = "�V�[�P���X�@�e�X�g";


// Asterisk
const char D_08059680[] = "��";


// 1/1
const char D_08059684[] = "�P�^�P";


// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* Drum LIVE */ {
        /* Scene */ &scene_drum_live,
        /* Label */ "���C�u"
    },
    /* Sick Beats Endless */ {
        /* Scene */ &scene_sick_beats_endless,
        /* Label */ "�o�C�L���@�͂����@�r�o"
    },
    /* Quiz Show Endless */ {
        /* Scene */ &scene_quiz_show_endless,
        /* Label */ "�N�C�Y�i�X�y�V�����j"
    },
    /* Mannequin Factory */ {
        /* Scene */ &scene_mannequin_factory,
        /* Label */ "�}�l�L���������傤"
    },
    /* Mr. Upbeat */ {
        /* Scene */ &scene_mr_upbeat,
        /* Label */ "�E�����Ƃ�"
    },
    /* Remix 8 */ {
        /* Scene */ &scene_remix_8,
        /* Label */ "���~�b�N�X�@�W"
    },
    /* Remix 7 */ {
        /* Scene */ &scene_remix_7,
        /* Label */ "���~�b�N�X�@�V"
    },
    /* Remix 6 */ {
        /* Scene */ &scene_remix_6,
        /* Label */ "���~�b�N�X�@�U"
    },
    /* Remix 5 */ {
        /* Scene */ &scene_remix_5,
        /* Label */ "���~�b�N�X�@�T"
    },
    /* Remix 4 */ {
        /* Scene */ &scene_remix_4,
        /* Label */ "���~�b�N�X�@�S"
    },
    /* Remix 3 */ {
        /* Scene */ &scene_remix_3,
        /* Label */ "���~�b�N�X�@�R"
    },
    /* Remix 2 */ {
        /* Scene */ &scene_remix_2,
        /* Label */ "���~�b�N�X�@�Q"
    },
    /* Remix 1 */ {
        /* Scene */ &scene_remix_1,
        /* Label */ "���~�b�N�X�@�P"
    },
    /* The Bon Odori */ {
        /* Scene */ &scene_bon_odori,
        /* Label */ "�ڂ񂨂ǂ�"
    },
    /* Bon Dance */ {
        /* Scene */ &scene_bon_dance,
        /* Label */ "�{���_���X"
    },
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &scene_cat_machine,
        /* Label */ "�����}�V���i�l�R�j"
    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &scene_love_machine,
        /* Label */ "�����}�V���i���u�j"
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &scene_rap_machine,
        /* Label */ "�����}�V���i���b�v�j"
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &scene_drum_lesson_short_1,
        /* Label */ "���b�X���i�C�[�W�[�j"
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &scene_drum_lesson_short_4,
        /* Label */ "���b�X���i�n�[�h�P�j"
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &scene_drum_lesson_short_8,
        /* Label */ "���b�X���i�n�[�h�Q�j"
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &scene_drum_lesson_short_5,
        /* Label */ "���b�X���i�L���p�^�[���P�j"
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &scene_drum_lesson_short_7,
        /* Label */ "���b�X���i�L���p�^�[���Q�j"
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &scene_drum_lesson_short_6,
        /* Label */ "���b�X���i�f�X�R�r�[�g�j"
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &scene_drum_lesson_short_9,
        /* Label */ "���b�X���i�{�b�T�j"
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &scene_drum_lesson_basic_1,
        /* Label */ "���b�X���i�X�l�A�j"
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &scene_drum_lesson_basic_2,
        /* Label */ "���b�X���i�o�X�ƃX�l�A�j"
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &scene_drum_lesson_short_2,
        /* Label */ "���b�X���i�͂₢�W�r�[�g�j"
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &scene_drum_lesson_short_3,
        /* Label */ "���b�X���i�X�l�A�e�N�j�b�N�j"
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &scene_drum_lesson_long_4,
        /* Label */ "���b�X���i��������P�j"
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &scene_drum_lesson_long_2,
        /* Label */ "���b�X���i��������Q�j"
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &scene_drum_lesson_long_3,
        /* Label */ "���b�X���i��������R�j"
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &scene_drum_lesson_long_1,
        /* Label */ "���b�X���i��������S�j"
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &scene_drum_lesson_long_5,
        /* Label */ "���b�X���i��������T�j"
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &scene_drum_lesson_long_6,
        /* Label */ "���b�X���i��������U�j"
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_1,
        /* Label */ "���b�X���i��������V�j"
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_2,
        /* Label */ "���b�X���i��������W�j"
    },
    /* Studio Drummer */ {
        /* Scene */ &D_089d48ec,
        /* Label */ "�X�^�W�I�h���}�["
    },
    /* Check Machine (Click) */ {
        /* Scene */ &D_089d4464,
        /* Label */ "�`�F�b�N�}�V���@�i�N���b�N�j"
    },
    /* Rhythm Test (Cue) */ {
        /* Scene */ &D_089d454c,
        /* Label */ "�`�F�b�N�}�V���@�i�L���[�t�j"
    },
    /* Rhythm Test (Trick) */ {
        /* Scene */ &D_089d4634,
        /* Label */ "�`�F�b�N�}�V���@�i�g���b�L�[�j"
    },
    /* Rhythm Test (Total) */ {
        /* Scene */ &D_089d4804,
        /* Label */ "�`�F�b�N�}�V���@�i�g�[�^���j"
    },
    /* Reading Material */ {
        /* Scene */ &D_089d80d0,
        /* Label */ "�e�L�X�g"
    },
    /* Quiz Show */ {
        /* Scene */ &scene_quiz_show,
        /* Label */ "�N�C�Y"
    },
    /* Rap Men */ {
        /* Scene */ &scene_rap_men,
        /* Label */ "���b�v����"
    },
    /* Rap Women (by YONE) */ {
        /* Scene */ &scene_rap_women,
        /* Label */ "���b�v�@�E�B�����i�����@�x�n�m�d�j"
    },
    /* Rap Women (by KAZU) */ {
        /* Scene */ &D_089d6534,
        /* Label */ "���b�v�@�E�B�����i�����@�j�`�y�t�j"
    },
    /* Space Dance */ {
        /* Scene */ &scene_space_dance,
        /* Label */ "�X�y�[�X�_���X"
    },
    /* Cosmic Dance */ {
        /* Scene */ &scene_cosmic_dance,
        /* Label */ "�R�X���_���X"
    },
    /* Showtime */ {
        /* Scene */ &scene_showtime,
        /* Label */ "�V���[�^�C��"
    },
    /* RIQ Data Check */ {
        /* Scene */ &D_089cdad8,
        /* Label */ "�q�h�p�f�[�^�`�F�b�N"
    },
    /* Opening (B Type) */ {
        /* Scene */ &D_089d3a6c,
        /* Label */ "�I�[�v�j���O�@�i�a�@�s�������j"
    },
    /* Opening (A Type) */ {
        /* Scene */ &D_089d3984,
        /* Label */ "�I�[�v�j���O�@�i�`�@�s�������j"
    },
    /* Tram & Pauline */ {
        /* Scene */ &scene_tram_pauline,
        /* Label */ "�g�����ƃ|����"
    },
    /* Toss Boys */ {
        /* Scene */ &scene_toss_boys,
        /* Label */ "�g�X�{�[�C�Y"
    },
    /* Toss Boys 2 */ {
        /* Scene */ &scene_toss_boys_2,
        /* Label */ "�g�X�{�[�C�Y�@�Q"
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &D_089d2f98,
        /* Label */ "�h�����K�[���Y"
    },
    /* Power Calligraphy */ {
        /* Scene */ &scene_power_calligraphy,
        /* Label */ "���Y���@�����イ��"
    },
    /* Rat Race */ {
        /* Scene */ &scene_rat_race,
        /* Label */ "�������胉�b�g"
    },
    /* Flash Memory Test */ {
        /* Scene */ &D_089de05c,
        /* Label */ "�t���b�V���������e�X�g"
    },
    /* Fireworks */ {
        /* Scene */ &scene_fireworks,
        /* Label */ "�n�i�r"
    },
    /* Metronome */ {
        /* Scene */ &D_089d2940,
        /* Label */ "���g���m�[��"
    },
    /* Bunny Hop */ {
        /* Scene */ &scene_bunny_hop,
        /* Label */ "�E�T�M�Ƃ�"
    },
    /* Dance Lesson 1 */ {
        /* Scene */ &D_089d2670,
        /* Label */ "�_���X���b�X���@�P"
    },
    /* Wizard's Waltz */ {
        /* Scene */ &scene_wizards_waltz,
        /* Label */ "�܂ق�����"
    },
    /* Marching Orders */ {
        /* Scene */ &scene_marching_orders,
        /* Label */ "�}�[�`��"
    },
    /* Marching Orders 2 */ {
        /* Scene */ &scene_marching_orders_2,
        /* Label */ "�}�[�`���@�Q"
    },
    /* Mechanical Horse */ {
        /* Scene */ &scene_mechanical_horse,
        /* Label */ "���܁i�X�s�[�h�j"
    },
    /* Tap Trial */ {
        /* Scene */ &scene_tap_trial,
        /* Label */ "�^�b�v�_���Y"
    },
    /* Tap Trial 2 */ {
        /* Scene */ &scene_tap_trial_2,
        /* Label */ "�X�[�p�[�^�b�v"
    },
    /* Samurai Slice */ {
        /* Scene */ &scene_samurai_slice,
        /* Label */ "����������"
    },
    /* Spaceball */ {
        /* Scene */ &scene_spaceball,
        /* Label */ "�G�A�[�o�b�^�["
    },
    /* Spaceball 2 */ {
        /* Scene */ &scene_spaceball_2,
        /* Label */ "�G�A�[�o�b�^�[�Q"
    },
    /* Sneaky Spirits */ {
        /* Scene */ &scene_sneaky_spirits,
        /* Label */ "���낢���΂�"
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &scene_sneaky_spirits_2,
        /* Label */ "���낢���΂��@�Q"
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &scene_ninja_bodyguard,
        /* Label */ "�j���W��"
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &scene_ninja_reincarnate,
        /* Label */ "�j���W���@�Q"
    },
    /* Bouncy Road */ {
        /* Scene */ &scene_bouncy_road,
        /* Label */ "�z�b�s���O���[�h"
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &scene_bouncy_road_2,
        /* Label */ "�z�b�s���O���[�h�@�Q"
    },
    /* Sick Beats */ {
        /* Scene */ &scene_sick_beats,
        /* Label */ "�o�C�L���@�͂���"
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &scene_rhythm_tweezers,
        /* Label */ "���Y��������"
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &scene_rhythm_tweezers_2,
        /* Label */ "���Y���������@�Q"
    },
    /* Night Walk */ {
        /* Scene */ &scene_night_walk,
        /* Label */ "�i�C�g�@�E�H�[�N"
    },
    /* Night Walk 2 */ {
        /* Scene */ &scene_night_walk_2,
        /* Label */ "�i�C�g�@�E�H�[�N�@�Q"
    },
    /* Polyrhythm */ {
        /* Scene */ &scene_polyrhythm,
        /* Label */ "�|�����Y��"
    },
    /* Polyrhythm 2 */ {
        /* Scene */ &scene_polyrhythm_2,
        /* Label */ "�|�����Y���@�Q"
    },
    /* The Clappy Trio */ {
        /* Scene */ &scene_clappy_trio,
        /* Label */ "�p�`�p�`�R�ɂ񂵂イ"
    },
    /* The Snappy Trio */ {
        /* Scene */ &scene_snappy_trio,
        /* Label */ "�o���o���R�ɂ񂵂イ"
    },
    /* Karate Man */ {
        /* Scene */ &scene_karate_man,
        /* Label */ "�J���e�J"
    },
    /* Karate Man 2 */ {
        /* Scene */ &scene_karate_man_2,
        /* Label */ "�J���e�J�@�Q"
    },
    /* R-IQ (Title Screen) */ {
        /* Scene */ &scene_riq_title,
        /* Label */ "�q�|�h�p�@�i�^�C�g���j"
    },
    /* R-IQ (Main Menu) */ {
        /* Scene */ &scene_main_menu,
        /* Label */ "�q�|�h�p�@�i���j���[�j"
    },
    /* R-IQ (Game Select) */ {
        /* Scene */ &scene_game_select,
        /* Label */ "�q�|�h�p�@�i�Q�[���j"
    },
    /* R-IQ (Rhythm Data Room) */ {
        /* Scene */ &scene_data_room,
        /* Label */ "�q�|�h�p�@�i����傤���j"
    },
    /* R-IQ (Studio) */ {
        /* Scene */ &scene_studio,
        /* Label */ "�q�|�h�p�@�i�X�^�W�I�j"
    },
    /* R-IQ (Options) */ {
        /* Scene */ &scene_options_menu,
        /* Label */ "�q�|�h�p�@�i�I�v�V�����j"
    },
    /* R-IQ (Result [1]) */ {
        /* Scene */ &scene_results_ver_debug,
        /* Label */ "�q�|�h�p�@�i���U���g�j"
    },
    /* R-IQ (Result 2) */ {
        /* Scene */ &scene_results_ver_rank,
        /* Label */ "�q�|�h�p�@�i���U���g�Q�j"
    },
    /* R-IQ (Result 3) */ {
        /* Scene */ &scene_results_ver_score,
        /* Label */ "�q�|�h�p�@�i���U���g�R�j"
    },
    /* R-IQ (Result 4) */ {
        /* Scene */ &scene_epilogue,
        /* Label */ "�q�|�h�p�@�i���U���g�S�j"
    },
    /* R-IQ (Rhythm Library) */ {
        /* Scene */ &D_089cd2cc,
        /* Label */ "�q�|�h�p�@�i�ɂイ���j"
    },
    /* R-IQ (Perfect) */ {
        /* Scene */ &scene_perfect,
        /* Label */ "�q�|�h�p�@�i�p�[�t�F�N�g�j"
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "�q�|�h�p�@�i�J�E���Z���[�j"
    },
    /* R-IQ (Endless Games) */ {
        /* Scene */ &scene_endless_menu,
        /* Label */ "�q�|�h�p�@�i�~�j�Q�[���j"
    },
    /* R-IQ (Drum Lessons) */ {
        /* Scene */ &scene_lessons_menu,
        /* Label */ "�q�|�h�p�@�i�h�������b�X���j"
    },
    /* R-IQ (Rhythm Toys) */ {
        /* Scene */ &scene_toys_menu,
        /* Label */ "�q�|�h�p�@�i��������j"
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "�q�|�h�p�@�i�J�E���Z���[�j"
    },
    /* Ending (from clearing Remix 6) */ {
        /* Scene */ &D_089d6d74,
        /* Label */ "�G���f�B���O�i�N���A���j"
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &scene_staff_credit,
        /* Label */ "�G���f�B���O�i���܂�����j"
    },
    /* Data Clear */ {
        /* Scene */ &scene_data_clear,
        /* Label */ "�f�[�^�N���A"
    },
    END_OF_DEBUG_ENTRIES
};


// Backslash
const char D_08059f8c[] = "�^";


// [D_089ddf60] Fullwidth Arabic Numerals and Uppercase Latin Alphabet Characters
char debug_menu_fullwidth_char[] = "�O�P�Q�R�S�T�U�V�W�X�`�a�b�c�d�e�f�g�h�i�j�k�l�m�n�o�p�q�r�s�t�u�v�w�x�y";
