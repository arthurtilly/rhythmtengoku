#include "engines/bon_odori.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/riq_gameplay.h"
#include "src/lib_0804c870.h"
asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gBonOdoriInfo ((struct BonOdoriInfo *)D_030055d0)


/* THE BON ODORI */


// [func_080206a0] Get OBJ Animation
const struct Animation *bon_odori_get_anim(u32 anim) {
    return D_089dec38[anim][gBonOdoriInfo->version];
}


// [func_080206c0] Init. Donpans
void func_080206c0(void) {
    const struct Animation *anim;
    s32 x, y;
    u16 z;
    u32 i;

    x = 40;
    y = 120;
    z = 0x4800;

    for (i = 0; i < 4; i++) {
        anim = bon_odori_get_donpan_anim(DONPAN_ANIM_BEAT, i);
        gBonOdoriInfo->donpanSprites[i] = func_0804d160(D_03005380, anim, 0x7f, x, y, z, 1, 0x7f, 0);;
        gBonOdoriInfo->donpanAnimTimers[i] = 0;
        x += 53;
    }

    gBonOdoriInfo->donpanEmoteTimer = 0;
    gBonOdoriInfo->donpanEmoteAnim = DONPAN_ANIM_BEAT;
    gBonOdoriInfo->currentClapAnim = 1;
}


// [func_0802075c] Get Donpan Animation
const struct Animation *bon_odori_get_donpan_anim(u32 animation, u32 donpan) {
    return bon_odori_get_anim(bon_odori_donpan_anim_id_table[animation][donpan]);
}


// [func_08020778] Set Donpan Animation
void func_08020778(u32 animation, u32 donpan) {
    const struct Animation *anim = bon_odori_get_donpan_anim(animation, donpan);
    func_0804d8f8(D_03005380, gBonOdoriInfo->donpanSprites[donpan], anim, 0, 1, 0x7f, 0);
    gBonOdoriInfo->donpanAnimTimers[donpan] = func_0800c3a4(bon_odori_anim_durations[animation]);
}


// [func_080207d0] ENGINE Func_0B - Set Animation (CPU Donpans)
void func_080207d0(u32 anim) {
    u32 i;

    for (i = 0; i < 3; i++) {
        func_08020778(anim, i);
    }
}


// [func_080207ec] ENGINE Func_0C - Set Animation (Player)
void func_080207ec(u32 anim) {
    func_08020778(anim, 3);
}


// [func_080207f8] ENGINE Func_0D - Set Animation (All Donpans)
void func_080207f8(u32 anim) {
    func_080207d0(anim);
    func_080207ec(anim);
}


// [func_0802080c] ENGINE Func_0E - Set CPU Donpan Animation Timer
void func_0802080c(u32 duration) {
    u32 i;

    for (i = 0; i < 3; i++) {
        gBonOdoriInfo->donpanAnimTimers[i] = func_0800c3a4(duration);
    }
}


// [func_08020834] Decrement Donpan Animation Timer
void func_08020834(void) {
    u32 i;

    for (i = 0; i < 4; i++) {
        if (gBonOdoriInfo->donpanAnimTimers[i] != 0) {
            gBonOdoriInfo->donpanAnimTimers[i]--;
        }
    }
}


// [func_0802085c] GFX_INIT Func_02
void func_0802085c(void) {
    func_0800c604(0);
    func_08017578();
    D_03004b10.bgPalette[12][2] = 0x7C00;
}


// [func_08020880] GFX_INIT Func_01
void func_08020880(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089deec4[gBonOdoriInfo->version], 0x2000);
    task_run_after(task, func_0802085c, 0);
}


// [func_080208c0] GFX_INIT Func_00
void func_080208c0(void) {
    u32 task;

    func_0800c604(0);
    task = func_080087b4(func_0800c3b8(), bon_odori_buffered_textures);
    task_run_after(task, func_08020880, 0);
}


// [func_080208ec] MAIN - Init
void func_080208ec(u32 ver) {
    u32 i;

    gBonOdoriInfo->version = ver;
    func_080208c0();
    func_0800e0ec();
    func_0800e114();
    func_0800e0a0(0, 1, 0, -64, 2, 24, 0xC000);
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
    func_0800e0a0(2, 1, 0, 0, 0, 30, 1);
    gBonOdoriInfo->unk4 = func_0800c660(0x340, 2);
    D_03004b10.unk46 = 0x311e;
    D_03004b10.unk4C = 0x1041;
    D_03004b10.unk4E = 0x1010;

    for (i = 0; i < 4; i++) {
        gBonOdoriInfo->unk8[i].unk0 |= -1;
    }

    gBonOdoriInfo->unk3C = 0;
    gBonOdoriInfo->unk3A = 0;
    gBonOdoriInfo->yaguraSprite = func_0804d160(D_03005380, bon_odori_get_anim(BON_ODORI_ANIM_YAGURA_BEAT), 0x7f, 120, 72, 0x8800, 1, 0x7f, 0);
    gBonOdoriInfo->yaguraFrownTimer = 0;
    gBonOdoriInfo->yaguraNoticedMistake = FALSE;
    func_080206c0();
    gBonOdoriInfo->objPalDark = D_089deed4[gBonOdoriInfo->version];
    gBonOdoriInfo->bgPalDark = D_089deecc[gBonOdoriInfo->version];
    func_08001ec4(0x0C, 7, gBonOdoriInfo->objPalDark, 0, gBonOdoriInfo->objPalDarkBuf[0]);
    func_08001ec4(0x14, 7, gBonOdoriInfo->bgPalDark, 0, gBonOdoriInfo->bgPalDarkBuf[0]);
    func_08017338(A_BUTTON, 0);
    gBonOdoriInfo->playerClapTimer = 0;
}


// [func_08020a48] ENGINE Func_11 - STUB
void func_08020a48(void) {
}


// [func_08020a4c] ?
#include "asm/engines/bon_odori/asm_08020a4c.s" // Decomp attempt at https://decomp.me/scratch/lhu93


// [func_08020be4] ENGINE Func_00 - ?
void func_08020be4(u8 arg0) {
    gBonOdoriInfo->unk38 = arg0;
}


// [func_08020bf4] ENGINE Func_01 - Show Text (Middle)
void func_08020bf4(const char *text) {
    func_08020a4c(text, gBonOdoriInfo->unk38, 0);
}


// [func_08020c0c] ENGINE Func_02 - Show Text (Left)
void func_08020c0c(const char *text) {
    func_08020a4c(text, gBonOdoriInfo->unk38, 1);
}


// [func_08020c24] ENGINE Func_03 - Show Text (Right)
void func_08020c24(const char *text) {
    func_08020a4c(text, gBonOdoriInfo->unk38, 2);
}


// [func_08020c3c] ENGINE Func_04 - ?
void func_08020c3c(s32 arg0) {
    gBonOdoriInfo->unk3C = -arg0;
}


// [func_08020c4c] ?
void func_08020c4c(u32 arg0) {
    struct BonOdoriText *textObj;
    func_0800c604(0);
    textObj = &gBonOdoriInfo->unk8[arg0];
    func_0804d770(D_03005380, textObj->sprite, FALSE);
    func_0804d8c4(D_03005380, textObj->unk0, 10);
}


// [func_08020c8c] ENGINE Func_05 - Highlight Text
void func_08020c8c(u32 duration) {
    struct BonOdoriText *textObj;
    s32 initX, targetX, y;
    s32 task;

    textObj = &gBonOdoriInfo->unk8[gBonOdoriInfo->unk38];

    if (textObj->unk0 < 0) return;

    func_0804d770(D_03005380, textObj->sprite, TRUE);

    initX = -textObj->unk8;
    targetX = initX - textObj->unkA;

    y = gBonOdoriInfo->unk3C - 24;
    y -= gBonOdoriInfo->unk38 * 24;
    D_03004b10.BG_OFS[BG_LAYER_0].vertical = y;

    task = func_0800c4b0(1, func_0800c3a4(duration), &D_03004b10.BG_OFS[BG_LAYER_0].horizontal, initX, targetX);
    task_run_after(task, func_08020c4c, gBonOdoriInfo->unk38);
}


// [func_08020d20] ENGINE Func_06 - Lighten Screen (Gradual)
void func_08020d20(u32 arg0) {
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo->bgPalDarkBuf[0], gBonOdoriInfo->bgPalDark, D_03004b10.bgPalette[0]);
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo->objPalDarkBuf[0], gBonOdoriInfo->objPalDark, D_03004b10.objPalette[0]);
}


// [func_08020da0] ENGINE Func_07 - Darken Screen (Gradual)
void func_08020da0(u32 arg0) {
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo->bgPalDark, gBonOdoriInfo->bgPalDarkBuf[0], D_03004b10.bgPalette[0]);
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo->objPalDark, gBonOdoriInfo->objPalDarkBuf[0], D_03004b10.objPalette[0]);
}


// [func_08020e1c] ENGINE Func_08 - ?
void func_08020e1c(void) {
    func_080018e0(0, &D_03004b10.bgPalette, 0xe0, 0x10, 0x200);
    func_080018e0(0, &D_03004b10.objPalette, 0xe0, 0x10, 0x200);
}


// [func_08020e50] ENGINE Func_09 - Lighten Screen (Instant)
void func_08020e50(void) {
    func_0800186c(gBonOdoriInfo->bgPalDark, D_03004b10.bgPalette[0], 0xe0, 0x10, 0x200);
    func_0800186c(gBonOdoriInfo->objPalDark, D_03004b10.objPalette[0], 0xe0, 0x10, 0x200);
}


// [func_08020e90] ENGINE Func_0A - Darken Screen (Instant)
void func_08020e90(void) {
    func_0800186c(&gBonOdoriInfo->bgPalDarkBuf[0], D_03004b10.bgPalette[0], 0xe0, 0x10, 0x200);
    func_0800186c(&gBonOdoriInfo->objPalDarkBuf[0], D_03004b10.objPalette[0], 0xe0, 0x10, 0x200);
}


// [func_08020ed4] ENGINE Func_0F - Test Player Inputs
void func_08020ed4(void) {
    gBonOdoriInfo->mistimedClaps = 0;
}


// [func_08020ee8] ENGINE Func_10 - React to Player Inputs
void func_08020ee8(void) {
    if (gBonOdoriInfo->mistimedClaps != 0) {
        gBonOdoriInfo->donpanEmoteTimer = 3;
        gBonOdoriInfo->donpanEmoteAnim = DONPAN_ANIM_GLARE;
        func_0800bc40();
    } else {
        gBonOdoriInfo->donpanEmoteTimer = 3;
        do {
            gBonOdoriInfo->donpanEmoteAnim = (func_08001980(2) != 0) ? DONPAN_ANIM_HAPPY : DONPAN_ANIM_VERY_HAPPY;
        } while (0);
        gBonOdoriInfo->yaguraFrownTimer = 0;
        gBonOdoriInfo->yaguraNoticedMistake = FALSE;
    }
}


// [func_08020f48] MAIN - Update
void func_08020f48(void) {
    if (gBonOdoriInfo->playerClapTimer != 0) {
        gBonOdoriInfo->playerClapTimer--;
        if (gBonOdoriInfo->playerClapTimer == 0) {
            func_08017338(A_BUTTON, 0);
        }
    }
    func_08020834();
    if (gBonOdoriInfo->yaguraFrownTimer != 0) {
        gBonOdoriInfo->yaguraFrownTimer--;
    }
}


// [func_08020f8c] MAIN - Close
void func_08020f8c(void) {
    func_0800e128();
}


// [func_08020f98] CUE - Spawn
void func_08020f98(u32 arg0, struct BonOdoriCue *cue, u32 clapAnim) {
    cue->type = clapAnim;
    gBonOdoriInfo->currentClapAnim = clapAnim;
}


// [func_08020fb0] CUE - Update
u8 func_08020fb0(u32 arg0, struct BonOdoriCue *cue, u32 runningTime) {
    if (runningTime > func_0800c3a4(0x30)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// [func_08020fcc] CUE - Despawn
void func_08020fcc(u32 arg0, struct BonOdoriCue *cue) {
}


// [func_08020fd0] CUE - Hit
void func_08020fd0(u32 arg0, struct BonOdoriCue *cue) {
    func_080207ec(cue->type);
    func_08002634(&s_HC_seqData);
}


// [func_08020fe8] CUE - Barely
void func_08020fe8(u32 arg0, struct BonOdoriCue *cue) {
    func_080207ec(cue->type);
    func_08002634(&s_tebyoushi_pati_seqData);
    gBonOdoriInfo->yaguraNoticedMistake = TRUE;
}


// [func_0802100c] CUE - Miss
void func_0802100c(u32 arg0, struct BonOdoriCue *cue) {
    gBonOdoriInfo->mistimedClaps++;
    func_0800bc40();
    gBonOdoriInfo->yaguraNoticedMistake = TRUE;
}


// [func_08021034] MAIN - Input Event
void func_08021034(void) {
    gBonOdoriInfo->playerClapTimer = func_0800c3a4(6);
    func_08017338(0, 0);
    func_080207ec(gBonOdoriInfo->currentClapAnim);
    gBonOdoriInfo->mistimedClaps++;
    func_08002634(&s_HC_seqData);
}


// [func_08021084] COMMON Func_00 - Beat Animation
void func_08021084(void) {
    const struct Animation *anim;
    u32 i;

    for (i = 0; i < 4; i++) {
        if (gBonOdoriInfo->donpanAnimTimers[i] == 0) {
            anim = bon_odori_get_donpan_anim(DONPAN_ANIM_BEAT, i);
            if ((i < 3) && (gBonOdoriInfo->donpanEmoteTimer != 0)) {
                anim = bon_odori_get_donpan_anim(gBonOdoriInfo->donpanEmoteAnim, i);
            }
            func_0804d8f8(D_03005380, gBonOdoriInfo->donpanSprites[i], anim, 0, 1, 0x7f, 0);
        }
    }

    if (gBonOdoriInfo->yaguraFrownTimer == 0) {
        if (gBonOdoriInfo->yaguraNoticedMistake) {
            func_0804d8f8(D_03005380, gBonOdoriInfo->yaguraSprite, bon_odori_get_anim(BON_ODORI_ANIM_YAGURA_FROWN), 0, 1, 0x7f, 0);
            gBonOdoriInfo->yaguraFrownTimer = func_0800c3a4(0x24);
            gBonOdoriInfo->yaguraNoticedMistake = FALSE;
        } else {
            func_0804d8f8(D_03005380, gBonOdoriInfo->yaguraSprite, bon_odori_get_anim(BON_ODORI_ANIM_YAGURA_BEAT), 0, 1, 0x7f, 0);
        }
    }

    if (gBonOdoriInfo->donpanEmoteTimer != 0) {
        gBonOdoriInfo->donpanEmoteTimer--;
    }
}


// [func_08021188] COMMON Func_01 - STUB
void func_08021188(void) {
}


// [func_0802118c] COMMON Func_02 - STUB
void func_0802118c(void) {
}
