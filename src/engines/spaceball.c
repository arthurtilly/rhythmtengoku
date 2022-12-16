#include "engines/spaceball.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/affine_sprite.h"
#include "src/lib_0804c870.h"

extern s32 (*D_03004ae4)(s32);
extern s32 (*fast_udivsi3)(s32, s32);

// For readability.
#define gSpaceballInfo ((struct SpaceballInfo *)D_030055d0)


/* SPACEBALL */


// [func_0801fc44] Initialise/Reset BG Star Position
void func_0801fc44(u32 current) {
    struct SpaceballStar *star;
    s32 scale, x, y;

    scale = agb_random(INT_TO_FIXED(3)) + INT_TO_FIXED(1);
    x = fast_divsi3((agb_random(240) - 120) * scale, INT_TO_FIXED(1));
    y = fast_divsi3((agb_random(160) - 80) * scale, INT_TO_FIXED(1));

    star = &gSpaceballInfo->stars[current];
    star->x = x;
    star->y = y;
    star->z = gSpaceballInfo->zoom + scale;
}


// [func_0801fcb0] Update BG Star Positions (X, Y)
void func_0801fcb0(void) {
    struct SpaceballStar *star;
    s16 sprite;
    s32 scale, x, y;
    u32 i;

    for (i = 0; i < 24; i++) {
        sprite = gSpaceballInfo->starSprite[i];
        star = &gSpaceballInfo->stars[i];

        scale = fast_divsi3(INT_TO_FIXED(0x100), star->z - gSpaceballInfo->zoom);
        x = FIXED_TO_INT(star->x * scale);
        y = FIXED_TO_INT(star->y * scale);
        func_0804d5d4(D_03005380, sprite, x + 120, y + 80);
    }
}


// [func_0801fd1c] Update BG Star Positions (Z)
void func_0801fd1c(void) {
    struct SpaceballStar *star;
    s32 zMin = gSpaceballInfo->zoom + INT_TO_FIXED(1);
    s32 zMax = gSpaceballInfo->zoom + INT_TO_FIXED(4);
    u32 i;

    for (i = 0; i < 24; i++) {
        star = &gSpaceballInfo->stars[i];
        star->z -= 8;
        if ((star->z < zMin) || (star->z > zMax)) {
            func_0801fc44(i);
        }
    }
}


// [func_0801fd70] Update Entity Position
void func_0801fd70(struct AffineSprite *sprite, s32 x, s32 y, s32 z) {
    s32 scale;

    z -= gSpaceballInfo->zoom;
    scale = fast_divsi3(INT_TO_FIXED(0x100), z);

    x = FIXED_TO_INT(x * scale);
    y = FIXED_TO_INT(y * scale);
    func_0800fddc(sprite, x + 120, y + 80);
    func_0800fe60(sprite, scale);
}


// [func_0801fdc4] Update Batter Position
void func_0801fdc4(struct AffineSprite *sprite, s32 x, s32 y, s32 z, const struct Animation *animClose, const struct Animation *animFar) {
    s32 scale;

    z -= gSpaceballInfo->zoom;
    scale = fast_divsi3(INT_TO_FIXED(0x100), z);

    x = FIXED_TO_INT(x * scale);
    y = FIXED_TO_INT(y * scale);
    func_0800fddc(sprite, x + 120, y + 80);

    if (scale > INT_TO_FIXED(0.5)) {
        func_0800fe60(sprite, scale);
        func_08010064(sprite, animClose, -1, 1, 0x7f, 0);
    } else {
        scale = fast_divsi3(INT_TO_FIXED(0x200), z);
        func_0800fe60(sprite, scale);
        func_08010064(sprite, animFar, -1, 1, 0x7f, 0);
    }
}


// [func_0801fe6c] Update Entities, Stars & Camera
void func_0801fe6c(void) {
    s32 scaleH, scaleV, h, v;

    // Update Entities
    func_0801fdc4(gSpaceballInfo->batter.sprite, gSpaceballInfo->batter.x, gSpaceballInfo->batter.y,
            gSpaceballInfo->batter.z, gSpaceballInfo->batter.animClose, gSpaceballInfo->batter.animFar);

    func_0801fd70(gSpaceballInfo->pitcher.sprite, gSpaceballInfo->pitcher.x, gSpaceballInfo->pitcher.y,
            gSpaceballInfo->pitcher.z);

    func_0801fd70(gSpaceballInfo->umpire.sprite, gSpaceballInfo->umpire.x, gSpaceballInfo->umpire.y,
            gSpaceballInfo->umpire.z);

    func_0801fd70(gSpaceballInfo->poofR.sprite, gSpaceballInfo->poofR.x, gSpaceballInfo->poofR.y,
            gSpaceballInfo->poofR.z);

    func_0801fd70(gSpaceballInfo->poofL.sprite, gSpaceballInfo->poofL.x, gSpaceballInfo->poofL.y,
            gSpaceballInfo->poofL.z);

    // Update BG
    scaleH = INT_TO_FIXED(gSpaceballInfo->zoom * -240);
    if (scaleH < 0) scaleH += 0xff;
    h = FIXED_TO_INT(scaleH);
    scaleV = INT_TO_FIXED(gSpaceballInfo->zoom * -160);
    if (scaleV < 0) scaleV += 0xff;
    v = FIXED_TO_INT(scaleV);
    func_08008910(2, INT_TO_FIXED(128), INT_TO_FIXED(176), h, v, 0);

    // Update Stars
    if (gSpaceballInfo->currentStar < 24) {
        gSpaceballInfo->starSprite[gSpaceballInfo->currentStar] = func_0804d160(D_03005380, spaceball_anim11, 0, 0, 0, 0xc800, 1, 0, 0);
        func_0801fc44(gSpaceballInfo->currentStar);
        gSpaceballInfo->currentStar++;
    } else {
        func_0801fd1c();
        func_0801fcb0();
    }
}


// [func_0801ff60] GFX_INIT Func_02
void func_0801ff60(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0801ff70] GFX_INIT Func_01
void func_0801ff70(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), spaceball_gfx_table, 0x2000);
    task_run_after(data, func_0801ff60, 0);
}


// [func_0801ffa0] GFX_INIT Func_00
void func_0801ffa0(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(get_current_mem_id(), spaceball_buffered_textures);
    task_run_after(data, func_0801ff70, 0);
}


// [func_0801ffcc] MAIN - Init
void func_0801ffcc(u32 ver) {
    gSpaceballInfo->version = ver;
    func_0801ffa0();
    scene_set_video_mode(VIDEO_MODE_2TEXT_1ROT);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, 0x4082);
    func_08008910(BG_LAYER_2, INT_TO_FIXED(120), INT_TO_FIXED(80), INT_TO_FIXED(240), INT_TO_FIXED(160), 0);
    scene_hide_bg_layer(BG_LAYER_0);
    scene_hide_bg_layer(BG_LAYER_1);
    scene_hide_bg_layer(BG_LAYER_3);

    gSpaceballInfo->batter.sprite = func_0800fa6c(spaceball_anim00, 0, 170, 80, 0x4800, INT_TO_FIXED(0.5), 0, 0, 0, 0, 1);
    gSpaceballInfo->batter.x = 50;
    gSpaceballInfo->batter.y = 0;
    gSpaceballInfo->batter.z = 0;
    gSpaceballInfo->batter.swingTimer = 0;
    func_0802026c(0);

    gSpaceballInfo->pitcher.sprite = func_0800fa6c(spaceball_anim02, 2, 70, 128, 0x4800, INT_TO_FIXED(0.5), 0, 0, 0, 0, 1);
    gSpaceballInfo->pitcher.x = -50;
    gSpaceballInfo->pitcher.y = 48;
    gSpaceballInfo->pitcher.z = 0;

    gSpaceballInfo->umpire.sprite = func_0800fa6c(spaceball_anim13, 2, 120, 89, 0x4864, INT_TO_FIXED(0.5), 0, 1, 2, 0x8000, 1);
    gSpaceballInfo->umpire.x = 0;
    gSpaceballInfo->umpire.y = 9;
    gSpaceballInfo->umpire.z = 0;
    func_08010040(gSpaceballInfo->umpire.sprite, TRUE);

    gSpaceballInfo->poofR.sprite = func_0800fa6c(spaceball_anim10, 2, 154, 132, 0x4864, INT_TO_FIXED(1), 0, 1, 0, 0x8002, 1);
    gSpaceballInfo->poofR.x = 34;
    gSpaceballInfo->poofR.y = 52;
    gSpaceballInfo->poofR.z = 0;

    gSpaceballInfo->poofL.sprite = func_0800fa6c(spaceball_anim10, 2, 122, 132, 0x4864, INT_TO_FIXED(1), 0, 1, 0, 0x8002, 1);
    gSpaceballInfo->poofL.x = 2;
    gSpaceballInfo->poofL.y = 52;
    gSpaceballInfo->poofL.z = 0;
    func_0800ff44(gSpaceballInfo->poofL.sprite, TRUE); // Flip Horizontal

    gSpaceballInfo->currentStar = 0;
    gSpaceballInfo->zoom = INT_TO_FIXED(-0.5);
    gSpaceballInfo->totalMissed = 0;
    gSpaceballInfo->spaceballType = 0;
    gameplay_set_input_buttons(A_BUTTON, 0);
}


// [func_080201a0] ENGINE Func_06 - STUB
void func_080201a0(void) {
}


// [func_080201a4] ENGINE Func_00 - Pitcher Prepare
void func_080201a4(void) {
    func_08010008(gSpaceballInfo->pitcher.sprite, 0, 0, 0);
    func_0800ffc0(gSpaceballInfo->pitcher.sprite, 0);
}


// [func_080201cc] Update Batter Swing
void func_080201cc(struct SpaceballBatter *batter) {
    if (batter->swingTimer == 0) return;

    batter->swingTimer--;
    if (batter->swingTimer == 0) {
        func_08010008(batter->sprite, 0, 0, 0);
        func_0800ffc0(batter->sprite, 0);
        gameplay_set_input_buttons(A_BUTTON, 0);
    }
}


// [func_08020200] ENGINE Func_01 - Loop Exit Condition (Practice)
void func_08020200(void) {
    if (gSpaceballInfo->totalMissed == 0) {
        beatscript_disable_loops();
    } else {
        beatscript_enable_loops();
    }
    gSpaceballInfo->totalMissed = 0;
}


// [func_08020238] ENGINE Func_02 - Set Camera Zoom
void func_08020238(u32 controls) {
    s32 target = (s32) controls >> 0x10;
    u32 time = controls & 0xffff;
    func_0800c4b0(2, beats_to_ticks(time), &gSpaceballInfo->zoom, gSpaceballInfo->zoom, target);
}


// [func_0802026c] ENGINE Func_03 - Set Batter Variant
void func_0802026c(u32 index) {
    gSpaceballInfo->batter.animClose = spaceball_anim_table_batter_close[index];
    gSpaceballInfo->batter.animFar = spaceball_anim_table_batter_far[index];
}


// [func_08020290] ENGINE Func_05 - Set Next Spaceball Sprite
void func_08020290(u32 index) {
    gSpaceballInfo->spaceballType = index;
}


// [func_080202a4] ENGINE Func_04 - Set Umpire Animation
void func_080202a4(u32 show) {
    struct AffineSprite *sprite = gSpaceballInfo->umpire.sprite;
    if (show) {
        func_08010064(sprite, spaceball_anim12, 0, 1, 1, 0);
    } else {
        func_08010064(sprite, spaceball_anim13, 0, 1, 2, 0);
    }
}


// [func_080202f0] MAIN - Update
void func_080202f0(void) {
    func_080201cc(&gSpaceballInfo->batter);
    func_0801fe6c();
}


// [func_08020308] MAIN - Close (STUB)
void func_08020308(void) {
}


// [func_0802030c] CUE - Spawn
void func_0802030c(u32 arg0, struct SpaceballCue *cue, u32 arcTime, u32 unused3) {
    u32 temp;
    u32 div;
    u32 time;

    cue->state = 0;
    cue->rotation = agb_random(0x800);
    cue->rotationSpeed = 0x40;
    cue->z = 0;
    cue->unk1C = (arcTime >= 0x18) ? (90 * arcTime / 0x18) : 90;
    cue->sprite = func_0800fa6c(spaceball_anim_table_ball[gSpaceballInfo->spaceballType], 0, 70, 120, 0x479c, INT_TO_FIXED(1), cue->rotation, 1, 0, 0, 1);

    temp = cue->unk1C - 48;
    div = D_03004ae4(256 * INT_TO_FIXED(temp) / cue->unk1C);
    time = beats_to_ticks(arcTime);
    cue->endTime = 2 * INT_TO_FIXED(time) / (div + INT_TO_FIXED(1));

    func_0801fd70(cue->sprite, -50, 40, cue->z);
    cue->missed = FALSE;
    func_08010008(gSpaceballInfo->pitcher.sprite, 1, 0x7f, 0);
    func_0800ffc0(gSpaceballInfo->pitcher.sprite, 1);
}


// [func_080203fc] Update Spaceball (Launch)
u32 func_080203fc(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    u32 temp;

    if (arg2 > cue->endTime) {
        play_sound(&s_f_batter_ball_land_seqData);
        func_0800ffc0(gSpaceballInfo->poofR.sprite, 0);
        func_08010040(gSpaceballInfo->poofR.sprite, TRUE);
        func_0800ffc0(gSpaceballInfo->poofL.sprite, 0);
        func_08010040(gSpaceballInfo->poofL.sprite, TRUE);
        if (!cue->missed) {
            gameplay_add_cue_result(gameplay_get_cue_marking_criteria(arg0), 2, 0);
        }
        return TRUE;
    }
    else {
        temp = arg2 - (cue->endTime / 2);
        cue->x = func_08008f04(70, 138, arg2, cue->endTime);
        cue->y = 120 - (cue->unk1C - fast_udivsi3(cue->unk1C * (temp << 2) * temp, cue->endTime * cue->endTime));
        func_0801fd70(cue->sprite, cue->x - 120, cue->y - 80, cue->z);
        func_0800fe94(cue->sprite, cue->rotation);
        cue->rotation += cue->rotationSpeed;
        return FALSE;
    }
}


// [func_080204b8] Update Spaceball (Hit)
u32 func_080204b8(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    if (cue->z < gSpaceballInfo->zoom + INT_TO_FIXED(0.25)) return TRUE;

    func_0801fd70(cue->sprite, cue->x - 120, cue->y - 80, cue->z);
    func_0800fe94(cue->sprite, cue->rotation);
    cue->rotation += cue->rotationSpeed;
    cue->z -= INT_TO_FIXED(0.25);
    return FALSE;
}


// [func_08020500] Update Spaceball (Barely)
u32 func_08020500(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    if (cue->z < gSpaceballInfo->zoom + INT_TO_FIXED(0.25)) return TRUE;
    if (FIXED_TO_INT(cue->y) > 1000) return TRUE;

    cue->x += cue->xSpeed;
    cue->y += cue->ySpeed;
    cue->ySpeed += INT_TO_FIXED(0.25);
    cue->z -= 4;
    func_0801fd70(cue->sprite, cue->x - 120, (cue->y >> 8) - 80, cue->z);
    func_0800fe94(cue->sprite, cue->rotation);
    cue->rotation += cue->rotationSpeed;
    return FALSE;
}


// [func_08020564] CUE - Update
u32 func_08020564(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    u32 finished;

    switch (cue->state) {
        case SPACEBALL_CUE_STATE_LAUNCH:
            finished = func_080203fc(arg0, cue, arg2, unused3);
            break;
        case SPACEBALL_CUE_STATE_HIT:
            finished = func_080204b8(arg0, cue, arg2, unused3);
            break;
        case SPACEBALL_CUE_STATE_BARELY:
            finished = func_08020500(arg0, cue, arg2, unused3);
            break;
    }
    return finished;
}


// [func_080205a0] CUE - Despawn
void func_080205a0(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    func_0800fc70(cue->sprite);
}


// [func_080205ac] CUE - Hit
void func_080205ac(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    struct SpaceballBatter *batter = &gSpaceballInfo->batter;

    func_08010008(batter->sprite, 1, 0x7f, 0);
    func_0800ffc0(batter->sprite, 1);
    batter->swingTimer = beats_to_ticks(0xa);
    cue->rotationSpeed = 8;
    cue->state = SPACEBALL_CUE_STATE_HIT;
}


// [func_080205e8] CUE - Barely
void func_080205e8(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    struct SpaceballBatter *batter = &gSpaceballInfo->batter;

    func_08010008(batter->sprite, 1, 0x7f, 0);
    func_0800ffc0(batter->sprite, 1);
    batter->swingTimer = beats_to_ticks(0xa);
    cue->xSpeed = (gameplay_get_last_hit_offset() < 0) ? -3 : 3;
    cue->rotationSpeed = -8;
    cue->y = INT_TO_FIXED(cue->y);
    cue->ySpeed = INT_TO_FIXED(-4);
    cue->state = SPACEBALL_CUE_STATE_BARELY;
}


// [func_08020644] CUE - Miss
void func_08020644(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    gSpaceballInfo->totalMissed += 1;
    cue->missed = TRUE;
}


// [func_08020660] MAIN - Input Event
void func_08020660(u32 pressed, u32 released) {
    struct SpaceballBatter *batter = &gSpaceballInfo->batter;

    func_08010008(batter->sprite, 1, 0x7f, 0);
    func_0800ffc0(batter->sprite, 1);
    batter->swingTimer = beats_to_ticks(0xa);
    gameplay_set_input_buttons(0,0);
}


// [func_08020698] COMMON Func_00 - STUB
void func_08020698(void) {
}


// [func_0802069c] COMMON Func_01 - STUB
void func_0802069c(void) {
}
