#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "data/data_089363cc.h"


/* AGB ... */


typedef u32 (*D_0300009c_func)(void);

extern void func_08001360(void);
extern void func_08001380(void);
extern void func_080013a8(void);
extern void func_080013e8(D_0300009c_func);


/* AGB INPUT */


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


/* AGB DMA3 */


extern void dma3_set(const void *source, void *destination, u32 bytesToSet, u16 unit, u32 bytesPerInterrupt); // DMA3 Set
extern void dma3_fill(u32 value, void *destination, u32 bytesToFill, u16 unit, u32 bytesPerInterrupt); // DMA3 Fill


/* MATH */


extern void set_agb_random_var(u32); // Set Global Random Value
extern u16 get_agb_random_var(void); // Get Global Random Value
extern u16 agb_random(u16); // AGB Random
extern s32 func_080019a4(u32 fullAngle); // Interpolated Sine (Q8.4)
extern s32 func_080019e4(u32 fullAngle); // Interpolated Cosine (Q8.4)


/* PALETTE INTERPOLATOR */


extern void func_08001a24_stub(void);
extern void func_08001a28(const u16 *sourceA, u32 valueB, u16 *outputDest, u32 totalColors, u32 progress);
extern void func_08001a64(struct PaletteInterpolator *task, u32 indexOffset);
extern void func_08001b48(struct PaletteInterpolator *task);
extern void func_08001b98(struct PaletteInterpolator *task, u32 indexOffset);
extern void func_08001bf8(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputBackup, u16 *outputDest);
extern void func_08001c64(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *valueA, const u16 *sourceB, u16 *outputBackup, u16 *outputDest);
extern void func_08001cd8(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *sourceA, const u16 *valueB, u16 *outputBackup, u16 *outputDest);
extern void func_08001d44(struct PaletteInterpolator *task);
extern void func_08001d74(struct PaletteInterpolator *task);
extern void func_08001ddc(u8 alpha, u8 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputDest);
extern void func_08001e4c(u8 alpha, u8 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputDest);
extern void func_08001ec4(u8 alpha, u8 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputDest);
extern struct PaletteInterpolator *func_08001f34(struct PaletteInterpolatorInputs *inputs);
extern struct PaletteInterpolator *func_08001f64(struct PaletteInterpolatorInputs *inputs);
extern struct PaletteInterpolator *func_08001f94(struct PaletteInterpolatorInputs *inputs);
extern u32 func_08001fc4(struct PaletteInterpolator *task);
extern s32 func_08001fe0(u16 memID, u8 duration, u8 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputDest); // Interpolate Palette (Array->Array)
extern s32 func_08002018(u16 memID, u8 duration, u8 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputDest); // Interpolate Palette (Color->Array)
extern s32 func_08002050(u16 memID, u8 duration, u8 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputDest); // Interpolate Palette (Array->Color)
extern u16 func_08002088(u16 col1, u16 col2, u16 blendAlpha);
