#include "global.h"
#include "graphics.h"
#include "src/scenes/debug.h"
#include "text/debug_text.h"


  /* DEBUG MENU - MISC. DATA */


extern const struct Scene D_089d6f44;
extern const struct Scene D_089d6c8c;
extern const struct Scene D_089d6ba4;
extern const struct Scene D_089d69e0;
extern const struct Scene D_089d6804;
extern const struct Scene D_089d74fc;
extern const struct Scene D_089d712c;
extern const struct Scene D_089d7408;
extern const struct Scene D_089d7220;
extern const struct Scene D_089d671c;
extern const struct Scene D_089d7038;
extern const struct Scene D_089d6628;
extern const struct Scene D_089d2764;
extern const struct Scene D_089d6088;
extern const struct Scene D_089d7314;
extern const struct Scene D_089d5dc4;
extern const struct Scene D_089d5eac;
extern const struct Scene D_089d5f94;
extern const struct Scene D_089d4c8c;
extern const struct Scene D_089d4d74;
extern const struct Scene D_089d4e5c;
extern const struct Scene D_089d4f44;
extern const struct Scene D_089d502c;
extern const struct Scene D_089d51fc;
extern const struct Scene D_089d5114;
extern const struct Scene D_089d52e4;
extern const struct Scene D_089d53cc;
extern const struct Scene D_089d54b4;
extern const struct Scene D_089d559c;
extern const struct Scene D_089d5684;
extern const struct Scene D_089d576c;
extern const struct Scene D_089d5854;
extern const struct Scene D_089d593c;
extern const struct Scene D_089d5a24;
extern const struct Scene D_089d5b0c;
extern const struct Scene D_089d5bf4;
extern const struct Scene D_089d5cdc;
extern const struct Scene D_089d48ec;
extern const struct Scene D_089d4464;
extern const struct Scene D_089d454c;
extern const struct Scene D_089d4634;
extern const struct Scene D_089d4804;
extern const struct Scene D_089d80d0;
extern const struct Scene D_089d42a0;
extern const struct Scene D_089d40d0;
extern const struct Scene D_089d6440;
extern const struct Scene D_089d6534;
extern const struct Scene D_089d3e18;
extern const struct Scene D_089d68f8;
extern const struct Scene D_089d3c48;
extern const struct Scene D_089cdad8;
extern const struct Scene D_089d3a6c;
extern const struct Scene D_089d3984;
extern const struct Scene D_089d35fc;
extern const struct Scene D_089d3268;
extern const struct Scene D_089d3174;
extern const struct Scene D_089d2f98;
extern const struct Scene D_089d2dd4;
extern const struct Scene D_089d2c04;
extern const struct Scene D_089de05c;
extern const struct Scene D_089d2a34;
extern const struct Scene D_089d2940;
extern const struct Scene D_089d2858;
extern const struct Scene D_089d2670;
extern const struct Scene D_089d24a0;
extern const struct Scene D_089d21dc;
extern const struct Scene D_089d23ac;
extern const struct Scene D_089d1f18;
extern const struct Scene D_089d1c6c;
extern const struct Scene D_089d6258;
extern const struct Scene D_089d15f0;
extern const struct Scene D_089d18cc;
extern const struct Scene D_089d19c0;
extern const struct Scene D_089d132c;
extern const struct Scene D_089d14fc;
extern const struct Scene D_089d1068;
extern const struct Scene D_089d1238;
extern const struct Scene D_089d0da4;
extern const struct Scene D_089d0f74;
extern const struct Scene D_089d0ae0;
extern const struct Scene D_089d081c;
extern const struct Scene D_089d09ec;
extern const struct Scene D_089d0540;
extern const struct Scene D_089d0634;
extern const struct Scene D_089d0358;
extern const struct Scene D_089d044c;
extern const struct Scene D_089d0188;
extern const struct Scene D_089d634c;
extern const struct Scene D_089cfed0;
extern const struct Scene D_089d0728;
extern const struct Scene D_089dd47c;
extern const struct Scene D_089cde20;
extern const struct Scene D_089cdf08;
extern const struct Scene D_089cdc24;
extern const struct Scene D_089d85b4;
extern const struct Scene D_089cfc1c;
extern const struct Scene D_089d7634;
extern const struct Scene D_089d77e4;
extern const struct Scene D_089d7964;
extern const struct Scene D_089d7c18;
extern const struct Scene D_089cd2cc;
extern const struct Scene D_089cfd60;
extern const struct Scene D_089cda0c;
extern const struct Scene D_089dd8ac;
extern const struct Scene D_089dd8ec;
extern const struct Scene D_089dd86c;
extern const struct Scene D_089d6d74;
extern const struct Scene D_089d6e5c;
extern const struct Scene D_089de0c8;

// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* 0x00 */ {
        /* Scene */ &D_089d6f44,
        /* Label */ text_debug_menu_concert_hall
    },
    /* 0x01 */ {
        /* Scene */ &D_089d6c8c,
        /* Label */ text_debug_menu_sick_beats_endless
    },
    /* 0x02 */ {
        /* Scene */ &D_089d6ba4,
        /* Label */ text_debug_menu_quiz_show_endless
    },
    /* 0x03 */ {
        /* Scene */ &D_089d69e0,
        /* Label */ text_debug_menu_mannequin_factory
    },
    /* 0x04 */ {
        /* Scene */ &D_089d6804,
        /* Label */ text_debug_menu_mr_upbeat
    },
    /* 0x05 */ {
        /* Scene */ &D_089d74fc,
        /* Label */ text_debug_menu_remix_8
    },
    /* 0x06 */ {
        /* Scene */ &D_089d712c,
        /* Label */ text_debug_menu_remix_7
    },
    /* 0x07 */ {
        /* Scene */ &D_089d7408,
        /* Label */ text_debug_menu_remix_6
    },
    /* 0x08 */ {
        /* Scene */ &D_089d7220,
        /* Label */ text_debug_menu_remix_5
    },
    /* 0x09 */ {
        /* Scene */ &D_089d671c,
        /* Label */ text_debug_menu_remix_4
    },
    /* 0x0A */ {
        /* Scene */ &D_089d7038,
        /* Label */ text_debug_menu_remix_3
    },
    /* 0x0B */ {
        /* Scene */ &D_089d6628,
        /* Label */ text_debug_menu_remix_2
    },
    /* 0x0C */ {
        /* Scene */ &D_089d2764,
        /* Label */ text_debug_menu_remix_1
    },
    /* 0x0D */ {
        /* Scene */ &D_089d6088,
        /* Label */ text_debug_menu_bon_odori
    },
    /* 0x0E */ {
        /* Scene */ &D_089d7314,
        /* Label */ text_debug_menu_bon_dance
    },
    /* 0x0F */ {
        /* Scene */ &D_089d5dc4,
        /* Label */ text_debug_menu_cat_machine
    },
    /* 0x10 */ {
        /* Scene */ &D_089d5eac,
        /* Label */ text_debug_menu_confession_machine
    },
    /* 0x11 */ {
        /* Scene */ &D_089d5f94,
        /* Label */ text_debug_menu_rap_machine
    },
    /* 0x12 */ {
        /* Scene */ &D_089d4c8c,
        /* Label */ text_debug_menu_drum_lesson_short_1
    },
    /* 0x13 */ {
        /* Scene */ &D_089d4d74,
        /* Label */ text_debug_menu_drum_lesson_short_4
    },
    /* 0x14 */ {
        /* Scene */ &D_089d4e5c,
        /* Label */ text_debug_menu_drum_lesson_short_8
    },
    /* 0x15 */ {
        /* Scene */ &D_089d4f44,
        /* Label */ text_debug_menu_drum_lesson_short_5
    },
    /* 0x16 */ {
        /* Scene */ &D_089d502c,
        /* Label */ text_debug_menu_drum_lesson_short_7
    },
    /* 0x17 */ {
        /* Scene */ &D_089d51fc,
        /* Label */ text_debug_menu_drum_lesson_short_6
    },
    /* 0x18 */ {
        /* Scene */ &D_089d5114,
        /* Label */ text_debug_menu_drum_lesson_short_9
    },
    /* 0x19 */ {
        /* Scene */ &D_089d52e4,
        /* Label */ text_debug_menu_drum_lesson_basic_1
    },
    /* 0x1A */ {
        /* Scene */ &D_089d53cc,
        /* Label */ text_debug_menu_drum_lesson_basic_2
    },
    /* 0x1B */ {
        /* Scene */ &D_089d54b4,
        /* Label */ text_debug_menu_drum_lesson_short_2
    },
    /* 0x1C */ {
        /* Scene */ &D_089d559c,
        /* Label */ text_debug_menu_drum_lesson_short_3
    },
    /* 0x1D */ {
        /* Scene */ &D_089d5684,
        /* Label */ text_debug_menu_drum_lesson_long_4
    },
    /* 0x1E */ {
        /* Scene */ &D_089d576c,
        /* Label */ text_debug_menu_drum_lesson_long_2
    },
    /* 0x1F */ {
        /* Scene */ &D_089d5854,
        /* Label */ text_debug_menu_drum_lesson_long_3
    },
    /* 0x20 */ {
        /* Scene */ &D_089d593c,
        /* Label */ text_debug_menu_drum_lesson_long_1
    },
    /* 0x21 */ {
        /* Scene */ &D_089d5a24,
        /* Label */ text_debug_menu_drum_lesson_long_5
    },
    /* 0x22 */ {
        /* Scene */ &D_089d5b0c,
        /* Label */ text_debug_menu_drum_lesson_long_6
    },
    /* 0x23 */ {
        /* Scene */ &D_089d5bf4,
        /* Label */ text_debug_menu_drum_lesson_hi_tech_1
    },
    /* 0x24 */ {
        /* Scene */ &D_089d5cdc,
        /* Label */ text_debug_menu_drum_lesson_hi_tech_2
    },
    /* 0x25 */ {
        /* Scene */ &D_089d48ec,
        /* Label */ text_debug_menu_studio_drummer
    },
    /* 0x26 */ {
        /* Scene */ &D_089d4464,
        /* Label */ text_debug_menu_rhythm_test_click
    },
    /* 0x27 */ {
        /* Scene */ &D_089d454c,
        /* Label */ text_debug_menu_rhythm_test_cue
    },
    /* 0x28 */ {
        /* Scene */ &D_089d4634,
        /* Label */ text_debug_menu_rhythm_test_trick
    },
    /* 0x29 */ {
        /* Scene */ &D_089d4804,
        /* Label */ text_debug_menu_rhythm_test_total
    },
    /* 0x2A */ {
        /* Scene */ &D_089d80d0,
        /* Label */ text_debug_menu_reading_material
    },
    /* 0x2B */ {
        /* Scene */ &D_089d42a0,
        /* Label */ text_debug_menu_quiz_show
    },
    /* 0x2C */ {
        /* Scene */ &D_089d40d0,
        /* Label */ text_debug_menu_rap_men
    },
    /* 0x2D */ {
        /* Scene */ &D_089d6440,
        /* Label */ text_debug_menu_rap_women_yone
    },
    /* 0x2E */ {
        /* Scene */ &D_089d6534,
        /* Label */ text_debug_menu_rap_women_kazu
    },
    /* 0x2F */ {
        /* Scene */ &D_089d3e18,
        /* Label */ text_debug_menu_space_dance
    },
    /* 0x30 */ {
        /* Scene */ &D_089d68f8,
        /* Label */ text_debug_menu_cosmic_dance
    },
    /* 0x31 */ {
        /* Scene */ &D_089d3c48,
        /* Label */ text_debug_menu_showtime
    },
    /* 0x32 */ {
        /* Scene */ &D_089cdad8,
        /* Label */ text_debug_menu_riq_data_check
    },
    /* 0x33 */ {
        /* Scene */ &D_089d3a6c,
        /* Label */ text_debug_menu_opening_b
    },
    /* 0x34 */ {
        /* Scene */ &D_089d3984,
        /* Label */ text_debug_menu_opening_a
    },
    /* 0x35 */ {
        /* Scene */ &D_089d35fc,
        /* Label */ text_debug_menu_tram_pauline
    },
    /* 0x36 */ {
        /* Scene */ &D_089d3268,
        /* Label */ text_debug_menu_toss_boys
    },
    /* 0x37 */ {
        /* Scene */ &D_089d3174,
        /* Label */ text_debug_menu_toss_boys_2
    },
    /* 0x38 */ {
        /* Scene */ &D_089d2f98,
        /* Label */ text_debug_menu_drum_girls_live
    },
    /* 0x39 */ {
        /* Scene */ &D_089d2dd4,
        /* Label */ text_debug_menu_power_calligraphy
    },
    /* 0x3A */ {
        /* Scene */ &D_089d2c04,
        /* Label */ text_debug_menu_rat_race
    },
    /* 0x3B */ {
        /* Scene */ &D_089de05c,
        /* Label */ text_debug_menu_flash_memory_test
    },
    /* 0x3C */ {
        /* Scene */ &D_089d2a34,
        /* Label */ text_debug_menu_fireworks
    },
    /* 0x3D */ {
        /* Scene */ &D_089d2940,
        /* Label */ text_debug_menu_metronome
    },
    /* 0x3E */ {
        /* Scene */ &D_089d2858,
        /* Label */ text_debug_menu_bunny_hop
    },
    /* 0x3F */ {
        /* Scene */ &D_089d2670,
        /* Label */ text_debug_menu_dance_lesson_1
    },
    /* 0x40 */ {
        /* Scene */ &D_089d24a0,
        /* Label */ text_debug_menu_wizards_waltz
    },
    /* 0x41 */ {
        /* Scene */ &D_089d21dc,
        /* Label */ text_debug_menu_marching_orders
    },
    /* 0x42 */ {
        /* Scene */ &D_089d23ac,
        /* Label */ text_debug_menu_marching_orders_2
    },
    /* 0x43 */ {
        /* Scene */ &D_089d1f18,
        /* Label */ text_debug_menu_horse_machine
    },
    /* 0x44 */ {
        /* Scene */ &D_089d1c6c,
        /* Label */ text_debug_menu_tap_trial
    },
    /* 0x45 */ {
        /* Scene */ &D_089d6258,
        /* Label */ text_debug_menu_tap_trial_2
    },
    /* 0x46 */ {
        /* Scene */ &D_089d15f0,
        /* Label */ text_debug_menu_samurai_slice
    },
    /* 0x47 */ {
        /* Scene */ &D_089d18cc,
        /* Label */ text_debug_menu_spaceball
    },
    /* 0x48 */ {
        /* Scene */ &D_089d19c0,
        /* Label */ text_debug_menu_spaceball_2
    },
    /* 0x49 */ {
        /* Scene */ &D_089d132c,
        /* Label */ text_debug_menu_sneaky_spirits
    },
    /* 0x4A */ {
        /* Scene */ &D_089d14fc,
        /* Label */ text_debug_menu_sneaky_spirits_2
    },
    /* 0x4B */ {
        /* Scene */ &D_089d1068,
        /* Label */ text_debug_menu_ninja_bodyguard
    },
    /* 0x4C */ {
        /* Scene */ &D_089d1238,
        /* Label */ text_debug_menu_ninja_reincarnate
    },
    /* 0x4D */ {
        /* Scene */ &D_089d0da4,
        /* Label */ text_debug_menu_bouncy_road
    },
    /* 0x4E */ {
        /* Scene */ &D_089d0f74,
        /* Label */ text_debug_menu_bouncy_road_2
    },
    /* 0x4F */ {
        /* Scene */ &D_089d0ae0,
        /* Label */ text_debug_menu_sick_beats
    },
    /* 0x50 */ {
        /* Scene */ &D_089d081c,
        /* Label */ text_debug_menu_rhythm_tweezers
    },
    /* 0x51 */ {
        /* Scene */ &D_089d09ec,
        /* Label */ text_debug_menu_rhythm_tweezers_2
    },
    /* 0x52 */ {
        /* Scene */ &D_089d0540,
        /* Label */ text_debug_menu_night_walk
    },
    /* 0x53 */ {
        /* Scene */ &D_089d0634,
        /* Label */ text_debug_menu_night_walk_2
    },
    /* 0x54 */ {
        /* Scene */ &D_089d0358,
        /* Label */ text_debug_menu_polyrhythm
    },
    /* 0x55 */ {
        /* Scene */ &D_089d044c,
        /* Label */ text_debug_menu_polyrhythm_2
    },
    /* 0x56 */ {
        /* Scene */ &D_089d0188,
        /* Label */ text_debug_menu_clappy_trio
    },
    /* 0x57 */ {
        /* Scene */ &D_089d634c,
        /* Label */ text_debug_menu_snappy_trio
    },
    /* 0x58 */ {
        /* Scene */ &D_089cfed0,
        /* Label */ text_debug_menu_karate_man
    },
    /* 0x59 */ {
        /* Scene */ &D_089d0728,
        /* Label */ text_debug_menu_karate_man_2
    },
    /* 0x5A */ {
        /* Scene */ &D_089dd47c,
        /* Label */ text_debug_menu_riq_title
    },
    /* 0x5B */ {
        /* Scene */ &D_089cde20,
        /* Label */ text_debug_menu_riq_main_menu
    },
    /* 0x5C */ {
        /* Scene */ &D_089cdf08,
        /* Label */ text_debug_menu_riq_game_select
    },
    /* 0x5D */ {
        /* Scene */ &D_089cdc24,
        /* Label */ text_debug_menu_riq_data_room
    },
    /* 0x5E */ {
        /* Scene */ &D_089d85b4,
        /* Label */ text_debug_menu_riq_studio
    },
    /* 0x5F */ {
        /* Scene */ &D_089cfc1c,
        /* Label */ text_debug_menu_riq_options
    },
    /* 0x60 */ {
        /* Scene */ &D_089d7634,
        /* Label */ text_debug_menu_riq_results
    },
    /* 0x61 */ {
        /* Scene */ &D_089d77e4,
        /* Label */ text_debug_menu_riq_results2
    },
    /* 0x62 */ {
        /* Scene */ &D_089d7964,
        /* Label */ text_debug_menu_riq_results3
    },
    /* 0x63 */ {
        /* Scene */ &D_089d7c18,
        /* Label */ text_debug_menu_riq_results4
    },
    /* 0x64 */ {
        /* Scene */ &D_089cd2cc,
        /* Label */ text_debug_menu_riq_library
    },
    /* 0x65 */ {
        /* Scene */ &D_089cfd60,
        /* Label */ text_debug_menu_riq_perfect
    },
    /* 0x66 */ {
        /* Scene */ &D_089cda0c,
        /* Label */ text_debug_menu_riq_cafe
    },
    /* 0x67 */ {
        /* Scene */ &D_089dd8ac,
        /* Label */ text_debug_menu_riq_endless_games
    },
    /* 0x68 */ {
        /* Scene */ &D_089dd8ec,
        /* Label */ text_debug_menu_riq_drum_lessons
    },
    /* 0x69 */ {
        /* Scene */ &D_089dd86c,
        /* Label */ text_debug_menu_riq_rhythm_toys
    },
    /* 0x6A */ {
        /* Scene */ &D_089cda0c,
        /* Label */ text_debug_menu_riq_cafe
    },
    /* 0x6B */ {
        /* Scene */ &D_089d6d74,
        /* Label */ text_debug_menu_credits_first_time
    },
    /* 0x6C */ {
        /* Scene */ &D_089d6e5c,
        /* Label */ text_debug_menu_credits_again
    },
    /* 0x6D */ {
        /* Scene */ &D_089de0c8,
        /* Label */ text_debug_menu_data_clear
    },
    END_OF_DEBUG_ENTRIES
};

// [D_089ddf60] Fullwidth Arabic Numerals and Latin Alphabet Characters
char debug_menu_fullwidth_char[] = "‚O‚P‚Q‚R‚S‚T‚U‚V‚W‚X‚`‚a‚b‚c‚d‚e‚f‚g‚h‚i‚j‚k‚l‚m‚n‚o‚p‚q‚r‚s‚t‚u‚v‚w‚x‚y";
