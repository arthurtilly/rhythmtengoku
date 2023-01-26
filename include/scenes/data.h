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

extern void reset_all_replay_save_data(struct DrumReplaySaveAlloc *allocator);
// extern ? func_08011a58(?);
extern s32 get_saved_replay_data(struct DrumReplaySaveAlloc *allocator, s32 saveID, void *dest);
extern s32 alloc_replay_save_data(struct DrumReplaySaveAlloc *allocator, void *replay, u32 size);
extern s32 delete_saved_replay(struct DrumReplaySaveAlloc *allocator, s32 saveID);
extern u32 get_remaining_replay_data_space(struct DrumReplaySaveAlloc *allocator);
extern s32 get_available_replay_data_id(struct DrumReplaySaveAlloc *allocator);
// extern ? func_08011c1c(?);
// extern ? func_08011d8c(?);
// extern ? func_08011e74(?);
