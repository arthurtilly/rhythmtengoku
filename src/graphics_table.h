#pragma once

#include "global.h"
#include "graphics.h"

struct LoadGfxTableTaskInputs {
    const struct GraphicsTable *gfxTable;
    u32 limit;
};
struct GfxTableLoader {
    u16 active:1;
    u16 compressionLevel:2;
    u16 decodingRLE:1;
    u16 decompressingHuffman:12;
    u32 limit;
    const struct GraphicsTable *gfxTable;
    const void *src;
    u16 *dest;
    s32 size;
    u32 rleSaveState[8];
    u32 huffmanSaveState[9];
};

extern void *func_08002a54(void *dest);
extern void func_08002a6c(struct GfxTableLoader *info, const struct GraphicsTable *gfxTable, u32 limit); // Initialise GfxTableLoader
extern void func_08002b10(struct GfxTableLoader *info); // Update GfxTableLoader
// extern ? func_08002db0(?);
// extern ? func_08002db8(?);
// extern ? func_08002dc4(?);
// extern ? func_08002dec(?);
// extern ? func_08002e18(?);
// extern ? func_08002e2c(?);
// extern ? func_08002e44(?);
// extern ? func_08002e5c(?);
// extern ? func_08002e78(?);
extern void *func_08002eb0(struct LoadGfxTableTaskInputs *inputs); // LoadGfxTableTask Start
extern u32 func_08002ecc(struct GfxTableLoader *info); // LoadGfxTableTask Update
extern s32 func_08002ee0(u16 memID, const struct GraphicsTable *gfxTable, u32 limit); // New LoadGfxTableTask
// extern ? func_08002f04(?);
// extern ? func_08002f40(?);
// extern ? func_08002f48(?);
// extern ? func_08002f54(?);
// extern ? func_08002f5c(?);
