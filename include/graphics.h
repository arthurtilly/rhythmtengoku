#pragma once

typedef u16 AnimationCel;

struct Animation {
    const AnimationCel *cel;
    u8 duration;
};

#define END_ANIMATION { NULL, 0 }