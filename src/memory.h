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
    struct TengokuSaveData {
        s8 gameSelectCursorX;
        s8 gameSelectCursorY;
        s8 gameSelectPosX;
        s8 gameSelectPosY;
        s8 recentGameCompletionLevel;
        u8 gameSelectUnk5;
        u8 rhythmGameCompletion[55];
        u16 unk3E;
        u16 unk40[55];
        u16 currentFlow;
        u8 paddingB0[0x186];
        u8 unk236[48];
        u8 unk266;
        u8 perfectAttemptsRemaining;
        u8 unk268;
        u8 perfectCampaignID;
        u8 unk26A;
        u8 padding26B[0x23];
        u8 unk28E;
        u8 padding28F[0x2];
        u8 unk291;
        u8 padding292[0x2];
        u32 highScoreMrUpbeat;
        u32 highScoreMannequinFactory;
        u32 highScoreSickBeatsSP;
        u32 highScoreQuizShowEX;
        u32 unk2A4[4];
        u32 soundMode;
        u8 padding2B8[0xc];
        u32 unk2C4;
    } data;
} *D_030046a8;



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
