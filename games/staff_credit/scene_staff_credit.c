#include "global.h"
#include "src/scenes/gameplay.h"
#include "src/scenes/riq_main_scene.h"

extern struct Beatscript script_staff_credit_entry[];

struct SubScene subscene_staff_credit = {
    /* Init Func */        gameplay_start_scene,
    /* Init Param */       NULL,
    /* Unk Func */         func_08016ffc,
    /* Unk Param */        NULL,
    /* Loop Func */        gameplay_update_scene,
    /* Loop Param */       NULL,
    /* End Func */         gameplay_stop_scene,
    /* End Param */        NULL,
    /* Beatscript Entry */ script_staff_credit_entry
};

struct Scene scene_staff_credit = {
    /* Init Func */  func_0801d86c,
    /* Init Param */ &subscene_staff_credit,
    /* Loop Func */  func_0801d8d8,
    /* Loop Param */ NULL,
    /* End Func */   NULL,
    /* End Param */  NULL,
    /* Req Memory */ 0x5bc,
};
