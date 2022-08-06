#pragma once

#include "global.h"
#include "sound.h"

extern void func_0801ee98(u32);     // [func_0801ee98] ENGINE Func_00 - Appear At Position
extern void func_0801ef70(void);    // [func_0801ef70] Initialise Rain
extern void func_0801f040(void);    // [func_0801f040] Update Rain
extern void func_0801f17c(void);    // [func_0801f17c] Update Rain If Not In Slow-Motion
extern void func_0801f194(u32);     // [func_0801f194] Set Rain Speed
extern void func_0801f30c(u32);     // [func_0801f30c] ENGINE Func_06 - Set Rain Speed (Tutorial)
extern void func_0801f318(u32);     // [func_0801f318] ENGINE Func_07 - Freeze Slow-Motion Rain (Tutorial)
extern void func_0801f328(void);    // [func_0801f328] GFX_INIT Func_02
extern void func_0801f338(void);    // [func_0801f338] GFX_INIT Func_01
extern void func_0801f378(void);    // [func_0801f378] GFX_INIT Func_00
extern void func_0801f3a4(u32);     // [func_0801f3a4] MAIN - Init
extern void func_0801f5bc(void);    // [func_0801f5bc] ENGINE Func_0A - STUB
extern void func_0801f5c0(u32);     // [func_0801f5c0] ENGINE Func_01 - Next Vertical Position
extern void func_0801f5f4(void);    // [func_0801f5f4] ENGINE Func_02 - Bow Appear
extern void func_0801f638(void);    // [func_0801f638] ENGINE Func_03 - Draw Bow
extern void func_0801f684(u32);     // [func_0801f684] ENGINE Func_04 - Play Wind/Rain SFX
extern void func_0801f6d0(void);    // [func_0801f6d0] Cross-Fade Music and Wind/Rain SFX
extern void func_0801f71c(char *);  // [func_0801f71c] ENGINE Func_05 - Display Text (Tutorial)
extern void func_0801f76c(u32);     // [func_0801f76c] ENGINE Func_08 - Display Dashing Sneaky Spirit (Tutorial)
extern void func_0801f794(u32);     // [func_0801f794] ENGINE Func_09 - Animate Dashing Sneaky Spirit (Tutorial)
extern void func_0801f7bc(void);    // [func_0801f7bc] MAIN - Update
extern void func_0801f7cc(void);    // [func_0801f7cc] MAIN - Close
extern void func_0801f7e8(u32, struct SneakySpiritsCue *, u32); // [func_0801f7e8] CUE - Spawn
extern u32  func_0801f7f0(u32, struct SneakySpiritsCue *, u32); // [func_0801f7f0] CUE - Update
extern void func_0801f80c(u32, struct SneakySpiritsCue *, u32); // [func_0801f80c] CUE - Despawn (STUB)
extern void func_0801f810(void);    // [func_0801f810] Revert Slow-Motion Effects
extern void func_0801f8d0(u32, struct SneakySpiritsCue *, u32); // [func_0801f8d0] CUE - Hit
extern void func_0801fa4c(u32, struct SneakySpiritsCue *, u32); // [func_0801fa4c] CUE - Barely
extern void func_0801fb14(u32, struct SneakySpiritsCue *, u32); // [func_0801fb14] CUE - Miss
extern void func_0801fbb0(void);    // [func_0801fbb0] MAIN - Input Event
extern void func_0801fc3c(void);    // [func_0801fc3c] COMMON Func_00 - STUB
extern void func_0801fc40(void);    // [func_0801fc40] COMMON Func_01 - STUB