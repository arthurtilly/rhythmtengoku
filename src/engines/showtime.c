asm(".include \"include/gba.inc\""); // Temporary

#include "engines/showtime.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "scenes/gameplay.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gShowtimeInfo ((struct ShowtimeInfo *)D_030055d0)


/* SHOWTIME */


void showtime_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


void showtime_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), showtime_gfx_tables[gShowtimeInfo->version], 0x2000);
    run_func_after_task(task, showtime_init_gfx3, 0);
}


void showtime_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = func_080087b4(get_current_mem_id(), showtime_buffered_textures);
    run_func_after_task(task, showtime_init_gfx2, 0);
}


void showtime_engine_start(u32 version) {
    struct Animation *textAnim;

    gShowtimeInfo->version = version;
    showtime_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BG_PRIORITY_LOW);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, BG_PRIORITY_HIGHEST);
    func_0802d96c();
    gShowtimeInfo->unk0 = func_0800c660(0x340, 2);
    textAnim = func_08004b98(gShowtimeInfo->unk0, D_0805a3cc, 0, 0);
    gShowtimeInfo->unk4 = func_0804d160(D_03005380, textAnim, 0, 120, 56, 0, 0, 0, 0);
    gameplay_set_input_buttons(A_BUTTON, 0);
    func_0802c23c();    
    func_0802d104();
    func_0802c40c();
    func_0802d394();
    func_0802da84();
    gShowtimeInfo->unk3C0 = 0;
    gShowtimeInfo->unk3C8 = 0;
    gShowtimeInfo->unk3CC = 0;
    gShowtimeInfo->unk3D0 = 0;
}


void showtime_engine_event_stub() {
}


#include "asm/engines/showtime/asm_0802bd44.s"


#include "asm/engines/showtime/asm_0802be10.s"


void showtime_engine_stop() {
    D_03004b10.BLDMOD = BLDMOD_BLEND_MODE(BLEND_MODE_OFF);
    D_03004b10.DISPCNT &= ~DISPCNT_ENABLE_WINDOW0;
}


void showtime_cue_spawn_gray(struct Cue *cue, struct ShowtimeCue *info, u32 unused) {
    info->unk4 = func_0802ce70(0);
    func_0802d38c();
}


u32 showtime_cue_update_gray(struct Cue *cue, struct ShowtimeCue *info, u32 runningTime, u32 duration) {
    if (runningTime > beats_to_ticks(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


void showtime_cue_despawn_gray(struct Cue *cue, struct ShowtimeCue *info) {
}


#include "asm/engines/showtime/asm_0802be78.s"


u32 showtime_cue_update_black(struct Cue *cue, struct ShowtimeCue *info, u32 runningTime, u32 duration) {
    if (runningTime > beats_to_ticks(0x90)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


void showtime_cue_despawn_black(struct Cue *cue, struct ShowtimeCue *info) {
}


#include "asm/engines/showtime/asm_0802beb0.s"


#include "asm/engines/showtime/asm_0802bec8.s"


void showtime_cue_despawn_white_fast(struct Cue *cue, struct ShowtimeCue *info) {
}


#include "asm/engines/showtime/asm_0802bee8.s"


u32 showtime_cue_update_white_fast_swing(struct Cue *cue, struct ShowtimeCue *info, u32 runningTime, u32 duration) {
    if (runningTime > beats_to_ticks(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


void showtime_cue_despawn_white_fast_swing(struct Cue *cue, struct ShowtimeCue *info) {
}


void showtime_cue_spawn_white(struct Cue *cue, struct ShowtimeCue *info, u32 unused) {
    info->unk4 = func_0802ce70(4);
    func_0802d38c();
}


u32 showtime_cue_update_white(struct Cue *cue, struct ShowtimeCue *info, u32 runningTime, u32 duration) {
    if (runningTime > beats_to_ticks(0x78)){
        return TRUE;
    } else {
        return FALSE;
    }
}


void showtime_cue_despawn_white(struct Cue *cue, struct ShowtimeCue *info) {
}


void showtime_cue_hit(struct Cue *cue, struct ShowtimeCue *info, u32 pressed, u32 released) {
    func_0802cf8c(info->unk4);
    func_0802d81c(info->unk4);
    func_0802d2bc();
    gShowtimeInfo->unk3C0 = beats_to_ticks(0x14);
}


#include "asm/engines/showtime/asm_0802bf88.s"

#include "asm/engines/showtime/asm_0802c078.s"


void showtime_input_event(u32 pressed, u32 released) {
    if (gShowtimeInfo->unk3C0 == 0) {
        func_0802d918(-1);
        func_0802d2bc();
        gShowtimeInfo->unk3C0 = beats_to_ticks(0x1E);
        play_sound(&s_block_hit_seqData);
    }
}


#include "asm/engines/showtime/asm_0802c0c8.s"

#include "asm/engines/showtime/asm_0802c150.s"

#include "asm/engines/showtime/asm_0802c1cc.s"


void func_0802c1f0(u32 unused, s16 sprite, u32 arg2) {
    switch (gShowtimeInfo->unk8[arg2].unk4) {
        case 0:
            break;
        case 1:
            gShowtimeInfo->unk8[arg2].unk4 = 0;
        func_0804cebc(D_03005380, sprite, 3);
        func_0804dcb8(D_03005380, sprite, 0);
    }
}


void func_0802c23c() {
    s32 i;

    for (i = 0; i < 2; i++) {
        gShowtimeInfo->unk8[i].unk4 = 0;

        if (gShowtimeInfo->version != SHOWTIME_VER_REMIX3) {
            gShowtimeInfo->unk8[i].sprite = func_0804d160(D_03005380, anim_showtime_block, 0, 64, 64, 0x4800, 1, 0, 4);
        } else {
            gShowtimeInfo->unk8[i].sprite = func_0804d160(D_03005380, anim_showtime_block_pink, 0, 64, 64, 0x4800, 1, 0, 4);
        }

        gShowtimeInfo->unk8[i].unk8 = 0;

        func_0804daa8(D_03005380, gShowtimeInfo->unk8[i].sprite, &func_0802c1f0, i);
        func_0804cebc(D_03005380, gShowtimeInfo->unk8[i].sprite, 3);
        func_0804dcb8(D_03005380, gShowtimeInfo->unk8[i].sprite, 0);
    }

    func_0804d5d4(D_03005380, gShowtimeInfo->unk8[0].sprite, 200, 128);
    func_0804d5d4(D_03005380, gShowtimeInfo->unk8[1].sprite, 184, 144);
}


void func_0802c334() {
    s32 i;

    for (i = 0; i < 2; i++) {
        if (gShowtimeInfo->unk8[i].unk4 == 0) {
            continue;
        }

        if (gShowtimeInfo->unk8[i].unk4 == 1) {
            gShowtimeInfo->unk8[i].unk8++;
        }
    }
}


#include "asm/engines/showtime/asm_0802c36c.s"


u32 func_0802c3d0(u32 arg) {
    switch (gShowtimeInfo->unk8[arg].unk8 / 4) {
        case 1:
            return 3;
        case 0:
            return 0;
        case 2:
            return 2;
        default:
            return 0;
    }
}


#include "asm/engines/showtime/asm_0802c40c.s"

#include "asm/engines/showtime/asm_0802c4b0.s"

#include "asm/engines/showtime/asm_0802c4c0.s"

#include "asm/engines/showtime/asm_0802c4f4.s"

#include "asm/engines/showtime/asm_0802c528.s"

#include "asm/engines/showtime/asm_0802c55c.s"

#include "asm/engines/showtime/asm_0802c5c8.s"

#include "asm/engines/showtime/asm_0802ce70.s"

#include "asm/engines/showtime/asm_0802cf8c.s"


void func_0802cfa4(u32 arg) {
    gShowtimeInfo->unk24[arg].unk18 = 0;
    gShowtimeInfo->unk24[arg].unk20 = 1;
}


#include "asm/engines/showtime/asm_0802cfc8.s"

#include "asm/engines/showtime/asm_0802cfe0.s"


u32 func_0802d068(u32 arg) {
    return gShowtimeInfo->unk24[arg].unk8;
}


u32 func_0802d080(u32 arg) {
    if (gShowtimeInfo->unk24[arg].unk0 == 8) {
        return gShowtimeInfo->unk24[arg].unkC + 13;
    } else {
        return gShowtimeInfo->unk24[arg].unkC;
    }
}


void func_0802d0b8() {
    if (gShowtimeInfo->unk168 != 0) {
        if (gShowtimeInfo->unk168 == 2) {
            gShowtimeInfo->unk168 = 0;
            }
    }
}


void func_0802d0dc(u32 arg0, s16 sprite) {
    func_0804cebc(D_03005380, sprite, 8);
    func_0804dcb8(D_03005380, sprite, 0);
}


#include "asm/engines/showtime/asm_0802d104.s"

#include "asm/engines/showtime/asm_0802d250.s"

#include "asm/engines/showtime/asm_0802d2bc.s"


// stack pointer moment
void func_0802d38c(void) {
    u8 unused_temp[0xC]; // has to be a data type 0xC bytes long
}


#include "asm/engines/showtime/asm_0802d394.s"

#include "asm/engines/showtime/asm_0802d43c.s"

#include "asm/engines/showtime/asm_0802d81c.s"


void func_0802d8bc(u32 arg) {
    s32 i;

    for (i = 0; i < 8; i++) {
        if (gShowtimeInfo->unk174[i].unk4 == 0) {
            gShowtimeInfo->unk174[i].unk4 = 4;
            gShowtimeInfo->unk174[i].unkC = arg;
            gShowtimeInfo->unk174[i].unk8 = 0;
            func_0804d770(D_03005380, gShowtimeInfo->unk174[i].sprite, TRUE);
            return;
        }
    }
}


#include "asm/engines/showtime/asm_0802d918.s"

#include "asm/engines/showtime/asm_0802d96c.s"

#include "asm/engines/showtime/asm_0802d9fc.s"

#include "asm/engines/showtime/asm_0802da84.s"

#include "asm/engines/showtime/asm_0802db08.s"

#include "asm/engines/showtime/asm_0802dc54.s"
