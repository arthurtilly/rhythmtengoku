#include "global.h"
#include "debug_menu.h"


/* DEBUG MENU TABLE */


// [D_089ddbe8] Debug Menu Table
struct DebugMenuEntry debug_menu_entry_table[] = {
    /* Drum LIVE */ {
        /* Scene */ &scene_drum_live,
        /* Label */ "‚b‚‚‚ƒ‚…‚’‚”",
    },
    /* Sick Beats Endless */ {
        /* Scene */ &scene_sick_beats_endless,
        /* Label */ "‚r‚‰‚ƒ‚‹@‚a‚…‚‚”‚“@‚r‚‚…‚ƒ‚‰‚‚Œ",
    },
    /* Quiz Show Endless */ {
        /* Scene */ &scene_quiz_show_endless,
        /* Label */ "‚p‚•‚‰‚š@‚r‚ˆ‚‚—@‚r‚‚…‚ƒ‚‰‚‚Œ",
    },
    /* Mannequin Factory */ {
        /* Scene */ &scene_mannequin_factory,
        /* Label */ "‚l‚‚‚‚…‚‘‚•‚‰‚@‚e‚‚ƒ‚”‚‚’‚™",
    },
    /* Mr. Upbeat */ {
        /* Scene */ &scene_mr_upbeat,
        /* Label */ "‚l‚’D@‚t‚‚‚‚…‚‚”",  
    },
    /* Remix 8 */ {
        /* Scene */ &scene_remix_8,
        /* Label */ "‚q‚…‚‚‰‚˜@‚W",	
    },
    /* Remix 7 */ {
        /* Scene */ &scene_remix_7,
        /* Label */ "‚q‚…‚‚‰‚˜@‚V",	
    },
    /* Remix 6 */ {
        /* Scene */ &scene_remix_6,
        /* Label */ "‚q‚…‚‚‰‚˜@‚U",
    },
    /* Remix 5 */ {
        /* Scene */ &scene_remix_5,
        /* Label */ "‚q‚…‚‚‰‚˜@‚T",
    },
    /* Remix 4 */ {
        /* Scene */ &scene_remix_4,
        /* Label */ "‚q‚…‚‚‰‚˜@‚S",
    },
    /* Remix 3 */ {
        /* Scene */ &scene_remix_3,
        /* Label */ "‚q‚…‚‚‰‚˜@‚R",
    },
    /* Remix 2 */ {
        /* Scene */ &scene_remix_2,
        /* Label */ "‚q‚…‚‚‰‚˜@‚Q",
    },
    /* Remix 1 */ {
        /* Scene */ &scene_remix_1,
        /* Label */ "‚q‚…‚‚‰‚˜@‚P",
    },
    /* The Bon Odori */ {
        /* Scene */ &scene_bon_odori,
        /* Label */ "‚s‚ˆ‚…@‚a‚‚@‚n‚„‚‚’‚‰",
    },
    /* Bon Dance */ {
        /* Scene */ &scene_bon_dance,
        /* Label */ "‚s‚ˆ‚…@‚a‚‚@‚c‚‚‚ƒ‚…",
    },
<<<<<<< Updated upstream
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        #ifdef PARADISE
        /* Label */ "‚q|‚h‚p@i‚b‚‚†‚…@‚b‚‚•‚‚“‚…‚Œ‚Œ‚‰‚‚‡j",
        #else
        /* Label */ "‚q|‚h‚p@i‚b‚‚†‚…@‚b‚‚•‚‚“‚…‚Œ‚‰‚‚‡j",
        #endif
        /* Epil. */ FALSE
=======
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &scene_cat_machine,
        /* Label */ "‚b‚‚”@‚l‚‚ƒ‚ˆ‚‰‚‚…",
>>>>>>> Stashed changes
    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &scene_love_machine,
        /* Label */ "‚k‚‚–‚…@‚l‚‚ƒ‚ˆ‚‰‚‚…",
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &scene_rap_machine,
        /* Label */ "‚q‚‚@‚l‚‚ƒ‚ˆ‚‰‚‚…",
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &scene_drum_lesson_short_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Pj",
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &scene_drum_lesson_short_4,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Sj",
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &scene_drum_lesson_short_8,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Wj",
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &scene_drum_lesson_short_5,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Tj",
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &scene_drum_lesson_short_7,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Vj",
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &scene_drum_lesson_short_6,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Uj",
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &scene_drum_lesson_short_9,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Xj",
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &scene_drum_lesson_basic_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚h‚‚”‚’‚@‚Pj",
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &scene_drum_lesson_basic_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚h‚‚”‚’‚@‚Qj",
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &scene_drum_lesson_short_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Qj",
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &scene_drum_lesson_short_3,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Rj",
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &scene_drum_lesson_long_4,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Sj",
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &scene_drum_lesson_long_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Qj",
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &scene_drum_lesson_long_3,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Rj",
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &scene_drum_lesson_long_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Pj",
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &scene_drum_lesson_long_5,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Tj",
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &scene_drum_lesson_long_6,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Uj",
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚s‚…‚ƒ‚ˆ‚‚‰‚ƒ‚‚Œ@‚Pj",
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚s‚…‚ƒ‚ˆ‚‚‰‚ƒ‚‚Œ@‚Qj",
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver0,
        /* Label */ "‚r‚”‚•‚„‚‰‚@‚c‚’‚•‚‚“@i‚u‚…‚’D@‚Oj",
    },
    /* Rhythm Test (Click) */ {
        /* Scene */ &scene_rhythm_test_click,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚…‚“‚”@i‚b‚Œ‚‰‚ƒ‚‹j",
    },
    /* Rhythm Test (Cue) */ {
        /* Scene */ &scene_rhythm_test_cue,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚…‚“‚”@i‚b‚•‚…j",
    },
    /* Rhythm Test (Trick) */ {
        /* Scene */ &scene_rhythm_test_trick,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚…‚“‚”@i‚s‚’‚‰‚ƒ‚‹‚™j"
    },
    /* Rhythm Test (Total) */ {
        /* Scene */ &scene_rhythm_test_opening,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚…‚“‚”@i‚n‚‚…‚‚‰‚‚‡j"
    },
    /* Reading Material */ {
        /* Scene */ &scene_reading,
        /* Label */ "‚d‚‚‚‰‚Œ",
    },
<<<<<<< Updated upstream
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver0,
        /* Label */ "‚r‚”‚•‚„‚‰‚@‚c‚’‚•‚‚“@i‚u‚…‚’D@‚Oj",
        /* Epil. */ FALSE
    },
    /* Studio Drummer */ {
        /* Scene */ &scene_drum_studio_ver2,
        /* Label */ "‚r‚”‚•‚„‚‰‚@‚c‚’‚•‚‚“@i‚u‚…‚’D@‚Qj",
        /* Epil. */ FALSE
    },
 /* Drum LIVE */ {
        /* Scene */ &scene_drum_live,
        /* Label */ "‚b‚‚‚ƒ‚…‚’‚”",
        /* Epil. */ TRUE
    },
    /* Ending (from clearing Remix 6) */ {
        /* Scene */ &scene_staff_credit_remix_6,
        /* Label */ "‚d‚‚„‚‰‚‚‡@i‚f‚‚‚…@‚b‚Œ‚…‚‚’‚…‚„j",
        /* Epil. */ FALSE
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &scene_staff_credit,
        /* Label */ "‚d‚‚„‚‰‚‚‡@i‚d‚˜‚”‚’‚@‚u‚‰‚…‚—‚‰‚‚‡‚“j",
        /* Epil. */ FALSE
    },
    /* Lesson (Basic 1) */ {
        /* Scene */ &scene_drum_lesson_basic_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚h‚‚”‚’‚@‚Pj",
        /* Epil. */ FALSE
    },
    /* Lesson (Basic 2) */ {
        /* Scene */ &scene_drum_lesson_basic_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚h‚‚”‚’‚@‚Qj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 1) */ {
        /* Scene */ &scene_drum_lesson_short_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Pj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 2) */ {
        /* Scene */ &scene_drum_lesson_short_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Qj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 3) */ {
        /* Scene */ &scene_drum_lesson_short_3,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Rj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 4) */ {
        /* Scene */ &scene_drum_lesson_short_4,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Sj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 5) */ {
        /* Scene */ &scene_drum_lesson_short_5,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Tj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 6) */ {
        /* Scene */ &scene_drum_lesson_short_6,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Uj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 7) */ {
        /* Scene */ &scene_drum_lesson_short_7,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Vj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 8) */ {
        /* Scene */ &scene_drum_lesson_short_8,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Wj",
        /* Epil. */ FALSE
    },
    /* Lesson (Short 9) */ {
        /* Scene */ &scene_drum_lesson_short_9,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚a‚‚“‚‰‚ƒ@‚Xj",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 1) */ {
        /* Scene */ &scene_drum_lesson_long_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Pj",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 2) */ {
        /* Scene */ &scene_drum_lesson_long_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Qj",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 3) */ {
        /* Scene */ &scene_drum_lesson_long_3,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Rj",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 4) */ {
        /* Scene */ &scene_drum_lesson_long_4,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Sj",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 5) */ {
        /* Scene */ &scene_drum_lesson_long_5,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Tj",
        /* Epil. */ FALSE
    },
    /* Lesson (Long 6) */ {
        /* Scene */ &scene_drum_lesson_long_6,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚`‚„‚–‚‚‚ƒ‚…‚„@‚Uj",
        /* Epil. */ FALSE
    },
    /* Lesson (High-Tech 1) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_1,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚s‚…‚ƒ‚ˆ‚‚‰‚ƒ‚‚Œ@‚Pj",
        /* Epil. */ FALSE
    },
    /* Lesson (High-Tech 2) */ {
        /* Scene */ &scene_drum_lesson_hi_tech_2,
        /* Label */ "‚k‚…‚“‚“‚‚@i‚s‚…‚ƒ‚ˆ‚‚‰‚ƒ‚‚Œ@‚Qj",
        /* Epil. */ FALSE
    },
    /* Mr. Upbeat */ {
        /* Scene */ &scene_mr_upbeat,
        #ifdef PARADISE
        /* Label */ "‚l‚’@‚t‚‚‚‚…‚‚”",    
        #else
        /* Label */ "‚l‚’D@‚t‚‚‚‚…‚‚”",   
        #endif
        /* Epil. */ FALSE
    },
    /* Sick Beats Endless */ {
        /* Scene */ &scene_sick_beats_endless,
        /* Label */ "‚r‚‰‚ƒ‚‹@‚a‚…‚‚”‚“@‚r‚‚…‚ƒ‚‰‚‚Œ",
        /* Epil. */ FALSE
    },
    /* Quiz Show Endless */ {
        /* Scene */ &scene_quiz_show_endless,
        /* Label */ "‚p‚•‚‰‚š@‚r‚ˆ‚‚—@‚r‚‚…‚ƒ‚‰‚‚Œ",
        /* Epil. */ FALSE
    },
    /* Mannequin Factory */ {
        /* Scene */ &scene_mannequin_factory,
        /* Label */ "‚l‚‚‚‚…‚‘‚•‚‰‚@‚e‚‚ƒ‚”‚‚’‚™",
        /* Epil. */ FALSE
    },
    /* Rhythm Toys (Cat Machine) */ {
        /* Scene */ &scene_cat_machine,
        /* Label */ "‚b‚‚”@‚l‚‚ƒ‚ˆ‚‰‚‚…",
        /* Epil. */ FALSE
    },
    /* Mechanical Horse */ {
        /* Scene */ &scene_mechanical_horse,
        /* Label */ "‚g‚‚’‚“‚…@‚l‚‚ƒ‚ˆ‚‰‚‚…",
        /* Epil. */ FALSE

    },
    /* Rhythm Toys (Confession Machine) */ {
        /* Scene */ &scene_love_machine,
        /* Label */ "‚k‚‚–‚…@‚l‚‚ƒ‚ˆ‚‰‚‚…",
        /* Epil. */ FALSE
    },
    /* Rhythm Toys (Rap Machine) */ {
        /* Scene */ &scene_rap_machine,
        /* Label */ "‚q‚‚@‚l‚‚ƒ‚ˆ‚‰‚‚…",
        /* Epil. */ FALSE
    },
    /* Karate Man */ {
        /* Scene */ &scene_karate_man,
        /* Label */ "‚j‚‚’‚‚”‚…@‚l‚‚",
        /* Epil. */ TRUE
    },
    /* Karate Man 2 */ {
        /* Scene */ &scene_karate_man_2,
        /* Label */ "‚j‚‚’‚‚”‚…@‚l‚‚@‚Q",
        /* Epil. */ TRUE
    },
    /* Karate Man (Extra) */ {
        /* Scene */ &scene_karate_man_extra,
        /* Label */ "‚j‚‚’‚‚”‚…@‚l‚‚@i‚d‚˜‚”‚’‚j@‚v‚h‚o",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &scene_rhythm_tweezers,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚—‚…‚…‚š‚…‚’‚“",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &scene_rhythm_tweezers_2,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚—‚…‚…‚š‚…‚’‚“@‚Q",
        /* Epil. */ TRUE
    },
    /* Rhythm Tweezers (Extra) */ {
        /* Scene */ &scene_rhythm_tweezers_extra,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚—‚…‚…‚š‚…‚’‚“@i‚d‚˜‚”‚’‚j",
        /* Epil. */ TRUE
    },
    /* Marching Orders */ {
        /* Scene */ &scene_marching_orders,
        /* Label */ "‚l‚‚’‚ƒ‚ˆ‚‰‚‚‡@‚n‚’‚„‚…‚’‚“",
        /* Epil. */ TRUE
    },
    /* Marching Orders 2 */ {
        /* Scene */ &scene_marching_orders_2,
        /* Label */ "‚l‚‚’‚ƒ‚ˆ‚‰‚‚‡@‚n‚’‚„‚…‚’‚“@‚Q",
        /* Epil. */ TRUE
    },
    /* Marching Orders (Extra) */ {
        /* Scene */ &scene_marching_orders_extra,
        /* Label */ "‚l‚‚’‚ƒ‚ˆ‚‰‚‚‡@‚n‚’‚„‚…‚’‚“@i‚d‚˜‚”‚’‚j",
        /* Epil. */ TRUE
    },
    /* Spaceball */ {
        /* Scene */ &scene_spaceball,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ",
        /* Epil. */ TRUE
    },
    /* Spaceball 2 */ {
        /* Scene */ &scene_spaceball_2,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ@‚Q",
        /* Epil. */ TRUE

    },
    /* Spaceball (Extra) */ {
        /* Scene */ &scene_spaceball_extra,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ@i‚d‚˜‚”‚’‚j",
        /* Epil. */ TRUE
    },
    /* The Clappy Trio */ {
        /* Scene */ &scene_clappy_trio,
        /* Label */ "‚s‚ˆ‚…@‚b‚Œ‚‚‚‚™@‚s‚’‚‰‚",
        /* Epil. */ TRUE
    },
    /* The Snappy Trio */ {
        /* Scene */ &scene_snappy_trio,
        /* Label */ "‚s‚ˆ‚…@‚r‚‚‚‚‚™@‚s‚’‚‰‚",
        /* Epil. */ TRUE
    },
    /* The Clappy Trio (Extra) */ {
        /* Scene */ &scene_clappy_trio_extra,
        /* Label */ "‚s‚ˆ‚…@‚b‚Œ‚‚‚‚™@‚s‚’‚‰‚@i‚d‚˜‚”‚’‚j@‚v‚h‚o",
        /* Epil. */ TRUE
    },
    /* Sneaky Spirits */ {
        /* Scene */ &scene_sneaky_spirits,
        /* Label */ "‚r‚‚…‚‚‹‚™@‚r‚‚‰‚’‚‰‚”‚“",
        /* Epil. */ TRUE
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &scene_sneaky_spirits_2,
        /* Label */ "‚r‚‚…‚‚‹‚™@‚r‚‚‰‚’‚‰‚”‚“@‚Q",
        /* Epil. */ TRUE
    },
    /* Samurai Slice */ {
        /* Scene */ &scene_samurai_slice,
        /* Label */ "‚r‚‚‚•‚’‚‚‰@‚r‚Œ‚‰‚ƒ‚…",
        /* Epil. */ TRUE
    },
    /* Rat Race */ {
        /* Scene */ &scene_rat_race,
        /* Label */ "‚q‚‚”@‚q‚‚ƒ‚…",
        /* Epil. */ TRUE
    },
    /* Sick Beats */ {
        /* Scene */ &scene_sick_beats,
        /* Label */ "‚r‚‰‚ƒ‚‹@‚a‚…‚‚”‚“",
        /* Epil. */ TRUE
    },
    /* The Bon Odori */ {
        /* Scene */ &scene_bon_odori,
        /* Label */ "‚s‚ˆ‚…@‚a‚‚@‚n‚„‚‚’‚‰",
        /* Epil. */ TRUE
    },
    /* Bon Dance */ {
        /* Scene */ &scene_bon_dance,
        /* Label */ "‚s‚ˆ‚…@‚a‚‚@‚c‚‚‚ƒ‚…",
        /* Epil. */ TRUE
    },
    /* Wizard's Waltz */ {
        /* Scene */ &scene_wizards_waltz,
        /* Label */ "‚v‚‰‚š‚‚’‚„f‚“@‚v‚‚Œ‚”‚š",
        /* Epil. */ TRUE
    },
    /* Showtime */ {
        /* Scene */ &scene_showtime,
        /* Label */ "‚r‚ˆ‚‚—‚”‚‰‚‚…",
        /* Epil. */ TRUE
    },
    /* Bunny Hop */ {
        /* Scene */ &scene_bunny_hop,
        /* Label */ "‚a‚•‚‚‚™@‚g‚‚",
        /* Epil. */ TRUE
    },
    /* Tram & Pauline */ {
        /* Scene */ &scene_tram_pauline,
        /* Label */ "‚s‚’‚‚@•@‚o‚‚•‚Œ‚‰‚‚…",
        /* Epil. */ TRUE
    },
    /* Space Dance */ {
        /* Scene */ &scene_space_dance,
        /* Label */ "‚r‚‚‚ƒ‚…@‚c‚‚‚ƒ‚…",
        /* Epil. */ TRUE
    },
    /* Cosmic Dance */ {
        /* Scene */ &scene_cosmic_dance,
        /* Label */ "‚b‚‚“‚‚‰‚ƒ@‚c‚‚‚ƒ‚…",
        /* Epil. */ TRUE
   },
=======
>>>>>>> Stashed changes
    /* Quiz Show */ {
        /* Scene */ &scene_quiz_show,
        /* Label */ "‚p‚•‚‰‚š@‚r‚ˆ‚‚—",
    },
    /* Rap Men */ {
        /* Scene */ &scene_rap_men,
        /* Label */ "‚q‚`‚o‚l‚d‚m",
    },
    /* Rap Women (by YONE) */ {
        /* Scene */ &scene_rap_women,
        /* Label */ "‚q‚`‚o‚v‚n‚l‚d‚m@i‚‚‚™@‚x‚n‚m‚dj",
<<<<<<< Updated upstream
        /* Epil. */ TRUE
    },
    /* Bouncy Road */ {
        /* Scene */ &scene_bouncy_road,
        /* Label */ "‚a‚‚•‚‚ƒ‚™@‚q‚‚‚„",
        /* Epil. */ TRUE
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &scene_bouncy_road_2,
        /* Label */ "‚a‚‚•‚‚ƒ‚™@‚q‚‚‚„@‚Q",
        /* Epil. */ TRUE
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &scene_ninja_bodyguard,
        /* Label */ "‚m‚‰‚‚Š‚@‚a‚‚„‚™‚‡‚•‚‚’‚„",
        /* Epil. */ TRUE
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &scene_ninja_reincarnate,
        /* Label */ "‚m‚‰‚‚Š‚@‚c‚…‚“‚ƒ‚…‚‚„‚‚‚”",
        /* Epil. */ TRUE
    },
    /* Toss Boys */ {
        /* Scene */ &scene_toss_boys,
        /* Label */ "‚s‚‚“‚“@‚s‚…‚‚",
        /* Epil. */ TRUE
    },
    /* Toss Boys 2 */ {
        /* Scene */ &scene_toss_boys_2,
        /* Label */ "‚s‚‚“‚“@‚s‚…‚‚@‚Q",
        /* Epil. */ TRUE
    },
    /* Fireworks */ {
        /* Scene */ &scene_fireworks,
        /* Label */ "‚e‚‰‚’‚…‚—‚‚’‚‹‚“",
        /* Epil. */ TRUE
    },
    /* Tap Trial */ {
        /* Scene */ &scene_tap_trial,
        /* Label */ "‚s‚‚@‚s‚’‚‰‚‚Œ",
        /* Epil. */ TRUE
    },
    /* Tap Trial 2 */ {
        /* Scene */ &scene_tap_trial_2,
        /* Label */ "‚s‚‚@‚s‚’‚‰‚‚Œ@‚Q",
        /* Epil. */ TRUE
    },
    /* Remix 1 */ {
        /* Scene */ &scene_remix_1,
        /* Label */ "‚q‚…‚‚‰‚˜@‚P",
        /* Epil. */ TRUE
    },
    /* Remix 2 */ {
        /* Scene */ &scene_remix_2,
        /* Label */ "‚q‚…‚‚‰‚˜@‚Q",
        /* Epil. */ TRUE
    },
    /* Remix 3 */ {
        /* Scene */ &scene_remix_3,
        /* Label */ "‚q‚…‚‚‰‚˜@‚R",
        /* Epil. */ TRUE
    },
    /* Remix 4 */ {
        /* Scene */ &scene_remix_4,
        /* Label */ "‚q‚…‚‚‰‚˜@‚S",
        /* Epil. */ TRUE
    },
    /* Remix 5 */ {
        /* Scene */ &scene_remix_5,
        /* Label */ "‚q‚…‚‚‰‚˜@‚T",
        /* Epil. */ TRUE
    },
    /* Remix 6 */ {
        /* Scene */ &scene_remix_6,
        /* Label */ "‚q‚…‚‚‰‚˜@‚U",
        /* Epil. */ TRUE
    },
    /* Remix 7 */ {
        /* Scene */ &scene_remix_7,
        /* Label */ "‚q‚…‚‚‰‚˜@‚V",
        /* Epil. */ TRUE
    },
    /* Remix 8 */ {
        /* Scene */ &scene_remix_8,
        /* Label */ "‚q‚…‚‚‰‚˜@‚W",
        /* Epil. */ TRUE
    },
    /* Remix 1 (Extra) */ {
        /* Scene */ &scene_remix_1_extra,
        /* Label */ "‚q‚…‚‚‰‚˜@‚P@i‚d‚˜‚”‚’‚j@‚v‚h‚o",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 1) */ {
        /* Scene */ &scene_drum_intro_unused,
        /* Label */ "‚c‚’‚•‚@‚h‚‚”‚’‚@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 2) */ {
        /* Scene */ &scene_drum_intro_unused_2,
        /* Label */ "‚c‚’‚•‚@‚h‚‚”‚’‚@i‚t‚‚•‚“‚…‚„@‚Qj",
        /* Epil. */ TRUE
    },
    /* Drum Intro (Unused 3) */ {
        /* Scene */ &scene_drum_intro_unused_3,
        /* Label */ "‚c‚’‚•‚@‚h‚‚”‚’‚@i‚t‚‚•‚“‚…‚„@‚Rj",
        /* Epil. */ TRUE
    },
    /* Tanuki and Monkey */ {
        /* Scene */ &scene_tanuki_and_monkey,
        /* Label */ "‚s‚‚‚•‚‹‚‰@•@‚l‚‚‚‹‚…‚™@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Metronome */ {
        /* Scene */ &scene_metronome,
        /* Label */ "‚l‚…‚”‚’‚‚‚‚‚…@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &scene_drum_girls_live_unused,
        /* Label */ "‚c‚’‚•‚@‚f‚‰‚’‚Œ‚“@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Horse Machine (Unused) */ {
        /* Scene */ &scene_mechanical_horse_unused,
        /* Label */ "‚g‚‚’‚“‚…@‚l‚‚ƒ‚ˆ‚‰‚‚…@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Marching Orders (Unused) */ {
        /* Scene */ &scene_marching_orders_unused,
        /* Label */ "‚l‚‚’‚ƒ‚ˆ‚‰‚‚‡@‚n‚’‚„‚…‚’‚“@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Spaceball (Unused) */ {
        /* Scene */ &scene_spaceball_unused,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
    },
    /* Spaceball (Unused 2) */ {
        /* Scene */ &scene_spaceball_unused_2,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ@i‚t‚‚•‚“‚…‚„@‚Qj",
        /* Epil. */ TRUE
    },
    /* Snappy Trio (Unused) */ {
        /* Scene */ &scene_snappy_trio_unused,
        /* Label */ "‚s‚ˆ‚…@‚r‚‚‚‚‚™@‚s‚’‚‰‚@i‚t‚‚•‚“‚…‚„j",
        /* Epil. */ TRUE
=======
>>>>>>> Stashed changes
    },
    /* Rap Women (by KAZU) */ {
        /* Scene */ &scene_rap_women_unused,
        /* Label */ "‚q‚`‚o‚v‚n‚l‚d‚m@i‚a‚™@‚j‚`‚y‚tj",
    },
    /* Space Dance */ {
        /* Scene */ &scene_space_dance,
        /* Label */ "‚r‚‚‚ƒ‚…@‚c‚‚‚ƒ‚…",
    },
    /* Cosmic Dance */ {
        /* Scene */ &scene_cosmic_dance,
        /* Label */ "‚b‚‚“‚‚‰‚ƒ@‚c‚‚‚ƒ‚…",
    },
    /* Showtime */ {
        /* Scene */ &scene_showtime,
        /* Label */ "‚r‚ˆ‚‚—‚”‚‰‚‚…",
    },
    /* RIQ Data Check */ {
        /* Scene */ &scene_data_check,
        /* Label */ "‚q|‚h‚p@‚c‚‚”‚@‚b‚ˆ‚…‚ƒ‚‹",
    },
    /* Opening (B Type) */ {
        /* Scene */ &scene_drum_samurai_opening_cutscene,
        /* Label */ "‚n‚‚…‚‚‰‚‚‡@i‚s‚™‚‚…@‚aj",
    },
    /* Opening (A Type) */ {
        /* Scene */ &scene_drum_samurai_demo_cutscene,
        /* Label */ "‚n‚‚…‚‚‰‚‚‡@i‚s‚™‚‚…@‚`j",
    },
    /* Tram & Pauline */ {
        /* Scene */ &scene_tram_pauline,
        /* Label */ "‚s‚’‚‚@•@‚o‚‚•‚Œ‚‰‚‚…",
    },
    /* Toss Boys */ {
        /* Scene */ &scene_toss_boys,
        /* Label */ "‚s‚‚“‚“@‚s‚…‚‚",
    },
    /* Toss Boys 2 */ {
        /* Scene */ &scene_toss_boys_2,
        /* Label */ "‚s‚‚“‚“@‚s‚…‚‚@‚Q",
    },
    /* Drum Girls LIVE */ {
        /* Scene */ &scene_drum_girls_live_unused,
        /* Label */ "‚c‚’‚•‚@‚f‚‰‚’‚Œ‚“@i‚t‚‚•‚“‚…‚„j",
    },
    /* Power Calligraphy */ {
        /* Scene */ &scene_power_calligraphy,
        /* Label */ "‚o‚‚—‚…‚’@‚b‚‚Œ‚Œ‚‰‚‡‚’‚‚‚ˆ‚™",
    },
    /* Rat Race */ {
        /* Scene */ &scene_rat_race,
        /* Label */ "‚q‚‚”@‚q‚‚ƒ‚…",
    },
    /* Flash Memory Test */ {
        /* Scene */ &scene_flash_mem_test,
        /* Label */ "‚e‚Œ‚‚“‚ˆ@‚l‚…‚‚‚’‚™@‚s‚…‚“‚”",
    },
    /* Fireworks */ {
        /* Scene */ &scene_fireworks,
        /* Label */ "‚e‚‰‚’‚…‚—‚‚’‚‹‚“",
    },
    /* Metronome */ {
        /* Scene */ &scene_metronome,
        /* Label */ "‚l‚…‚”‚’‚‚‚‚‚…@i‚t‚‚•‚“‚…‚„j",
    },
    /* Bunny Hop */ {
        /* Scene */ &scene_bunny_hop,
        /* Label */ "‚a‚•‚‚‚™@‚g‚‚",
    },
    /* Dance Lesson 1 */ {
        /* Scene */ &scene_remix_1_unused,
        /* Label */ "‚c‚‚‚ƒ‚…@‚k‚…‚“‚“‚‚@‚P@i‚t‚‚•‚“‚…‚„j",
    },
    /* Wizard's Waltz */ {
        /* Scene */ &scene_wizards_waltz,
        /* Label */ "‚v‚‰‚š‚‚’‚„f‚“@‚v‚‚Œ‚”‚š",
    },
    /* Marching Orders */ {
        /* Scene */ &scene_marching_orders,
        /* Label */ "‚l‚‚’‚ƒ‚ˆ‚‰‚‚‡@‚n‚’‚„‚…‚’‚“",
    },
    /* Marching Orders 2 */ {
        /* Scene */ &scene_marching_orders_2,
        /* Label */ "‚l‚‚’‚ƒ‚ˆ‚‰‚‚‡@‚n‚’‚„‚…‚’‚“@‚Q",
    },
    /* Mechanical Horse */ {
        /* Scene */ &scene_mechanical_horse,
        /* Label */ "‚g‚‚’‚“‚…@‚l‚‚ƒ‚ˆ‚‰‚‚…",
    },
    /* Tap Trial */ {
        /* Scene */ &scene_tap_trial,
        /* Label */ "‚s‚‚@‚s‚’‚‰‚‚Œ",
    },
    /* Tap Trial 2 */ {
        /* Scene */ &scene_tap_trial_2,
        /* Label */ "‚s‚‚@‚s‚’‚‰‚‚Œ@‚Q",
    },
    /* Samurai Slice */ {
        /* Scene */ &scene_samurai_slice,
        /* Label */ "‚r‚‚‚•‚’‚‚‰@‚r‚Œ‚‰‚ƒ‚…",
    },
    /* Spaceball */ {
        /* Scene */ &scene_spaceball,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ",
    },
    /* Spaceball 2 */ {
        /* Scene */ &scene_spaceball_2,
        /* Label */ "‚r‚‚‚ƒ‚…‚‚‚‚Œ‚Œ@‚Q",
    },
    /* Sneaky Spirits */ {
        /* Scene */ &scene_sneaky_spirits,
        /* Label */ "‚r‚‚…‚‚‹‚™@‚r‚‚‰‚’‚‰‚”‚“",
    },
    /* Sneaky Spirits 2 */ {
        /* Scene */ &scene_sneaky_spirits_2,
        /* Label */ "‚r‚‚…‚‚‹‚™@‚r‚‚‰‚’‚‰‚”‚“@‚Q",
    },
    /* Ninja Bodyguard */ {
        /* Scene */ &scene_ninja_bodyguard,
        /* Label */ "‚m‚‰‚‚Š‚@‚a‚‚„‚™‚‡‚•‚‚’‚„",
    },
    /* Ninja Bodyguard 2 */ {
        /* Scene */ &scene_ninja_reincarnate,
        /* Label */ "‚m‚‰‚‚Š‚@‚c‚…‚“‚ƒ‚…‚‚„‚‚‚”",
    },
    /* Bouncy Road */ {
        /* Scene */ &scene_bouncy_road,
        /* Label */ "‚a‚‚•‚‚ƒ‚™@‚q‚‚‚„",
    },
    /* Bouncy Road 2 */ {
        /* Scene */ &scene_bouncy_road_2,
        /* Label */ "‚a‚‚•‚‚ƒ‚™@‚q‚‚‚„@‚Q",
    },
    /* Sick Beats */ {
        /* Scene */ &scene_sick_beats,
        /* Label */ "‚r‚‰‚ƒ‚‹@‚a‚…‚‚”‚“",
    },
    /* Rhythm Tweezers */ {
        /* Scene */ &scene_rhythm_tweezers,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚—‚…‚…‚š‚…‚’‚“",
    },
    /* Rhythm Tweezers 2 */ {
        /* Scene */ &scene_rhythm_tweezers_2,
        /* Label */ "‚q‚ˆ‚™‚”‚ˆ‚@‚s‚—‚…‚…‚š‚…‚’‚“@‚Q",
    },
    /* Night Walk */ {
        /* Scene */ &scene_night_walk,
        /* Label */ "‚m‚‰‚‡‚ˆ‚”@‚v‚‚Œ‚‹",
    },
    /* Night Walk 2 */ {
        /* Scene */ &scene_night_walk_2,
        /* Label */ "‚m‚‰‚‡‚ˆ‚”@‚v‚‚Œ‚‹@‚Q",
    },
    /* Polyrhythm */ {
        /* Scene */ &scene_polyrhythm,
        /* Label */ "‚o‚‚Œ‚™‚’‚ˆ‚™‚”‚ˆ‚",
    },
    /* Polyrhythm 2 */ {
        /* Scene */ &scene_polyrhythm_2,
        /* Label */ "‚o‚‚Œ‚™‚’‚ˆ‚™‚”‚ˆ‚@‚Q",
    },
    /* The Clappy Trio */ {
        /* Scene */ &scene_clappy_trio,
        /* Label */ "‚s‚ˆ‚…@‚b‚Œ‚‚‚‚™@‚s‚’‚‰‚",
    },
    /* The Snappy Trio */ {
        /* Scene */ &scene_snappy_trio,
        /* Label */ "‚s‚ˆ‚…@‚r‚‚‚‚‚™@‚s‚’‚‰‚",
    },
    /* Karate Man */ {
        /* Scene */ &scene_karate_man,
        /* Label */ "‚j‚‚’‚‚”‚…@‚l‚‚",
    },
    /* Karate Man 2 */ {
        /* Scene */ &scene_karate_man_2,
        /* Label */ "‚j‚‚’‚‚”‚…@‚l‚‚@‚Q",
    },
    /* R-IQ (Title Screen) */ {
        /* Scene */ &scene_title,
        /* Label */ "‚q|‚h‚p@i‚s‚‰‚”‚Œ‚…j",
    },
    /* R-IQ (Main Menu) */ {
        /* Scene */ &scene_main_menu,
        /* Label */ "‚q|‚h‚p@i‚l‚…‚‚•j",
    },
    /* R-IQ (Game Select) */ {
        /* Scene */ &scene_game_select,
        /* Label */ "‚q|‚h‚p@i‚f‚‚‚…j",
    },
    /* R-IQ (Rhythm Data Room) */ {
        /* Scene */ &scene_data_room,
        /* Label */ "‚q|‚h‚p@i‚k‚…‚”‚”‚…‚’j",
    },
    /* R-IQ (Studio) */ {
        /* Scene */ &scene_studio,
        /* Label */ "‚q|‚h‚p@i‚r‚”‚•‚„‚‰‚j",
    },
    /* R-IQ (Options) */ {
        /* Scene */ &scene_options_menu,
        /* Label */ "‚q|‚h‚p@i‚n‚‚”‚‰‚‚j",
    },
    /* R-IQ (Result 1) */ {
        /* Scene */ &scene_results_ver_debug,
        /* Label */ "‚q|‚h‚p@i‚q‚…‚“‚•‚Œ‚”j",
    },
    /* R-IQ (Result 2) */ {
        /* Scene */ &scene_results_ver_rank,
        /* Label */ "‚q|‚h‚p@i‚q‚…‚“‚•‚Œ‚”@‚Qj",
    },
    /* R-IQ (Result 3) */ {
        /* Scene */ &scene_results_ver_score,
        /* Label */ "‚q|‚h‚p@i‚q‚…‚“‚•‚Œ‚”@‚Rj",
    },
    /* R-IQ (Result 4) */ {
        /* Scene */ &scene_epilogue,
        /* Label */ "‚q|‚h‚p@i‚q‚…‚“‚•‚Œ‚”@‚Sj",
    },
    /* R-IQ (Rhythm Library) */ {
        /* Scene */ &scene_arrival,
        /* Label */ "‚q|‚h‚p@i‚d‚‚‚‰‚Œj",
    },
    /* R-IQ (Perfect) */ {
        /* Scene */ &scene_perfect,
        /* Label */ "‚q|‚h‚p@i‚o‚…‚’‚†‚…‚ƒ‚”j",
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "‚q|‚h‚p@i‚b‚‚†‚…@‚b‚‚•‚‚“‚…‚Œ‚‰‚‚‡j",
    },
    /* R-IQ (Endless Games) */ {
        /* Scene */ &scene_endless_menu,
        /* Label */ "‚q|‚h‚p@i‚d‚‚„‚Œ‚…‚“‚“@‚f‚‚‚…‚“j",
    },
    /* R-IQ (Drum Lessons) */ {
        /* Scene */ &scene_lessons_menu,
        /* Label */ "‚q|‚h‚p@i‚c‚’‚•‚@‚k‚…‚“‚“‚‚‚“j",
    },
    /* R-IQ (Rhythm Toys) */ {
        /* Scene */ &scene_toys_menu,
        /* Label */ "‚q|‚h‚p@i‚q‚ˆ‚™‚”‚ˆ‚@‚s‚‚™‚“j",
    },
    /* R-IQ (Cafe) */ {
        /* Scene */ &scene_cafe,
        /* Label */ "‚q|‚h‚p@i‚b‚‚†‚…@‚b‚‚•‚‚“‚…‚Œ‚‰‚‚‡j",
    },
    /* Ending (from clearing Remix 6) */ {
        /* Scene */ &scene_staff_credit_remix_6,
        /* Label */ "‚d‚‚„‚‰‚‚‡@i‚f‚‚‚…@‚b‚Œ‚…‚‚’‚…‚„j",
    },
    /* Ending (from Game Select) */ {
        /* Scene */ &scene_staff_credit,
        /* Label */ "‚d‚‚„‚‰‚‚‡@i‚d‚˜‚”‚’‚@‚u‚‰‚…‚—‚‰‚‚‡‚“j",
    },
    /* Data Clear */ {
        /* Scene */ &scene_data_clear,
        /* Label */ "‚r‚‚–‚…@‚c‚‚”‚@‚b‚Œ‚…‚‚’",
    },
    END_OF_DEBUG_ENTRIES
};


// [D_089ddf60] Page Number Digits
char debug_menu_counter_digits[] = "‚O‚P‚Q‚R‚S‚T‚U‚V‚W‚X‚`‚a‚b‚c‚d‚e‚f‚g‚h‚i‚j‚k‚l‚m‚n‚o‚p‚q‚r‚s‚t‚u‚v‚w‚x‚y";


// Render Text
void debug_menu_render_table(s32 targetPage, s32 targetRow) {
    char string[100];
    s32 totalPages;
    u32 i, j;

    totalPages = (gDebugMenu->totalEntries - 1) / 8;

    if (targetPage < 0) {
        targetPage = totalPages;
    }

    if (targetPage > totalPages) {
        targetPage = 0;
    }

    if ((targetPage * 8) + targetRow >= gDebugMenu->totalEntries) {
        targetRow = (gDebugMenu->totalEntries - 1) - (totalPages * 8);
    }

    if (targetPage != gDebugMenu->page) {
        struct PrintedTextAnim *textAnim;

        for (i = 0; i < 8; i++) {
            if (gDebugMenu->textLines[i] > -1) {
                delete_bmp_font_obj_text_anim(gDebugMenu->objFont, gDebugMenu->textLines[i]);
                sprite_delete(gSpriteHandler, gDebugMenu->textLines[i]);
                gDebugMenu->textLines[i] = -1;
            }
        }

        for (j = 0, i = (targetPage * 8); (i < (targetPage * 8) + 8) && (i < gDebugMenu->totalEntries); j++, i++) {
            textAnim = bmp_font_obj_print_l(gDebugMenu->objFont, debug_menu_entry_table[i].label, 1, 0);
            gDebugMenu->textLines[j] = sprite_create(gSpriteHandler, textAnim->frames, 0, 32, (j * 16) + 32, 0x800, 0, 0, 0);
        }

        delete_bmp_font_obj_text_anim(gDebugMenu->objFont, gDebugMenu->counter);
        strncpy(string, &debug_menu_counter_digits[(targetPage + 1) * 2], 2);
        string[2] = '\0';
        strcat(string, "^");
        strncat(string, &debug_menu_counter_digits[(totalPages + 1) * 2], 2);
        textAnim = bmp_font_obj_print_r(gDebugMenu->objFont, string, 1, 4);
        sprite_set_anim(gSpriteHandler, gDebugMenu->counter, textAnim->frames, 0, 0, 0, 0);
    }

    gDebugMenu->page = targetPage;
    gDebugMenu->row = targetRow;

    for (i = 0; i < 8; i++) {
        if (gDebugMenu->textLines[i] > -1) {
            sprite_set_base_palette(gSpriteHandler, gDebugMenu->textLines[i], 0);
        }
    }

    sprite_set_base_palette(gSpriteHandler, gDebugMenu->textLines[gDebugMenu->row], 7);
    sprite_set_x_y(gSpriteHandler, gDebugMenu->cursor, 16, (gDebugMenu->row * 16) + 32);
}
