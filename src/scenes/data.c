#include "global.h"
#include "scenes/data.h"

asm(".include \"include/gba.inc\"");//Temporary


/* DATA CHECK */


#include "asm/data/asm_08011530.s"

#include "asm/data/asm_08011534.s"

#include "asm/data/asm_08011580.s"

#include "asm/data/asm_080115b0.s"

#include "asm/data/asm_080115d0.s"

#include "asm/data/asm_08011690.s"

#include "asm/data/asm_08011694.s"

#include "asm/data/asm_08011728.s"

#include "asm/data/asm_08011744.s"

#include "asm/data/asm_08011820.s"

#include "asm/data/asm_08011a08.s"



/* Drum Replay Save Allocator */



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


#include "asm/data/asm_08011a58.s"


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


#include "asm/data/asm_08011c1c.s"

#include "asm/data/asm_08011d8c.s"

#include "asm/data/asm_08011e74.s"
