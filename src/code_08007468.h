#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "data/data_08936b54.h"
#include "src/bitmap_font.h"

struct unk_struct_08008b00 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s32 unk8;
    s32 unkC;
};

extern s32 (*D_03004ae4)(s32);

/* GRAPHICS UTIL */
extern void get_sprite_xy(s16 sprite, s16 *xReq, s16 *yReq);
extern void assign_sprite_affine_param(s16 sprite, s8 affineParam);
extern void set_affine_scale_rotation(s8 affineParam, s16 scale, s16 rotation);
extern void set_affine_stretch_rotation(s8 affineParam, s16 xScale, s16 yScale, s16 rotation);
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
extern void delete_bmp_font_obj_text_anim(struct BitmapFontOBJ *bmpFontOBJ, s16 sprite);
extern void delete_bmp_font_obj_text_sprite(struct BitmapFontOBJ *bmpFontOBJ, s16 sprite);

/* FAST DIVISION */
extern void init_fast_udivsi3(void);
extern s32 fast_divsi3(s32 dividend, s32 divisor);

/* INTERPOLATION */
extern struct LinearDataInterpolator *func_08007bb8(struct LinearDataInterpolator *inputs);
extern u32 func_08007c30(struct LinearDataInterpolator *task);
extern struct unk_struct_08007ca8 *func_08007ca8(struct unk_struct_08007ca8_init *inputs);
extern u32 func_08007d20(struct unk_struct_08007ca8 *task);
extern struct unk_struct_08007d88 *func_08007d88(struct unk_struct_08007d88_init *inputs);
extern u32 func_08007e00(struct unk_struct_08007d88 *task);
// extern ? func_08007e68(?);
extern struct unk_struct_08007e7c *func_08007e7c(struct unk_struct_08007e7c_init *inputs);
extern u32 func_08007ef8(struct unk_struct_08007e7c *task);
extern struct BlendControlsInterpolator *init_lcd_blend_mode_interpolator(struct BlendControlsInterpolator *inputs);
extern u32 update_lcd_blend_mode_interpolator(struct BlendControlsInterpolator *task);
extern s32 interpolate_lcd_blend_mode(u16 memID, u32 blendControls, u32 duration, u32 flip);
// extern ? func_08008090(?);

/* STRING */
extern char *strncpy(char *s1, const char *s2, u32 len);
extern char *strcat(char *s1, const char *s2);
extern char *strncat(char *s1, const char *s2, u32 len);
extern s32 strncmp(const char *s1, const char *s2, u32 len);
extern void strint(char *s, u32 n);
extern void strnint(char *s, u32 n, u32 len);
extern void strintf(char *s, u32 n);
extern void strnintf(char *s, u32 n, u32 len);

/* ? */
// extern ? func_08008370(?);
extern struct unk_struct_08008420 *func_08008420(struct unk_struct_08008420_init *inputs);
extern u32 func_08008464(struct unk_struct_08008420 *task);

/* SCHEDULED FUNCTION CALL */
extern struct ScheduledFunctionTask *init_scheduled_function_task(struct ScheduledFunctionTask *inputs);
extern u32 update_scheduled_function_task(struct ScheduledFunctionTask *task);
extern s32 schedule_function_call(u16 memID, void *function, s32 param, u32 delay);

/* BUFFERED TEXTURE */
// extern ? func_08008594(?);
// extern ? func_080085e4(?);
// extern ? func_08008608(?);
// extern ? func_0800861c(?);
// extern ? func_08008628(?);
// extern ? func_08008658(?);
// extern ? func_0800869c(?);
// extern ? func_080086c4(?);
// extern ? func_08008720(?);
extern struct TextureLoader *init_texture_loader_task(struct TextureLoaderInputs *inputs);
extern u32 update_texture_loader_task(struct TextureLoader *task);
extern u32 start_new_texture_loader(u16 memID, struct CompressedGraphics **textureList);

/* ? */
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
