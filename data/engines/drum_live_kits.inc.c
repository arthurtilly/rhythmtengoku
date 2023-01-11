

  //  //  //  DRUM KIT 01  //  //  //


// [D_089e076c] DrumTech Sequence
const struct DrumTechNote D_089e076c[] = {
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x32,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x42,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x32,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e078c] ?
const struct DrumTechPhrase D_089e078c = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025c4c,
    /* Param.   */ 0
};

// [D_089e07a0] ?
const struct DrumTechPhrase D_089e07a0 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025c8c,
    /* Param.   */ 0
};

// [D_089e07b4] ?
const struct DrumTechPhrase D_089e07b4 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025cd0,
    /* Param.   */ 0
};

// [D_089e07c8] ?
const struct DrumTechPhrase D_089e07c8 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025d34,
    /* Param.   */ 0
};

// [D_089e07dc] ?
const struct DrumTechPhrase D_089e07dc = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025d98,
    /* Param.   */ 0
};

// [D_089e07f0] ?
const struct DrumTechPhrase D_089e07f0 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025d9c,
    /* Param.   */ 0
};

// [D_089e0804] ?
const struct DrumTechPhrase D_089e0804 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025e00,
    /* Param.   */ 0
};

// [D_089e0818] ?
const struct DrumTechPhrase D_089e0818 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025e74,
    /* Param.   */ 0
};

// [D_089e082c] ?
const struct DrumTechPhrase D_089e082c = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025ed8,
    /* Param.   */ 0
};

// [D_089e0840] ?
const struct DrumTechPhrase D_089e0840 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e076c,
    /* On-Play  */ func_08025c48,
    /* Param.   */ 1
};

// [D_089e0854] Drum Kit 1
const struct DrumTechKit D_089e0854 = {
    /* A_BUTTON   */ &D_089e07c8,
    /* B_BUTTON   */ &D_089e07a0,
    /* DPAD_UP    */ &D_089e0840,
    /* DPAD_DOWN  */ &D_089e078c,
    /* DPAD_LEFT  */ &D_089e07b4,
    /* DPAD_RIGHT */ &D_089e07f0,
    /* L_BUTTON   */ &D_089e0818,
    /* R_BUTTON   */ &D_089e082c,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 02  //  //  //


// [D_089e087c] DrumTech Sequence
const struct DrumTechNote D_089e087c[] = {
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x50,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e089c] ?
const struct DrumTechPhrase D_089e089c = {
    /* Drum ID  */ 8,
    /* Volume   */ 0x90,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025c4c,
    /* Param.   */ 0
};

// [D_089e08b0] ?
const struct DrumTechPhrase D_089e08b0 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0x90,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025c8c,
    /* Param.   */ 0
};

// [D_089e08c4] ?
const struct DrumTechPhrase D_089e08c4 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025cd0,
    /* Param.   */ 0
};

// [D_089e08d8] ?
const struct DrumTechPhrase D_089e08d8 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025d34,
    /* Param.   */ 0
};

// [D_089e08ec] ?
const struct DrumTechPhrase D_089e08ec = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025d9c,
    /* Param.   */ 0
};

// [D_089e0900] ?
const struct DrumTechPhrase D_089e0900 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025e00,
    /* Param.   */ 0
};

// [D_089e0914] ?
const struct DrumTechPhrase D_089e0914 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025e74,
    /* Param.   */ 0
};

// [D_089e0928] ?
const struct DrumTechPhrase D_089e0928 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08025ed8,
    /* Param.   */ 0
};

// [D_089e093c] ?
const struct DrumTechPhrase D_089e093c = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e087c,
    /* On-Play  */ func_08025c48,
    /* Param.   */ 1
};

// [D_089e0950] Drum Kit 2
const struct DrumTechKit D_089e0950 = {
    /* A_BUTTON   */ &D_089e08d8,
    /* B_BUTTON   */ &D_089e08b0,
    /* DPAD_UP    */ &D_089e093c,
    /* DPAD_DOWN  */ &D_089e089c,
    /* DPAD_LEFT  */ &D_089e08c4,
    /* DPAD_RIGHT */ &D_089e08ec,
    /* L_BUTTON   */ &D_089e0914,
    /* R_BUTTON   */ &D_089e0928,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};
