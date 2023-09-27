#pragma once

#include "global.h"

#define UNK_SIZE_210 0x210

extern void math_arr_set_natural_int8(s8 arr[], u32 len);
extern void math_arr_set_natural_int16(s16 arr[], u32 len);
extern void math_arr_set_natural_int32(s32 arr[], u32 len);
extern void math_arr_set_shuffled_int8(s8 arr[], u32 len);
extern void math_arr_set_shuffled_int16(s16 arr[], u32 len);
extern void math_arr_set_shuffled_int32(s32 arr[], u32 len);
extern void math_arr_invert_palette(s16 src[], s16 dest[], u32 total);
extern s32 math_arr_get_scene(s32 arr[]);
extern s32 math_arr_get_i(s32 arr[], u32 id);
extern s32 math_lerp(s32 v1, s32 v2, u32 t, u32 total);

extern s32 func_08008f1c(void);
extern u32 func_08008f68(void);
extern s32 func_08008f74(void);
extern void func_08008fe0(u8 *arg0, u8 *arg1);
extern s32 func_08008ff8(u32 arg0);
extern u32 func_08009024(void);
extern s32 func_08009048(u32 arg0, u8 arg1[]);
extern s32 func_08009090(u32 arg0, u8 arg1[], u32 arg2);
extern void func_080090d0(void);
extern void func_080090ec(u32 arg0, u8 *arr, u32 len);
extern void func_08009150(void);
extern void func_0800915c(void);
extern void func_0800917c(void);
extern void func_080091a4(void);
extern void func_080091c4(void arg0(s32), s32 arg1);
extern void func_080091d8(void);
extern void func_080091fc(void);
extern void func_0800921c(void);
extern void func_08009240(s32 arg0);
extern void func_08009268(void);
extern void func_0800928c(s32 arg0, void arg1(s32), s32 arg2);
