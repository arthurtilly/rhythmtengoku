#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "data_0805a5d0.h"


/* Samurai Slice */


// Blank Text
const char D_0805a5d0[] = "";

// ?
extern const struct Animation anim_demon_hurt[];
extern const struct Animation anim_small_demon_hit[];
extern const struct Animation anim_med_demon_hit[];
extern const struct Animation anim_small_demon_hit[];
extern const struct Animation anim_propeller_demon_hit[];
extern const struct Animation anim_winged_demon_hit[];
extern const struct Animation anim_large_demon_hit1[];
extern const struct Animation anim_large_demon_hit2[];
extern const struct Animation anim_small_demon_barely[];
extern const struct Animation anim_med_demon_barely[];
extern const struct Animation anim_propeller_demon_barely[];
extern const struct Animation anim_winged_demon_barely[];
extern const struct Animation anim_large_demon_barely[];

const struct SamuraiSlice_0805a5d4 D_0805a5d4[] = {
    { anim_demon_hurt, 0x80, -0x200 },
    { anim_small_demon_hit, 0x80, -0x300 },
    { anim_med_demon_hit, 0x80, -0x300 },
    { anim_small_demon_hit, 0x80, -0x300 },
    { anim_propeller_demon_hit, 0x80, -0x500 },
    { anim_winged_demon_hit, 0x80, -0x300 },
    { anim_large_demon_hit1, 0x80, -0x400 },
    { anim_large_demon_hit2, 0x80, -0x400 },
    { anim_small_demon_barely, 0x80, 0x100 },
    { anim_med_demon_barely, 0x80, 0x100 },
    { anim_propeller_demon_barely, 0x80, 0x100 },
    { anim_winged_demon_barely, 0x80, 0x100 },
    { anim_large_demon_barely, 0x80, 0x100 },
};


/* Marching Orders */


const char D_0805a670[] = "";


/* Mr. Upbeat */


const char D_0805a674[] = "しんきろく！";

const char D_0805a684[] = "おつかれさま";


/* Metronome */


const char D_0805a694[] = "音にあわせて、　Ａボタンを押しましょう。";

const char D_0805a6c0[] = "計測中";

const char D_0805a6c8[] = "計測おわり！ さて、 結果は…";


/* LIVE Menu */


//
const char D_0805a6e8[] =
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Samurai's\n"
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "\x01\x52" "Band LIVE! \n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "\x01\x4c" "　　　　　　　　　　♪　コスモダンス\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　　　　　　　♪　バリバリ三人衆\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　　　　　　　♪　スーパータップ\n"
    "\n";

const char D_0805a7a8[] =
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Boys LIVE!\n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　パチパチ三人衆\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　タップダンズ\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "　　　　♪　WISH 君を待てなくて\n"
    "\n";

const char D_0805a830[] =
    "\x03\x31" "\x01\x6d" "\x05\x30" "\x01\x34" "Drum Girls LIVE!\n"
    "\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　ナイトウォーク\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　スペースダンス\n"
    "\x03\x30" "\x01\x73" "\x05\x31" "\x01\x35" "♪　恋のハニースイ～トエンジェル\n"
    "\n";


/* Bunny Hop */


const char D_0805a8ac[] = "";


/* Rap Men */


const char D_0805a8b0[] = "";


/* Rat Race */


const char D_0805a8b4[] = "";


/* Space Dance */


const char D_0805a8b8[] = "";


/* Tap Trial */


const char D_0805a8bc[] = "";

const char D_0805a8c0[] = "ホレたー！！";

const char D_0805a8d0[] = "イカスッす！！";

const char D_0805a8e0[] = "テクニシャン！";

const char D_0805a8f0[] = "カッコイイ！！";

const char D_0805a900[] = "うまいっス！！";


/* Tram & Pauline */


const char D_0805a910[] = "";

const u32 D_0805a914[] = { 0x18, 0x18 };

const u32 D_0805a91c[] = { 0x48, 0x48 };


/* Horse Machine */


extern const struct CompressedGraphics D_08d11ef4;
extern const struct CompressedGraphics D_08d17708;
extern const struct CompressedGraphics D_08d10b60;
extern const struct CompressedGraphics D_08d1737c;
extern const struct CompressedGraphics D_08d0ef74;
extern const struct CompressedGraphics D_08d17048;
extern const struct CompressedGraphics D_08d0c580;
extern const struct CompressedGraphics D_08d16c34;
extern const struct CompressedGraphics D_08d0bfc8;
extern const struct CompressedGraphics D_08d16998;
extern const struct CompressedGraphics D_08d0af74;
extern const struct CompressedGraphics D_08d16648;

// [D_0805a924] Horse Machine BG - Graphics Table 0
const struct GraphicsTable D_0805a924[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d11ef4,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17708,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a948] Horse Machine BG - Graphics Table 1
const struct GraphicsTable D_0805a948[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d10b60,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d1737c,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a96c] Horse Machine BG - Graphics Table 2
const struct GraphicsTable D_0805a96c[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0ef74,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17048,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a990] Horse Machine BG - Graphics Table 3
const struct GraphicsTable D_0805a990[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0c580,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16c34,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a9b4] Horse Machine BG - Graphics Table 4
const struct GraphicsTable D_0805a9b4[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0bfc8,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16998,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_0805a9d8] Horse Machine BG - Graphics Table 5
const struct GraphicsTable D_0805a9d8[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d0af74,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16648,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// Empty String
const char D_0805a9fc[] = "";

// ?
const s32 D_0805aa00[] = {
    3, 3, 2, 3
};

// ?
const s32 D_0805aa10[] = {
    3, 3, 2, 3
};

// ?
const s32 D_0805aa20[] = {
    0x60,  0x80,  0xc0,  0x100,
    0x200, 0x400, 0x600, 0x800
};

// ?
const s32 D_0805aa40[] = {
    -0x200, -0x280, -0x300, -0x300,
    -0x400, -0x380, -0x500, -0x400
};

// ? (duration values)
const u32 D_0805aa60[][4] = {
    { 0x10, 0x20, 0x10, 0x20 },
    { 0x18, 0x18, 0x18, 0x18 },
    { 0x18, 0x0C, 0x0C, 0x00 },
    { 0x18, 0x0C, 0x0C, 0x0C }
};

const s32 D_0805aaa0[] = {
    0xd800, 0x14000, 0x1e000, 0x28000
};

const s32 D_0805aab0[][4] = {
    { 0x4c, 0x6c, 0x84, 0xa4 },
    { 0x48, 0x68, 0x88, 0xa8 },
    { 0x60, 0x78, 0x90, -0x40 },
    { 0x5a, 0x6e, 0x82, 0x98 },
};


/* Rhythm Toys - Confession Machine */


extern const struct SequenceData s_heat_v_anataga_seqData;
extern const struct SequenceData s_heat_v_anatatara_seqData;
extern const struct SequenceData s_heat_v_kimiga_seqData;
extern const struct SequenceData s_heat_v_jituhane_seqData;
extern const struct SequenceData s_heat_v_watasine_seqData;
extern const struct SequenceData s_heat_v_watasitara_seqData;
extern const struct SequenceData s_heat_v_okubyo_seqData;
extern const struct SequenceData s_heat_v_majime_seqData;
extern const struct SequenceData s_heat_v_kouitta_seqData;
extern const struct SequenceData s_heat_v_doji_seqData;
extern const struct SequenceData s_heat_v_sugoi_seqData;
extern const struct SequenceData s_heat_v_koumietemo_seqData;
extern const struct SequenceData s_heat_v_demo_seqData;
extern const struct SequenceData s_heat_v_yappari_seqData;
extern const struct SequenceData s_heat_v_dakedo_seqData;
extern const struct SequenceData s_heat_v_suki_seqData;
extern const struct SequenceData s_heat_v_kirai_seqData;
extern const struct SequenceData s_heat_v_seki_seqData;

// Sound Effect Pool
const struct SequenceData *const D_0805aaf0[] = {
    &s_heat_v_anataga_seqData,
    &s_heat_v_anatatara_seqData,
    &s_heat_v_kimiga_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const D_0805ab00[] = {
    &s_heat_v_jituhane_seqData,
    &s_heat_v_watasine_seqData,
    &s_heat_v_watasitara_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const D_0805ab10[] = {
    &s_heat_v_okubyo_seqData,
    &s_heat_v_majime_seqData,
    &s_heat_v_kouitta_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const D_0805ab20[] = {
    &s_heat_v_doji_seqData,
    &s_heat_v_sugoi_seqData,
    &s_heat_v_koumietemo_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const D_0805ab30[] = {
    &s_heat_v_demo_seqData,
    &s_heat_v_yappari_seqData,
    &s_heat_v_dakedo_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const D_0805ab40[] = {
    &s_heat_v_suki_seqData,
    &s_heat_v_kirai_seqData,
    &s_heat_v_seki_seqData,
    NULL
};
