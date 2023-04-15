#pragma once

#include "global.h"


// Perfect Campaign activity/availability states.
enum CampaignStatesEnum {
    /* 00 */ CAMPAIGN_STATE_INACTIVE,
    /* 01 */ CAMPAIGN_STATE_AVAILABLE,
    /* 02 */ CAMPAIGN_STATE_ACTIVE
};


// Types of Perfect Campaign gifts.
enum CampaignGiftTypesEnum {
    /* 00 */ CAMPAIGN_GIFT_SONG,
    /* 01 */ CAMPAIGN_GIFT_DRUM_KIT,
    /* 02 */ CAMPAIGN_GIFT_READING_MATERIAL,
    /* 03 */ CAMPAIGN_GIFT_NEW_GAME
};


// Indexes for all Perfect Campaigns.
enum PerfectCampaignsEnum {
    /* -- */ CAMPAIGN_NULL = -1,

    /* 00 */ CAMPAIGN_REMIX1,
    /* 01 */ CAMPAIGN_REMIX2,
    /* 02 */ CAMPAIGN_REMIX3,
    /* 03 */ CAMPAIGN_REMIX4,
    /* 04 */ CAMPAIGN_REMIX5,
    /* 05 */ CAMPAIGN_REMIX6,
    /* 06 */ CAMPAIGN_REMIX7,
    /* 07 */ CAMPAIGN_REMIX8,
    /* 08 */ CAMPAIGN_CLAPPY_TRIO,
    /* 09 */ CAMPAIGN_BON_ODORI,
    /* 10 */ CAMPAIGN_SPACE_DANCE,
    /* 11 */ CAMPAIGN_RAP_MEN,
    /* 12 */ CAMPAIGN_TAP_TRIAL,
    /* 13 */ CAMPAIGN_TAP_TRIAL_2,
    /* 14 */ CAMPAIGN_MARCHING_ORDERS_2,
    /* 15 */ CAMPAIGN_SNEAKY_SPIRITS_2,
    /* 16 */ CAMPAIGN_SPACEBALL,
    /* 17 */ CAMPAIGN_SICK_BEATS,
    /* 18 */ CAMPAIGN_TRAM_PAULINE,
    /* 19 */ CAMPAIGN_POLYRHYTHM,
    /* 20 */ CAMPAIGN_FIREWORKS,
    /* 21 */ CAMPAIGN_RAP_WOMEN,
    /* 22 */ CAMPAIGN_NIGHT_WALK_2,
    /* 23 */ CAMPAIGN_SPACEBALL_2,
    /* 24 */ CAMPAIGN_MARCHING_ORDERS,
    /* 25 */ CAMPAIGN_RAT_RACE,
    /* 26 */ CAMPAIGN_BUNNY_HOP,
    /* 27 */ CAMPAIGN_POWER_CALLIGRAPHY,
    /* 28 */ CAMPAIGN_TOSS_BOYS,
    /* 29 */ CAMPAIGN_COSMIC_DANCE,
    /* 30 */ CAMPAIGN_NINJA_REINCARNATE,
    /* 31 */ CAMPAIGN_POLYRHYTHM_2,
    /* 32 */ CAMPAIGN_RHYTHM_TWEEZERS,
    /* 33 */ CAMPAIGN_SAMURAI_SLICE,
    /* 34 */ CAMPAIGN_SHOWTIME,
    /* 35 */ CAMPAIGN_NIGHT_WALK,
    /* 36 */ CAMPAIGN_NINJA_BODYGUARD,
    /* 37 */ CAMPAIGN_BON_DANCE,
    /* 38 */ CAMPAIGN_RHYTHM_TWEEZERS_2,
    /* 39 */ CAMPAIGN_TOSS_BOYS_2,
    /* 40 */ CAMPAIGN_KARATE_MAN,
    /* 41 */ CAMPAIGN_SNEAKY_SPIRITS,
    /* 42 */ CAMPAIGN_WIZARDS_WALTZ,
    /* 43 */ CAMPAIGN_QUIZ_SHOW,
    /* 44 */ CAMPAIGN_BOUNCY_ROAD,
    /* 45 */ CAMPAIGN_SNAPPY_TRIO,
    /* 46 */ CAMPAIGN_KARATE_MAN_2,
    /* 47 */ CAMPAIGN_BOUNCY_ROAD_2,
    /* <insert new campaigns here> */

    /* -- */ TOTAL_PERFECT_CAMPAIGNS
};


// Total standard games and remixes, i.e. those within the main campaign.
#define TOTAL_RHYTHM_GAMES ((u32)TOTAL_PERFECT_CAMPAIGNS)


// Total Medals to collect.
#define MAX_MEDALS TOTAL_RHYTHM_GAMES


// Default score for Levels.
#define DEFAULT_LEVEL_SCORE ((u16)-1)


// Maximum score for Levels.
#define MAX_LEVEL_SCORE 1000


// Types of Levels, relevant to scene transitions and icon borders.
enum LevelTypesEnum {
    /* 00 */ LEVEL_TYPE_GAME,
    /* 01 */ LEVEL_TYPE_REMIX,
    /* 02 */ LEVEL_TYPE_BONUS
};


// Level unlock/clear states. Note that Perfects are saved separately.
enum LevelCompletionStatesEnum {
    /* -- */ LEVEL_STATE_NULL = -1,
    /* 00 */ LEVEL_STATE_HIDDEN,
    /* 01 */ LEVEL_STATE_APPEARING,
    /* 02 */ LEVEL_STATE_CLOSED,
    /* 03 */ LEVEL_STATE_OPEN,
    /* 04 */ LEVEL_STATE_CLEARED,
    /* 05 */ LEVEL_STATE_HAS_MEDAL
};


// Indexes for all Levels.
enum RhythmGameLevelsEnum {
    /* -- */ LEVEL_NULL = -1,
    /* 00 */ LEVEL_KARATE_MAN,
    /* 01 */ LEVEL_KARATE_MAN_2,
    /* 02 */ LEVEL_CLAPPY_TRIO,
    /* 03 */ LEVEL_SNAPPY_TRIO,
    /* 04 */ LEVEL_POLYRHYTHM,
    /* 05 */ LEVEL_POLYRHYTHM_2,
    /* 06 */ LEVEL_NIGHT_WALK,
    /* 07 */ LEVEL_NIGHT_WALK_2,
    /* 08 */ LEVEL_RHYTHM_TWEEZERS,
    /* 09 */ LEVEL_RHYTHM_TWEEZERS_2,
    /* 10 */ LEVEL_SICK_BEATS,
    /* 11 */ LEVEL_BOUNCY_ROAD,
    /* 12 */ LEVEL_BOUNCY_ROAD_2,
    /* 13 */ LEVEL_NINJA_BODYGUARD,
    /* 14 */ LEVEL_NINJA_REINCARNATE,
    /* 15 */ LEVEL_SNEAKY_SPIRITS,
    /* 16 */ LEVEL_SNEAKY_SPIRITS_2,
    /* 17 */ LEVEL_SAMURAI_SLICE,
    /* 18 */ LEVEL_SPACEBALL,
    /* 19 */ LEVEL_SPACEBALL_2,
    /* 20 */ LEVEL_TAP_TRIAL,
    /* 21 */ LEVEL_TAP_TRIAL_2,
    /* 22 */ LEVEL_MARCHING_ORDERS,
    /* 23 */ LEVEL_MARCHING_ORDERS_2,
    /* 24 */ LEVEL_WIZARDS_WALTZ,
    /* 25 */ LEVEL_BUNNY_HOP,
    /* 26 */ LEVEL_FIREWORKS,
    /* 27 */ LEVEL_POWER_CALLIGRAPHY,
    /* 28 */ LEVEL_POWER_CALLIGRAPHY_2,
    /* 29 */ LEVEL_TOSS_BOYS,
    /* 30 */ LEVEL_TOSS_BOYS_2,
    /* 31 */ LEVEL_RAT_RACE,
    /* 32 */ LEVEL_TRAM_PAULINE,
    /* 33 */ LEVEL_SHOWTIME,
    /* 34 */ LEVEL_SPACE_DANCE,
    /* 35 */ LEVEL_COSMIC_DANCE,
    /* 36 */ LEVEL_RAP_MEN,
    /* 37 */ LEVEL_RAP_WOMEN,
    /* 38 */ LEVEL_QUIZ_SHOW,
    /* 39 */ LEVEL_BON_ODORI,
    /* 40 */ LEVEL_BON_DANCE,
    /* 41 */ LEVEL_REMIX_1,
    /* 42 */ LEVEL_REMIX_2,
    /* 43 */ LEVEL_REMIX_3,
    /* 44 */ LEVEL_REMIX_4,
    /* 45 */ LEVEL_REMIX_5,
    /* 46 */ LEVEL_REMIX_6,
    /* 47 */ LEVEL_REMIX_7,
    /* 48 */ LEVEL_REMIX_8,
    /* 49 */ LEVEL_CAFE,
    /* 50 */ LEVEL_RHYTHM_TOYS,
    /* 51 */ LEVEL_ENDLESS_GAMES,
    /* 52 */ LEVEL_DRUM_LESSONS,
    /* 53 */ LEVEL_STAFF_CREDIT,
    /* 54 */ LEVEL_LIVE_MENU,
    /* <insert new levels here> */

    /* -- */ TOTAL_LEVELS
};
