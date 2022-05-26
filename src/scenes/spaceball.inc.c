#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"

#define gSpaceballInfo D_030055d0->gameInfo.spaceball

// OAM Animations:
extern u32 D_088a1a70; // Animation: "batter_green"
extern u32 D_088a1ad0; // Animation: "pitcher_shoot
extern u32 D_088a1b70; // Animation: "miss_poof"
extern u32 D_088a1b90; // Animation: "bg_star"
extern u32 D_088a1ba0; // Animation: "umpire_show"
extern u32 D_088a1bd0; // Animation: "umpire_sway"

// Sound Effects:
extern const struct SequenceData s_f_batter_ball_land_seqData;

// Additional Data:
extern u32  D_089de93c; // GFX-related Null
extern u32  D_089de940[]; // GFX Init Struct
extern u32 *D_089de988[3]; // Batter Animations (Close)
extern u32 *D_089de994[3]; // Batter Animations (Far)
extern u32 *D_089de9a0[3]; // Spaceball Animations

extern u32 (*D_03004ae4)(u32);
extern s32 (*D_03004af8)(s32, s32);

// Temporary External Functions:
extern void func_0800fddc(struct ScalableSprite *, s16, s16); // SCALABLE SPRITE - Update X & Y
extern void func_0800fe60(struct ScalableSprite *, s16); // SCALABLE SPRITE - Update Z (Scaling)
extern void func_0804d5d4(s32, s16, s16, s16); // ??


/* SPACEBALL */


// [func_0801fc44] Initialise BG Star Position
void func_0801fc44(u32 current) {
    struct SpaceballStar *star;
    s32 scale = func_08001980(0x300) + 0x100;
    s32 pos2 = func_08001980(0xf0) - 0x78;
    s32 x = func_08007b80(pos2 * scale, 0x100);
    s32 pos4 = func_08001980(0xa0) - 0x50;
    s32 y = func_08007b80(pos4 * scale, 0x100);

    star = &gSpaceballInfo.stars[current];
    star->x = x;
    star->y = y;
    star->z = gSpaceballInfo.zoom + scale;
}


// [func_0801fcb0] Update BG Star Position
void func_0801fcb0(void) {
    struct SpaceballStar *star;
    s16 sprite;
    s32 scale;
    s32 x;
    s32 y;
    u32 i;

    for (i = 0; i < 24; i++) {
        sprite = gSpaceballInfo.starSprite[i];
        star = &gSpaceballInfo.stars[i];
        scale = func_08007b80(0x10000, star->z - gSpaceballInfo.zoom);
        x = (star->x * scale) >> 8;
        y = (star->y * scale) >> 8;
        func_0804d5d4(D_03005380, sprite, x + 120, y + 80);
    }
}


// [func_0801fd1c] Update BG Star Scaling
void func_0801fd1c(void) {
    struct SpaceballStar *star;
    s32 scale100 = gSpaceballInfo.zoom + 0x100;
    s32 scale400 = gSpaceballInfo.zoom + 0x400;
    u32 i;

    for (i = 0; i < 24; i++) {
        star = &gSpaceballInfo.stars[i];
        star->z -= 8;
        if ((star->z < scale100) || (star->z > scale400)) {
            func_0801fc44(i);
        }
    }
}


// [func_0801fd70] Update Entity (Graphical)
void func_0801fd70(struct ScalableSprite *sprite, s32 x, s32 y, s32 z) {
    s32 scale;

    z -= gSpaceballInfo.zoom;
    scale = func_08007b80(0x10000, z);

    x = (x * scale) >> 8;
    y = (y * scale) >> 8;
    func_0800fddc(sprite, x + 120, y + 80);
    func_0800fe60(sprite, scale);
}


// [func_0801fdc4] Update Batter (Graphical)
void func_0801fdc4(struct ScalableSprite *sprite, s32 x, s32 y, s32 z, u32 *animClose, u32 *animFar) {
    s32 scale;

    z -= gSpaceballInfo.zoom;
    scale = func_08007b80(0x10000, z);

    x = (x * scale) >> 8;
    y = (y * scale) >> 8;
    func_0800fddc(sprite, x + 120, y + 80);

    if (scale > 0x80) {
        func_0800fe60(sprite, scale);
        func_08010064(sprite, animClose, -1, 1, 0x7f, 0);
    } else {
        scale = func_08007b80(0x20000, z);
        func_0800fe60(sprite, scale);
        func_08010064(sprite, animFar, -1, 1, 0x7f, 0);
    }
}


// [func_0801fe6c] Update Sprites, Stars & Camera
void func_0801fe6c(void) {
    s32 temp;
    s32 z1;
    s32 z2;

    func_0801fdc4(gSpaceballInfo.batter.sprite, gSpaceballInfo.batter.x, gSpaceballInfo.batter.y,
            gSpaceballInfo.batter.z, gSpaceballInfo.batter.animClose, gSpaceballInfo.batter.animFar);

    func_0801fd70(gSpaceballInfo.pitcher.sprite, gSpaceballInfo.pitcher.x, gSpaceballInfo.pitcher.y,
            gSpaceballInfo.pitcher.z);

    func_0801fd70(gSpaceballInfo.umpire.sprite, gSpaceballInfo.umpire.x, gSpaceballInfo.umpire.y,
            gSpaceballInfo.umpire.z);

    func_0801fd70(gSpaceballInfo.poofR.sprite, gSpaceballInfo.poofR.x, gSpaceballInfo.poofR.y,
            gSpaceballInfo.poofR.z);

    func_0801fd70(gSpaceballInfo.poofL.sprite, gSpaceballInfo.poofL.x, gSpaceballInfo.poofL.y,
            gSpaceballInfo.poofL.z);

    temp = -((gSpaceballInfo.zoom * 60) << 10);
    if (temp < 0) temp += 0xff;
    z1 = temp >> 8;
    temp = -((gSpaceballInfo.zoom * 40) << 10);
    if (temp < 0) temp += 0xff;
    z2 = temp >> 8;
    func_08008910(2, 0x8000, 0xb000, z1, z2, 0);

    if (gSpaceballInfo.currentStar < 24) {
        gSpaceballInfo.starSprite[gSpaceballInfo.currentStar] = func_0804d160(D_03005380, &D_088a1b90, 0, 0, 0, 0xc800, 1, 0, 0);
        func_0801fc44(gSpaceballInfo.currentStar);
        gSpaceballInfo.currentStar++;
    } else {
        func_0801fd1c();
        func_0801fcb0();
    }
}


// [func_0801ff60] GFX Init Func_00
void func_0801ff60(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0801ff70] GFX Init Func_01
void func_0801ff70(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089de940, 0x2000);
    func_08005d38(data, func_0801ff60, 0);
}


// [func_0801ffa0] GFX Init Func_00
void func_0801ffa0(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089de93c);
    func_08005d38(data, func_0801ff70, 0);
}


// [func_0801ffcc] MAIN - Init
void func_0801ffcc(u32 ver) {
    gSpaceballInfo.ver = ver;
    func_0801ffa0();
    func_0800e018(1);
    func_0800e0ec();
    func_0800e0a0(2, 1, 0, 0, 0, 30, 0x4082);
    func_08008910(2, (120 << 8), (80 << 8), (240 << 8), (160 << 8), 0);
    func_0800e044(0);
    func_0800e044(1);
    func_0800e044(3);

    gSpaceballInfo.batter.sprite = func_0800fa6c(&D_088a1a70, 0, 170, 80, 0x4800, 0x80, 0, 0, 0, 0, 1);
    gSpaceballInfo.batter.x = 50;
    gSpaceballInfo.batter.y = 0;
    gSpaceballInfo.batter.z = 0;
    gSpaceballInfo.batter.swingTimer = 0;
    func_0802026c(0);

    gSpaceballInfo.pitcher.sprite = func_0800fa6c(&D_088a1ad0, 2, 70, 128, 0x4800, 0x80, 0, 0, 0, 0, 1);
    gSpaceballInfo.pitcher.x = -50;
    gSpaceballInfo.pitcher.y = 48;
    gSpaceballInfo.pitcher.z = 0;

    gSpaceballInfo.umpire.sprite = func_0800fa6c(&D_088a1bd0, 2, 120, 89, 0x4864, 0x80, 0, 1, 2, 0x8000, 1);
    gSpaceballInfo.umpire.x = 0;
    gSpaceballInfo.umpire.y = 9;
    gSpaceballInfo.umpire.z = 0;
    func_08010040(gSpaceballInfo.umpire.sprite, 1);

    gSpaceballInfo.poofR.sprite = func_0800fa6c(&D_088a1b70, 2, 154, 132, 0x4864, 0x100, 0, 1, 0, 0x8002, 1);
    gSpaceballInfo.poofR.x = 34;
    gSpaceballInfo.poofR.y = 52;
    gSpaceballInfo.poofR.z = 0;

    gSpaceballInfo.poofL.sprite = func_0800fa6c(&D_088a1b70, 2, 122, 132, 0x4864, 0x100, 0, 1, 0, 0x8002, 1);
    gSpaceballInfo.poofL.x = 2;
    gSpaceballInfo.poofL.y = 52;
    gSpaceballInfo.poofL.z = 0;
    func_0800ff44(gSpaceballInfo.poofL.sprite, 1); // Flip Horizontal?

    gSpaceballInfo.currentStar = 0;
    gSpaceballInfo.zoom = -0x80;
    gSpaceballInfo.totalMissed = 0;
    gSpaceballInfo.spaceballType = 0;
    func_08017338(1,0);
}


// [func_080201a0] SCENE Func_06 - STUB
void func_080201a0(void) {
}


// [func_080201a4] SCENE Func_00 - Pitcher Prepare
void func_080201a4(void) {
    func_08010008(gSpaceballInfo.pitcher.sprite, 0, 0, 0);
    func_0800ffc0(gSpaceballInfo.pitcher.sprite, 0);
}


// [func_080201cc] Update Batter Swing
void func_080201cc(struct SpaceballBatter *batter) {
    if (batter->swingTimer == 0) return;
    batter->swingTimer--;
    if (batter->swingTimer != 0) return;
    func_08010008(batter->sprite, 0, 0, 0);
    func_0800ffc0(batter->sprite, 0);
    func_08017338(1,0);
}


// [func_08020200] SCENE Func_01 - Loop Exit Condition (Practice)
void func_08020200(void) {
    if (gSpaceballInfo.totalMissed == 0) {
        func_0800bce4();
    } else {
        func_0800bc40();
    }
    gSpaceballInfo.totalMissed = 0;
}


// [func_08020238] SCENE Func_02 - Set Camera Zoom
void func_08020238(u32 controls) {
    s32 target = (s32) controls >> 0x10;
    u32 time = controls & 0xffff;
    func_0800c4b0(2, func_0800c3a4(time), &gSpaceballInfo.zoom, gSpaceballInfo.zoom, target);
}


// [func_0802026c] SCENE Func_03 - Set Batter Variant
void func_0802026c(u32 index) {
    gSpaceballInfo.batter.animClose = D_089de988[index];
    gSpaceballInfo.batter.animFar = D_089de994[index];
}


// [func_08020290] SCENE Func_05 - Set Next Spaceball Sprite
void func_08020290(u32 index) {
    gSpaceballInfo.spaceballType = index;
}


// [func_080202a4] SCENE Func_04 - Set Umpire Animation
void func_080202a4(u32 show) {
    struct ScalableSprite *sprite = gSpaceballInfo.umpire.sprite;
    if (show) {
        func_08010064(sprite, &D_088a1ba0, 0, 1, 1, 0);
    } else {
        func_08010064(sprite, &D_088a1bd0, 0, 1, 2, 0);
    }
}


// [func_080202f0] MAIN - Update
void func_080202f0(void) {
    func_080201cc(&gSpaceballInfo.batter);
    func_0801fe6c();
}


// [func_08020308] STUB
void func_08020308(void) {
}


// [func_0802030c] CUE - Spawn
void func_0802030c(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    u32 temp;
    u32 div;
    u32 time;

    cue->state = 0;
    cue->rotation = func_08001980(0x800);
    cue->rotationSpeed = 0x40;
    cue->z = 0;
    cue->unk1C = (arg2 >= 0x18) ? 90 * arg2 / 0x18 : 90;
    cue->sprite = func_0800fa6c(D_089de9a0[gSpaceballInfo.spaceballType], 0, 0x46, 0x78, 0x479c, 0x100, cue->rotation, 1, 0, 0, 1);

    temp = cue->unk1C - 48;
    div = D_03004ae4((temp << 0x10) / cue->unk1C);
    time = func_0800c3a4(arg2);
    cue->unk8 = (time << 9) / (div + 0x100);
    func_0801fd70(cue->sprite, -0x32, 0x28, cue->z);
    cue->missed = FALSE;
    func_08010008(gSpaceballInfo.pitcher.sprite, 1, 0x7f, 0);
    func_0800ffc0(gSpaceballInfo.pitcher.sprite, 1);
}


// [func_080203fc] Update Spaceball (Launch)
u32 func_080203fc(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    u32 temp;

    if (arg2 > cue->unk8) {
        func_08002634(&s_f_batter_ball_land_seqData);
        func_0800ffc0(gSpaceballInfo.poofR.sprite, 0);
        func_08010040(gSpaceballInfo.poofR.sprite, 1);
        func_0800ffc0(gSpaceballInfo.poofL.sprite, 0);
        func_08010040(gSpaceballInfo.poofL.sprite, 1);
        if (!cue->missed) {
            func_08017928(func_080180bc(arg0), 2, 0);
        }
        return TRUE;
    }
    else {
        temp = arg2 - (cue->unk8 / 2);
        cue->x = func_08008f04(70, 138, arg2, cue->unk8);
        cue->y = 0x78 - (cue->unk1C - D_03004af8(cue->unk1C * (temp << 2) * temp, cue->unk8 * cue->unk8));
        func_0801fd70(cue->sprite, cue->x - 0x78, cue->y - 0x50, cue->z);
        func_0800fe94(cue->sprite, cue->rotation);
        cue->rotation += cue->rotationSpeed;
        return FALSE;
    }
}


// [func_080204b8] Update Spaceball (Hit)
u32 func_080204b8(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    if (cue->z < gSpaceballInfo.zoom + 0x40) return TRUE;

    func_0801fd70(cue->sprite, cue->x - 0x78, cue->y - 0x50, cue->z);
    func_0800fe94(cue->sprite, cue->rotation);
    cue->rotation += cue->rotationSpeed;
    cue->z -= 0x40;
    return FALSE;
}


// [func_08020500] Update Spaceball (Barely)
u32 func_08020500(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    if (cue->z < gSpaceballInfo.zoom + 0x40) return TRUE;
    if ((cue->y >> 8) > 1000) return TRUE;

    cue->x += cue->xSpeed;
    cue->y += cue->ySpeed;
    cue->ySpeed += 0x40;
    cue->z -= 4;
    func_0801fd70(cue->sprite, cue->x - 0x78, (cue->y >> 8) - 0x50, cue->z);
    func_0800fe94(cue->sprite, cue->rotation);
    cue->rotation += cue->rotationSpeed;
    return FALSE;
}


// [func_08020564] CUE - Update
u32 func_08020564(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    u32 finished;

    switch (cue->state) {
        case 0: finished = func_080203fc(arg0, cue, arg2, unused3); break;
        case 1: finished = func_080204b8(arg0, cue, arg2, unused3); break;
        case 2: finished = func_08020500(arg0, cue, arg2, unused3); break;
    }
    return finished;
}


// [func_080205a0] CUE - Despawn
void func_080205a0(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    func_0800fc70(cue->sprite);
}


// [func_080205ac] CUE - Hit
void func_080205ac(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    struct SpaceballBatter *batter = &gSpaceballInfo.batter;

    func_08010008(batter->sprite, 1, 0x7f, 0);
    func_0800ffc0(batter->sprite, 1);
    batter->swingTimer = func_0800c3a4(0xa);
    cue->rotationSpeed = 8;
    cue->state = 1;
}


// [func_080205e8] CUE - Barely
void func_080205e8(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    struct SpaceballBatter *batter = &gSpaceballInfo.batter;
    func_08010008(batter->sprite, 1, 0x7f, 0);
    func_0800ffc0(batter->sprite, 1);
    batter->swingTimer = func_0800c3a4(0xa);
    cue->xSpeed = (func_08018054() < 0) ? -3 : 3;
    cue->rotationSpeed = -8;
    cue->y <<= 8;
    cue->ySpeed = -0x400;
    cue->state = 2;
}


// [func_08020644] CUE - Miss
void func_08020644(u32 arg0, struct SpaceballCue *cue, u32 arg2, u32 unused3) {
    gSpaceballInfo.totalMissed += 1;
    cue->missed = TRUE;
}


// [func_08020660] MAIN - Input Event
void func_08020660(void) {
    struct SpaceballBatter *batter = &gSpaceballInfo.batter;

    func_08010008(batter->sprite, 1, 0x7f, 0);
    func_0800ffc0(batter->sprite, 1);
    batter->swingTimer = func_0800c3a4(0xa);
    func_08017338(0,0);
}


// [func_08020698] COMMON Func_00 - STUB
void func_08020698(void) {
}


// [func_0802069c] COMMON Func_01 - STUB
void func_0802069c(void) {
}
