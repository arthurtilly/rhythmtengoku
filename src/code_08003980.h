#pragma once

#include "global.h"
#include "graphics.h"
#include "data/data_08936b54.h"

// extern ? func_08003980(?);
// extern ? func_080039a8(?);
// extern ? func_080039d4(?);
// extern ? func_080039e8(?);
// extern ? func_08003a00(?);
// extern ? func_08003a18(?);
// extern ? func_08003a34(?);
// extern ? func_08003a40(?);
// extern ? func_08003a50(?);
// extern ? func_08003a6c(?);
// extern ? func_08003a78(?);
// extern ? func_08003a88(?);
// extern ? func_08003aa4(?);
extern u32  func_08003ab8();
// extern ? func_08003ac4(?);
// extern ? func_08003b28(?);
// extern ? func_08003b34(?);
// extern ? func_08003bd4(?);
// extern ? func_08003c18(?);
// extern ? func_08003c1c(?);
// extern ? func_08003de0(?);
// extern ? func_08003dec(?);
// extern ? func_08003e00(?);
// extern ? func_08003e64(?);
// extern ? func_08003ea4(?);
// extern ? func_08003eb8(?);
// extern ? func_08003f28(?);
// extern ? func_08003f50(?);
// extern ? func_08003fb4(?);
// extern ? func_08003ff0(?);
// extern ? func_0800402c(?);
// extern ? func_08004058(?); // ?
// extern ? func_08004070(?);
// extern ? func_080041d0(?);
// extern ? func_08004248(?);
// extern ? func_0800425c(?);
// extern ? func_08004270(?);
// extern ? func_080042a4(?);
// extern ? func_080042bc(?);
// extern ? func_080043c8(?);
// extern ? func_080044f0(?);
// extern ? func_08004508(?); // Create Text1 thing
// extern ? func_08004574(?);
// extern ? func_0800459c(?); // Set Text1 things
// extern ? func_080045b4(?);
// extern ? func_080045d0(?); // Clear Text1 text
// extern ? func_080045fc(?);
// extern ? func_08004628(?);
// extern ? func_0800467c(?);
// extern ? func_080046c0(?);
// extern ? func_08004714(?);
// extern ? func_08004748(?);
// extern ? func_0800477c(?);
// extern ? func_0800496c(?);
// extern ? func_080049a0(?);
// extern ? func_080049dc(?);
// extern ? func_080049f0(?); // Render(?) Text1 thing
// extern ? func_08004b60(?);
// extern ? func_08004b70(?); // create an animation from text
// extern ? func_08004b88(?);
extern struct Animation *func_08004b98(struct TextObject1 *, const char *, u32, u32); // create an animation from text (centre-aligned)
// extern ? func_08004bfc(?);
extern struct Animation *func_08004c0c(struct TextObject1 *, const char *, u32, u32); // create an animation from text (left-aligned)
// extern ? func_08004c40(?);
extern struct Animation *func_08004c50(struct TextObject1 *, const char *, u32, u32); // create an animation from text (right-aligned)
// extern ? func_08004cac(?);
// extern ? func_08004ccc(?);
extern void func_08004d44(struct TextObject1 *, struct Animation *); // delete animation for text1 thing?
extern struct unk_struct_08004da0 *func_08004da0(struct unk_struct_08004da0_init *arg0);
extern u32 func_08004dc0(struct unk_struct_08004da0 *arg0);
// extern ? func_08004e60(?);
// extern ? func_08004e88(?);
// extern ? func_08004eac(?);
// extern ? func_08004ff4(?);
// extern ? func_08005014(?);
// extern ? func_080050bc(?);
extern struct TextObject2 *func_08005124(u16, const struct FontDefinition *, u8, u16, u8); // Create Text2 thing
// extern ? func_08005188(?);
// extern ? func_080051a4(?);
// extern ? func_080051c4(?); // Clear Text2 text
// extern ? func_080051f0(?);
// extern ? func_08005208(?);
// extern ? func_08005328(?);
// extern ? func_0800536c(?);
// extern ? func_08005424(?);
extern struct unk_struct_080054b0 *func_080054b0(struct unk_struct_080054b0_init *arg0);
extern u32 func_080054f0(struct unk_struct_080054b0 *arg0);
// extern ? func_080055fc(?);
// extern ? func_08005640(?);
// extern ? func_0800568c(?); // render some read-only sprite/text thing
extern u32 func_08005814(struct SpriteHandler *, struct TextObject1 *, const void *, u16 *); // do the above but for all in an array
// extern ? func_0800584c(?); // set D_03004ae8
extern struct unk_struct_08005858 *func_08005858(struct unk_struct_08005858_init *arg0);
extern u32 func_08005878(struct unk_struct_08005858 *arg0);
// extern ? func_080058b0(?);
// extern ? func_080058dc(?);
// extern ? func_0800598c(?);
