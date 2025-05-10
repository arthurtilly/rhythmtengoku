#pragma once

#include "global.h"
#include "graphics.h"


// MACROS
#define BG_ANIM(ev, val)            (((ev) << 28) + ((u32)(val)))

#define BG_ANIM_WRITE_RAW(val)      BG_ANIM(BG_ANIM_EV_WRITE_RAW, val)
#define BG_ANIM_GOTO(val)           BG_ANIM(BG_ANIM_EV_GOTO, val)
#define BG_ANIM_CALL_FUNC(val)      BG_ANIM(BG_ANIM_EV_CALL_FUNC, val)
#define BG_ANIM_SET_DELAY(val)      BG_ANIM(BG_ANIM_EV_SET_DELAY, val)
#define BG_ANIM_STOP(val)           BG_ANIM(BG_ANIM_EV_STOP, val)
#define BG_ANIM_SET_FUNC_ARG(val)   BG_ANIM(BG_ANIM_EV_SET_FUNC_ARG, val)
#define BG_ANIM_WRITE_COMP(val)     BG_ANIM(BG_ANIM_EV_WRITE_COMP, val)
#define BG_ANIM_SET_DEST(val)       BG_ANIM(BG_ANIM_EV_SET_DEST, val)
#define BG_ANIM_UNUSED(val)         BG_ANIM(BG_ANIM_EV_UNUSED, val)
#define BG_ANIM_SET_OFS(val)        BG_ANIM(BG_ANIM_EV_SET_OFS, val)
#define BG_ANIM_WRITE_OFS_COMP(val) BG_ANIM(BG_ANIM_EV_WRITE_OFS_COMP, val)


// VALUES
enum BgAnimEventsEnum {
    /* 00 */ BG_ANIM_EV_WRITE_RAW,
    /* 01 */ BG_ANIM_EV_GOTO,
    /* 02 */ BG_ANIM_EV_CALL_FUNC,
    /* 03 */ BG_ANIM_EV_SET_DELAY,
    /* 04 */ BG_ANIM_EV_STOP,
    /* 05 */ BG_ANIM_EV_SET_FUNC_ARG,
    /* 06 */ BG_ANIM_EV_WRITE_COMP,
    /* 07 */ BG_ANIM_EV_SET_DEST,
    /* 08 */ BG_ANIM_EV_UNUSED,
    /* 09 */ BG_ANIM_EV_SET_OFS,
    /* 10 */ BG_ANIM_EV_WRITE_OFS_COMP
};

enum BgAnimWriteFormatsEnum {
    /* 00 */ BG_ANIM_WRITE_RAW,
    /* 01 */ BG_ANIM_WRITE_COMP,
    /* 02 */ BG_ANIM_WRITE_COMP_W_OFFSET
};


// TYPES
typedef u32 BgMapAnim;
typedef void (*BgMapFunc)();

struct BgAnimator {
    u32 active:1;
    u32 writePending:1;
    u32 paused:1;
    u32 writeFormat:2;
    u32 targetX:5;
    u32 targetY:5;
    u32 srcWidth:5;
    u32 srcHeight:5;
    u32 destWidth:5;
    u32 scriptEnded:2;
    u16 framesRead;
    s8_8 clockSpeed;
    BgMapAnim *scriptStart;
    BgMapAnim *scriptCurrent;
    s8_8 clockPos;
    s8_8 frameTime;
    const void *srcBG;
    u16 *destBG;
    u32 size;
    s32 funcArg;
    u16 *copiedBG;
};


// FUNCTIONS (BG Animator)
extern void bg_anim_init(struct BgAnimator *animator);
extern void bg_anim_write_to_vram(struct BgAnimator *animator);
extern void bg_anim_play(struct BgAnimator *animator, BgMapAnim *anim, s24_8 frameTime, u16 *dest, u32 size);
extern void bg_anim_set_func_arg(struct BgAnimator *animator, s32 arg);
extern void bg_anim_update_script(struct BgAnimator *animator);
extern void bg_anim_stop(struct BgAnimator *animator);
extern void bg_anim_set_pause(struct BgAnimator *animator, u32 paused);

// FUNCTIONS (RLE Decompression & BG Read/Write)
extern void func_08003e00(const u16 *srcData, u32 srcWidth, u32 srcHeight, u16 *destData, u32 targetX, u32 targetY, u32 destWidth);
extern void func_08003e64(void); // Load RLE Decompression Function to RAM
// extern ? func_08003ea4(?);
// extern ? func_08003eb8(struct CompressedData *src, u16 *dest);
