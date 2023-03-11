#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct ReadingSceneInfo {
    /* add fields here */
};

struct ReadingMaterial {
    const char *title;
    const char *text;
    const struct GraphicsTable *gfx;
    struct SequenceData **bgm;
};


// Scene Macros/Enums:


// OAM Animations:


// Sound Effects:
extern struct SequenceData s_f_env_cherry_seqData;
extern struct SequenceData s_f_env_train_seqData;
extern struct SequenceData s_sindan_sea_seqData;
extern struct SequenceData s_f_env_haiku_seqData;
extern struct SequenceData s_f_env_class_room_seqData;
extern struct SequenceData s_sindan_mail_seqData;
extern struct SequenceData s_sindan_manzai_seqData;


// Scene Definition Data:
extern struct ReadingMaterial reading_material_table[];


// Scene Functions:
// extern ? func_0801a384(?); // [func_0801a384] READING - Graphics Init. 3 (BG?)
// extern ? func_0801a3b0(?); // [func_0801a3b0] READING - Graphics Init. 2 (OBJ)
// extern ? func_0801a3e4(?); // [func_0801a3e4] READING - Graphics Init. 1
// extern ? func_0801a414(?); // [func_0801a414] READING - Graphics Init. 0
// extern ? func_0801a450(?); // [func_0801a450] READING - Scene Init.
// extern ? func_0801a5d8(?); // [func_0801a5d8] READING - ?
// extern ? func_0801a70c(?); // [func_0801a70c] READING - Scene Main
// extern ? func_0801a860(?); // [func_0801a860] READING - ?
// extern ? func_0801a8a0(?); // [func_0801a8a0] READING - Scene Close
// extern ? func_0801a8b0(?); // [func_0801a8b0] READING - ? (Script Function)

// extern ? func_0801a8c8(?); // [func_0801a8c8] READ ERROR? - Graphics Init. 2
// extern ? func_0801a8f4(?); // [func_0801a8f4] READ ERROR? - Graphics Init. 1
// extern ? func_0801a924(?); // [func_0801a924] READ ERROR? - Graphics Init. 0
// extern ? func_0801a940(?); // [func_0801a940] READ ERROR? - Scene Init.
// extern ? func_0801a96c(?); // [func_0801a96c] READ ERROR? - Scene Main
// extern ? func_0801a99c(?); // [func_0801a96c] READ ERROR? - Check if Screen is Ready
// extern ? func_0801a9b8(?); // [func_0801a9b8] READ ERROR? - Scene Close
