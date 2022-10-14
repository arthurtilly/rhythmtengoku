#pragma once

#include "global.h"

#define SAVE_BUFFER_SIZE 0x3B04 // might need renaming

extern struct SaveBuffer {
    struct SaveBufferInfo {
        char RIQ[4]; // "RIQ"
        u32 bufferSize;
        u32 unk8;
        u32 unkC; // 0x26040000
    } info;
    u8 unk10[0x2A0];
    u32 null2B0;
    u32 unk2B4[4];
    u32 soundMode;
    u32 null2C8;
    u32 null2CC;
    u32 null2D0;
    u32 unk2D4;
} *D_030046a8;

struct TengokuSaveData {
    s8 gameSelectCursorX;
    s8 gameSelectCursorY;
    s8 gameSelectPosX;
    s8 gameSelectPosY;
    s8 gameSelectUnk4;
    u8 gameSelectUnk5;
    u8 rhythmGameCompletion[55];
    u8 padding3D[0x3];
    u16 unk40[55];
    u8 flowUnkAE;
    u8 paddingAF[0x187];
    u8 unk236[48];
    u8 unk266;
    u8 unk267;
    u8 unk268;
    u8 unk269;
    u8 unk26A;
    u8 padding26B[0x23];
    u8 unk28E;
    u8 padding28F[0x2];
    u8 unk291;
    u8 padding292[0x12];
    u32 highScoreMrUpbeat;
    u32 highScoreMannequinFactory;
    u32 highScoreSickBeatsSP;
    u32 highScoreQuizShowEX;
    u32 unk2B4[4];
    u32 soundMode;
    u8 padding2C8[0xc];
    u32 unk2D4;
};

typedef void (struct_030064c8_func)(s32 *, s32 *, s32);
extern struct_030064c8_func *D_030064c8;

extern s32 *D_08935fb4; // CartRAMBase (0x0E000000)
extern s32 *D_08935fb8; // CartRAMBase + 0x4000 (0x0E004000)
extern char D_08935fbc[4]; // "RIQ"
extern char D_08935fc4[4]; // "CAL"

extern void init_ewram(void);
extern void *get_save_buffer_start(void);
extern void *get_save_buffer_end(void);
extern void *get_memory_heap_start(void);
extern u32 get_memory_heap_length(void);
extern s32 func_08000794(s32 *, u32);
extern void func_08000804(void);
extern void func_0800081c(void);
extern s32 func_08000868(s32 *);
extern s32 func_080008bc(void);
extern s32 func_080008d0(void);
extern void func_080008e4(s32 *);
extern s32 func_0800091c(void *);
extern void func_08000928(s32 *);
extern void func_0800096c(s32 *, s32);
extern void func_080009a0(void);
extern void func_080009b4(void);
extern void func_080009c8_stub(void);
extern void func_080009cc_stub(void);
extern s32 func_080009d0(s16 *);
extern s32 func_080009fc(void);
