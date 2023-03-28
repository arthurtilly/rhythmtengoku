#pragma once

#include "global.h"
#include "scenes.h"

struct SceneUnk03000008 {
    const struct Scene *unk0;
    const struct Scene *unk4;
    const struct Scene *unk8;
};

extern u8 D_03004498;
extern s32 D_030046a0;

extern void *interrupt_handler_rom;
extern void *interrupt_handler;
extern void *interrupt_handler_jtbl_rom;
extern void *interrupt_handler_jtbl;
extern const struct Scene *D_08935fac; // Pointer to Title Screen
extern const struct Scene *D_08935fb0; // Pointer to Title Screen (again)
extern const struct Scene D_089dd97c; // some special type of scene (uses different script operation functions!)
extern const struct Scene scene_warning;

extern void init_scene_static_var(void);
extern void func_08000224(void);
extern void agb_main(void);
extern void func_0800046c(const struct Scene *next);
extern void process_scenes(void);
extern void func_08000568(const struct Scene *next);
extern void func_08000584(const struct Scene *);
extern void func_08000598(void);
extern struct SceneUnk03000008 *func_080005b8(const struct Scene *);
extern const struct Scene *func_080005e0(const struct Scene *);
extern const struct Scene *func_080005f4(const struct Scene *);
extern const struct Scene *func_08000608(void);
extern const struct Scene *func_0800061c(void);
extern struct SceneUnk03000008 *func_08000630(const struct Scene *);
extern void func_08000674(const struct Scene *);
extern void func_080006b0(const struct Scene *, const struct Scene *);
extern void func_080006d0(const struct Scene *, const struct Scene *);
extern void func_080006f0(const struct Scene *, const struct Scene *);
extern const struct Scene *func_0800070c(void);
