#pragma once

typedef u16 AnimationCel;

struct Animation {
    const AnimationCel *cel;
    u8 duration;
};
