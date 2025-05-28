#pragma once

#include "global.h"
#include "engines.h"

#include "games/marching_orders/graphics/marching_orders_prologue_graphics.h"


  //  //  //  PROLOGUE: MARCHING ORDERS  //  //  //


// Types:
struct MarchingOrdersPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *marching_orders_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable marching_orders_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046234(void);    // [func_08046234] GFX_INIT Func_02
extern void func_08046244(void);    // [func_08046244] GFX_INIT Func_01
extern void func_08046274(void);    // [func_08046274] GFX_INIT Func_00
extern void marching_orders_prologue_engine_start(u32);     // [func_080462a4] MAIN - Init
extern void func_08046300(void);    // [func_08046300] ENGINE Func_00   (STUB)
extern void marching_orders_prologue_engine_update(void);    // [func_08046304] MAIN - Update    (STUB)
extern void marching_orders_prologue_engine_stop(void);    // [func_08046308] MAIN - Close     (STUB)
extern void func_0804630c(u32);     // [func_0804630c] Event 0 - Set Animation Frame (Text)
