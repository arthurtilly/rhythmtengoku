#pragma once

#include "global.h"
#include "scenes.h"
#include "src/memory.h"

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
