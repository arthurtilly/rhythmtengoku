#pragma once

#include "global.h"
#include "graphics.h"

// TYPES:
struct PaletteInterpolatorInputs {
    u8 duration;
    u8 totalPalettes;
    const u16 *sourceA;
    const u16 *sourceB;
    u16 *outputDest;
};

struct PaletteInterpolator {
    u32 isActive:1;
    u32 duration:8;
    u32 runningTime:8;
    u32 totalPalettes:6;
    u32 sourceType:2;
    const u16 *sourceA;
    const u16 *sourceB;
    u16 *outputBackup;
    u16 *outputDest;
    u16 paletteMask;
};


// FUNCTIONS:
extern void func_08001a24_stub(void);
extern void fast_blend_pal_to_col(const u16 *sourceA, u32 valueB, u16 *outputDest, u32 totalColors, u24_8 progress);
extern void pal_interp_blend(struct PaletteInterpolator *task, u32 startId);
extern void pal_interp_update(struct PaletteInterpolator *task);
extern void pal_interp_init_dest(struct PaletteInterpolator *task, u32 startId);
extern void pal_interp_init_ptp(struct PaletteInterpolator *task, u32 frames, u32 totalPal, const u16 *srcPal1, const u16 *srcPal2, u16 *backup, u16 *dest);
extern void pal_interp_init_ctp(struct PaletteInterpolator *task, u32 frames, u32 totalPal, u32 fadeCol, const u16 *srcPal, u16 *backup, u16 *dest);
extern void pal_interp_init_ptc(struct PaletteInterpolator *task, u32 frames, u32 totalPal, const u16 *srcPal, u32 fadeCol, u16 *backup, u16 *dest);
extern void pal_interp_write_backup(struct PaletteInterpolator *task);
extern void pal_interp_update_masked(struct PaletteInterpolator *task);
extern void blend_pal_to_pal(u8 alpha, u8 totalPal, const u16 *srcA, const u16 *srcB, u16 *dest);
extern void blend_col_to_pal(u8 alpha, u8 totalPal, u32 valA, const u16 *srcB, u16 *dest);
extern void blend_pal_to_col(u8 alpha, u8 totalPal, const u16 *srcA, u32 valB, u16 *dest);
extern s32 palette_fade_to(u16 memID, u8 frames, u8 totalPal, const u16 *srcPal1, const u16 *srcPal2, u16 *dest);   // Array->Array
extern s32 palette_fade_in(u16 memID, u8 frames, u8 totalPal, u32 fadeCol, const u16 *srcPal, u16 *dest);           // Color->Array
extern s32 palette_fade_out(u16 memID, u8 frames, u8 totalPal, const u16 *srcPal, u32 fadeCol, u16 *dest);          // Array->Color
extern u16 get_blended_color(u16 col1, u16 col2, u16 blendAlpha);
