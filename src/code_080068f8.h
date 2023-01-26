#pragma once

#include "global.h"
#include "graphics.h"
#include "data/data_08936b54.h"

extern Palette D_030046c0[32]; // Temporary space for palettes during fade-in

// extern ? func_0800679c(?);
// extern ? func_080067a4(?);
// extern ? func_080068f8(?);
// extern ? func_0800694c(?);
// extern ? func_0800699c(?);
// extern ? func_080069d4(?);
// extern ? func_08006a0c(?);
// extern ? func_08006a8c(?);
// extern ? func_08006ac0(?);
// extern ? func_08006ac8(?);
// extern ? func_08006b1c(?);
// extern ? func_08006b30(?);
extern struct unk_struct_08006bb4 *func_08006bb4(struct unk_struct_08006bb4_init *);
extern u32 func_08006c08(struct unk_struct_08006bb4 *);
extern struct unk_struct_08006ca4 *func_08006ca4(struct unk_struct_08006ca4_init *);
extern u32 func_08006ce8(struct unk_struct_08006ca4 *);
extern void func_08006d80(); // Disable Graphics Buffer?
extern void func_08006da8(void); // Reset Graphics Buffer
// extern ? func_08006e00(?);
// extern ? func_08006e30(?);
extern void func_08006e88(void); // Flush Graphics Buffer
extern void func_08006f84(void); // Update Palette
extern void func_08006fec(void); // Clear OAM Buffer
extern void func_08007014(u16 colour); // Fill Palette with Solid Colour
extern void func_0800703c(u16 time, u16 colour); // Fade From Solid Colour
extern void func_080070c4(u16 time, u16 colour); // Fade To Solid Colour
extern void func_0800714c(void); // ? (clear unk854_1 and unk854_3)
// extern ? func_0800716c(?);
extern void func_0800724c(void); // Update Palette Transition
extern void func_08007324(u32 update); // Enable Display Updates
extern void func_08007344(void *paletteFunc); // Set Palette Mod. Function
extern void func_08007370(void);
// extern ? func_08007394(?);
// extern ? func_080073b8(?);
extern void func_080073f0(void); // Init. OAM Buffer
extern void func_08007410(void); // Update OAM Buffer
// extern ? func_0800742c(?);
