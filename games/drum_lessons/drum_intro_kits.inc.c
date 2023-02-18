// [D_089dfedc] DrumTech Sequence
struct DrumTechNote D_089dfedc[] = {
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x30,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x30,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089dfefc] ?
struct DrumTechPhrase D_089dfefc = {
    /* Drum ID  */ 4,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023da4,
    /* Param.   */ 0
};

// [D_089dff10] ?
struct DrumTechPhrase D_089dff10 = {
    /* Drum ID  */ 4,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023df8,
    /* Param.   */ 0
};

// [D_089dff24] ?
struct DrumTechPhrase D_089dff24 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023e50,
    /* Param.   */ 0
};

// [D_089dff38] ?
struct DrumTechPhrase D_089dff38 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023edc,
    /* Param.   */ 0
};

// [D_089dff4c] ?
struct DrumTechPhrase D_089dff4c = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023f68,
    /* Param.   */ 0
};

// [D_089dff60] ?
struct DrumTechPhrase D_089dff60 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023f6c,
    /* Param.   */ 0
};

// [D_089dff74] ?
struct DrumTechPhrase D_089dff74 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08023ffc,
    /* Param.   */ 0
};

// [D_089dff88] ?
struct DrumTechPhrase D_089dff88 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080240a4,
    /* Param.   */ 0
};

// [D_089dff9c] ?
struct DrumTechPhrase D_089dff9c = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08024134,
    /* Param.   */ 0
};

// [D_089dffb0] ?
struct DrumTechPhrase D_089dffb0 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089dfedc,
    /* On-Play  */ func_080241c0,
    /* Param.   */ 0
};

// [D_089dffc4] Drum Kit 1
struct DrumTechKit drum_intro_kit1 = {
    /* A_BUTTON   */ &D_089dff38,
    /* B_BUTTON   */ &D_089dff10,
    /* DPAD_UP    */ &D_089dffb0,
    /* DPAD_DOWN  */ &D_089dff60,
    /* DPAD_LEFT  */ &D_089dfefc,
    /* DPAD_RIGHT */ &D_089dff24,
    /* L_BUTTON   */ &D_089dff88,
    /* R_BUTTON   */ &D_089dff9c,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};

// [D_089dffec] Drum Kit 2
struct DrumTechKit drum_intro_kit2 = {
    /* A_BUTTON   */ &D_089dff38,
    /* B_BUTTON   */ &D_089dff10,
    /* DPAD_UP    */ &D_089dff74,
    /* DPAD_DOWN  */ &D_089dff60,
    /* DPAD_LEFT  */ &D_089dfefc,
    /* DPAD_RIGHT */ &D_089dff24,
    /* L_BUTTON   */ &D_089dff88,
    /* R_BUTTON   */ &D_089dff9c,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};
