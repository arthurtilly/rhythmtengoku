#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability. !TODO - CHANGE/REMOVE
#define gRhythmTweezersInfo D_030055d0->gameInfo.rhythmTweezers

// Game-Specific Macros
#define TWEEZERS_HELD_HAIR_NONE 0
#define TWEEZERS_HELD_HAIR_FULL 1
#define TWEEZERS_HELD_HAIR_BARELY 2
#define VEGETABLE_TYPE_ONION 0
#define VEGETABLE_TYPE_TURNIP 1
#define VEGETABLE_TYPE_POTATO 2

// OAM Animations:
extern u32 D_088e8768;  // Animation: hair_appear_short
extern u32 D_088e87a8;  // Animation: "tweezer_pluck"
extern u32 D_088e8848;  // Animation: "tweezer_pluck_barely"
extern u32 D_088e8898;  // Animation: "tweezer_pluck_miss"
extern u32 D_088e88e0;  // Animation: "hair_fall"
extern u32 D_088e88f8;  // Animation: "hair_stubble"
extern u32 D_088e8910;  // Animation: "tutorial_text" (unused)
extern u32 D_088e89a8;  // Animation: hair_appear_long
extern u32 D_088e8a50;  // Animation: "hair_long_pull"

// Sound Effects:
extern const struct SequenceData s_f_hair_next_seqData;         // SFX: Cash Register
extern const struct SequenceData s_f_hair_nuki_long_seqData;    // SFX: ???
extern const struct SequenceData s_f_hair_tuneru_seqData;       // SFX: ???
extern const struct SequenceData s_hanabi_pon_seqData;          // SFX: Hair Appear (Short)
extern const struct SequenceData s_f_hair_appear_long_seqData;  // SFX: Hair Appear (Long)

// Additional Data - Rhythm Tweezers:
extern u32 *D_089e3d98[]; // Array of animation pointers for vegetable faces
extern u32 *D_089e3da4[]; // Array of BG Map pointers for vegetable textures
extern u32 D_089e3db0;    // GFX-related Null
extern u32 *D_089e3ff4[]; // GFX Struct Index
// extern s16 D_03004b22;    // BG1VOFS Buffer


/* RHYTHM TWEEZERS */


// [func_0802e750] Initialise Vegetable Face
void func_0802e750(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u8 type = (gRhythmTweezersInfo.version % 3);

    vegetable->spriteCurrent = func_0804d160(D_03005380, D_089e3d98[type], 0, 120, 16, 0x4800, -1, 0, 0);
    func_0804db44(D_03005380, vegetable->spriteCurrent, &gRhythmTweezersInfo.screenHorizontalPosition, &D_03004b10.BG1VOFS);

    vegetable->spriteNext = func_0804d160(D_03005380, D_089e3d98[type], 0, 120, 16, 0x4800, 0, 0, 0);
    func_0804d614(D_03005380, vegetable->spriteNext, 0x178);
    func_0804db44(D_03005380, vegetable->spriteNext, &gRhythmTweezersInfo.screenHorizontalPosition, &D_03004b10.BG1VOFS);

    vegetable->bgMapSide = 0;
    gRhythmTweezersInfo.screenHorizontalPosition = 0;
    vegetable->isScrolling = FALSE;
}


// [func_0802e828] ENGINE Func_02 - Scroll to New Vegetable
void func_0802e828(u32 time) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u32 side;
    u32 *bgMap;

    vegetable->isScrolling = TRUE;
    vegetable->scrollTime = 0;
    vegetable->scrollTarget = func_0800c3a4(time);
    func_0804d8f8(D_03005380, vegetable->spriteNext, D_089e3d98[vegetable->typeNext], 0, 0, 0, 0);

    side = vegetable->bgMapSide;
    bgMap = &RT_VEGETABLE_BG_MAP_R;
    if (side) bgMap = &RT_VEGETABLE_BG_MAP_L;
    func_08003eb8(D_089e3da4[vegetable->typeNext], bgMap);
}


// [func_0802e89c] ENGINE Func_04 - Play Cash Register SFX
void func_0802e89c(void) {
    func_08002634(&s_f_hair_next_seqData);
}


// [func_0802e8ac] Update Vegetable (Scrolling)
void func_0802e8ac(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u32 x;

    vegetable->scrollTime += 1;

    // Vegetable has reached its destination.
    if (vegetable->scrollTime >= vegetable->scrollTarget) {
        gRhythmTweezersInfo.screenHorizontalPosition = 0;
        vegetable->bgMapSide ^= 1;
        D_03004b10.BG1HOFS = vegetable->bgMapSide << 8;
        vegetable->isScrolling = FALSE;
        func_080178ac();

        func_0804d8f8(D_03005380, vegetable->spriteCurrent, D_089e3d98[vegetable->typeNext], 0, -1, 0, 0);
        vegetable->typeCurrent = vegetable->typeNext;
    }

    // Vegetable has not yet reached its destination.
    else {
        x = 1024 * vegetable->scrollTime / vegetable->scrollTarget;
        x = (-coss(x) + 0x100) >> 1;

        gRhythmTweezersInfo.screenHorizontalPosition = x;
        D_03004b10.BG1HOFS = x;
        if (vegetable->bgMapSide != 0) {
            D_03004b10.BG1HOFS = x + 0x100;
        }
    }
}


// [func_0802e96c] ENGINE Func_03 - Define New Vegetable Type
void func_0802e96c(u32 type) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;

    vegetable->typeNext = type;
}


// [func_0802e97c] ENGINE Func_06 - STUB
void func_0802e97c_stub(void) {
}


// [func_0802e980] Update Vegetable
void func_0802e980(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;

    if (vegetable->isScrolling) {
        func_0802e8ac();
    }
}


// [func_0802e99c] Initialise Falling Hairs
void func_0802e99c(void) {
    struct RhythmTweezersFallingHair *hair;
    u32 i;

    for (i = 0; i < 5; i++) {
        hair = &gRhythmTweezersInfo.fallingHairs[i];
        hair->sprite = func_0800fa6c(&D_088e88e0, 0, 120, 16, 0x4800, 0x100, -0x200, 0, 0, 0x8000, 0);
        func_0800feec(hair->sprite, TRUE);
        func_0800fea8(hair->sprite, 0x4c);
        hair->fallDistance = 0xc800;
        hair->fallSpeed = 0;
    }
    gRhythmTweezersInfo.fallingHairsNext = 0;
}


// [func_0802ea20] Update Falling Hairs
void func_0802ea20(void) {
    struct RhythmTweezersFallingHair *hair;
    u32 i = 0;

    for (i; i <= 4; i++) {
        hair = &gRhythmTweezersInfo.fallingHairs[i];
        if (hair->fallDistance <= 0xc7ff) {
            hair->fallDistance += hair->fallSpeed += 0x20;
            hair->rotation += hair->rotationSpeed;
            func_0800fe0c(hair->sprite, (s16) ((hair->fallDistance >> 8) + 0x10));
            func_0800fe94(hair->sprite, hair->rotation);
        }
    }
}


// [func_0802ea74] Create Falling Hair
void func_0802ea74(u32 arg0) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    struct RhythmTweezersFallingHair *hair = &gRhythmTweezersInfo.fallingHairs[gRhythmTweezersInfo.fallingHairsNext];

    hair->rotation = -0x200;
    hair->rotationSpeed = func_08001980(0x1f) - 15;

    func_0800fe0c(hair->sprite, 0x10);
    func_0800febc(hair->sprite, tweezers->rotation);
    func_0800fe94(hair->sprite, hair->rotation);
    func_08010040(hair->sprite, 1);

    hair->fallDistance = 0;
    hair->fallSpeed = 0;
    func_0800ffc0(hair->sprite, arg0);

    if ((gRhythmTweezersInfo.fallingHairsNext += 1) > 4) {
        gRhythmTweezersInfo.fallingHairsNext = 0;
    }
}


// [func_0802eaf8] Initialise Tweezers
void func_0802eaf8(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;

    tweezers->rotation = -0x200;
    tweezers->sprite = func_0800fa6c(&D_088e87a8, 0x7f, 120, 16, 0x4800, 0x100, -0x200, 1, 0x7f, 0, 0);
    func_0800fed0(tweezers->sprite, tweezers->rotation, 0x4c);
    func_0800feec(tweezers->sprite, TRUE);

    tweezers->isMoving = FALSE;
    tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
    tweezers->isPulling = FALSE;
    gRhythmTweezersInfo.existingHairs.full = 0;
}


// [func_0802eb7c] ENGINE Func_00 - Spawn Tweezers
void func_0802eb7c(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;

    tweezers->isMoving = TRUE;
    tweezers->cycleTime = 0;
    tweezers->cycleTarget = func_0800c3a4(0xa8);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
}


// [func_0802eba0] Update Tweezers (Position)
void func_0802eba0(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    u32 a = 0x4ea;
    u32 b = 0x5d5 * tweezers->cycleTime / tweezers->cycleTarget;

    tweezers->rotation = a - b;
    tweezers->cycleTime += 1;

    if (tweezers->cycleTime >= tweezers->cycleTarget) {
        tweezers->isMoving = FALSE;
        tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
    }
}


// [func_0802ebdc] Update Tweezers (Vertical Screen Scroll)
void func_0802ebdc(void) {
    // If the screen is not in the normal vertical position, scroll down.
    if (D_03004b10.BG1VOFS != 0) {
        D_03004b10.BG1VOFS -= 1;
    }
}


// [func_0802ebf8] Update Tweezers
void func_0802ebf8(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    s8 temp;

    func_0802ebdc();
    if (tweezers->isMoving) {
        if (tweezers->isMoving == TRUE) {
            func_0802eba0();
        }
    }

    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) {
        temp = func_08010198(tweezers->sprite);
        if (temp == func_08010288(tweezers->sprite) - 2) {
            func_0802ea74(tweezers->heldHair - 1);
            tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
        }
    }
    func_0800febc(tweezers->sprite, tweezers->rotation);
}


// [func_0802ec50] GFX_INIT Func_02
void func_0802ec50(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0802ec60] GFX_INIT Func_01
void func_0802ec60(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(func_0800c3b8(), D_089e3ff4[gRhythmTweezersInfo.version], 0x2000);
    func_08005d38(temp, &func_0802ec50, 0);
}


// [func_0802eca0] GFX_INIT Func_00
void func_0802eca0(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_080087b4(func_0800c3b8(), &D_089e3db0);
    func_08005d38(temp, &func_0802ec60, 0);
}


// [func_0802eccc] MAIN - Init
void func_0802eccc(u8 ver) {
    u32 temp;

    // Standard game setup.
    gRhythmTweezersInfo.version = ver;
    func_0802eca0(); // Load graphics.
    func_0800e0ec();
    func_0800e0a0(0, 1, 0, -160, 2, 28, 0x8000);
    func_0800e0a0(1, 1, 0, 0, 0, 30, 0x4002);

    // Rhythm Tweezers setup.
    func_0802eaf8(); // Initialise tweezers.
    func_0802e99c(); // Initialise falling hairs.
    func_0802e750(); // Initialise vegetable face.
    gRhythmTweezersInfo.maskPosition = -160;
    gRhythmTweezersInfo.maskVelocity = -8;
    gRhythmTweezersInfo.tutorialSprite = func_0804d160(D_03005380, &D_088e8910, 0, 120, 150, 0, 0, 0, 0x8000);

    // Other setup.
    temp = func_0800a204((u16) func_0800c3b8(), 1, 0xf0, 0x1e);
    func_0800ac68(temp, 0, 0x8c);
    func_0800aca0(temp, 0x8800);
    func_0800acd8(temp, 1);
    func_0800acb0(temp, 1);
    func_0800acbc(temp, 0);
    func_08018630(temp);
    func_08017338(0xf1, 0);
}


// [func_0802edc4] ENGINE Func_09 - STUB
void func_0802edc4_stub(void) {
}


// [func_0802edc8] Update Mask
void func_0802edc8(void) {
    gRhythmTweezersInfo.maskPosition = func_080087d4(gRhythmTweezersInfo.maskPosition + gRhythmTweezersInfo.maskVelocity, -160, 0);
    D_03004b10.BG0VOFS = gRhythmTweezersInfo.maskPosition;
}


// [func_0802ee00] ENGINE Func_07 - Show Mask
void func_0802ee00(void) {
    gRhythmTweezersInfo.maskVelocity = 8;
}


// [func_0802ee10] ENGINE Func_08 - Hide Mask
void func_0802ee10(void) {
    gRhythmTweezersInfo.maskVelocity = -8;
}


// [func_0802ee24] MAIN - Update
void func_0802ee24(void) {
    func_0802ebf8(); // Update tweezers.
    func_0802ea20(); // Update falling hairs.
    func_0802ee6c(); // Update hair position cycle.
    func_0802e980(); // Update vegetable.
    func_0802edc8(); // Update mask.
}


// [func_0802ee40] MAIN - Close (STUB)
void func_0802ee40_stub(void) {
}


// [func_0802ee44] ENGINE Func_01 - Reset Hair Placement Cycle
void func_0802ee44(void) {
    gRhythmTweezersInfo.hairCycleTime = 0;
    gRhythmTweezersInfo.hairCycleTarget = func_0800c3a4(0x48);
    gRhythmTweezersInfo.existingHairs.full = 0;
    gRhythmTweezersInfo.existingHairs.half = 0;
}


// [func_0802ee6c] Update Hair Placement Cycle
void func_0802ee6c(void) {
    gRhythmTweezersInfo.hairCycleTime += 1;
    // Fantastic work, Nintendo SPD.
}


// [func_0802ee7c] CUE - Spawn
void func_0802ee7c(u32 arg0, struct RhythmTweezersCue *cue, u32 isLongHair, u32 arg3) {
    struct RhythmTweezersInfo *gameInfo;
    u32 *anim;
    u32 rotation;

    gameInfo = &gRhythmTweezersInfo;
    rotation = 0x340;
    rotation -= 640 * gameInfo->hairCycleTime / gameInfo->hairCycleTarget;

    anim = (!isLongHair) ? &D_088e8768 : &D_088e89a8;
    cue->sprite = func_0800fa6c(anim, 0, 120, 16, 0x4800, 0x100, -0x200, 1, 0x7f, 0, 0);
    func_0800feec(cue->sprite, TRUE);

    func_0800fed0(cue->sprite, rotation, 0x4c);
    func_080102a8(cue->sprite, &gRhythmTweezersInfo.screenHorizontalPosition, &D_03004b10.BG1VOFS);

    cue->isLongHair = isLongHair;
    cue->finished = FALSE;

    gRhythmTweezersInfo.existingHairs.full += 1;

    if (!isLongHair) {
        func_08002698(&s_hanabi_pon_seqData, 0xd0, 0);
    } else {
        func_08002634(&s_f_hair_appear_long_seqData);
    }
}


// [func_0802ef54] CUE - Update (Short Hair)
u32 func_0802ef54(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    if (arg2 > arg3 * 2) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// !TODO - It's always with these cue functions, I swear: https://decomp.me/scratch/xtw97
// [func_0802ef68] CUE - Update (Long Hair)
#include "asm/scenes/rhythm_tweezers/asm_0802ef68.s"


// [func_0802f164] CUE - Despawn
void func_0802f164(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    func_0800fc70(cue->sprite);
}


// [func_0802f170] CUE - Hit (Short Hair)
void func_0802f170(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u32 temp;

    func_08010064(cue->sprite, &D_088e88f8, 0, 0, 0, 0);
    func_08010064(tweezers->sprite, &D_088e87a8, 0, 1, 0x7f, 0);
    D_03004b10.BG1VOFS = 2;

    if (tweezers->heldHair) func_0802ea74(tweezers->heldHair - 1);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_FULL;

    func_0804cebc(D_03005380, vegetable->spriteCurrent, 1);
    gRhythmTweezersInfo.existingHairs.full -= 1;

    temp = *(u32 *)(&gRhythmTweezersInfo.existingHairs);
    if (temp == 0) {
        func_0804dae0(D_03005380, vegetable->spriteCurrent, 0, 0, 0);
        func_0804cebc(D_03005380, vegetable->spriteCurrent, 2);
    }
}


// [func_0802f21c] CUE - Hit/Barely (Long Hair)
void func_0802f21c(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    u32 temp;

    func_08018068();
    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) func_0802ea74(tweezers->heldHair - 1);
    func_08010040(tweezers->sprite, 0);
    func_08010064(cue->sprite, &D_088e8a50, 0, 0, 0, 0);

    cue->rotation = tweezers->rotation;
    tweezers->isPulling = TRUE;
    cue->finished = TRUE;
    cue->pullTime = 0;
    cue->pullTarget = func_0800c3a4(0xc) - func_08018054();
    func_08017338(0, 0);

    func_0800274c(&s_f_hair_nuki_long_seqData);
    func_08002634(&s_f_hair_tuneru_seqData);
}


// [func_0802f2a0] CUE - Barely (Short Hair)
void func_0802f2a0(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;

    func_08010064(cue->sprite, &D_088e88f8, 0, 1, 0x7f, 0);
    func_08010064(tweezers->sprite, &D_088e8848, 0, 1, 0x7f, 0);

    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) func_0802ea74(tweezers->heldHair - 1);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_BARELY;

    func_0804cebc(D_03005380, vegetable->spriteCurrent, 1);

    gRhythmTweezersInfo.existingHairs.full -= 1;
    gRhythmTweezersInfo.existingHairs.half += 1;
}


// [func_0802f330] CUE - Miss
void func_0802f330(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    func_0800bc40();
}


// [func_0802f33c] MAIN - Input Event
void func_0802f33c(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;

    func_08010064(tweezers->sprite, &D_088e8898, 0, 1, 0x7f, 0);

    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) func_0802ea74(tweezers->heldHair - 1);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
}


// [func_0802f378] COMMON Func_00 - STUB
void func_0802f378_stub(void) {
}


// [func_0802f37c] COMMON Func_01 - STUB
void func_0802f37c_stub(void) {
}


// [func_0802f380] ENGINE Func_05 - Unknown (Unused - seems to hide(?) the unused Tutorial Text sprite)
void func_0802f380(void) {
    func_0804d770(D_03005380, gRhythmTweezersInfo.tutorialSprite, 0);
}