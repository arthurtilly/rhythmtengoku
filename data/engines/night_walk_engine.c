#include "engines/night_walk.h"


  /* NIGHT WALK - GAME ENGINE DATA */


extern const struct Animation D_088c9ec8[]; // [D_088c9ec8] Very Small Star
extern const struct Animation D_088c9df0[]; // [D_088c9df0] Small Star
extern const struct Animation D_088c9e38[]; // [D_088c9e38] Medium Star
extern const struct Animation D_088c9e80[]; // [D_088c9e80] Large Star
extern const struct Animation D_088c9f10[]; // [D_088c9f10] Very Large Star
extern const struct Animation D_088ca078[]; // [D_088ca078] Small Star Flash
extern const struct Animation D_088ca090[]; // [D_088ca090] Medium Star Flash
extern const struct Animation D_088ca0a8[]; // [D_088ca0a8] Large Star Flash
extern const struct Animation D_088ca0c0[]; // [D_088ca0c0] Very Large Star Flash

extern const struct CompressedGraphics D_08c52420;
extern const struct CompressedGraphics D_08c524fc;
extern const Palette D_088ca170[];


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e2ed4] Star Animations
const struct Animation *const D_089e2ed4[] = {
    D_088c9ec8,
    D_088c9df0,
    D_088c9e38,
    D_088c9e80,
    D_088c9f10
};

// [D_089e2ee8] Star Expand Animations
const struct Animation *const D_089e2ee8[] = {
    D_088ca078,
    D_088ca090,
    D_088ca0a8,
    D_088ca0c0
};

#include "data/engines/night_walk_drums.inc.c"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e3380] Buffered Textures List
const struct CompressedGraphics *const D_089e3380[] = {
    NULL
};

// [D_089e3384] Graphics Table
const struct GraphicsTable D_089e3384[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c52420,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c524fc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c52420,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088ca170,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088ca170,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  SOUND DATA  //  //  //


// [D_089e33cc] DrumTech Sequence
const struct DrumTechNote D_089e33cc[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e33dc] DrumTech Sequence
const struct DrumTechNote D_089e33dc[] = {
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e33ec] DrumTech Sequence List
const struct DrumTechNote *const D_089e33ec[] = {
    /* 00 */ D_089e33cc
};

// [D_089e33f0] DrumTech Sequence
const struct DrumTechNote D_089e33f0[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3400] DrumTech Sequence
const struct DrumTechNote D_089e3400[] = {
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3410] DrumTech Sequence List
const struct DrumTechNote *const D_089e3410[] = {
    /* 00 */ D_089e33f0
};

// [D_089e3414] DrumTech Sequence
const struct DrumTechNote D_089e3414[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 17,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e342c] DrumTech Sequence
const struct DrumTechNote D_089e342c[] = {
    {
        /* Drum ID */ 13,
        /* Volume  */ 0x100,
        /* Pitch   */ 0x400,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3444] DrumTech Sequence List
const struct DrumTechNote *const D_089e3444[] = {
    /* 00 */ D_089e3414
};

// [D_089e3448] DrumTech Sequence
const struct DrumTechNote D_089e3448[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 17,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3460] DrumTech Sequence
const struct DrumTechNote D_089e3460[] = {
    {
        /* Drum ID */ 13,
        /* Volume  */ 0x100,
        /* Pitch   */ 0x400,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3478] DrumTech Sequence List
const struct DrumTechNote *const D_089e3478[] = {
    /* 00 */ D_089e3448
};

// [D_089e347c] DrumTech Sequence
const struct DrumTechNote D_089e347c[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 17,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 34,
        /* Volume  */ 0x80,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e349c] DrumTech Sequence List
const struct DrumTechNote *const D_089e349c[] = {
    /* 00 */ D_089e347c
};

// [D_089e34a0] DrumTech Sequence
const struct DrumTechNote D_089e34a0[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x20,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
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
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e34d0] DrumTech Sequence
const struct DrumTechNote D_089e34d0[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
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
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x50,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e34f8] DrumTech Sequence
const struct DrumTechNote D_089e34f8[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 13,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3518] DrumTech Sequence
const struct DrumTechNote D_089e3518[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3528] DrumTech Sequence List
const struct DrumTechNote *const D_089e3528[] = {
    /* 00 */ D_089e34a0,
    /* 01 */ D_089e34d0,
    /* 02 */ D_089e34f8,
    /* 03 */ D_089e3518
};

// [D_089e3538] DrumTech Sequence
const struct DrumTechNote D_089e3538[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3548] DrumTech Sequence
const struct DrumTechNote D_089e3548[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3560] DrumTech Sequence
const struct DrumTechNote D_089e3560[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x06
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x06
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3580] DrumTech Sequence
const struct DrumTechNote D_089e3580[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0xc0,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0xa0,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e35a8] DrumTech Sequence List
const struct DrumTechNote *const D_089e35a8[] = {
    /* 00 */ D_089e3548,
    /* 01 */ D_089e3560,
    /* 02 */ D_089e3580,
    /* 03 */ D_089e3548
};

// [D_089e35b8] DrumTech Sequence
const struct DrumTechNote D_089e35b8[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e35d0] DrumTech Sequence
const struct DrumTechNote D_089e35d0[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x20,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e35f0] DrumTech Sequence
const struct DrumTechNote D_089e35f0[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3610] DrumTech Sequence List
const struct DrumTechNote *const D_089e3610[] = {
    /* 00 */ D_089e35b8,
    /* 01 */ D_089e35d0,
    /* 02 */ D_089e35f0,
    /* 03 */ D_089e35b8
};




  //  //  //  GAME ENGINE DATA  //  //  //




  //  //  //  CUE DATA  //  //  //

