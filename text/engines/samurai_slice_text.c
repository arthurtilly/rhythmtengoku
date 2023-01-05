#include "global.h"
#include "text.h"
#include "graphics.h"
#include "engines/samurai_slice.h"

extern const struct Animation anim_demon_hurt[];
extern const struct Animation anim_small_demon_hit[];
extern const struct Animation anim_med_demon_hit[];
extern const struct Animation anim_small_demon_hit[];
extern const struct Animation anim_propeller_demon_hit[];
extern const struct Animation anim_winged_demon_hit[];
extern const struct Animation anim_large_demon_hit1[];
extern const struct Animation anim_large_demon_hit2[];
extern const struct Animation anim_small_demon_barely[];
extern const struct Animation anim_med_demon_barely[];
extern const struct Animation anim_propeller_demon_barely[];
extern const struct Animation anim_winged_demon_barely[];
extern const struct Animation anim_large_demon_barely[];


/* Samurai Slice */


// Blank Text
const char D_0805a5d0[] = "";

// ?
const struct SamuraiSlice_0805a5d4 D_0805a5d4[] = {
    { anim_demon_hurt, 0x80, -0x200 },
    { anim_small_demon_hit, 0x80, -0x300 },
    { anim_med_demon_hit, 0x80, -0x300 },
    { anim_small_demon_hit, 0x80, -0x300 },
    { anim_propeller_demon_hit, 0x80, -0x500 },
    { anim_winged_demon_hit, 0x80, -0x300 },
    { anim_large_demon_hit1, 0x80, -0x400 },
    { anim_large_demon_hit2, 0x80, -0x400 },
    { anim_small_demon_barely, 0x80, 0x100 },
    { anim_med_demon_barely, 0x80, 0x100 },
    { anim_propeller_demon_barely, 0x80, 0x100 },
    { anim_winged_demon_barely, 0x80, 0x100 },
    { anim_large_demon_barely, 0x80, 0x100 },
};
