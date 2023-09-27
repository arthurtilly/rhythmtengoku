#pragma once

#include "global.h"
#include "graphics.h"

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
