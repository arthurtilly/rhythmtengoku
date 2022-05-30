#pragma once

#include "global.h"

#define SAVE_BUFFER_SIZE 0x3B04 // might need renaming

extern s32 *D_030046a8;

typedef void (struct_030064c8_func)(s32 *, s32 *, s32);
extern struct_030064c8_func *D_030064c8;

extern s32 *D_08935fb4;
extern s32 *D_08935fb8;
extern s32 D_08935fbc;
extern s32 D_08935fc4;

extern void init_ewram(void);
extern void *get_save_buffer_start(void);
extern void *get_save_buffer_end(void);
extern void *get_memory_heap_start(void);
extern u32 get_memory_heap_length(void);
extern s32 func_08000794(s32 *, u32);
extern void func_08000804(void);
extern void func_0800081c(void);
extern s32 func_08000868(s32 *);
extern s32 func_080008bc(void);
extern s32 func_080008d0(void);
extern void func_080008e4(s32 *);
extern s32 func_0800091c(s32 *);
extern void func_08000928(s32 *);
extern void func_0800096c(s32 *, s32);
extern void func_080009a0(void);
extern void func_080009b4(void);
extern void func_080009c8_stub(void);
extern void func_080009cc_stub(void);
extern s32 func_080009d0(s16 *);
extern s32 func_080009fc(void);
