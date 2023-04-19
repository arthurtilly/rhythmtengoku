#pragma once

/*
 *  General "Scene"/"SubScene" header file.
 *  Should probably contain all of the functions and/or headers that are referenced in the scene C files,
 *  along with any other sort of common data.
*/

#include "global.h"
#include "graphics.h"
#include "sound.h"

#include "src/main.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/bitmap_font.h"
#include "src/task_pool.h"
#include "src/memory_heap.h"
#include "src/code_080068f8.h"
#include "src/code_08007468.h"
#include "src/code_08008dcc.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/code_080102d0.h"
#include "src/lib_0804ca80.h"

#include "data/beatscript_scene_data.h"


// Scene Static Info
extern void *D_030046a4;


// Bitmap Fonts from WarioWare
extern struct BitmapFontData bitmap_font_warioware_outline[];
extern struct BitmapFontData bitmap_font_warioware_body[];
