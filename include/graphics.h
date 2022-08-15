#pragma once

typedef u16 AnimationCel;

struct Animation {
    const AnimationCel *cel;
    u8 duration;
};

#define END_ANIMATION { NULL, 0 }

typedef u16 Palette[16];

#define TO_RGB555(x)                        \
      (((((x) >> 16) & 0xff) >> 3) << 0 )   \
    | (((((x) >> 8 ) & 0xff) >> 3) << 5 )   \
    | (((((x) >> 0 ) & 0xff) >> 3) << 10)
