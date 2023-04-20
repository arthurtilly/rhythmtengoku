#include "global.h"
#include "drum_replay.h"
#include "graphics/studio/studio_graphics.h"


/* DRUM REPLAY SAVE ALLOCATOR */


#define REPLAY_BLOCK_TOTAL 0x38
#define REPLAY_BLOCK_SIZE 0x100
#define MAX_REPLAYS 10


// Reset
void reset_all_replay_save_data(struct DrumReplaySaveAlloc *allocator) {
    u32 i;

    allocator->nextAvailableBlock = 0;

    for (i = 0; i < MAX_REPLAYS; i++) {
        allocator->replayStartBlocks[i] = 0;
        allocator->replaySizes[i] = 0;
    }

    dma3_fill(0, allocator->saveMemory, REPLAY_BLOCK_TOTAL * REPLAY_BLOCK_SIZE, 0x20, 0x200);
}


// Get Replay Indexes
s32 get_saved_replay_block_data(struct DrumReplaySaveAlloc *allocator, s32 saveID, s32 *blockBaseReq, s32 *blockCountReq) {
    if (allocator->replaySizes[saveID] == 0) {
        *blockBaseReq = 0;
        *blockCountReq = 0;
        return -1;
    }

    *blockBaseReq = allocator->replayStartBlocks[saveID];
    *blockCountReq = (allocator->replaySizes[saveID] + 0xff) / REPLAY_BLOCK_SIZE;
}


// Get Replay Data
s32 get_saved_replay_data(struct DrumReplaySaveAlloc *allocator, s32 saveID, void *dest) {
    void *src;
    s32 len;

    if (allocator->replaySizes[saveID] == 0) {
        return -1;
    }

    src = allocator->saveMemory[allocator->replayStartBlocks[saveID]];
    len = allocator->replaySizes[saveID];
    dma3_set(src, dest, len, 0x20, 0x200);

    return len;
}


// Allocate ID
s32 alloc_replay_save_data(struct DrumReplaySaveAlloc *allocator, void *replay, u32 size) {
    u32 i;

    if (get_remaining_replay_data_space(allocator) < size) {
        return -2;
    }

    for (i = 0; i < MAX_REPLAYS; i++) {
        if (allocator->replaySizes[i] == 0) {
            break;
        }
    }

    if (i >= MAX_REPLAYS) {
        return -1;
    }

    allocator->replayStartBlocks[i] = allocator->nextAvailableBlock;
    allocator->replaySizes[i] = size;
    dma3_set(replay, allocator->saveMemory[allocator->nextAvailableBlock], size, 0x20, 0x200);
    allocator->nextAvailableBlock += (size + 0xff) / REPLAY_BLOCK_SIZE;

    return i;
}


// Deallocate ID
s32 delete_saved_replay(struct DrumReplaySaveAlloc *allocator, s32 saveID) {
    u32 firstBlock;
    s32 totalBlocks;
    s32 len;
    s32 ofs;
    u32 i;

    if (allocator->replaySizes[saveID] == 0) {
        return -1;
    }

    firstBlock = allocator->replayStartBlocks[saveID];
    totalBlocks = (allocator->replaySizes[saveID] + 0xff) / REPLAY_BLOCK_SIZE;
    ofs = totalBlocks * REPLAY_BLOCK_SIZE;
    len = (REPLAY_BLOCK_TOTAL - (firstBlock + totalBlocks)) * REPLAY_BLOCK_SIZE;
    dma3_set(allocator->saveMemory[firstBlock] + ofs, allocator->saveMemory[firstBlock], len, 0x20, 0x200);

    for (i = 0; i < MAX_REPLAYS; i++) {
        if ((i != saveID) && (allocator->replayStartBlocks[i] > firstBlock)) {
            allocator->replayStartBlocks[i] -= totalBlocks;
        }
    }

    allocator->replayStartBlocks[saveID] = 0;
    allocator->replaySizes[saveID] = 0;
    allocator->nextAvailableBlock -= totalBlocks;

    return 0;
}


// Get Available Space
u32 get_remaining_replay_data_space(struct DrumReplaySaveAlloc *allocator) {
    return (REPLAY_BLOCK_TOTAL - allocator->nextAvailableBlock) * REPLAY_BLOCK_SIZE;
}


// Get Next Available ID
s32 get_available_replay_data_id(struct DrumReplaySaveAlloc *allocator) {
    u32 i;

    for (i = 0; i < MAX_REPLAYS; i++) {
        if (allocator->replaySizes[i] == 0) {
            return i;
        }
    }

    return -1;
}


// Create New Replay Memory Graph
struct DrumReplaySaveGraph *create_new_replay_memory_graph(u32 memID, struct DrumReplaySaveAlloc *allocator, u32 baseTile, u32 basePalette) {
    struct DrumReplaySaveGraph *graph;
    void *objTexturesAddress;
    u16 *srcPal, *destPal;
    u32 colors;
    u32 i, j;

    objTexturesAddress = OBJ_TILESET_BASE(baseTile * 0x20);
    func_08003eb8(&D_08cc4bcc, objTexturesAddress);

    srcPal = &studio_mem_chart_pal[0][1];
    destPal = &D_03004b10.objPalette[basePalette][1];
    colors = 3;

    for (i = 0; i < 11; i++) {
        for (j = 0; j < colors; j++) {
            destPal[j] = srcPal[j];
        }
        srcPal += 16;
        destPal += 16;
    }

    graph = mem_heap_alloc_id(memID, 0x1C);
    graph->outerEdges = func_0804d160(D_03005380, anim_studio_mem_chart_borders, 0, 128, 156, 0x800, 0, 0, 0x8000);
    func_0804d890(D_03005380, graph->outerEdges, baseTile);
    func_0804d8c4(D_03005380, graph->outerEdges, basePalette);
    graph->dataBack = func_0804d160(D_03005380, anim_studio_mem_chart_data, 0, 0, 156, 0x800, 0, 0, 0x8000);
    func_0804d890(D_03005380, graph->dataBack, baseTile);
    func_0804d8c4(D_03005380, graph->dataBack, basePalette);

    for (i = 0; i < 10; i++) {
        graph->dataBars[i] = func_0804d160(D_03005380, anim_studio_mem_chart_data, 0, 0, 156, 0x800, 0, 0, 0x8000);
        func_0804d890(D_03005380, graph->dataBars[i], baseTile);
        func_0804d8c4(D_03005380, graph->dataBars[i], basePalette + i + 1);
    }

    graph->replaysAlloc = allocator;

    return graph;
}


// Render Data Bars
void update_replay_memory_graph_data_bars(struct DrumReplaySaveGraph *graph) {
    struct DrumReplaySaveAlloc *allocator = graph->replaysAlloc;
    s32 baseBlock, totalBlocks;
    u32 backBaseBlock = 0;
    s32 backFrame;
    u32 i;

    for (i = 0; i < 10; i++) {
        get_saved_replay_block_data(allocator, i, &baseBlock, &totalBlocks);
        if (totalBlocks != 0) {
            func_0804d614(D_03005380, graph->dataBars[i], (baseBlock * 4) + 128);
            func_0804cebc(D_03005380, graph->dataBars[i], totalBlocks);
        } else {
            func_0804cebc(D_03005380, graph->dataBars[i], 0);
        }

        if (backBaseBlock < baseBlock + totalBlocks) {
            backBaseBlock = baseBlock + totalBlocks;
        }
    }

    backFrame = REPLAY_BLOCK_TOTAL - backBaseBlock;
    if (backFrame != 0) {
        func_0804d614(D_03005380, graph->dataBack, (backBaseBlock * 4) + 128);
        func_0804cebc(D_03005380, graph->dataBack, backFrame);
    } else {
        func_0804cebc(D_03005380, graph->dataBack, 0);
    }
}


// Show/Hide Memory Graph
void show_replay_memory_graph(struct DrumReplaySaveGraph *graph, u32 show) {
    struct DrumReplaySaveGraph *chart = graph; // probably the result of some list macro
    u32 i;

    func_0804d770(D_03005380, graph->outerEdges, show);
    func_0804d770(D_03005380, graph->dataBack, show);

    for (i = 0; i < 10; i++) {
        func_0804d770(D_03005380, chart->dataBars[i], show);
    }
}
