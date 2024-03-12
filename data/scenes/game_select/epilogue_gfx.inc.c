#define INLINE_GFX_TABLE(tiles, map, palette) (struct GraphicsTable[]) {    \
        /* BG Tileset */ {                                                  \
            /* Src.  */ tiles,                                              \
            /* Dest. */ BG_TILESET_BASE(0),                                 \
            /* Size  */ COMPRESSED_GFX_SOURCE                               \
        },                                                                  \
        /* BG Map */ {                                                      \
            /* Src.  */ map,                                                \
            /* Dest. */ BG_MAP_BASE(0xE800),                                \
            /* Size  */ COMPRESSED_GFX_SOURCE                               \
        },                                                                  \
        /* BG Palette */ {                                                  \
            /* Src.  */ palette,                                            \
            /* Dest. */ BG_PALETTE_BUFFER(0),                               \
            /* Size  */ 0x140                                               \
        },                                                                  \
        END_OF_GRAPHICS_TABLE                                               \
    }


// [D_089ce0b0] Karate Man
const struct GraphicsTable *epilogue_karate_man_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c8ede0, &D_08c8ef24, epilogue_karate_man_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c8ede0, &D_08c8f094, epilogue_karate_man_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c8ede0, &D_08c8f214, epilogue_karate_man_bg_pal)
};

// [D_089ce0bc] Karate Man 2
const struct GraphicsTable *epilogue_karate_man_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c8ede0, &D_08c8ef24, epilogue_karate_man_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c8ede0, &D_08c8f094, epilogue_karate_man_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c8ede0, &D_08c8f214, epilogue_karate_man_bg_pal)
};

// [D_089ce0c8] The Clappy Trio
const struct GraphicsTable *epilogue_clappy_trio_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c98078, &D_08c98188, epilogue_clappy_trio_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c98078, &D_08c982d0, epilogue_clappy_trio_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c98078, &D_08c98448, epilogue_clappy_trio_bg_pal)
};

// [D_089ce0d4] The Snappy Trio
const struct GraphicsTable *epilogue_snappy_trio_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c992d8, &D_08c99420, epilogue_snappy_trio_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c992d8, &D_08c99580, epilogue_snappy_trio_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c992d8, &D_08c996f4, epilogue_snappy_trio_bg_pal)
};

// [D_089ce0e0] Polyrhythm
const struct GraphicsTable *epilogue_polyrhythm_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9f1e0, &D_08c9f2a0, epilogue_polyrhythm_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9f1e0, &D_08c9f394, epilogue_polyrhythm_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9f1e0, &D_08c9f4e4, epilogue_polyrhythm_bg_pal)
};

// [D_089ce0ec] Polyrhythm 2
const struct GraphicsTable *epilogue_polyrhythm_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9f1e0, &D_08c9f2a0, epilogue_polyrhythm_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9f1e0, &D_08c9f394, epilogue_polyrhythm_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9f1e0, &D_08c9f4e4, epilogue_polyrhythm_bg_pal)
};

// [D_089ce0f8] Night Walk
const struct GraphicsTable *epilogue_night_walk_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c91cd0, &D_08c91e20, epilogue_night_walk_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c91cd0, &D_08c91f04, epilogue_night_walk_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c91cd0, &D_08c92084, epilogue_night_walk_bg_pal)
};

// [D_089ce104] Night Walk 2
const struct GraphicsTable *epilogue_night_walk_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c91cd0, &D_08c91e20, epilogue_night_walk_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c91cd0, &D_08c91f04, epilogue_night_walk_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c91cd0, &D_08c92084, epilogue_night_walk_bg_pal)
};

// [D_089ce110] Rhythm Tweezers
const struct GraphicsTable *epilogue_rhythm_tweezers_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9582c, &D_08c959ac, epilogue_rhythm_tweezers_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9582c, &D_08c95b24, epilogue_rhythm_tweezers_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9582c, &D_08c95c8c, epilogue_rhythm_tweezers_bg_pal)
};

// [D_089ce11c] Rhythm Tweezers 2
const struct GraphicsTable *epilogue_rhythm_tweezers_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9582c, &D_08c959ac, epilogue_rhythm_tweezers_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9582c, &D_08c95b24, epilogue_rhythm_tweezers_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9582c, &D_08c95c8c, epilogue_rhythm_tweezers_bg_pal)
};

// [D_089ce128] Sick Beats
const struct GraphicsTable *epilogue_sick_beats_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbcbd8, &D_08cbcd28, epilogue_sick_beats_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbcbd8, &D_08cbce60, epilogue_sick_beats_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbcbd8, &D_08cbcf98, epilogue_sick_beats_bg_pal)
};

// [D_089ce134] Bouncy Road
const struct GraphicsTable *epilogue_bouncy_road_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c93cfc, &D_08c93e18, epilogue_bouncy_road_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c93cfc, &D_08c93f48, epilogue_bouncy_road_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c93cfc, &D_08c94064, epilogue_bouncy_road_bg_pal)
};

// [D_089ce140] Bouncy Road 2
const struct GraphicsTable *epilogue_bouncy_road_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c93cfc, &D_08c93e18, epilogue_bouncy_road_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c93cfc, &D_08c93f48, epilogue_bouncy_road_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c93cfc, &D_08c94064, epilogue_bouncy_road_bg_pal)
};

// [D_089ce14c] Ninja Bodyguard
const struct GraphicsTable *epilogue_ninja_bodyguard_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb28a4, &D_08cb2a08, epilogue_ninja_bodyguard_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb28a4, &D_08cb2b54, epilogue_ninja_bodyguard_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb28a4, &D_08cb2ccc, epilogue_ninja_bodyguard_bg_pal)
};

// [D_089ce158] Ninja Reincarnate
const struct GraphicsTable *epilogue_ninja_reincarnate_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb38ac, &D_08cb39d0, epilogue_ninja_reincarnate_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb38ac, &D_08cb3b10, epilogue_ninja_reincarnate_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb38ac, &D_08cb3c48, epilogue_ninja_reincarnate_bg_pal)
};

// [D_089ce164] Sneaky Spirits
const struct GraphicsTable *epilogue_sneaky_spirits_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c89a70, &D_08c89ba4, epilogue_sneaky_spirits_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c89a70, &D_08c89cb0, epilogue_sneaky_spirits_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c89a70, &D_08c89dd4, epilogue_sneaky_spirits_bg_pal)
};

// [D_089ce170] Sneaky Spirits 2
const struct GraphicsTable *epilogue_sneaky_spirits_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c89a70, &D_08c89ba4, epilogue_sneaky_spirits_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c89a70, &D_08c89cb0, epilogue_sneaky_spirits_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c89a70, &D_08c89dd4, epilogue_sneaky_spirits_bg_pal)
};

// [D_089ce17c] Samurai Slice
const struct GraphicsTable *epilogue_samurai_slice_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9a4d4, &D_08c9a610, epilogue_samurai_slice_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9a4d4, &D_08c9a71c, epilogue_samurai_slice_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9a4d4, &D_08c9a890, epilogue_samurai_slice_bg_pal)
};

// [D_089ce188] Spaceball
const struct GraphicsTable *epilogue_spaceball_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c8ac68, &D_08c8ae7c, epilogue_spaceball_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c8ac68, &D_08c8afd0, epilogue_spaceball_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c8ac68, &D_08c8b14c, epilogue_spaceball_bg_pal)
};

// [D_089ce194] Spaceball 2
const struct GraphicsTable *epilogue_spaceball_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c8ac68, &D_08c8ae7c, epilogue_spaceball_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c8ac68, &D_08c8afd0, epilogue_spaceball_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c8ac68, &D_08c8b14c, epilogue_spaceball_bg_pal)
};

// [D_089ce1a0] Tap Trial
const struct GraphicsTable *epilogue_tap_trial_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb5fdc, &D_08cb60f0, epilogue_tap_trial_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb5fdc, &D_08cb6244, epilogue_tap_trial_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb5fdc, &D_08cb6394, epilogue_tap_trial_bg_pal)
};

// [D_089ce1ac] Tap Trial 2
const struct GraphicsTable *epilogue_tap_trial_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb7644, &D_08cb77bc, epilogue_tap_trial_2_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb7644, &D_08cb793c, epilogue_tap_trial_2_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb7644, &D_08cb7ab8, epilogue_tap_trial_2_bg_pal)
};

// [D_089ce1b8] Marching Orders
const struct GraphicsTable *epilogue_marching_orders_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9d2e8, &D_08c9d450, epilogue_marching_orders_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9d2e8, &D_08c9d5c0, epilogue_marching_orders_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9d2e8, &D_08c9d740, epilogue_marching_orders_bg_pal)
};

// [D_089ce1c4] Marching Orders 2
const struct GraphicsTable *epilogue_marching_orders_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9e338, &D_08c9e484, epilogue_marching_orders_2_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9e338, &D_08c9e5c4, epilogue_marching_orders_2_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9e338, &D_08c9e744, epilogue_marching_orders_2_bg_pal)
};

// [D_089ce1d0] Wizard's Waltz
const struct GraphicsTable *epilogue_wizards_waltz_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbdd28, &D_08cbde58, epilogue_wizards_waltz_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbdd28, &D_08cbdf84, epilogue_wizards_waltz_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbdd28, &D_08cbe0f8, epilogue_wizards_waltz_bg_pal)
};

// [D_089ce1dc] Bunny Hop
const struct GraphicsTable *epilogue_bunny_hop_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca23c0, &D_08ca25b4, epilogue_bunny_hop_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca23c0, &D_08ca27d0, epilogue_bunny_hop_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca23c0, &D_08ca29f0, epilogue_bunny_hop_bg_pal)
};

// [D_089ce1e8] Fireworks
const struct GraphicsTable *epilogue_fireworks_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c96e80, &D_08c96ff4, epilogue_fireworks_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c96e80, &D_08c9715c, epilogue_fireworks_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c96e80, &D_08c972dc, epilogue_fireworks_bg_pal)
};

// [D_089ce1f4] Power Calligraphy
const struct GraphicsTable *epilogue_power_power_calligraphy_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9b9fc, &D_08c9bb60, epilogue_power_calligraphy_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9b9fc, &D_08c9bcd0, epilogue_power_calligraphy_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9b9fc, &D_08c9be48, epilogue_power_calligraphy_bg_pal)
};

// [D_089ce200] Power Calligraphy 2
const struct GraphicsTable *epilogue_power_calligraphy_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9b9fc, &D_08c9bb60, epilogue_power_calligraphy_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9b9fc, &D_08c9bcd0, epilogue_power_calligraphy_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9b9fc, &D_08c9be48, epilogue_power_calligraphy_bg_pal)
};

// [D_089ce20c] Toss Boys
const struct GraphicsTable *epilogue_toss_boys_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb8de4, &D_08cb8f64, epilogue_toss_boys_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb8de4, &D_08cb90e4, epilogue_toss_boys_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb8de4, &D_08cb9264, epilogue_toss_boys_bg_pal)
};

// [D_089ce218] Toss Boys 2
const struct GraphicsTable *epilogue_toss_boys_2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb9fd8, &D_08cba154, epilogue_toss_boys_2_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb9fd8, &D_08cba28c, epilogue_toss_boys_2_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb9fd8, &D_08cba3ec, epilogue_toss_boys_2_bg_pal)
};

// [D_089ce224] Rat Race
const struct GraphicsTable *epilogue_rat_race_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca5684, &D_08ca5784, epilogue_rat_race_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca5684, &D_08ca5884, epilogue_rat_race_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca5684, &D_08ca59d0, epilogue_rat_race_bg_pal)
};

// [D_089ce230] Tram & Pauline
const struct GraphicsTable *epilogue_tram_pauline_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbb530, &D_08cbb67c, epilogue_tram_pauline_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbb530, &D_08cbb7bc, epilogue_tram_pauline_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbb530, &D_08cbb938, epilogue_tram_pauline_bg_pal)
};

// [D_089ce23c] Showtime
const struct GraphicsTable *epilogue_showtime_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c92fc0, &D_08c930c4, epilogue_showtime_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c92fc0, &D_08c931c0, epilogue_showtime_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c92fc0, &D_08c93340, epilogue_showtime_bg_pal)
};

// [D_089ce248] Space Dance
const struct GraphicsTable *epilogue_space_dance_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb4fbc, &D_08cb513c, epilogue_space_dance_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb4fbc, &D_08cb52ac, epilogue_space_dance_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb4fbc, &D_08cb542c, epilogue_space_dance_bg_pal)
};

// [D_089ce254] Cosmic Dance
const struct GraphicsTable *epilogue_cosmic_dance_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c904a0, &D_08c90620, epilogue_cosmic_dance_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c904a0, &D_08c907a0, epilogue_cosmic_dance_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c904a0, &D_08c90910, epilogue_cosmic_dance_bg_pal)
};

// [D_089ce260] Rap Men
const struct GraphicsTable *epilogue_rap_men_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca37cc, &D_08ca38fc, epilogue_rap_men_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca37cc, &D_08ca3a08, epilogue_rap_men_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca37cc, &D_08ca3b88, epilogue_rap_men_bg_pal)
};

// [D_089ce26c] Rap Women
const struct GraphicsTable *epilogue_rap_women_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca48dc, &D_08ca4a00, epilogue_rap_women_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca48dc, &D_08ca4b08, epilogue_rap_women_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca48dc, &D_08ca4c84, epilogue_rap_women_bg_pal)
};

// [D_089ce278] Quiz Show
const struct GraphicsTable *epilogue_quiz_show_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca0ee0, &D_08ca103c, epilogue_quiz_show_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca0ee0, &D_08ca11a8, epilogue_quiz_show_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca0ee0, &D_08ca1324, epilogue_quiz_show_bg_pal)
};

// [D_089ce284] The Bon Odori
const struct GraphicsTable *epilogue_bon_odori_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c8d650, &D_08c8d7d0, epilogue_bon_odori_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c8d650, &D_08c8d8a8, epilogue_bon_odori_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c8d650, &D_08c8da08, epilogue_bon_odori_bg_pal)
};

// [D_089ce290] Bon Dance
const struct GraphicsTable *epilogue_bon_dance_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c8c564, &D_08c8c694, epilogue_bon_dance_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c8c564, &D_08c8c7e4, epilogue_bon_dance_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c8c564, &D_08c8c95c, epilogue_bon_dance_bg_pal)
};

// [D_089ce29c] Remix 1
const struct GraphicsTable *epilogue_remix1_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca66dc, &D_08ca676c, epilogue_remix1_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca66dc, &D_08ca6868, epilogue_remix1_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca66dc, &D_08ca69c8, epilogue_remix1_bg_pal)
};

// [D_089ce2a8] Remix 2
const struct GraphicsTable *epilogue_remix2_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca7cbc, &D_08ca7ecc, epilogue_remix2_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca7cbc, &D_08ca80c0, epilogue_remix2_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca7cbc, &D_08ca82dc, epilogue_remix2_bg_pal)
};

// [D_089ce2b4] Remix 3
const struct GraphicsTable *epilogue_remix3_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08ca94f0, &D_08ca96e4, epilogue_remix3_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08ca94f0, &D_08ca98f8, epilogue_remix3_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08ca94f0, &D_08ca9afc, epilogue_remix3_bg_pal)
};

// [D_089ce2c0] Remix 4
const struct GraphicsTable *epilogue_remix4_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08caaf8c, &D_08cab1a8, epilogue_remix4_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08caaf8c, &D_08cab3ac, epilogue_remix4_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08caaf8c, &D_08cab5bc, epilogue_remix4_bg_pal)
};

// [D_089ce2cc] Remix 5
const struct GraphicsTable *epilogue_remix5_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cac550, &D_08cac6ac, epilogue_remix5_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cac550, &D_08cac7e0, epilogue_remix5_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cac550, &D_08cac908, epilogue_remix5_bg_pal)
};

// [D_089ce2d8] Remix 6
const struct GraphicsTable *epilogue_remix6_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cad9f4, &D_08cadbe0, epilogue_remix6_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cad9f4, &D_08caddf8, epilogue_remix6_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cad9f4, &D_08cadff0, epilogue_remix6_bg_pal)
};

// [D_089ce2e4] Remix 7
const struct GraphicsTable *epilogue_remix7_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08caf878, &D_08caf9f4, epilogue_remix7_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08caf878, &D_08cafb68, epilogue_remix7_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08caf878, &D_08cafce8, epilogue_remix7_bg_pal)
};

// [D_089ce2f0] Remix 8
const struct GraphicsTable *epilogue_remix8_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cb14f8, &D_08cb16f0, epilogue_remix8_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cb14f8, &D_08cb18ec, epilogue_remix8_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cb14f8, &D_08cb1b08, epilogue_remix8_bg_pal)
};

// [D_089ce2fc] Cafe
const struct GraphicsTable *epilogue_cafe_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe54c, epilogue_placeholder_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe634, epilogue_placeholder_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe730, epilogue_placeholder_bg_pal)
};

// [D_089ce308] Rhythm Toys Menu
const struct GraphicsTable *epilogue_toys_menu_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe54c, epilogue_placeholder_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe634, epilogue_placeholder_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe730, epilogue_placeholder_bg_pal)
};

// [D_089ce314] Endless Games Menu
const struct GraphicsTable *epilogue_endless_menu_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe54c, epilogue_placeholder_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe634, epilogue_placeholder_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe730, epilogue_placeholder_bg_pal)
};

// [D_089ce320] Drum Lessons Menu
const struct GraphicsTable *epilogue_lessons_menu_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe54c, epilogue_placeholder_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe634, epilogue_placeholder_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe730, epilogue_placeholder_bg_pal)
};

// [D_089ce32c] Staff Credit
const struct GraphicsTable *epilogue_staff_credit_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe54c, epilogue_placeholder_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe634, epilogue_placeholder_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08cbe458, &D_08cbe730, epilogue_placeholder_bg_pal)
};

// [D_089ce338] LIVE
const struct GraphicsTable *epilogue_drum_live_gfx_tables[] = {
    /* TRY AGAIN */ INLINE_GFX_TABLE(&D_08c9113c, &D_08c91208, epilogue_drum_live_bg_pal),
    /* JUST OK   */ INLINE_GFX_TABLE(&D_08c9113c, &D_08c912dc, epilogue_drum_live_bg_pal),
    /* SUPERB    */ INLINE_GFX_TABLE(&D_08c9113c, &D_08c913b4, epilogue_drum_live_bg_pal)
};
