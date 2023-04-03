#pragma once

#include "global.h"
#include "scenes.h"

struct SceneTransition {
    const struct Scene *initial;
    const struct Scene *target;
    s32 variable;
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
extern void init_scenes(const struct Scene *initial);
extern void process_scenes(void);
extern void set_current_scene(const struct Scene *initial);
extern void set_next_scene(const struct Scene *next);
extern void clear_scene_trans(void);
extern struct SceneTransition *get_scene_trans(const struct Scene *scene);
extern const struct Scene *get_scene_trans_target(const struct Scene *scene);
extern s32 get_scene_trans_var(const struct Scene *scene);
extern const struct Scene *get_current_scene_trans_target(void);
extern s32 get_current_scene_trans_var(void);
extern struct SceneTransition *alloc_scene_trans(const struct Scene *scene);
extern void dealloc_scene_trans(const struct Scene *scene);
extern void set_scene_trans_target(const struct Scene *scene, const struct Scene *target);
extern void set_scene_trans_var(const struct Scene *scene, s32 variable);
extern void func_080006f0(const struct Scene *target, s32 variable);
extern const struct Scene *get_current_scene(void);
