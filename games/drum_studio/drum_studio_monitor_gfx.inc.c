#include "graphics/studio/studio_graphics.h"

#define INLINE_BG_GFX_TABLE(tiles, bgMap2, bgMap3) (struct GraphicsTable[]) {   \
        /* BG Tileset */ {                                                      \
            /* Src.  */ tiles,                                                  \
            /* Dest. */ BG_TILESET_BASE(0x8000),                                \
            /* Size  */ COMPRESSED_GFX_SOURCE                                   \
        },                                                                      \
        /* BG Map */ {                                                          \
            /* Src.  */ bgMap2,                                                 \
            /* Dest. */ BG_MAP_BASE(0xF000),                                    \
            /* Size  */ COMPRESSED_GFX_SOURCE                                   \
        },                                                                      \
        /* BG Map */ {                                                          \
            /* Src.  */ bgMap3,                                                 \
            /* Dest. */ BG_MAP_BASE(0xF800),                                    \
            /* Size  */ COMPRESSED_GFX_SOURCE                                   \
        },                                                                      \
        END_OF_GRAPHICS_TABLE                                                   \
    }

#define BG_GFX_TABLE_LINES          INLINE_BG_GFX_TABLE(&drum_studio_lines_bg_tiles,        &drum_studio_lines_bg_map_1,        &drum_studio_lines_bg_map_2)
#define BG_GFX_TABLE_STARS          INLINE_BG_GFX_TABLE(&drum_studio_stars_bg_tiles,        &drum_studio_stars_bg_map_1,        &drum_studio_stars_bg_map_2)
#define BG_GFX_TABLE_CLOUDS         INLINE_BG_GFX_TABLE(&drum_studio_clouds_bg_tiles,       &drum_studio_clouds_bg_map_1,       &drum_studio_clouds_bg_map_2)
#define BG_GFX_TABLE_FLOWERS        INLINE_BG_GFX_TABLE(&drum_studio_flowers_bg_tiles,      &drum_studio_flowers_bg_map_1,      &drum_studio_flowers_bg_map_2)
#define BG_GFX_TABLE_STATIONERY     INLINE_BG_GFX_TABLE(&drum_studio_stationery_bg_tiles,   &drum_studio_stationery_bg_map_1,   &drum_studio_stationery_bg_map_2)
#define BG_GFX_TABLE_SPARKLES       INLINE_BG_GFX_TABLE(&drum_studio_sparkles_bg_tiles,     &drum_studio_sparkles_bg_map_1,     &drum_studio_sparkles_bg_map_2)
#define BG_GFX_TABLE_FRUIT          INLINE_BG_GFX_TABLE(&drum_studio_fruit_bg_tiles,        &drum_studio_fruit_bg_map_1,        &drum_studio_fruit_bg_map_2)
#define BG_GFX_TABLE_FISH           INLINE_BG_GFX_TABLE(&drum_studio_fish_bg_tiles,         &drum_studio_fish_bg_map_1,         &drum_studio_fish_bg_map_2)
#define BG_GFX_TABLE_JAPAN          INLINE_BG_GFX_TABLE(&drum_studio_japan_bg_tiles,        &drum_studio_japan_bg_map_1,        &drum_studio_japan_bg_map_2)
#define BG_GFX_TABLE_BEACH          INLINE_BG_GFX_TABLE(&drum_studio_beach_bg_tiles,        &drum_studio_beach_bg_map_1,        &drum_studio_beach_bg_map_2)
#define BG_GFX_TABLE_HEARTS         INLINE_BG_GFX_TABLE(&drum_studio_hearts_bg_tiles,       &drum_studio_hearts_bg_map_1,       &drum_studio_hearts_bg_map_2)
#define BG_GFX_TABLE_CIRCLES        INLINE_BG_GFX_TABLE(&drum_studio_circles_bg_tiles,      &drum_studio_circles_bg_map_1,      &drum_studio_circles_bg_map_2)
#define BG_GFX_TABLE_CITY           INLINE_BG_GFX_TABLE(&drum_studio_city_bg_tiles,         &drum_studio_city_bg_map_1,         &drum_studio_city_bg_map_2)
#define BG_GFX_TABLE_CHECKERBOARD   INLINE_BG_GFX_TABLE(&drum_studio_checkerboard_bg_tiles, &drum_studio_checkerboard_bg_map_1, &drum_studio_checkerboard_bg_map_2)
#define BG_GFX_TABLE_SQUARES        INLINE_BG_GFX_TABLE(&drum_studio_squares_bg_tiles,      &drum_studio_squares_bg_map_1,      &drum_studio_squares_bg_map_2)


// [D_089e17a0] Scrolling Background Data
struct DrumStudioMonitorData drum_studio_bg_table[] = {
    /* SILENCE */ {
        /* Palette   */ studio_bg_monitor_00_pal,
        /* GFX Table */ BG_GFX_TABLE_SQUARES,
        /* BG2 Vel.  */ 0x00, 0x00,
        /* BG3 Vel.  */ 0x00, 0x00
    },
    /* KARATE_MAN */ {
        /* Palette   */ studio_bg_monitor_06_pal,
        /* GFX Table */ BG_GFX_TABLE_CHECKERBOARD,
        /* BG2 Vel.  */ 0x80, 0x00,
        /* BG3 Vel.  */ 0x00, 0x54
    },
    /* CLAPPY_TRIO */ {
        /* Palette   */ studio_bg_monitor_03_pal,
        /* GFX Table */ BG_GFX_TABLE_CITY,
        /* BG2 Vel.  */ -0x80, 0x00,
        /* BG3 Vel.  */ -0x40, 0x00
    },
    /* TAP_TRIAL */ {
        /* Palette   */ studio_bg_monitor_09_pal,
        /* GFX Table */ BG_GFX_TABLE_CIRCLES,
        /* BG2 Vel.  */ -0x200, -0x800,
        /* BG3 Vel.  */ -0x100, -0x400
    },
    /* SPACE_DANCE */ {
        /* Palette   */ studio_bg_monitor_00_pal,
        /* GFX Table */ BG_GFX_TABLE_SQUARES,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* HONEY_SWEET_ANGEL */ {
        /* Palette   */ studio_bg_monitor_15_pal,
        /* GFX Table */ BG_GFX_TABLE_HEARTS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* WISH */ {
        /* Palette   */ studio_bg_monitor_40_pal,
        /* GFX Table */ BG_GFX_TABLE_BEACH,
        /* BG2 Vel.  */ 0x00, 0x00,
        /* BG3 Vel.  */ 0x20, 0x00
    },
    /* NIGHT_WALK */ {
        /* Palette   */ studio_bg_monitor_16_pal,
        /* GFX Table */ BG_GFX_TABLE_HEARTS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* BON_ODORI */ {
        /* Palette   */ studio_bg_monitor_21_pal,
        /* GFX Table */ BG_GFX_TABLE_JAPAN,
        /* BG2 Vel.  */ 0x100, 0x00,
        /* BG3 Vel.  */ 0x80,  0x00
    },
    /* BON_DANCE */ {
        /* Palette   */ studio_bg_monitor_23_pal,
        /* GFX Table */ BG_GFX_TABLE_JAPAN,
        /* BG2 Vel.  */ 0x100, 0x00,
        /* BG3 Vel.  */ 0x80,  0x00
    },
    /* COSMIC_DANCE */ {
        /* Palette   */ studio_bg_monitor_29_pal,
        /* GFX Table */ BG_GFX_TABLE_FISH,
        /* BG2 Vel.  */ 0x100, 0x40,
        /* BG3 Vel.  */ 0x80,  0x20
    },
    /* RHYTHM_TWEEZERS */ {
        /* Palette   */ studio_bg_monitor_35_pal,
        /* GFX Table */ BG_GFX_TABLE_FRUIT,
        /* BG2 Vel.  */ 0x00, -0x100,
        /* BG3 Vel.  */ 0x00, -0x80
    },
    /* SNAPPY_TRIO */ {
        /* Palette   */ studio_bg_monitor_19_pal,
        /* GFX Table */ BG_GFX_TABLE_SPARKLES,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* TAP_TRIAL_2 */ {
        /* Palette   */ studio_bg_monitor_08_pal,
        /* GFX Table */ BG_GFX_TABLE_CHECKERBOARD,
        /* BG2 Vel.  */ 0x80, 0x00,
        /* BG3 Vel.  */ 0x00, 0x54
    },
    /* WIZARDS_WALTZ */ {
        /* Palette   */ studio_bg_monitor_10_pal,
        /* GFX Table */ BG_GFX_TABLE_CIRCLES,
        /* BG2 Vel.  */ 0x00, 0x80,
        /* BG3 Vel.  */ 0x00, 0x40
    },
    /* MARCHING_ORDERS */ {
        /* Palette   */ studio_bg_monitor_33_pal,
        /* GFX Table */ BG_GFX_TABLE_FRUIT,
        /* BG2 Vel.  */ 0x00, -0x100,
        /* BG3 Vel.  */ 0x00, -0x80
    },
    /* SPACEBALL */ {
        /* Palette   */ studio_bg_monitor_38_pal,
        /* GFX Table */ BG_GFX_TABLE_STATIONERY,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x100, 0x100
    },
    /* SNEAKY_SPIRITS */ {
        /* Palette   */ studio_bg_monitor_04_pal,
        /* GFX Table */ BG_GFX_TABLE_CITY,
        /* BG2 Vel.  */ -0x80, 0x00,
        /* BG3 Vel.  */ -0x40, 0x00
    },
    /* SAMURAI_SLICE */ {
        /* Palette   */ studio_bg_monitor_07_pal,
        /* GFX Table */ BG_GFX_TABLE_CHECKERBOARD,
        /* BG2 Vel.  */ 0x80, 0x00,
        /* BG3 Vel.  */ 0x00, 0x54
    },
    /* RAT_RACE */ {
        /* Palette   */ studio_bg_monitor_28_pal,
        /* GFX Table */ BG_GFX_TABLE_FISH,
        /* BG2 Vel.  */ 0x100, 0x40,
        /* BG3 Vel.  */ 0x80,  0x20
    },
    /* SICK_BEATS */ {
        /* Palette   */ studio_bg_monitor_37_pal,
        /* GFX Table */ BG_GFX_TABLE_STATIONERY,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x100,  0x100
    },
    /* SHOWTIME */ {
        /* Palette   */ studio_bg_monitor_32_pal,
        /* GFX Table */ BG_GFX_TABLE_FLOWERS,
        /* BG2 Vel.  */ -0x100, 0x100,
        /* BG3 Vel.  */  0x80, -0x80
    },
    /* BUNNY_HOP */ {
        /* Palette   */ studio_bg_monitor_12_pal,
        /* GFX Table */ BG_GFX_TABLE_CLOUDS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* TRAM_PAULINE */ {
        /* Palette   */ studio_bg_monitor_05_pal,
        /* GFX Table */ BG_GFX_TABLE_CITY,
        /* BG2 Vel.  */ -0x80, 0x00,
        /* BG3 Vel.  */ -0x40, 0x00
    },
    /* QUIZ_SHOW */ {
        /* Palette   */ studio_bg_monitor_26_pal,
        /* GFX Table */ BG_GFX_TABLE_STARS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* POWER_CALLIGRAPHY */ {
        /* Palette   */ studio_bg_monitor_22_pal,
        /* GFX Table */ BG_GFX_TABLE_JAPAN,
        /* BG2 Vel.  */ 0x100, 0x00,
        /* BG3 Vel.  */ 0x80,  0x00
    },
    /* POLYRHYTHM */ {
        /* Palette   */ studio_bg_monitor_24_pal,
        /* GFX Table */ BG_GFX_TABLE_STARS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* BOUNCY_ROAD */ {
        /* Palette   */ studio_bg_monitor_17_pal,
        /* GFX Table */ BG_GFX_TABLE_HEARTS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* TOSS_BOYS */ {
        /* Palette   */ studio_bg_monitor_18_pal,
        /* GFX Table */ BG_GFX_TABLE_SPARKLES,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* FIREWORKS */ {
        /* Palette   */ studio_bg_monitor_42_pal,
        /* GFX Table */ BG_GFX_TABLE_LINES,
        /* BG2 Vel.  */ -0x40, 0x00,
        /* BG3 Vel.  */ -0x26, 0x00
    },
    /* REMIX7 */ {
        /* Palette   */ studio_bg_monitor_20_pal,
        /* GFX Table */ BG_GFX_TABLE_SPARKLES,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* REMIX8 */ {
        /* Palette   */ studio_bg_monitor_30_pal,
        /* GFX Table */ BG_GFX_TABLE_FLOWERS,
        /* BG2 Vel.  */ -0x100, 0x100,
        /* BG3 Vel.  */  0x80, -0x80
    },
    /* REMIX6 */ {
        /* Palette   */ studio_bg_monitor_27_pal,
        /* GFX Table */ BG_GFX_TABLE_FISH,
        /* BG2 Vel.  */ 0x100, 0x40,
        /* BG3 Vel.  */ 0x80,  0x20
    },
    /* TITLE */ {
        /* Palette   */ studio_bg_monitor_25_pal,
        /* GFX Table */ BG_GFX_TABLE_STARS,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x80,  -0x80
    },
    /* MAIN_MENU */ {
        /* Palette   */ studio_bg_monitor_36_pal,
        /* GFX Table */ BG_GFX_TABLE_STATIONERY,
        /* BG2 Vel.  */ 0x100, -0x100,
        /* BG3 Vel.  */ 0x100,  0x100
    },
    /* GAME_SELECT_1 */ {
        /* Palette   */ studio_bg_monitor_31_pal,
        /* GFX Table */ BG_GFX_TABLE_FLOWERS,
        /* BG2 Vel.  */ -0x100, 0x100,
        /* BG3 Vel.  */  0x80, -0x80
    },
    /* DATA_ROOM */ {
        /* Palette   */ studio_bg_monitor_39_pal,
        /* GFX Table */ BG_GFX_TABLE_BEACH,
        /* BG2 Vel.  */ 0x00, 0x00,
        /* BG3 Vel.  */ 0x20, 0x00
    },
    /* OPENING */ {
        /* Palette   */ studio_bg_monitor_41_pal,
        /* GFX Table */ BG_GFX_TABLE_BEACH,
        /* BG2 Vel.  */ 0x00, 0x00,
        /* BG3 Vel.  */ 0x20, 0x00
    },
    /* STAFF_CREDIT */ {
        /* Palette   */ studio_bg_monitor_14_pal,
        /* GFX Table */ BG_GFX_TABLE_CLOUDS,
        /* BG2 Vel.  */ 0x80, 0x80,
        /* BG3 Vel.  */ 0x40, 0x40
    },
    /* GAME_SELECT_2 */ {
        /* Palette   */ studio_bg_monitor_01_pal,
        /* GFX Table */ BG_GFX_TABLE_SQUARES,
        /* BG2 Vel.  */ -0x100, -0x100,
        /* BG3 Vel.  */ -0x80,  -0x80
    },
    /* CAFE */ {
        /* Palette   */ studio_bg_monitor_13_pal,
        /* GFX Table */ BG_GFX_TABLE_CLOUDS,
        /* BG2 Vel.  */ 0x80, -0x80,
        /* BG3 Vel.  */ 0x40, -0x40
    },
    /* TRY_AGAIN */ {
        /* Palette   */ studio_bg_monitor_02_pal,
        /* GFX Table */ BG_GFX_TABLE_SQUARES,
        /* BG2 Vel.  */ 0x00, 0x80,
        /* BG3 Vel.  */ 0x00, 0x40
    },
    /* OK */ {
        /* Palette   */ studio_bg_monitor_11_pal,
        /* GFX Table */ BG_GFX_TABLE_CIRCLES,
        /* BG2 Vel.  */ -0x100, -0x200,
        /* BG3 Vel.  */ -0x80,  -0x100
    },
    /* SUPERB */ {
        /* Palette   */ studio_bg_monitor_34_pal,
        /* GFX Table */ BG_GFX_TABLE_FRUIT,
        /* BG2 Vel.  */ 0x00, -0x100,
        /* BG3 Vel.  */ 0x00, -0x80
    },
    /* PERFECT */ {
        /* Palette   */ studio_bg_monitor_43_pal,
        /* GFX Table */ BG_GFX_TABLE_LINES,
        /* BG2 Vel.  */ -0x40, 0x00,
        /* BG3 Vel.  */ -0x26, 0x00
    }
};
