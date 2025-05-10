#pragma once

#include "global.h"
#include "scenes.h"


// VALUES
enum DataRoomEventsEnum {
    /* 00 */ DATAROOM_EV_NONE,
    /* 01 */ DATAROOM_EV_CONFIRM,
    /* 02 */ DATAROOM_EV_SCROLL_UP,
    /* 03 */ DATAROOM_EV_SCROLL_DOWN,
    /* 04 */ DATAROOM_EV_CANCEL
};

enum DataRoomUserStatesEnum {
    /* 00 */ DATAROOM_USER_STARING,
    /* 01 */ DATAROOM_USER_SCROLLING,
    /* 02 */ DATAROOM_USER_ASLEEP
};


// MACROS
#define gDataRoom ((struct DataRoomSceneData *)gCurrentSceneData)


// TYPES
struct DataRoomSceneData {
    u32 inputsEnabled;
    struct Listbox *listbox;
    s16 lines[8];
    s16 userSprite;
    u16 userAnimTimer;
    u8 userState;
};


// DATA
extern struct GraphicsTable data_room_gfx_table[];
extern struct CompressedData *data_room_buffered_textures[];


// FUNCTIONS
extern void dataroom_scene_init_memory(void);
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
extern u32  dataroom_scene_inputs_enabled(void);
extern void dataroom_scene_stop(void *sVar, s32 dArg);
