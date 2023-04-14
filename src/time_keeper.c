#include "global.h"
#include "time_keeper.h"

static u32 sTotalPlayTime;      // [0x03001304]
static u32 sTotalActiveTime;    // [0x03001308]
static u16 sInactivityTimer;    // [0x0300130C]
static u16 sPreviousKeys;       // [0x0300130E]


/* TIME KEEPER */


// Init. Play Time Keeper
void init_time_keeper(void) {
    sTotalPlayTime = 0;
    sTotalActiveTime = 0;
    sPreviousKeys = REG_KEY;
    sInactivityTimer = 0;
}


// Update Play Time Keeper
void update_time_keeper(void) {
    u16 keys;

    if (sTotalPlayTime < UINT_MAX) {
        sTotalPlayTime++;
    }

    keys = REG_KEY;

    if (keys == sPreviousKeys) {
        if (sInactivityTimer < USHRT_MAX) {
            sInactivityTimer++;
        }
    } else {
        sInactivityTimer = 0;
    }

    sPreviousKeys = keys;

    if ((sInactivityTimer < INACTIVITY_THRESHOLD) && (sTotalActiveTime < UINT_MAX)) {
        sTotalActiveTime++;
    }
}


// Get Play Time
u32 get_total_playtime(u32 args) {
    u32 timeUnit = args & ~REQ_ACTIVITY_FLAG;
    u32 playTime;

    if (args & REQ_ACTIVITY_FLAG) {
        playTime = sTotalActiveTime;
    } else {
        playTime = sTotalPlayTime;
    }

    return playTime / timeUnit;
}
