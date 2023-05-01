#pragma once

#include "global.h"
#include "scenes.h"

struct SceneUnk03000008 {
    struct Scene *unk0;
    struct Scene *unk4;
    struct Scene *unk8;
};

extern u8 D_03004498;
extern s32 D_030046a0;

extern void *interrupt_handler_rom;
extern void *interrupt_handler;
extern void *interrupt_handler_jtbl_rom;
extern void *interrupt_handler_jtbl;
extern struct Scene *D_08935fac; // Pointer to Title Screen
extern struct Scene *D_08935fb0; // Pointer to Title Screen (again)
extern struct Scene D_089dd97c; // some special type of scene (uses different script operation functions!)

extern void init_scene_static_var(void);
extern void func_08000224(void);
extern void agb_main(void);
extern void func_0800046c(struct Scene *next);
extern void process_scenes(void);
extern void func_08000568(struct Scene *next);
extern void func_08000584(struct Scene *);
extern void func_08000598(void);
extern struct SceneUnk03000008 *func_080005b8(struct Scene *);
extern struct Scene *func_080005e0(struct Scene *);
extern struct Scene *func_080005f4(struct Scene *);
extern struct Scene *func_08000608(void);
extern struct Scene *func_0800061c(void);
extern struct SceneUnk03000008 *func_08000630(struct Scene *);
extern void func_08000674(struct Scene *);
extern void func_080006b0(struct Scene *, struct Scene *);
extern void func_080006d0(struct Scene *, struct Scene *);
extern void func_080006f0(struct Scene *, struct Scene *);
extern struct Scene *func_0800070c(void);
