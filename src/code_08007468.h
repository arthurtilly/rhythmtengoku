#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "data/data_08936b54.h"

struct unk_struct_08008b00 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
};

extern s32 (*D_03004ae4)(s32);

extern void func_08007468(s16 sprite, s8 affineParamID);
extern void func_08007498(s8 arg0, s16 arg1, s16 arg2);
extern void func_080074c4(s8 arg0, s16 arg1, s16 arg2, s16 arg3);
extern struct unk_struct_080074ec *func_080074ec(struct unk_struct_080074ec_init *inputs);
extern u32 func_08007544(struct unk_struct_080074ec *task);
extern struct unk_struct_0800757c *func_0800757c(struct unk_struct_0800757c_init *inputs);
extern u32 func_080075e4(struct unk_struct_0800757c *task);
extern struct unk_struct_0800765c *func_0800765c(struct unk_struct_0800765c_init *inputs);
extern u32 func_080076ec(struct unk_struct_0800765c *task);
extern struct unk_struct_08007788 *func_08007788(struct unk_struct_08007788_init *inputs);
extern u32 func_080077e8(struct unk_struct_08007788 *task);
extern u32 func_08007854(struct unk_struct_080078ec *task);
extern struct unk_struct_080078ec *func_080078ec(struct unk_struct_080078ec_init *inputs);
extern u32 func_0800793c(struct unk_struct_080079bc *task);
extern struct unk_struct_080079bc *func_080079bc(struct unk_struct_080079bc_init *inputs);
extern u32 func_08007a14(struct unk_struct_08007aa0 *task);
extern struct unk_struct_08007aa0 *func_08007aa0(struct unk_struct_08007aa0_init *inputs);
// extern ? func_08007b04(?);
// extern ? func_08007b2c(?);
// extern ? func_08007b4c(?);
extern s32 fast_divsi3(s32 dividend, s32 divisor);
extern struct LinearDataInterpolator *func_08007bb8(struct LinearDataInterpolator *inputs);
extern u32 func_08007c30(struct LinearDataInterpolator *task);
extern struct unk_struct_08007ca8 *func_08007ca8(struct unk_struct_08007ca8_init *inputs);
extern u32 func_08007d20(struct unk_struct_08007ca8 *task);
extern struct unk_struct_08007d88 *func_08007d88(struct unk_struct_08007d88_init *inputs);
extern u32 func_08007e00(struct unk_struct_08007d88 *task);
// extern ? func_08007e68(?);
extern struct unk_struct_08007e7c *func_08007e7c(struct unk_struct_08007e7c_init *inputs);
extern u32 func_08007ef8(struct unk_struct_08007e7c *task);
extern struct BlendControlsInterpolator *func_08007f58(struct BlendControlsInterpolator *inputs); // Initialise LCD Special Effects Interpolator
extern u32 func_08007fdc(struct BlendControlsInterpolator *task); // Update LCD Special Effects Interpolator
extern s32 func_08008054(u16 memID, u32 blendControls, u32 duration, u32 flip); // Interpolate LCD Special Effects
// extern ? func_08008090(?);
// extern ? func_08008184(?);
extern char *func_080081a8(char *, const char *); // Append String
// extern ? func_080081d4(?);
// extern ? func_0800820c(?); // Check if two strings are equal?
// extern ? func_08008248(?);
// extern ? func_08008294(?);
// extern ? func_080082cc(?);
// extern ? func_08008328(?);
// extern ? func_08008370(?);
extern struct unk_struct_08008420 *func_08008420(struct unk_struct_08008420_init *inputs);
extern u32 func_08008464(struct unk_struct_08008420 *arg0);
extern struct unk_struct_0800852c *func_0800852c(struct unk_struct_0800852c_init *inputs);
extern u32 func_08008548(struct unk_struct_0800852c *arg0);
extern u32 func_0800856c(u16 memID, void *func, s32 arg, u32 delayTicks); // Run Function with Parameter after given Delay Time
// extern ? func_08008594(?);
// extern ? func_080085e4(?);
// extern ? func_08008608(?);
// extern ? func_0800861c(?);
// extern ? func_08008628(?);
// extern ? func_08008658(?);
// extern ? func_0800869c(?);
// extern ? func_080086c4(?);
// extern ? func_08008720(?);
extern struct unk_struct_0800873c *func_0800873c(struct unk_struct_0800873c_init *inputs); // bg_texture_loader_start_new_task
extern u32 func_08008758(struct unk_struct_0800873c *arg0); // bg_texture_loader_task_update
extern u32 func_080087b4(u16, struct CompressedGraphics *const *); // new_bg_texture_loader_task
extern s32 clamp_int32(s32 var, s32 min, s32 max); // Signed Clamp
// extern ? func_080087e8(?);
// extern ? func_08008910(?);
// extern ? func_08008938(?);
// extern ? func_08008968(?);
// extern ? func_08008990(?);
// extern ? func_080089c0(?);
// extern ? func_08008a70(?);
// extern ? func_08008ab8(?);
extern void func_08008b00(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10, u32 arg11);
extern void func_08008d44(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10);
extern void func_08008d88(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10);
