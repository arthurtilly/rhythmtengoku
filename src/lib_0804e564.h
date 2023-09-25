#pragma once

#include "global.h"

// Gyro/Rumble Library

struct struct_0804e640 { // Gyro Status?
    u32 unk0;
    s32 unk4;
    u32 unk8;
    s32 unkC;
    u16 unk10;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u8 unk20;
    u8 unk21;
    u16 unk22;
};

extern volatile u16 D_03004438; // GPIO Data Reserve
extern volatile u16 D_0300443a; // GPIO Direction Reserve
extern struct struct_0804e640 *D_0300443c; // Gyro Status Pointer
extern u8 D_03004440; // Rumble/Gyro Enabled

extern s32 (*D_030064d4)(void); // Read Gyro Function?

extern volatile u16 *D_08bd0cc8; // GPIO Data Pointer
extern volatile u16 *D_08bd0ccc; // GPIO Direction Pointer
extern volatile u16 *D_08bd0cd0; // GPIO Control Pointer
extern u8 D_08bd0cd4[4];


extern void func_0804e564(void);
extern s32 func_0804e598(void);
extern void func_0804e618(u32);
// extern ? func_0804e640(?);
// extern ? func_0804e690(?);
// extern ? func_0804e6c4(?);
// extern ? func_0804e6e4(?);
// extern ? func_0804e77c(?);
// extern ? func_0804e834(?);
// extern ? func_0804e870(?);
// extern ? func_0804e8bc(?);
// extern ? func_0804e8cc(?);
// extern ? func_0804e8f8(?);
// extern ? func_0804e914(?);
// extern ? func_0804e92c(?);

// ARM 
extern volatile s32 func_0804e938(volatile u16 *);
