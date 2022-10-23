#pragma once

#include "global.h"

struct struct_03004ad0 {
    u32 unk0;
    u32 *unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

extern struct struct_03004ad0 D_03004ad0;

/* MEMORY HEAP */

extern void mem_heap_init(u32 *, u32);
extern void *mem_heap_alloc(u32);
extern void *mem_heap_alloc_id(u16, u32);
extern void mem_heap_dealloc_block(u32, s32);
extern void mem_heap_dealloc(void *);
extern void mem_heap_dealloc_with_id(u16);
extern void mem_heap_get_allocated_space(void);
