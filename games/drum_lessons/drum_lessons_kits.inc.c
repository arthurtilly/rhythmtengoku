

  //  //  //  DRUM KIT 01  //  //  //


// [D_089e0d1c] DrumTech Sequence
const struct DrumTechNote D_089e0d1c[] = {
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

// [D_089e0d3c] ?
const struct DrumTechPhrase D_089e0d3c = {
    /* Drum ID  */ 4,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e0d50] ?
const struct DrumTechPhrase D_089e0d50 = {
    /* Drum ID  */ 4,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e0d64] ?
const struct DrumTechPhrase D_089e0d64 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e0d78] ?
const struct DrumTechPhrase D_089e0d78 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e0d8c] ?
const struct DrumTechPhrase D_089e0d8c = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e0da0] ?
const struct DrumTechPhrase D_089e0da0 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e0db4] ?
const struct DrumTechPhrase D_089e0db4 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e0dc8] ?
const struct DrumTechPhrase D_089e0dc8 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e0ddc] ?
const struct DrumTechPhrase D_089e0ddc = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e0df0] Drum Kit
const struct DrumTechKit D_089e0df0 = {
    /* A_BUTTON   */ &D_089e0d78,
    /* B_BUTTON   */ &D_089e0d50,
    /* DPAD_UP    */ &D_089e0da0,
    /* DPAD_DOWN  */ &D_089e0d3c,
    /* DPAD_LEFT  */ &D_089e0d64,
    /* DPAD_RIGHT */ &D_089e0d8c,
    /* L_BUTTON   */ &D_089e0db4,
    /* R_BUTTON   */ &D_089e0dc8,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 02  //  //  //


// [D_089e0e18] ?
const struct DrumTechPhrase D_089e0e18 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e0e2c] ?
const struct DrumTechPhrase D_089e0e2c = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e0e40] ?
const struct DrumTechPhrase D_089e0e40 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e0e54] ?
const struct DrumTechPhrase D_089e0e54 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e0e68] ?
const struct DrumTechPhrase D_089e0e68 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e0e7c] ?
const struct DrumTechPhrase D_089e0e7c = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e0e90] ?
const struct DrumTechPhrase D_089e0e90 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e0ea4] ?
const struct DrumTechPhrase D_089e0ea4 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e0eb8] ?
const struct DrumTechPhrase D_089e0eb8 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e0ecc] Drum Kit
const struct DrumTechKit D_089e0ecc = {
    /* A_BUTTON   */ &D_089e0e54,
    /* B_BUTTON   */ &D_089e0e2c,
    /* DPAD_UP    */ &D_089e0eb8,
    /* DPAD_DOWN  */ &D_089e0e18,
    /* DPAD_LEFT  */ &D_089e0e40,
    /* DPAD_RIGHT */ &D_089e0e68,
    /* L_BUTTON   */ &D_089e0e90,
    /* R_BUTTON   */ &D_089e0ea4,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 03  //  //  //


// [D_089e0ef4] ?
const struct DrumTechPhrase D_089e0ef4 = {
    /* Drum ID  */ 3,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e0f08] ?
const struct DrumTechPhrase D_089e0f08 = {
    /* Drum ID  */ 3,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e0f1c] ?
const struct DrumTechPhrase D_089e0f1c = {
    /* Drum ID  */ 15,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e0f30] ?
const struct DrumTechPhrase D_089e0f30 = {
    /* Drum ID  */ 15,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e0f44] ?
const struct DrumTechPhrase D_089e0f44 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e0f58] ?
const struct DrumTechPhrase D_089e0f58 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e0f6c] ?
const struct DrumTechPhrase D_089e0f6c = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e0f80] ?
const struct DrumTechPhrase D_089e0f80 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e0f94] ?
const struct DrumTechPhrase D_089e0f94 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e0fa8] Drum Kit
const struct DrumTechKit D_089e0fa8 = {
    /* A_BUTTON   */ &D_089e0f30,
    /* B_BUTTON   */ &D_089e0f08,
    /* DPAD_UP    */ &D_089e0f94,
    /* DPAD_DOWN  */ &D_089e0ef4,
    /* DPAD_LEFT  */ &D_089e0f1c,
    /* DPAD_RIGHT */ &D_089e0f44,
    /* L_BUTTON   */ &D_089e0f6c,
    /* R_BUTTON   */ &D_089e0f80,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 04  //  //  //


// [D_089e0fd0] ?
const struct DrumTechPhrase D_089e0fd0 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e0fe4] ?
const struct DrumTechPhrase D_089e0fe4 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e0ff8] ?
const struct DrumTechPhrase D_089e0ff8 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e100c] ?
const struct DrumTechPhrase D_089e100c = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e1020] ?
const struct DrumTechPhrase D_089e1020 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e1034] ?
const struct DrumTechPhrase D_089e1034 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e1048] ?
const struct DrumTechPhrase D_089e1048 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e105c] ?
const struct DrumTechPhrase D_089e105c = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e1070] ?
const struct DrumTechPhrase D_089e1070 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e1084] Drum Kit
const struct DrumTechKit D_089e1084 = {
    /* A_BUTTON   */ &D_089e100c,
    /* B_BUTTON   */ &D_089e0fe4,
    /* DPAD_UP    */ &D_089e1034,
    /* DPAD_DOWN  */ &D_089e0fd0,
    /* DPAD_LEFT  */ &D_089e0ff8,
    /* DPAD_RIGHT */ &D_089e1020,
    /* L_BUTTON   */ &D_089e1048,
    /* R_BUTTON   */ &D_089e105c,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 05  //  //  //


// [D_089e10ac] ?
const struct DrumTechPhrase D_089e10ac = {
    /* Drum ID  */ 9,
    /* Volume   */ 0xe0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e10c0] ?
const struct DrumTechPhrase D_089e10c0 = {
    /* Drum ID  */ 9,
    /* Volume   */ 0xe0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e10d4] ?
const struct DrumTechPhrase D_089e10d4 = {
    /* Drum ID  */ 21,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e10e8] ?
const struct DrumTechPhrase D_089e10e8 = {
    /* Drum ID  */ 21,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e10fc] ?
const struct DrumTechPhrase D_089e10fc = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e1110] ?
const struct DrumTechPhrase D_089e1110 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e1124] ?
const struct DrumTechPhrase D_089e1124 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e1138] ?
const struct DrumTechPhrase D_089e1138 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e114c] ?
const struct DrumTechPhrase D_089e114c = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e1160] Drum Kit
const struct DrumTechKit D_089e1160 = {
    /* A_BUTTON   */ &D_089e10e8,
    /* B_BUTTON   */ &D_089e10c0,
    /* DPAD_UP    */ &D_089e114c,
    /* DPAD_DOWN  */ &D_089e10ac,
    /* DPAD_LEFT  */ &D_089e10d4,
    /* DPAD_RIGHT */ &D_089e10fc,
    /* L_BUTTON   */ &D_089e1124,
    /* R_BUTTON   */ &D_089e1138,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 06  //  //  //


// [D_089e1188] ?
const struct DrumTechPhrase D_089e1188 = {
    /* Drum ID  */ 10,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e119c] ?
const struct DrumTechPhrase D_089e119c = {
    /* Drum ID  */ 10,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e11b0] ?
const struct DrumTechPhrase D_089e11b0 = {
    /* Drum ID  */ 22,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e11c4] ?
const struct DrumTechPhrase D_089e11c4 = {
    /* Drum ID  */ 22,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e11d8] ?
const struct DrumTechPhrase D_089e11d8 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e11ec] ?
const struct DrumTechPhrase D_089e11ec = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e1200] ?
const struct DrumTechPhrase D_089e1200 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e1214] ?
const struct DrumTechPhrase D_089e1214 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e1228] ?
const struct DrumTechPhrase D_089e1228 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e123c] Drum Kit
const struct DrumTechKit D_089e123c = {
    /* A_BUTTON   */ &D_089e11c4,
    /* B_BUTTON   */ &D_089e119c,
    /* DPAD_UP    */ &D_089e1228,
    /* DPAD_DOWN  */ &D_089e1188,
    /* DPAD_LEFT  */ &D_089e11b0,
    /* DPAD_RIGHT */ &D_089e11d8,
    /* L_BUTTON   */ &D_089e1200,
    /* R_BUTTON   */ &D_089e1214,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 07  //  //  //


// [D_089e1264] ?
const struct DrumTechPhrase D_089e1264 = {
    /* Drum ID  */ 11,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e1278] ?
const struct DrumTechPhrase D_089e1278 = {
    /* Drum ID  */ 11,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e128c] ?
const struct DrumTechPhrase D_089e128c = {
    /* Drum ID  */ 23,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e12a0] ?
const struct DrumTechPhrase D_089e12a0 = {
    /* Drum ID  */ 23,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e12b4] ?
const struct DrumTechPhrase D_089e12b4 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e12c8] ?
const struct DrumTechPhrase D_089e12c8 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e12dc] ?
const struct DrumTechPhrase D_089e12dc = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e12f0] ?
const struct DrumTechPhrase D_089e12f0 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e1304] ?
const struct DrumTechPhrase D_089e1304 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e1318] Drum Kit
const struct DrumTechKit D_089e1318 = {
    /* A_BUTTON   */ &D_089e12a0,
    /* B_BUTTON   */ &D_089e1278,
    /* DPAD_UP    */ &D_089e1304,
    /* DPAD_DOWN  */ &D_089e1264,
    /* DPAD_LEFT  */ &D_089e128c,
    /* DPAD_RIGHT */ &D_089e12b4,
    /* L_BUTTON   */ &D_089e12dc,
    /* R_BUTTON   */ &D_089e12f0,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 08  //  //  //


// [D_089e1340] ?
const struct DrumTechPhrase D_089e1340 = {
    /* Drum ID  */ 4,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e1354] ?
const struct DrumTechPhrase D_089e1354 = {
    /* Drum ID  */ 4,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e1368] ?
const struct DrumTechPhrase D_089e1368 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e137c] ?
const struct DrumTechPhrase D_089e137c = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e1390] ?
const struct DrumTechPhrase D_089e1390 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e13a4] ?
const struct DrumTechPhrase D_089e13a4 = {
    /* Drum ID  */ 37,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e13b8] ?
const struct DrumTechPhrase D_089e13b8 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e13cc] ?
const struct DrumTechPhrase D_089e13cc = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e13e0] ?
const struct DrumTechPhrase D_089e13e0 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e13f4] Drum Kit
const struct DrumTechKit D_089e13f4 = {
    /* A_BUTTON   */ &D_089e137c,
    /* B_BUTTON   */ &D_089e1354,
    /* DPAD_UP    */ &D_089e13a4,
    /* DPAD_DOWN  */ &D_089e1340,
    /* DPAD_LEFT  */ &D_089e1368,
    /* DPAD_RIGHT */ &D_089e1390,
    /* L_BUTTON   */ &D_089e13b8,
    /* R_BUTTON   */ &D_089e13cc,
    /* HIHAT FLAG */ 1,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 09  //  //  //


// [D_089e141c] ?
const struct DrumTechPhrase D_089e141c = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e1430] ?
const struct DrumTechPhrase D_089e1430 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e1444] ?
const struct DrumTechPhrase D_089e1444 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e1458] ?
const struct DrumTechPhrase D_089e1458 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e146c] ?
const struct DrumTechPhrase D_089e146c = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e1480] ?
const struct DrumTechPhrase D_089e1480 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e1494] ?
const struct DrumTechPhrase D_089e1494 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e14a8] ?
const struct DrumTechPhrase D_089e14a8 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e14bc] ?
const struct DrumTechPhrase D_089e14bc = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e14d0] Drum Kit
const struct DrumTechKit D_089e14d0 = {
    /* A_BUTTON   */ &D_089e1458,
    /* B_BUTTON   */ &D_089e1430,
    /* DPAD_UP    */ &D_089e14bc,
    /* DPAD_DOWN  */ &D_089e141c,
    /* DPAD_LEFT  */ &D_089e1444,
    /* DPAD_RIGHT */ &D_089e146c,
    /* L_BUTTON   */ &D_089e1494,
    /* R_BUTTON   */ &D_089e14a8,
    /* HIHAT FLAG */ 2,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 10  //  //  //


// [D_089e14f8] ?
const struct DrumTechPhrase D_089e14f8 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e150c] ?
const struct DrumTechPhrase D_089e150c = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e1520] ?
const struct DrumTechPhrase D_089e1520 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e1534] ?
const struct DrumTechPhrase D_089e1534 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e1548] ?
const struct DrumTechPhrase D_089e1548 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e155c] ?
const struct DrumTechPhrase D_089e155c = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e1570] ?
const struct DrumTechPhrase D_089e1570 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e1584] ?
const struct DrumTechPhrase D_089e1584 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e1598] ?
const struct DrumTechPhrase D_089e1598 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e15ac] Drum Kit
const struct DrumTechKit D_089e15ac = {
    /* A_BUTTON   */ &D_089e1534,
    /* B_BUTTON   */ &D_089e150c,
    /* DPAD_UP    */ &D_089e155c,
    /* DPAD_DOWN  */ &D_089e14f8,
    /* DPAD_LEFT  */ &D_089e1520,
    /* DPAD_RIGHT */ &D_089e1548,
    /* L_BUTTON   */ &D_089e1570,
    /* R_BUTTON   */ &D_089e1584,
    /* HIHAT FLAG */ 2,
    /* HIHAT FUNC */ NULL
};


  //  //  //  DRUM KIT 10.5  //  //  //


// [D_089e15d4] ?
const struct DrumTechPhrase D_089e15d4 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027304,
    /* Param.   */ 0
};

// [D_089e15e8] ?
const struct DrumTechPhrase D_089e15e8 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027350,
    /* Param.   */ 0
};

// [D_089e15fc] ?
const struct DrumTechPhrase D_089e15fc = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802739c,
    /* Param.   */ 0
};

// [D_089e1610] ?
const struct DrumTechPhrase D_089e1610 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080273e4,
    /* Param.   */ 0
};

// [D_089e1624] ?
const struct DrumTechPhrase D_089e1624 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_0802742c,
    /* Param.   */ 0
};

// [D_089e1638] ?
const struct DrumTechPhrase D_089e1638 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027474,
    /* Param.   */ 0
};

// [D_089e164c] ?
const struct DrumTechPhrase D_089e164c = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080274d0,
    /* Param.   */ 0
};

// [D_089e1660] ?
const struct DrumTechPhrase D_089e1660 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08027518,
    /* Param.   */ 0
};

// [D_089e1674] ?
const struct DrumTechPhrase D_089e1674 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e0d1c,
    /* On-Play  */ func_08027560,
    /* Param.   */ 0
};

// [D_089e1688] Drum Kit
const struct DrumTechKit D_089e1688 = {
    /* A_BUTTON   */ &D_089e1610,
    /* B_BUTTON   */ NULL,
    /* DPAD_UP    */ &D_089e1674,
    /* DPAD_DOWN  */ NULL,
    /* DPAD_LEFT  */ &D_089e15fc,
    /* DPAD_RIGHT */ NULL,
    /* L_BUTTON   */ NULL,
    /* R_BUTTON   */ NULL,
    /* HIHAT FLAG */ 0,
    /* HIHAT FUNC */ NULL
};
