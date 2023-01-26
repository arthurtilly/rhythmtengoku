

  //  //  //  DRUM KIT 01  //  //  //


// [D_089e1bd8] DrumTech Sequence
const struct DrumTechNote D_089e1bd8[] = {
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

// [D_089e1bf8] ?
const struct DrumTechPhrase D_089e1bf8 = {
    /* Drum ID  */ 4,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e1c0c] ?
const struct DrumTechPhrase D_089e1c0c = {
    /* Drum ID  */ 4,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e1c20] ?
const struct DrumTechPhrase D_089e1c20 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e1c34] ?
const struct DrumTechPhrase D_089e1c34 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e1c48] ?
const struct DrumTechPhrase D_089e1c48 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e1c5c] ?
const struct DrumTechPhrase D_089e1c5c = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e1c70] ?
const struct DrumTechPhrase D_089e1c70 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e1c84] ?
const struct DrumTechPhrase D_089e1c84 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e1c98] ?
const struct DrumTechPhrase D_089e1c98 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e1cac] Drum Kit
const struct DrumTechKit D_089e1cac = {
    /* A_BUTTON   */ &D_089e1c34,
    /* B_BUTTON   */ &D_089e1c0c,
    /* DPAD_UP    */ &D_089e1c5c,
    /* DPAD_DOWN  */ &D_089e1bf8,
    /* DPAD_LEFT  */ &D_089e1c20,
    /* DPAD_RIGHT */ &D_089e1c48,
    /* L_BUTTON   */ &D_089e1c70,
    /* R_BUTTON   */ &D_089e1c84,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 02  //  //  //


// [D_089e1cd4] ?
const struct DrumTechPhrase D_089e1cd4 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e1ce8] ?
const struct DrumTechPhrase D_089e1ce8 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e1cfc] ?
const struct DrumTechPhrase D_089e1cfc = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e1d10] ?
const struct DrumTechPhrase D_089e1d10 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e1d24] ?
const struct DrumTechPhrase D_089e1d24 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e1d38] ?
const struct DrumTechPhrase D_089e1d38 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e1d4c] ?
const struct DrumTechPhrase D_089e1d4c = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e1d60] ?
const struct DrumTechPhrase D_089e1d60 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e1d74] ?
const struct DrumTechPhrase D_089e1d74 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e1d88] Drum Kit
const struct DrumTechKit D_089e1d88 = {
    /* A_BUTTON   */ &D_089e1d10,
    /* B_BUTTON   */ &D_089e1ce8,
    /* DPAD_UP    */ &D_089e1d74,
    /* DPAD_DOWN  */ &D_089e1cd4,
    /* DPAD_LEFT  */ &D_089e1cfc,
    /* DPAD_RIGHT */ &D_089e1d24,
    /* L_BUTTON   */ &D_089e1d4c,
    /* R_BUTTON   */ &D_089e1d60,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 03  //  //  //


// [D_089e1db0] ?
const struct DrumTechPhrase D_089e1db0 = {
    /* Drum ID  */ 3,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e1dc4] ?
const struct DrumTechPhrase D_089e1dc4 = {
    /* Drum ID  */ 3,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e1dd8] ?
const struct DrumTechPhrase D_089e1dd8 = {
    /* Drum ID  */ 15,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e1dec] ?
const struct DrumTechPhrase D_089e1dec = {
    /* Drum ID  */ 15,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e1e00] ?
const struct DrumTechPhrase D_089e1e00 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e1e14] ?
const struct DrumTechPhrase D_089e1e14 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e1e28] ?
const struct DrumTechPhrase D_089e1e28 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e1e3c] ?
const struct DrumTechPhrase D_089e1e3c = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e1e50] ?
const struct DrumTechPhrase D_089e1e50 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e1e64] Drum Kit
const struct DrumTechKit D_089e1e64 = {
    /* A_BUTTON   */ &D_089e1dec,
    /* B_BUTTON   */ &D_089e1dc4,
    /* DPAD_UP    */ &D_089e1e50,
    /* DPAD_DOWN  */ &D_089e1db0,
    /* DPAD_LEFT  */ &D_089e1dd8,
    /* DPAD_RIGHT */ &D_089e1e00,
    /* L_BUTTON   */ &D_089e1e28,
    /* R_BUTTON   */ &D_089e1e3c,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 04  //  //  //


// [D_089e1e8c] ?
const struct DrumTechPhrase D_089e1e8c = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e1ea0] ?
const struct DrumTechPhrase D_089e1ea0 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e1eb4] ?
const struct DrumTechPhrase D_089e1eb4 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e1ec8] ?
const struct DrumTechPhrase D_089e1ec8 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e1edc] ?
const struct DrumTechPhrase D_089e1edc = {
    /* Drum ID  */ 25,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e1ef0] ?
const struct DrumTechPhrase D_089e1ef0 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e1f04] ?
const struct DrumTechPhrase D_089e1f04 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e1f18] ?
const struct DrumTechPhrase D_089e1f18 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e1f2c] ?
const struct DrumTechPhrase D_089e1f2c = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e1f40] Drum Kit
const struct DrumTechKit D_089e1f40 = {
    /* A_BUTTON   */ &D_089e1ec8,
    /* B_BUTTON   */ &D_089e1ea0,
    /* DPAD_UP    */ &D_089e1ef0,
    /* DPAD_DOWN  */ &D_089e1e8c,
    /* DPAD_LEFT  */ &D_089e1eb4,
    /* DPAD_RIGHT */ &D_089e1edc,
    /* L_BUTTON   */ &D_089e1f04,
    /* R_BUTTON   */ &D_089e1f18,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 05  //  //  //


// [D_089e1f68] ?
const struct DrumTechPhrase D_089e1f68 = {
    /* Drum ID  */ 9,
    /* Volume   */ 0x90,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e1f7c] ?
const struct DrumTechPhrase D_089e1f7c = {
    /* Drum ID  */ 9,
    /* Volume   */ 0x90,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e1f90] ?
const struct DrumTechPhrase D_089e1f90 = {
    /* Drum ID  */ 21,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e1fa4] ?
const struct DrumTechPhrase D_089e1fa4 = {
    /* Drum ID  */ 21,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e1fb8] ?
const struct DrumTechPhrase D_089e1fb8 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e1fcc] ?
const struct DrumTechPhrase D_089e1fcc = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e1fe0] ?
const struct DrumTechPhrase D_089e1fe0 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e1ff4] ?
const struct DrumTechPhrase D_089e1ff4 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e2008] ?
const struct DrumTechPhrase D_089e2008 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e201c] Drum Kit
const struct DrumTechKit D_089e201c = {
    /* A_BUTTON   */ &D_089e1fa4,
    /* B_BUTTON   */ &D_089e1f7c,
    /* DPAD_UP    */ &D_089e2008,
    /* DPAD_DOWN  */ &D_089e1f68,
    /* DPAD_LEFT  */ &D_089e1f90,
    /* DPAD_RIGHT */ &D_089e1fb8,
    /* L_BUTTON   */ &D_089e1fe0,
    /* R_BUTTON   */ &D_089e1ff4,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 06  //  //  //


// [D_089e2044] ?
const struct DrumTechPhrase D_089e2044 = {
    /* Drum ID  */ 10,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e2058] ?
const struct DrumTechPhrase D_089e2058 = {
    /* Drum ID  */ 10,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e206c] ?
const struct DrumTechPhrase D_089e206c = {
    /* Drum ID  */ 22,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e2080] ?
const struct DrumTechPhrase D_089e2080 = {
    /* Drum ID  */ 22,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2094] ?
const struct DrumTechPhrase D_089e2094 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e20a8] ?
const struct DrumTechPhrase D_089e20a8 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e20bc] ?
const struct DrumTechPhrase D_089e20bc = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e20d0] ?
const struct DrumTechPhrase D_089e20d0 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e20e4] ?
const struct DrumTechPhrase D_089e20e4 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e20f8] Drum Kit
const struct DrumTechKit D_089e20f8 = {
    /* A_BUTTON   */ &D_089e2080,
    /* B_BUTTON   */ &D_089e2058,
    /* DPAD_UP    */ &D_089e20e4,
    /* DPAD_DOWN  */ &D_089e2044,
    /* DPAD_LEFT  */ &D_089e206c,
    /* DPAD_RIGHT */ &D_089e2094,
    /* L_BUTTON   */ &D_089e20bc,
    /* R_BUTTON   */ &D_089e20d0,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 07  //  //  //


// [D_089e2120] ?
const struct DrumTechPhrase D_089e2120 = {
    /* Drum ID  */ 11,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e2134] ?
const struct DrumTechPhrase D_089e2134 = {
    /* Drum ID  */ 11,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e2148] ?
const struct DrumTechPhrase D_089e2148 = {
    /* Drum ID  */ 23,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e215c] ?
const struct DrumTechPhrase D_089e215c = {
    /* Drum ID  */ 23,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2170] ?
const struct DrumTechPhrase D_089e2170 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e2184] ?
const struct DrumTechPhrase D_089e2184 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2198] ?
const struct DrumTechPhrase D_089e2198 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e21ac] ?
const struct DrumTechPhrase D_089e21ac = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e21c0] ?
const struct DrumTechPhrase D_089e21c0 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e21d4] Drum Kit
const struct DrumTechKit D_089e21d4 = {
    /* A_BUTTON   */ &D_089e215c,
    /* B_BUTTON   */ &D_089e2134,
    /* DPAD_UP    */ &D_089e21c0,
    /* DPAD_DOWN  */ &D_089e2120,
    /* DPAD_LEFT  */ &D_089e2148,
    /* DPAD_RIGHT */ &D_089e2170,
    /* L_BUTTON   */ &D_089e2198,
    /* R_BUTTON   */ &D_089e21ac,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 08  //  //  //


// [D_089e21fc] ?
const struct DrumTechPhrase D_089e21fc = {
    /* Drum ID  */ 4,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e2210] ?
const struct DrumTechPhrase D_089e2210 = {
    /* Drum ID  */ 4,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e2224] ?
const struct DrumTechPhrase D_089e2224 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e2238] ?
const struct DrumTechPhrase D_089e2238 = {
    /* Drum ID  */ 17,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e224c] ?
const struct DrumTechPhrase D_089e224c = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e2260] ?
const struct DrumTechPhrase D_089e2260 = {
    /* Drum ID  */ 37,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2274] ?
const struct DrumTechPhrase D_089e2274 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e2288] ?
const struct DrumTechPhrase D_089e2288 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e229c] ?
const struct DrumTechPhrase D_089e229c = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e22b0] Drum Kit
const struct DrumTechKit D_089e22b0 = {
    /* A_BUTTON   */ &D_089e2238,
    /* B_BUTTON   */ &D_089e2210,
    /* DPAD_UP    */ &D_089e2260,
    /* DPAD_DOWN  */ &D_089e21fc,
    /* DPAD_LEFT  */ &D_089e2224,
    /* DPAD_RIGHT */ &D_089e224c,
    /* L_BUTTON   */ &D_089e2274,
    /* R_BUTTON   */ &D_089e2288,
    /* UNKNOWN 20 */ 1,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 09  //  //  //


// [D_089e22d8] ?
const struct DrumTechPhrase D_089e22d8 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e22ec] ?
const struct DrumTechPhrase D_089e22ec = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e2300] ?
const struct DrumTechPhrase D_089e2300 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e2314] ?
const struct DrumTechPhrase D_089e2314 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2328] ?
const struct DrumTechPhrase D_089e2328 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e233c] ?
const struct DrumTechPhrase D_089e233c = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2350] ?
const struct DrumTechPhrase D_089e2350 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e2364] ?
const struct DrumTechPhrase D_089e2364 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e2378] ?
const struct DrumTechPhrase D_089e2378 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e238c] Drum Kit
const struct DrumTechKit D_089e238c = {
    /* A_BUTTON   */ &D_089e2314,
    /* B_BUTTON   */ &D_089e22ec,
    /* DPAD_UP    */ &D_089e2378,
    /* DPAD_DOWN  */ &D_089e22d8,
    /* DPAD_LEFT  */ &D_089e2300,
    /* DPAD_RIGHT */ &D_089e2328,
    /* L_BUTTON   */ &D_089e2350,
    /* R_BUTTON   */ &D_089e2364,
    /* UNKNOWN 20 */ 2,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 10  //  //  //


// [D_089e23b4] ?
const struct DrumTechPhrase D_089e23b4 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e23c8] ?
const struct DrumTechPhrase D_089e23c8 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e23dc] ?
const struct DrumTechPhrase D_089e23dc = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e23f0] ?
const struct DrumTechPhrase D_089e23f0 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2404] ?
const struct DrumTechPhrase D_089e2404 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e2418] ?
const struct DrumTechPhrase D_089e2418 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e242c] ?
const struct DrumTechPhrase D_089e242c = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e2440] ?
const struct DrumTechPhrase D_089e2440 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e2454] ?
const struct DrumTechPhrase D_089e2454 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e2468] Drum Kit
const struct DrumTechKit D_089e2468 = {
    /* A_BUTTON   */ &D_089e23f0,
    /* B_BUTTON   */ &D_089e23c8,
    /* DPAD_UP    */ &D_089e2418,
    /* DPAD_DOWN  */ &D_089e23b4,
    /* DPAD_LEFT  */ &D_089e23dc,
    /* DPAD_RIGHT */ &D_089e2404,
    /* L_BUTTON   */ &D_089e242c,
    /* R_BUTTON   */ &D_089e2440,
    /* UNKNOWN 20 */ 2,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 10.5  //  //  //


// [D_089e2490] ?
const struct DrumTechPhrase D_089e2490 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e24a4] ?
const struct DrumTechPhrase D_089e24a4 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e24b8] ?
const struct DrumTechPhrase D_089e24b8 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e24cc] ?
const struct DrumTechPhrase D_089e24cc = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x140,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e24e0] ?
const struct DrumTechPhrase D_089e24e0 = {
    /* Drum ID  */ 25,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e24f4] ?
const struct DrumTechPhrase D_089e24f4 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2508] ?
const struct DrumTechPhrase D_089e2508 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e251c] ?
const struct DrumTechPhrase D_089e251c = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e2530] ?
const struct DrumTechPhrase D_089e2530 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e1bd8,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e2544] Drum Kit
const struct DrumTechKit D_089e2544 = {
    /* A_BUTTON   */ &D_089e24cc,
    /* B_BUTTON   */ NULL,
    /* DPAD_UP    */ &D_089e2530,
    /* DPAD_DOWN  */ NULL,
    /* DPAD_LEFT  */ &D_089e24b8,
    /* DPAD_RIGHT */ NULL,
    /* L_BUTTON   */ NULL,
    /* R_BUTTON   */ NULL,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 11  //  //  //


// [D_089e256c] ?
const struct DrumTechPhrase D_089e256c = {
    /* Drum ID  */ 62,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e2580] ?
const struct DrumTechPhrase D_089e2580 = {
    /* Drum ID  */ 62,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e2594] ?
const struct DrumTechPhrase D_089e2594 = {
    /* Drum ID  */ 63,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e25a8] ?
const struct DrumTechPhrase D_089e25a8 = {
    /* Drum ID  */ 63,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e25bc] ?
const struct DrumTechPhrase D_089e25bc = {
    /* Drum ID  */ 64,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e25d0] ?
const struct DrumTechPhrase D_089e25d0 = {
    /* Drum ID  */ 65,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e25e4] ?
const struct DrumTechPhrase D_089e25e4 = {
    /* Drum ID  */ 66,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e25f8] ?
const struct DrumTechPhrase D_089e25f8 = {
    /* Drum ID  */ 67,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e260c] Drum Kit
const struct DrumTechKit D_089e260c = {
    /* A_BUTTON   */ &D_089e25a8,
    /* B_BUTTON   */ &D_089e2580,
    /* DPAD_UP    */ &D_089e25d0,
    /* DPAD_DOWN  */ &D_089e256c,
    /* DPAD_LEFT  */ &D_089e2594,
    /* DPAD_RIGHT */ &D_089e25bc,
    /* L_BUTTON   */ &D_089e25e4,
    /* R_BUTTON   */ &D_089e25f8,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 12  //  //  //


// [D_089e2634] ?
const struct DrumTechPhrase D_089e2634 = {
    /* Drum ID  */ 68,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e2648] ?
const struct DrumTechPhrase D_089e2648 = {
    /* Drum ID  */ 69,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e265c] ?
const struct DrumTechPhrase D_089e265c = {
    /* Drum ID  */ 70,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e2670] ?
const struct DrumTechPhrase D_089e2670 = {
    /* Drum ID  */ 71,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2684] ?
const struct DrumTechPhrase D_089e2684 = {
    /* Drum ID  */ 72,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e2698] ?
const struct DrumTechPhrase D_089e2698 = {
    /* Drum ID  */ 73,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e26ac] ?
const struct DrumTechPhrase D_089e26ac = {
    /* Drum ID  */ 74,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e26c0] ?
const struct DrumTechPhrase D_089e26c0 = {
    /* Drum ID  */ 75,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e26d4] Drum Kit
const struct DrumTechKit D_089e26d4 = {
    /* A_BUTTON   */ &D_089e2670,
    /* B_BUTTON   */ &D_089e2648,
    /* DPAD_UP    */ &D_089e2698,
    /* DPAD_DOWN  */ &D_089e2634,
    /* DPAD_LEFT  */ &D_089e265c,
    /* DPAD_RIGHT */ &D_089e2684,
    /* L_BUTTON   */ &D_089e26ac,
    /* R_BUTTON   */ &D_089e26c0,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 13  //  //  //


// [D_089e26fc] DrumTech Sequence
const struct DrumTechNote D_089e26fc[] = {
    {
        /* Drum ID */ 79,
        /* Volume  */ 0x80,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 79,
        /* Volume  */ 0xa0,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 79,
        /* Volume  */ 0x80,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e271c] ?
const struct DrumTechPhrase D_089e271c = {
    /* Drum ID  */ 76,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e2730] ?
const struct DrumTechPhrase D_089e2730 = {
    /* Drum ID  */ 76,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e2744] ?
const struct DrumTechPhrase D_089e2744 = {
    /* Drum ID  */ 77,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e2758] ?
const struct DrumTechPhrase D_089e2758 = {
    /* Drum ID  */ 77,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e276c] ?
const struct DrumTechPhrase D_089e276c = {
    /* Drum ID  */ 78,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e2780] ?
const struct DrumTechPhrase D_089e2780 = {
    /* Drum ID  */ 79,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2794] ?
const struct DrumTechPhrase D_089e2794 = {
    /* Drum ID  */ 80,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e27a8] ?
const struct DrumTechPhrase D_089e27a8 = {
    /* Drum ID  */ 81,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e27bc] ?
const struct DrumTechPhrase D_089e27bc = {
    /* Drum ID  */ 38,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ D_089e26fc,
    /* On-Play  */ func_08028694,
    /* Param.   */ 0
};

// [D_089e27d0] Drum Kit
const struct DrumTechKit D_089e27d0 = {
    /* A_BUTTON   */ &D_089e2758,
    /* B_BUTTON   */ &D_089e2730,
    /* DPAD_UP    */ &D_089e27bc,
    /* DPAD_DOWN  */ &D_089e271c,
    /* DPAD_LEFT  */ &D_089e2744,
    /* DPAD_RIGHT */ &D_089e276c,
    /* L_BUTTON   */ &D_089e2794,
    /* R_BUTTON   */ &D_089e27a8,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};


  //  //  //  DRUM KIT 14  //  //  //


// [D_089e27f8] ?
const struct DrumTechPhrase D_089e27f8 = {
    /* Drum ID  */ 82,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e280c] ?
const struct DrumTechPhrase D_089e280c = {
    /* Drum ID  */ 83,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e2820] ?
const struct DrumTechPhrase D_089e2820 = {
    /* Drum ID  */ 84,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e2834] ?
const struct DrumTechPhrase D_089e2834 = {
    /* Drum ID  */ 85,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2848] ?
const struct DrumTechPhrase D_089e2848 = {
    /* Drum ID  */ 86,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e285c] ?
const struct DrumTechPhrase D_089e285c = {
    /* Drum ID  */ 87,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2870] ?
const struct DrumTechPhrase D_089e2870 = {
    /* Drum ID  */ 88,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e2884] ?
const struct DrumTechPhrase D_089e2884 = {
    /* Drum ID  */ 89,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};


  //  //  //  DRUM KIT 15  //  //  //


// [D_089e2898] Drum Kit
const struct DrumTechKit D_089e2898 = {
    /* A_BUTTON   */ &D_089e2834,
    /* B_BUTTON   */ &D_089e280c,
    /* DPAD_UP    */ &D_089e285c,
    /* DPAD_DOWN  */ &D_089e27f8,
    /* DPAD_LEFT  */ &D_089e2820,
    /* DPAD_RIGHT */ &D_089e2848,
    /* L_BUTTON   */ &D_089e2870,
    /* R_BUTTON   */ &D_089e2884,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};

// [D_089e28c0] ?
const struct DrumTechPhrase D_089e28c0 = {
    /* Drum ID  */ 90,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283ac,
    /* Param.   */ 0
};

// [D_089e28d4] ?
const struct DrumTechPhrase D_089e28d4 = {
    /* Drum ID  */ 90,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080283f8,
    /* Param.   */ 0
};

// [D_089e28e8] ?
const struct DrumTechPhrase D_089e28e8 = {
    /* Drum ID  */ 91,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028444,
    /* Param.   */ 0
};

// [D_089e28fc] ?
const struct DrumTechPhrase D_089e28fc = {
    /* Drum ID  */ 91,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080284a4,
    /* Param.   */ 0
};

// [D_089e2910] ?
const struct DrumTechPhrase D_089e2910 = {
    /* Drum ID  */ 92,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028504,
    /* Param.   */ 0
};

// [D_089e2924] ?
const struct DrumTechPhrase D_089e2924 = {
    /* Drum ID  */ 93,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028564,
    /* Param.   */ 0
};

// [D_089e2938] ?
const struct DrumTechPhrase D_089e2938 = {
    /* Drum ID  */ 94,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_080285d4,
    /* Param.   */ 0
};

// [D_089e294c] ?
const struct DrumTechPhrase D_089e294c = {
    /* Drum ID  */ 95,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ func_08028634,
    /* Param.   */ 0
};

// [D_089e2960] Drum Kit
const struct DrumTechKit D_089e2960 = {
    /* A_BUTTON   */ &D_089e28fc,
    /* B_BUTTON   */ &D_089e28d4,
    /* DPAD_UP    */ &D_089e2924,
    /* DPAD_DOWN  */ &D_089e28c0,
    /* DPAD_LEFT  */ &D_089e28e8,
    /* DPAD_RIGHT */ &D_089e2910,
    /* L_BUTTON   */ &D_089e2938,
    /* R_BUTTON   */ &D_089e294c,
    /* UNKNOWN 20 */ 0,
    /* UNKNOWN 24 */ 0
};
