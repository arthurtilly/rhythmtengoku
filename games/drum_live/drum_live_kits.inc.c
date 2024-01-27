

  //  //  //  DRUM KIT 01  //  //  //


// [D_089e076c] DrumTech Sequence
struct DrumTechNote D_089e076c[] = {
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
struct DrumTechPhrase D_089e078c = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_bass_l,
    /* Param.   */ 0
};

// [D_089e07a0] ?
struct DrumTechPhrase D_089e07a0 = {
    /* Drum ID  */ 7,
    /* Volume   */ 0xa0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_bass_r,
    /* Param.   */ 0
};

// [D_089e07b4] ?
struct DrumTechPhrase D_089e07b4 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_snare_l,
    /* Param.   */ 0
};

// [D_089e07c8] ?
struct DrumTechPhrase D_089e07c8 = {
    /* Drum ID  */ 16,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_snare_r,
    /* Param.   */ 0
};

// [D_089e07dc] ?
struct DrumTechPhrase D_089e07dc = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_tom_unused,
    /* Param.   */ 0
};

// [D_089e07f0] ?
struct DrumTechPhrase D_089e07f0 = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_tom,
    /* Param.   */ 0
};

// [D_089e0804] ?
struct DrumTechPhrase D_089e0804 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_hihat,
    /* Param.   */ 0
};

// [D_089e0818] ?
struct DrumTechPhrase D_089e0818 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_splash,
    /* Param.   */ 0
};

// [D_089e082c] ?
struct DrumTechPhrase D_089e082c = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_crash,
    /* Param.   */ 0
};

// [D_089e0840] ?
struct DrumTechPhrase D_089e0840 = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e076c,
    /* On-Play  */ drum_live_kit_play_roll,
    /* Param.   */ 1
};

// [D_089e0854] Drum Kit 1
struct DrumTechKit D_089e0854 = {
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
struct DrumTechNote D_089e087c[] = {
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
struct DrumTechPhrase D_089e089c = {
    /* Drum ID  */ 8,
    /* Volume   */ 0x90,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_bass_l,
    /* Param.   */ 0
};

// [D_089e08b0] ?
struct DrumTechPhrase D_089e08b0 = {
    /* Drum ID  */ 8,
    /* Volume   */ 0x90,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_bass_r,
    /* Param.   */ 0
};

// [D_089e08c4] ?
struct DrumTechPhrase D_089e08c4 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_snare_l,
    /* Param.   */ 0
};

// [D_089e08d8] ?
struct DrumTechPhrase D_089e08d8 = {
    /* Drum ID  */ 20,
    /* Volume   */ 0x100,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_snare_r,
    /* Param.   */ 0
};

// [D_089e08ec] ?
struct DrumTechPhrase D_089e08ec = {
    /* Drum ID  */ 26,
    /* Volume   */ 0xc0,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_tom,
    /* Param.   */ 0
};

// [D_089e0900] ?
struct DrumTechPhrase D_089e0900 = {
    /* Drum ID  */ 36,
    /* Volume   */ 0x60,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_hihat,
    /* Param.   */ 0
};

// [D_089e0914] ?
struct DrumTechPhrase D_089e0914 = {
    /* Drum ID  */ 32,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_splash,
    /* Param.   */ 0
};

// [D_089e0928] ?
struct DrumTechPhrase D_089e0928 = {
    /* Drum ID  */ 34,
    /* Volume   */ 0x80,
    /* Pitch    */ 0,
    /* Sequence */ NULL,
    /* On-Play  */ drum_live_kit_play_crash,
    /* Param.   */ 0
};

// [D_089e093c] ?
struct DrumTechPhrase D_089e093c = {
    /* Drum ID  */ 38,
    /* Volume   */ 0xf0,
    /* Pitch    */ 0,
    /* Sequence */ D_089e087c,
    /* On-Play  */ drum_live_kit_play_roll,
    /* Param.   */ 1
};

// [D_089e0950] Drum Kit 2
struct DrumTechKit D_089e0950 = {
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
