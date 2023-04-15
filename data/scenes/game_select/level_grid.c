#include "global.h"
#include "graphics.h"
#include "text.h"
#include "levels.h"
#include "src/scenes/game_select.h"
#include "graphics/game_select/game_select_graphics.h"
#include "graphics/epilogues/epilogues_graphics.h"


  /* GAME SELECT - LEVEL GRID DATA */


#include "epilogue_gfx.inc.c"
#include "levels.inc.c"


// [D_089cea24] Level Icon Textures
const u8 *level_icon_texture_table[] = {
    /* 0x00 */ icon_karate_man_2_bin,
    /* 0x01 */ icon_sneaky_spirits_bin,
    /* 0x02 */ icon_remix6_bin,
    /* 0x03 */ icon_polyrhythm_bin,
    /* 0x04 */ icon_clappy_trio_bin,
    /* 0x05 */ icon_ninja_bodyguard_bin,
    /* 0x06 */ icon_tap_trial_bin,
    /* 0x07 */ icon_night_walk_bin,
    /* 0x08 */ icon_karate_man_bin,
    /* 0x09 */ icon_spaceball_bin,
    /* 0x0A */ icon_snappy_trio_bin,
    /* 0x0B */ icon_tap_trial_2_bin,
    /* 0x0C */ icon_bouncy_road_bin,
    /* 0x0D */ icon_sick_beats_bin,
    /* 0x0E */ icon_rhythm_tweezers_bin,
    /* 0x0F */ icon_rap_women_bin,
    /* 0x10 */ icon_cosmic_dance_bin,
    /* 0x11 */ icon_bon_dance_bin,
    /* 0x12 */ icon_samurai_slice_bin,
    /* 0x13 */ icon_remix7_bin,
    /* 0x14 */ icon_marching_orders_2_bin,
    /* 0x15 */ icon_marching_orders_bin,
    /* 0x16 */ icon_remix1_bin,
    /* 0x17 */ icon_wizards_waltz_bin,
    /* 0x18 */ icon_bunny_hop_bin,
    /* 0x19 */ icon_rhythm_tweezers_2_bin,
    /* 0x1A */ icon_fireworks_bin,
    /* 0x1B */ icon_remix2_bin,
    /* 0x1C */ icon_power_calligraphy_bin,
    /* 0x1D */ icon_toss_boys_2_bin,
    /* 0x1E */ icon_toss_boys_bin,
    /* 0x1F */ icon_rat_race_bin,
    /* 0x20 */ icon_tram_pauline_bin,
    /* 0x21 */ icon_remix3_bin,
    /* 0x22 */ icon_remix4_bin,
    /* 0x23 */ icon_bon_odori_bin,
    /* 0x24 */ icon_showtime_bin,
    /* 0x25 */ icon_remix8_bin,
    /* 0x26 */ icon_ninja_reincarnate_bin,
    /* 0x27 */ icon_remix5_bin,
    /* 0x28 */ icon_space_dance_bin,
    /* 0x29 */ icon_night_walk_2_bin,
    /* 0x2A */ icon_rap_men_bin,
    /* 0x2B */ icon_quiz_show_bin,
    /* 0x2C */ icon_live_menu_bin,
    /* 0x2D */ icon_cafe_bin,
    /* 0x2E */ icon_toys_menu_bin,
    /* 0x2F */ icon_endless_menu_bin,
    /* 0x30 */ icon_lessons_menu_bin,
    /* 0x31 */ icon_staff_credit_bin,
    /* 0x32 */ icon_bouncy_road_2_bin,
    /* 0x33 */ icon_polyrhythm_2_bin,
    /* 0x34 */ icon_spaceball_2_bin,
    /* 0x35 */ icon_sneaky_spirits_2_bin
};


#include "grid.inc.c"


// [D_089cf90c] Level Icon Palettes
u8 level_icon_palette_table[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 0,
    /* 0x02 */ 2,
    /* 0x03 */ 0,
    /* 0x04 */ 0,
    /* 0x05 */ 0,
    /* 0x06 */ 0,
    /* 0x07 */ 0,
    /* 0x08 */ 0,
    /* 0x09 */ 0,
    /* 0x0A */ 0,
    /* 0x0B */ 0,
    /* 0x0C */ 0,
    /* 0x0D */ 0,
    /* 0x0E */ 0,
    /* 0x0F */ 0,
    /* 0x10 */ 1,
    /* 0x11 */ 1,
    /* 0x12 */ 0,
    /* 0x13 */ 2,
    /* 0x14 */ 0,
    /* 0x15 */ 0,
    /* 0x16 */ 2,
    /* 0x17 */ 0,
    /* 0x18 */ 1,
    /* 0x19 */ 0,
    /* 0x1A */ 0,
    /* 0x1B */ 2,
    /* 0x1C */ 0,
    /* 0x1D */ 0,
    /* 0x1E */ 0,
    /* 0x1F */ 0,
    /* 0x20 */ 1,
    /* 0x21 */ 2,
    /* 0x22 */ 2,
    /* 0x23 */ 1,
    /* 0x24 */ 0,
    /* 0x25 */ 2,
    /* 0x26 */ 0,
    /* 0x27 */ 2,
    /* 0x28 */ 0,
    /* 0x29 */ 0,
    /* 0x2A */ 0,
    /* 0x2B */ 1,
    /* 0x2C */ 0,
    /* 0x2D */ 0,
    /* 0x2E */ 0,
    /* 0x2F */ 0,
    /* 0x30 */ 0,
    /* 0x31 */ 0,
    /* 0x32 */ 3,
    /* 0x33 */ 0,
    /* 0x34 */ 0,
    /* 0x35 */ 4
};
