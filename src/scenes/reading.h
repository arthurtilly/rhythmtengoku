#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct ReadingSceneData {
    /* add fields here */
};

struct ReadingMaterial {
    const char *title;
    const char *text;
    const struct GraphicsTable *gfx;
    struct SequenceData **bgm;
};


// Scene Macros/Enums:
enum ReadingMaterialEnum {
    /* 00 */ READING_MATERIAL_WELCOME,
    /* 01 */ READING_MATERIAL_MANUAL,
    /* 02 */ READING_MATERIAL_CAFE,
    /* 03 */ READING_MATERIAL_RHYTHM_TWEEZERS,
    /* 04 */ READING_MATERIAL_NIGHT_WALK,
    /* 05 */ READING_MATERIAL_SPACEBALL,
    /* 06 */ READING_MATERIAL_MECHANICAL_HORSE,
    /* 07 */ READING_MATERIAL_MARCHING_ORDERS,
    /* 08 */ READING_MATERIAL_RAP_MEN,
    /* 09 */ READING_MATERIAL_BON_ODORI,
    /* 10 */ READING_MATERIAL_REMIX3,
    /* 11 */ READING_MATERIAL_REMIX5,
    /* 12 */ READING_MATERIAL_REMIX8,
    /* 13 */ READING_MATERIAL_NINJA_BODYGUARD,
    /* 14 */ READING_MATERIAL_TOSS_BOYS,
    /* 15 */ READING_MATERIAL_FAN_MAIL,
    /* 16 */ READING_MATERIAL_RHYTHM_FORMULA,
    /* 17 */ READING_MATERIAL_RHYTHM_DIAGNOSIS,
    /* 18 */ READING_MATERIAL_RHYTHM_POEM,
    /* 19 */ READING_MATERIAL_RHYTHM_HAIKU
};


// Sound Effects:
extern struct SequenceData s_f_env_cherry_seqData;
extern struct SequenceData s_f_env_train_seqData;
extern struct SequenceData s_sindan_sea_seqData;
extern struct SequenceData s_f_env_haiku_seqData;
extern struct SequenceData s_f_env_class_room_seqData;
extern struct SequenceData s_sindan_mail_seqData;
extern struct SequenceData s_sindan_manzai_seqData;


// Scene Data:
extern struct ReadingMaterial reading_material_table[];
extern struct GraphicsTable reading_gfx_table[];
extern struct CompressedGraphics *reading_buffered_textures[];
extern struct ReadingMaterial reading_material_error;


// Functions:
// extern ? func_0801a384(?); // Graphics Init. 4
// extern ? func_0801a3b0(?); // Graphics Init. 3
// extern ? func_0801a3e4(?); // Graphics Init. 2
// extern ? func_0801a414(?); // Graphics Init. 1
// extern ? func_0801a450(?); // Scene Start
// extern ? func_0801a5d8(?); // ?
// extern ? func_0801a70c(?); // Scene Update (Active)
// extern ? func_0801a860(?); // ?
// extern ? func_0801a8a0(?); // Scene Stop
// extern ? func_0801a8b0(?); // ? (Script Function)


// Scene Types:
struct ReadErrorSceneData {
    /* add fields here */
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable D_089d80ec[];
extern struct CompressedGraphics *D_089d80f8[];


// Functions:
// extern ? func_0801a8c8(?); // Graphics Init. 3
// extern ? func_0801a8f4(?); // Graphics Init. 2
// extern ? func_0801a924(?); // Graphics Init. 1
// extern ? func_0801a940(?); // Scene Start
// extern ? func_0801a96c(?); // Scene Update (Active)
// extern ? func_0801a99c(?); // Check if Screen is Ready
// extern ? func_0801a9b8(?); // Scene Stop
