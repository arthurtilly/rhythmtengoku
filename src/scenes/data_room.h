#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct DataRoomSceneData {
    u32 scriptIsReady;
    struct Listbox *listbox;
    s16 lines[8];
    s16 userSprite;
    u16 userAnimTimer;
    u8 userState;
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable data_room_gfx_table[];
extern struct CompressedGraphics *data_room_buffered_textures[];
extern const char D_08050bc8[];


// Functions:
extern void dataroom_scene_init_static_var(void);
extern void dataroom_scene_init_gfx3(void);
extern void dataroom_scene_init_gfx2(void);
extern void dataroom_scene_init_gfx1(void);
extern const char *dataroom_listbox_get_item_name(u32 item);
extern void dataroom_listbox_update(void);
extern void dataroom_listbox_on_finish(void);
extern void dataroom_listbox_on_scroll(void);
extern void dataroom_scene_start(void *sVar, s32 dArg);
extern void dataroom_scene_set_listbox_sel(u32 item, u32 line);
extern void dataroom_scene_paused(void *sVar, s32 dArg);
extern void dataroom_scene_update_user(void);
extern void dataroom_scene_update(void *sVar, s32 dArg);
extern u32 dataroom_scene_can_receive_inputs(void);
extern void dataroom_scene_stop(void *sVar, s32 dArg);
