#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct OptionsSceneData {
    u8 state;
    s16 cursorPos;
    s16 uiBarista;
    s16 uiSoundMode;
    s16 uiDataClear;
    u32 soundMode;
    u32 inputsEnabled;
    struct TextPrinter *descText;
    u8 warningCursorPos;
    s16 uiWarningPane;
    s16 uiWarningCursor;
    struct TextPrinter *warningText;
    u32 clearDataOnExit;
    u8 canceledDataClear; // useless
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable options_gfx_table[];
extern struct CompressedGraphics *options_buffered_textures[];
extern const char options_data_clear_confirm_text[];
extern const char *options_desc_text[];
extern struct Animation *options_sound_mode_anim[][2];


// Functions:
extern void options_scene_init_memory(void);
extern void options_scene_init_gfx3(void);
extern void options_scene_init_gfx2(void);
extern void options_scene_init_gfx1(void);
extern void options_scene_start(void *sVar, s32 dArg);
extern void options_scene_paused(void *sVar, s32 dArg);
extern void options_scene_move_warning_cursor(u32 index);
extern void options_scene_update_main(void);
extern void options_scene_update_warning(void);
extern void options_scene_update(void *sVar, s32 dArg);
extern u32 options_scene_inputs_enabled(void);
extern void options_scene_stop(void *sVar, s32 dArg);
