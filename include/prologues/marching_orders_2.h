#pragma once

#include "global.h"
#include "engines.h"

#include "games/marching_orders/graphics/marching_orders_prologue_graphics.h"


  //  //  //  PROLOGUE: MARCHING ORDERS 2  //  //  //


// Types:
struct MarchingOrders2PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *marching_orders_2_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable marching_orders_2_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046330(void);    // [func_08046330] GFX_INIT Func_02
extern void func_08046340(void);    // [func_08046340] GFX_INIT Func_01
extern void func_08046370(void);    // [func_08046370] GFX_INIT Func_00
extern void marching_orders_2_prologue_engine_start(u32);     // [func_080463a0] MAIN - Init
extern void func_080463fc(void);    // [func_080463fc] ENGINE Func_00   (STUB)
extern void marching_orders_2_prologue_engine_update(void);    // [func_08046400] MAIN - Update    (STUB)
extern void marching_orders_2_prologue_engine_stop(void);    // [func_08046404] MAIN - Close     (STUB)
extern void func_08046408(u32);     // [func_08046408] Event 0 - Set Animation Frame (Text)
