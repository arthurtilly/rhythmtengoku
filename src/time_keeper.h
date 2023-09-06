#pragma once

#include "global.h"


/* TIME KEEPER */


enum TimeUnit {
    T_FRAME  = 1,
    T_SECOND = (60 * T_FRAME),
    T_MINUTE = (60 * T_SECOND),
    T_HOUR   = (60 * T_MINUTE)
};

#define INACTIVITY_THRESHOLD (T_SECOND * 10)
#define REQ_ACTIVITY_FLAG    0x80000000


extern void init_time_keeper(void);
extern void update_time_keeper(void);

extern u32 get_total_playtime(u32 timeUnit);
#define get_active_playtime(timeUnit) get_total_playtime(REQ_ACTIVITY_FLAG | (timeUnit))
