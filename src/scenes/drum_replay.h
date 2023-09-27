#pragma once

#include "global.h"
#include "scenes.h"
#include "src/memory.h"

struct DrumReplaySaveGraph {
    s16 outerEdges;
    s16 dataBack;
    s16 dataBars[10];
    struct DrumReplaySaveAlloc *replaysAlloc;
};

extern void reset_all_replay_save_data(struct DrumReplaySaveAlloc *allocator);
extern s32 get_saved_replay_block_data(struct DrumReplaySaveAlloc *allocator, s32 saveID, s32 *blockBaseReq, s32 *blockCountReq);
extern s32 get_saved_replay_data(struct DrumReplaySaveAlloc *allocator, s32 saveID, void *dest);
extern s32 alloc_replay_save_data(struct DrumReplaySaveAlloc *allocator, void *replay, u32 size);
extern s32 delete_saved_replay(struct DrumReplaySaveAlloc *allocator, s32 saveID);
extern u32 get_remaining_replay_data_space(struct DrumReplaySaveAlloc *allocator);
extern s32 get_available_replay_data_id(struct DrumReplaySaveAlloc *allocator);
extern struct DrumReplaySaveGraph *create_new_replay_memory_graph(u32 memID, struct DrumReplaySaveAlloc *allocator, u32 baseTile, u32 basePalette);
extern void update_replay_memory_graph_data_bars(struct DrumReplaySaveGraph *graph);
extern void show_replay_memory_graph(struct DrumReplaySaveGraph *graph, u32 show);
