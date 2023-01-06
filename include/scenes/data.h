#pragma once

#include "global.h"
#include "scenes.h"
#include "src/memory.h"

// extern ? func_08011530(?); // [func_08011530] DATA CHECK - Initialise Static Variables
// extern ? func_08011534(?); // [func_08011534] DATA CHECK - Graphics Init. 2
// extern ? func_08011580(?); // [func_08011580] DATA CHECK - Graphics Init. 1
// extern ? func_080115b0(?); // [func_080115b0] DATA CHECK - Graphics Init. 0
// extern ? func_080115d0(?); // [func_080115d0] DATA CHECK - Scene Init.
// extern ? func_08011690(?); // [func_08011690] DATA CHECK - Scene STUB
// extern ? func_08011694(?); // [func_08011694] DATA CHECK - Scene Main
// extern ? func_08011728(?); // [func_08011728] DATA CHECK - ?
// extern ? func_08011744(?); // [func_08011744] DATA CHECK - ?
// extern ? func_08011820(?); // [func_08011820] DATA CHECK - ?
// extern ? func_08011a08(?); // [func_08011a08] DATA CHECK - Scene Close

extern void func_08011a18(struct SaveDataAllocator *allocator);
// extern ? func_08011a58(?);
// extern ? func_08011a90(?);
// extern ? func_08011ad4(?);
// extern ? func_08011b50(?);
extern u32 func_08011bec(struct SaveDataAllocator *allocator);
extern u32 func_08011bf8(struct SaveDataAllocator *allocator);
// extern ? func_08011c1c(?);
// extern ? func_08011d8c(?);
// extern ? func_08011e74(?);
