#pragma once

#include "global.h"


/* ??? */


typedef u32 (*D_0300009c_func)(void);

extern void func_08001360(void);
extern void func_08001380(void);
extern void func_080013a8(void);
extern void func_080013e8(D_0300009c_func);


/* INPUT */


enum InputRecordingModesEnum {
    INPUT_REC_MODE_NONE,
    INPUT_REC_MODE_RECORD,
    INPUT_REC_MODE_PLAY_AS_REALTIME,
    INPUT_REC_MODE_PLAY_AS_SECONDARY,
    INPUT_REC_MODE_PLAY_WITH_REALTIME
};

extern u16 D_03004ac0; // Button Buffer (Current State)
extern u16 D_03004afc; // Button Buffer (Just Pressed)
extern u16 D_03004b00; // Button Buffer (Just Released)
extern u16 D_030053b8; // Button Buffer (Current State w/ Repeat Delay)

extern u16 D_030046b4;
extern u16 D_030046b8;
extern u16 D_03005378;
extern u16 D_0300537c;

extern u32 sRecCurrentKey;
extern u32 sRecMaxKeys;

extern void reset_main_key_buffers(u16 keys);
extern void reset_rec_key_buffers(u16 keys);
extern void init_key_listener(void);
extern void update_main_key_buffers(u16 keys);
extern void update_rec_key_buffers(u16 keys);
extern void update_key_listener(void);
extern void key_rec_set_mode(u32 mode, u16 keyFilter, u16 *recording, u32 maxInputs);
extern void key_rec_set_paused(u32 pause);
extern u32 key_rec_get_next(void);
extern u32 key_rec_reached_end(void);


/* DMA3 */


extern void dma3_set(const void *source, void *destination, u32 bytesToSet, u16 unit, u32 bytesPerInterrupt);
extern void dma3_fill(u32 value, void *destination, u32 bytesToFill, u16 unit, u32 bytesPerInterrupt);


/* MATH */


extern void set_agb_random_var(u32);
extern u16 get_agb_random_var(void);
extern u16 agb_random(u16);
extern s32 func_080019a4(u32 fullAngle); // Interpolated Sine (Q8.4)
extern s32 func_080019e4(u32 fullAngle); // Interpolated Cosine (Q8.4)
