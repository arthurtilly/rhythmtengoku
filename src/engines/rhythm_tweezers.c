#include "engines/rhythm_tweezers.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/affine_sprite.h"
#include "src/lib_0804c870.h"
asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gRhythmTweezersInfo ((struct RhythmTweezersInfo *)D_030055d0)


/* RHYTHM TWEEZERS */


// [func_0802e750] Initialise Vegetable Face
void func_0802e750(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;
    u8 type = (gRhythmTweezersInfo->version % 3);

    vegetable->spriteCurrent = func_0804d160(D_03005380, D_089e3d98[type], 0, 120, 16, 0x4800, -1, 0, 0);
    func_0804db44(D_03005380, vegetable->spriteCurrent, &gRhythmTweezersInfo->screenHorizontalPosition, &D_03004b10.BG_OFS[BG_LAYER_1].y);

    vegetable->spriteNext = func_0804d160(D_03005380, D_089e3d98[type], 0, 120, 16, 0x4800, 0, 0, 0);
    func_0804d614(D_03005380, vegetable->spriteNext, 0x178);
    func_0804db44(D_03005380, vegetable->spriteNext, &gRhythmTweezersInfo->screenHorizontalPosition, &D_03004b10.BG_OFS[BG_LAYER_1].y);

    vegetable->bgMapSide = 0;
    gRhythmTweezersInfo->screenHorizontalPosition = 0;
    vegetable->isScrolling = FALSE;
}


// [func_0802e828] ENGINE Func_02 - Scroll to New Vegetable
void func_0802e828(u32 time) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;
    u32 side;
    u32 *bgMap;

    vegetable->isScrolling = TRUE;
    vegetable->scrollTime = 0;
    vegetable->scrollTarget = beats_to_ticks(time);
    func_0804d8f8(D_03005380, vegetable->spriteNext, D_089e3d98[vegetable->typeNext], 0, 0, 0, 0);

    side = vegetable->bgMapSide;
    bgMap = &RT_VEGETABLE_BG_MAP_R;
    if (side) bgMap = &RT_VEGETABLE_BG_MAP_L;
    func_08003eb8(D_089e3da4[vegetable->typeNext], bgMap);
}


// [func_0802e89c] ENGINE Func_04 - Play Cash Register SFX
void func_0802e89c(void) {
    play_sound(&s_f_hair_next_seqData);
}


// [func_0802e8ac] Update Vegetable (Scrolling)
void func_0802e8ac(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;
    u32 x;

    vegetable->scrollTime += 1;

    // Vegetable has reached its destination.
    if (vegetable->scrollTime >= vegetable->scrollTarget) {
        gRhythmTweezersInfo->screenHorizontalPosition = 0;
        vegetable->bgMapSide ^= 1;
        D_03004b10.BG_OFS[BG_LAYER_1].x = vegetable->bgMapSide << 8;
        vegetable->isScrolling = FALSE;
        gameplay_reset_cues();

        func_0804d8f8(D_03005380, vegetable->spriteCurrent, D_089e3d98[vegetable->typeNext], 0, -1, 0, 0);
        vegetable->typeCurrent = vegetable->typeNext;
    }

    // Vegetable has not yet reached its destination.
    else {
        x = 1024 * vegetable->scrollTime / vegetable->scrollTarget;
        x = (-coss(x) + 0x100) >> 1;

        gRhythmTweezersInfo->screenHorizontalPosition = x;
        D_03004b10.BG_OFS[BG_LAYER_1].x = x;
        if (vegetable->bgMapSide != 0) {
            D_03004b10.BG_OFS[BG_LAYER_1].x = x + 0x100;
        }
    }
}


// [func_0802e96c] ENGINE Func_03 - Define New Vegetable Type
void func_0802e96c(u32 type) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;

    vegetable->typeNext = type;
}


// [func_0802e97c] ENGINE Func_06 - STUB
void func_0802e97c_stub(void) {
}


// [func_0802e980] Update Vegetable
void func_0802e980(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;

    if (vegetable->isScrolling) {
        func_0802e8ac();
    }
}


// [func_0802e99c] Initialise Falling Hairs
void func_0802e99c(void) {
    struct RhythmTweezersFallingHair *hair;
    u32 i;

    for (i = 0; i < 5; i++) {
        hair = &gRhythmTweezersInfo->fallingHairs[i];
        hair->sprite = create_affine_sprite(D_088e88e0, 0, 120, 16, 0x4800, 0x100, -0x200, 0, 0, 0x8000, 0);
        affine_sprite_rotate_with_orbit(hair->sprite, TRUE);
        affine_sprite_set_orbit_distance(hair->sprite, 0x4c);
        hair->fallDistance = 0xc800;
        hair->fallSpeed = 0;
    }
    gRhythmTweezersInfo->fallingHairsNext = 0;
}


// [func_0802ea20] Update Falling Hairs
void func_0802ea20(void) {
    struct RhythmTweezersFallingHair *hair;
    u32 i = 0;

    for (i; i <= 4; i++) {
        hair = &gRhythmTweezersInfo->fallingHairs[i];
        if (hair->fallDistance <= 0xc7ff) {
            hair->fallDistance += hair->fallSpeed += 0x20;
            hair->rotation += hair->rotationSpeed;
            affine_sprite_set_y(hair->sprite, (s16) ((hair->fallDistance >> 8) + 0x10));
            affine_sprite_set_rotation(hair->sprite, hair->rotation);
        }
    }
}


// [func_0802ea74] Create Falling Hair
void func_0802ea74(u32 arg0) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;
    struct RhythmTweezersFallingHair *hair = &gRhythmTweezersInfo->fallingHairs[gRhythmTweezersInfo->fallingHairsNext];

    hair->rotation = -0x200;
    hair->rotationSpeed = agb_random(0x1f) - 15;

    affine_sprite_set_y(hair->sprite, 0x10);
    affine_sprite_set_orbit_angle(hair->sprite, tweezers->rotation);
    affine_sprite_set_rotation(hair->sprite, hair->rotation);
    affine_sprite_play_anim(hair->sprite, 1);

    hair->fallDistance = 0;
    hair->fallSpeed = 0;
    affine_sprite_set_anim_frame(hair->sprite, arg0);

    if ((gRhythmTweezersInfo->fallingHairsNext += 1) > 4) {
        gRhythmTweezersInfo->fallingHairsNext = 0;
    }
}


// [func_0802eaf8] Initialise Tweezers
void func_0802eaf8(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;

    tweezers->rotation = -0x200;
    tweezers->sprite = create_affine_sprite(D_088e87a8, 0x7f, 120, 16, 0x4800, 0x100, -0x200, 1, 0x7f, 0, 0);
    affine_sprite_set_orbit(tweezers->sprite, tweezers->rotation, 0x4c);
    affine_sprite_rotate_with_orbit(tweezers->sprite, TRUE);

    tweezers->isMoving = FALSE;
    tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
    tweezers->isPulling = FALSE;
    gRhythmTweezersInfo->existingHairs.full = 0;
}


// [func_0802eb7c] ENGINE Func_00 - Spawn Tweezers
void func_0802eb7c(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;

    tweezers->isMoving = TRUE;
    tweezers->cycleTime = 0;
    tweezers->cycleTarget = beats_to_ticks(0xa8);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
}


// [func_0802eba0] Update Tweezers (Position)
void func_0802eba0(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;
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
    if (D_03004b10.BG_OFS[BG_LAYER_1].y != 0) {
        D_03004b10.BG_OFS[BG_LAYER_1].y -= 1;
    }
}


// [func_0802ebf8] Update Tweezers
void func_0802ebf8(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;
    s8 temp;

    func_0802ebdc();
    if (tweezers->isMoving) {
        if (tweezers->isMoving == TRUE) {
            func_0802eba0();
        }
    }

    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) {
        temp = func_08010198(tweezers->sprite);
        if (temp == affine_sprite_get_total_frames(tweezers->sprite) - 2) {
            func_0802ea74(tweezers->heldHair - 1);
            tweezers->heldHair = TWEEZERS_HELD_HAIR_NONE;
        }
    }
    affine_sprite_set_orbit_angle(tweezers->sprite, tweezers->rotation);
}


// [func_0802ec50] GFX_INIT Func_02
void func_0802ec50(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0802ec60] GFX_INIT Func_01
void func_0802ec60(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(get_current_mem_id(), D_089e3ff4[gRhythmTweezersInfo->version], 0x2000);
    task_run_after(temp, &func_0802ec50, 0);
}


// [func_0802eca0] GFX_INIT Func_00
void func_0802eca0(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_080087b4(get_current_mem_id(), &D_089e3db0);
    task_run_after(temp, &func_0802ec60, 0);
}


// [func_0802eccc] MAIN - Init
void func_0802eccc(u8 ver) {
    struct TextPrinter *textPrinter;

    // Standard game setup.
    gRhythmTweezersInfo->version = ver;
    func_0802eca0(); // Load graphics.
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_0, TRUE, 0, -160, 2, 28, 0x8000);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 30, 0x4002);

    // Rhythm Tweezers setup.
    func_0802eaf8(); // Initialise tweezers.
    func_0802e99c(); // Initialise falling hairs.
    func_0802e750(); // Initialise vegetable face.
    gRhythmTweezersInfo->maskPosition = -160;
    gRhythmTweezersInfo->maskVelocity = -8;
    gRhythmTweezersInfo->tutorialSprite = func_0804d160(D_03005380, D_088e8910, 0, 120, 150, 0, 0, 0, 0x8000);

    // Other setup.
    textPrinter = text_printer_create_new(get_current_mem_id(), 1, 240, 30);
    text_printer_set_x_y(textPrinter, 0, 140);
    text_printer_set_layer(textPrinter, 0x8800);
    text_printer_center_by_content(textPrinter, TRUE);
    text_printer_set_palette(textPrinter, 1);
    text_printer_set_colors(textPrinter, 0);
    gameplay_set_text_printer(textPrinter);
    gameplay_set_input_buttons(A_BUTTON | DPAD_ALL, 0);
}


// [func_0802edc4] ENGINE Func_09 - STUB
void func_0802edc4_stub(void) {
}


// [func_0802edc8] Update Mask
void func_0802edc8(void) {
    gRhythmTweezersInfo->maskPosition = func_080087d4(gRhythmTweezersInfo->maskPosition + gRhythmTweezersInfo->maskVelocity, -160, 0);
    D_03004b10.BG_OFS[BG_LAYER_0].y = gRhythmTweezersInfo->maskPosition;
}


// [func_0802ee00] ENGINE Func_07 - Show Mask
void func_0802ee00(void) {
    gRhythmTweezersInfo->maskVelocity = 8;
}


// [func_0802ee10] ENGINE Func_08 - Hide Mask
void func_0802ee10(void) {
    gRhythmTweezersInfo->maskVelocity = -8;
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
    gRhythmTweezersInfo->hairCycleTime = 0;
    gRhythmTweezersInfo->hairCycleTarget = beats_to_ticks(0x48);
    gRhythmTweezersInfo->existingHairs.full = 0;
    gRhythmTweezersInfo->existingHairs.half = 0;
}


// [func_0802ee6c] Update Hair Placement Cycle
void func_0802ee6c(void) {
    gRhythmTweezersInfo->hairCycleTime += 1;
    // Fantastic work, Nintendo SPD.
}


// [func_0802ee7c] CUE - Spawn
void func_0802ee7c(u32 arg0, struct RhythmTweezersCue *cue, u32 isLongHair, u32 arg3) {
    struct RhythmTweezersInfo *gameInfo;
    const struct Animation *anim;
    u32 rotation;

    gameInfo = gRhythmTweezersInfo;
    rotation = 0x340;
    rotation -= 640 * gameInfo->hairCycleTime / gameInfo->hairCycleTarget;

    anim = (!isLongHair) ? D_088e8768 : D_088e89a8;
    cue->sprite = create_affine_sprite(anim, 0, 120, 16, 0x4800, 0x100, -0x200, 1, 0x7f, 0, 0);
    affine_sprite_rotate_with_orbit(cue->sprite, TRUE);

    affine_sprite_set_orbit(cue->sprite, rotation, 0x4c);
    affine_sprite_set_x_y_controllers(cue->sprite, &gRhythmTweezersInfo->screenHorizontalPosition, &D_03004b10.BG_OFS[BG_LAYER_1].y);

    cue->isLongHair = isLongHair;
    cue->finished = FALSE;

    gRhythmTweezersInfo->existingHairs.full += 1;

    if (!isLongHair) {
        play_sound_w_pitch_volume(&s_hanabi_pon_seqData, 0xd0, 0);
    } else {
        play_sound(&s_f_hair_appear_long_seqData);
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
#include "asm/engines/rhythm_tweezers/asm_0802ef68.s"


// [func_0802f164] CUE - Despawn
void func_0802f164(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    delete_affine_sprite(cue->sprite);
}


// [func_0802f170] CUE - Hit (Short Hair)
void func_0802f170(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;
    u32 temp;

    affine_sprite_change_anim(cue->sprite, D_088e88f8, 0, 0, 0, 0);
    affine_sprite_change_anim(tweezers->sprite, D_088e87a8, 0, 1, 0x7f, 0);
    D_03004b10.BG_OFS[BG_LAYER_1].y = 2;

    if (tweezers->heldHair) func_0802ea74(tweezers->heldHair - 1);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_FULL;

    func_0804cebc(D_03005380, vegetable->spriteCurrent, 1);
    gRhythmTweezersInfo->existingHairs.full -= 1;

    temp = *(u32 *)(&gRhythmTweezersInfo->existingHairs);
    if (temp == 0) {
        func_0804dae0(D_03005380, vegetable->spriteCurrent, 0, 0, 0);
        func_0804cebc(D_03005380, vegetable->spriteCurrent, 2);
    }
}


// [func_0802f21c] CUE - Hit/Barely (Long Hair)
void func_0802f21c(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;
    u32 temp;

    func_08018068();
    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) func_0802ea74(tweezers->heldHair - 1);
    affine_sprite_play_anim(tweezers->sprite, 0);
    affine_sprite_change_anim(cue->sprite, D_088e8a50, 0, 0, 0, 0);

    cue->rotation = tweezers->rotation;
    tweezers->isPulling = TRUE;
    cue->finished = TRUE;
    cue->pullTime = 0;
    cue->pullTarget = beats_to_ticks(0xc) - gameplay_get_last_hit_offset();
    gameplay_set_input_buttons(0, 0);

    stop_sound(&s_f_hair_nuki_long_seqData);
    play_sound(&s_f_hair_tuneru_seqData);
}


// [func_0802f2a0] CUE - Barely (Short Hair)
void func_0802f2a0(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo->vegetable;

    affine_sprite_change_anim(cue->sprite, D_088e88f8, 0, 1, 0x7f, 0);
    affine_sprite_change_anim(tweezers->sprite, D_088e8848, 0, 1, 0x7f, 0);

    if (tweezers->heldHair != TWEEZERS_HELD_HAIR_NONE) func_0802ea74(tweezers->heldHair - 1);
    tweezers->heldHair = TWEEZERS_HELD_HAIR_BARELY;

    func_0804cebc(D_03005380, vegetable->spriteCurrent, 1);

    gRhythmTweezersInfo->existingHairs.full -= 1;
    gRhythmTweezersInfo->existingHairs.half += 1;
}


// [func_0802f330] CUE - Miss
void func_0802f330(u32 arg0, struct RhythmTweezersCue *cue, u32 arg2, u32 arg3) {
    beatscript_enable_loops();
}


// [func_0802f33c] MAIN - Input Event
void func_0802f33c(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo->tweezers;

    affine_sprite_change_anim(tweezers->sprite, D_088e8898, 0, 1, 0x7f, 0);

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
    func_0804d770(D_03005380, gRhythmTweezersInfo->tutorialSprite, 0);
}