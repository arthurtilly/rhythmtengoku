#include "global.h"
#include "sound.h"

extern const struct SampleInfo sfx_001SampleInfo;
struct InstrumentPCM instrument_pcm_data_1 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_001SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_002SampleInfo;
struct InstrumentPCM instrument_pcm_data_2 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_002SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_002SampleInfo;
struct InstrumentPCM instrument_pcm_data_3 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_002SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_003SampleInfo;
struct InstrumentPCM instrument_pcm_data_4 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_003SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_004SampleInfo;
struct InstrumentPCM instrument_pcm_data_5 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_004SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_005SampleInfo;
struct InstrumentPCM instrument_pcm_data_6 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_005SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_006SampleInfo;
struct InstrumentPCM instrument_pcm_data_7 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_006SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_007SampleInfo;
struct InstrumentPCM instrument_pcm_data_8 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_007SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_9 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_009SampleInfo;
struct InstrumentPCM instrument_pcm_data_10 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_009SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_11 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a86828, // POINTER
    /* Sub-bank */ (void *)0x08a98a0c, // POINTER
};

extern const struct SampleInfo sfx_010SampleInfo;
struct InstrumentPCM instrument_pcm_data_12 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_010SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_011SampleInfo;
struct InstrumentPCM instrument_pcm_data_13 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_011SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_14 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a998e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_15 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_16 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_012SampleInfo;
struct InstrumentPCM instrument_pcm_data_17 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_012SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_013SampleInfo;
struct InstrumentPCM instrument_pcm_data_18 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_013SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_014SampleInfo;
struct InstrumentPCM instrument_pcm_data_19 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_014SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_20 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_016SampleInfo;
struct InstrumentPCM instrument_pcm_data_21 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_016SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_22 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_018SampleInfo;
struct InstrumentPCM instrument_pcm_data_23 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_018SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_019SampleInfo;
struct InstrumentPCM instrument_pcm_data_24 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_019SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_020SampleInfo;
struct InstrumentPCM instrument_pcm_data_25 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_020SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_021SampleInfo;
struct InstrumentPCM instrument_pcm_data_26 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_021SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_022SampleInfo;
struct InstrumentPCM instrument_pcm_data_27 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_022SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_023SampleInfo;
struct InstrumentPCM instrument_pcm_data_28 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_023SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_024SampleInfo;
struct InstrumentPCM instrument_pcm_data_29 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_024SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_025SampleInfo;
struct InstrumentPCM instrument_pcm_data_30 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_025SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_026SampleInfo;
struct InstrumentPCM instrument_pcm_data_31 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_026SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_32 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_027SampleInfo;
struct InstrumentPCM instrument_pcm_data_33 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_027SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_34 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_029SampleInfo;
struct InstrumentPCM instrument_pcm_data_35 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_029SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_030SampleInfo;
struct InstrumentPCM instrument_pcm_data_36 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_030SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_37 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x5c,
    /* unk22        */ 0x2,
};

extern const struct SampleInfo sfx_031SampleInfo;
struct InstrumentPCM instrument_pcm_data_38 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_031SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_032SampleInfo;
struct InstrumentPCM instrument_pcm_data_39 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_032SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_033SampleInfo;
struct InstrumentPCM instrument_pcm_data_40 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_033SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_034SampleInfo;
struct InstrumentPCM instrument_pcm_data_41 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_034SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_035SampleInfo;
struct InstrumentPCM instrument_pcm_data_42 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_035SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_036SampleInfo;
struct InstrumentPCM instrument_pcm_data_43 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_036SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_037SampleInfo;
struct InstrumentPCM instrument_pcm_data_44 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_037SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_038SampleInfo;
struct InstrumentPCM instrument_pcm_data_45 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_038SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_039SampleInfo;
struct InstrumentPCM instrument_pcm_data_46 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_039SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_040SampleInfo;
struct InstrumentPCM instrument_pcm_data_47 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_040SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_041SampleInfo;
struct InstrumentPCM instrument_pcm_data_48 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_041SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_49 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_042SampleInfo;
struct InstrumentPCM instrument_pcm_data_50 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_042SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_043SampleInfo;
struct InstrumentPCM instrument_pcm_data_51 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_043SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_52 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_53 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_54 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a996e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_55 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_044SampleInfo;
struct InstrumentPCM instrument_pcm_data_56 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_044SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_045SampleInfo;
struct InstrumentPCM instrument_pcm_data_57 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_045SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_046SampleInfo;
struct InstrumentPCM instrument_pcm_data_58 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_046SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_047SampleInfo;
struct InstrumentPCM instrument_pcm_data_59 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_047SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_048SampleInfo;
struct InstrumentPCM instrument_pcm_data_60 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_048SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_049SampleInfo;
struct InstrumentPCM instrument_pcm_data_61 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_049SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_050SampleInfo;
struct InstrumentPCM instrument_pcm_data_62 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_050SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_051SampleInfo;
struct InstrumentPCM instrument_pcm_data_63 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_051SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_052SampleInfo;
struct InstrumentPCM instrument_pcm_data_64 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_052SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_053SampleInfo;
struct InstrumentPCM instrument_pcm_data_65 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_053SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_054SampleInfo;
struct InstrumentPCM instrument_pcm_data_66 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_054SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_055SampleInfo;
struct InstrumentPCM instrument_pcm_data_67 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_055SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_056SampleInfo;
struct InstrumentPCM instrument_pcm_data_68 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_056SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_057SampleInfo;
struct InstrumentPCM instrument_pcm_data_69 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_057SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_70 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

extern const struct SampleInfo sfx_016SampleInfo;
struct InstrumentPCM instrument_pcm_data_71 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_016SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_027SampleInfo;
struct InstrumentPCM instrument_pcm_data_72 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_027SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_73 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_058SampleInfo;
struct InstrumentPCM instrument_pcm_data_74 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_058SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_059SampleInfo;
struct InstrumentPCM instrument_pcm_data_75 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_059SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_76 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_77 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_060SampleInfo;
struct InstrumentPCM instrument_pcm_data_78 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_060SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_061SampleInfo;
struct InstrumentPCM instrument_pcm_data_79 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_061SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_062SampleInfo;
struct InstrumentPCM instrument_pcm_data_80 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_062SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_81 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_82 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_83 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_060SampleInfo;
struct InstrumentPCM instrument_pcm_data_84 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_060SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_043SampleInfo;
struct InstrumentPCM instrument_pcm_data_85 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_043SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_027SampleInfo;
struct InstrumentPCM instrument_pcm_data_86 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_027SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_058SampleInfo;
struct InstrumentPCM instrument_pcm_data_87 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_058SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_88 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_89 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_90 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_016SampleInfo;
struct InstrumentPCM instrument_pcm_data_91 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_016SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_059SampleInfo;
struct InstrumentPCM instrument_pcm_data_92 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_059SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_93 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

extern const struct SampleInfo sfx_031SampleInfo;
struct InstrumentPCM instrument_pcm_data_94 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_031SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_041SampleInfo;
struct InstrumentPCM instrument_pcm_data_95 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_041SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_063SampleInfo;
struct InstrumentPCM instrument_pcm_data_96 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_063SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_064SampleInfo;
struct InstrumentPCM instrument_pcm_data_97 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_064SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_065SampleInfo;
struct InstrumentPCM instrument_pcm_data_98 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_065SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_066SampleInfo;
struct InstrumentPCM instrument_pcm_data_99 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_066SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_067SampleInfo;
struct InstrumentPCM instrument_pcm_data_100 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_067SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_068SampleInfo;
struct InstrumentPCM instrument_pcm_data_101 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_068SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_069SampleInfo;
struct InstrumentPCM instrument_pcm_data_102 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_069SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_070SampleInfo;
struct InstrumentPCM instrument_pcm_data_103 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_070SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_071SampleInfo;
struct InstrumentPCM instrument_pcm_data_104 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_071SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_072SampleInfo;
struct InstrumentPCM instrument_pcm_data_105 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_072SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_073SampleInfo;
struct InstrumentPCM instrument_pcm_data_106 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_073SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_074SampleInfo;
struct InstrumentPCM instrument_pcm_data_107 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_074SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_075SampleInfo;
struct InstrumentPCM instrument_pcm_data_108 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_075SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_076SampleInfo;
struct InstrumentPCM instrument_pcm_data_109 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_076SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_077SampleInfo;
struct InstrumentPCM instrument_pcm_data_110 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_077SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_078SampleInfo;
struct InstrumentPCM instrument_pcm_data_111 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_078SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_079SampleInfo;
struct InstrumentPCM instrument_pcm_data_112 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_079SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_080SampleInfo;
struct InstrumentPCM instrument_pcm_data_113 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_080SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_081SampleInfo;
struct InstrumentPCM instrument_pcm_data_114 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_081SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_082SampleInfo;
struct InstrumentPCM instrument_pcm_data_115 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_082SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_083SampleInfo;
struct InstrumentPCM instrument_pcm_data_116 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_083SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_084SampleInfo;
struct InstrumentPCM instrument_pcm_data_117 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_084SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_085SampleInfo;
struct InstrumentPCM instrument_pcm_data_118 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_085SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_119 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_120 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_086SampleInfo;
struct InstrumentPCM instrument_pcm_data_121 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_086SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_122 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_123 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x70,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_034SampleInfo;
struct InstrumentPCM instrument_pcm_data_124 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_034SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_088SampleInfo;
struct InstrumentPCM instrument_pcm_data_125 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_088SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_089SampleInfo;
struct InstrumentPCM instrument_pcm_data_126 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_089SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_090SampleInfo;
struct InstrumentPCM instrument_pcm_data_127 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_090SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_091SampleInfo;
struct InstrumentPCM instrument_pcm_data_128 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_091SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_092SampleInfo;
struct InstrumentPCM instrument_pcm_data_129 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_092SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_093SampleInfo;
struct InstrumentPCM instrument_pcm_data_130 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_093SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_094SampleInfo;
struct InstrumentPCM instrument_pcm_data_131 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_094SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_095SampleInfo;
struct InstrumentPCM instrument_pcm_data_132 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_095SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_096SampleInfo;
struct InstrumentPCM instrument_pcm_data_133 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_096SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_097SampleInfo;
struct InstrumentPCM instrument_pcm_data_134 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_097SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_098SampleInfo;
struct InstrumentPCM instrument_pcm_data_135 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_098SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_099SampleInfo;
struct InstrumentPCM instrument_pcm_data_136 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_099SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_100SampleInfo;
struct InstrumentPCM instrument_pcm_data_137 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_100SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_101SampleInfo;
struct InstrumentPCM instrument_pcm_data_138 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_101SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_102SampleInfo;
struct InstrumentPCM instrument_pcm_data_139 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_102SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_103SampleInfo;
struct InstrumentPCM instrument_pcm_data_140 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_103SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_104SampleInfo;
struct InstrumentPCM instrument_pcm_data_141 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_104SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_105SampleInfo;
struct InstrumentPCM instrument_pcm_data_142 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_105SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_106SampleInfo;
struct InstrumentPCM instrument_pcm_data_143 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_106SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_107SampleInfo;
struct InstrumentPCM instrument_pcm_data_144 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_107SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_145 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_016SampleInfo;
struct InstrumentPCM instrument_pcm_data_146 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_016SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_108SampleInfo;
struct InstrumentPCM instrument_pcm_data_147 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_108SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_148 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_109SampleInfo;
struct InstrumentPCM instrument_pcm_data_149 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_109SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_150 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_110SampleInfo;
struct InstrumentPCM instrument_pcm_data_151 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_110SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_111SampleInfo;
struct InstrumentPCM instrument_pcm_data_152 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_111SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_112SampleInfo;
struct InstrumentPCM instrument_pcm_data_153 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_112SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_060SampleInfo;
struct InstrumentPCM instrument_pcm_data_154 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_060SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_155 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_156 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_157 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a94448, // POINTER
};

extern const struct SampleInfo sfx_043SampleInfo;
struct InstrumentPCM instrument_pcm_data_158 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_043SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_042SampleInfo;
struct InstrumentPCM instrument_pcm_data_159 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_042SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_160 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_058SampleInfo;
struct InstrumentPCM instrument_pcm_data_161 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_058SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_027SampleInfo;
struct InstrumentPCM instrument_pcm_data_162 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_027SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_163 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_115SampleInfo;
struct InstrumentPCM instrument_pcm_data_164 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_115SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_116SampleInfo;
struct InstrumentPCM instrument_pcm_data_165 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_116SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_166 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_117SampleInfo;
struct InstrumentPCM instrument_pcm_data_167 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_117SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_118SampleInfo;
struct InstrumentPCM instrument_pcm_data_168 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_118SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_119SampleInfo;
struct InstrumentPCM instrument_pcm_data_169 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_119SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_120SampleInfo;
struct InstrumentPCM instrument_pcm_data_170 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_120SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_121SampleInfo;
struct InstrumentPCM instrument_pcm_data_171 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_121SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentPSG instrument_psg_data_172 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_173 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_174 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_121SampleInfo;
struct InstrumentPCM instrument_pcm_data_175 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_121SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_123SampleInfo;
struct InstrumentPCM instrument_pcm_data_176 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_123SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_124SampleInfo;
struct InstrumentPCM instrument_pcm_data_177 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_124SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_125SampleInfo;
struct InstrumentPCM instrument_pcm_data_178 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_125SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_179 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_180 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_181 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_126SampleInfo;
struct InstrumentPCM instrument_pcm_data_182 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_126SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_127SampleInfo;
struct InstrumentPCM instrument_pcm_data_183 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_127SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_128SampleInfo;
struct InstrumentPCM instrument_pcm_data_184 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_128SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_129SampleInfo;
struct InstrumentPCM instrument_pcm_data_185 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_129SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_130SampleInfo;
struct InstrumentPCM instrument_pcm_data_186 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_130SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_131SampleInfo;
struct InstrumentPCM instrument_pcm_data_187 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_131SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_132SampleInfo;
struct InstrumentPCM instrument_pcm_data_188 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_132SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_133SampleInfo;
struct InstrumentPCM instrument_pcm_data_189 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_133SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_134SampleInfo;
struct InstrumentPCM instrument_pcm_data_190 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_134SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_135SampleInfo;
struct InstrumentPCM instrument_pcm_data_191 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_135SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_136SampleInfo;
struct InstrumentPCM instrument_pcm_data_192 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_136SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_137SampleInfo;
struct InstrumentPCM instrument_pcm_data_193 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_137SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_138SampleInfo;
struct InstrumentPCM instrument_pcm_data_194 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_138SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_139SampleInfo;
struct InstrumentPCM instrument_pcm_data_195 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_139SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_140SampleInfo;
struct InstrumentPCM instrument_pcm_data_196 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_140SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_197 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_141SampleInfo;
struct InstrumentPCM instrument_pcm_data_198 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_141SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_142SampleInfo;
struct InstrumentPCM instrument_pcm_data_199 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_142SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_143SampleInfo;
struct InstrumentPCM instrument_pcm_data_200 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_143SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_144SampleInfo;
struct InstrumentPCM instrument_pcm_data_201 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_144SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_145SampleInfo;
struct InstrumentPCM instrument_pcm_data_202 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_145SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_146SampleInfo;
struct InstrumentPCM instrument_pcm_data_203 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_146SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_147SampleInfo;
struct InstrumentPCM instrument_pcm_data_204 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_147SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_205 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_148SampleInfo;
struct InstrumentPCM instrument_pcm_data_206 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_148SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_149SampleInfo;
struct InstrumentPCM instrument_pcm_data_207 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_149SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_150SampleInfo;
struct InstrumentPCM instrument_pcm_data_208 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_150SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_151SampleInfo;
struct InstrumentPCM instrument_pcm_data_209 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_151SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_152SampleInfo;
struct InstrumentPCM instrument_pcm_data_210 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_152SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_153SampleInfo;
struct InstrumentPCM instrument_pcm_data_211 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_153SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_154SampleInfo;
struct InstrumentPCM instrument_pcm_data_212 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_154SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_155SampleInfo;
struct InstrumentPCM instrument_pcm_data_213 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_155SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_156SampleInfo;
struct InstrumentPCM instrument_pcm_data_214 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_156SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_157SampleInfo;
struct InstrumentPCM instrument_pcm_data_215 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_157SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_158SampleInfo;
struct InstrumentPCM instrument_pcm_data_216 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_158SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_159SampleInfo;
struct InstrumentPCM instrument_pcm_data_217 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_159SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_160SampleInfo;
struct InstrumentPCM instrument_pcm_data_218 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_160SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_161SampleInfo;
struct InstrumentPCM instrument_pcm_data_219 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_161SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_162SampleInfo;
struct InstrumentPCM instrument_pcm_data_220 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_162SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_163SampleInfo;
struct InstrumentPCM instrument_pcm_data_221 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_163SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_164SampleInfo;
struct InstrumentPCM instrument_pcm_data_222 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_164SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_165SampleInfo;
struct InstrumentPCM instrument_pcm_data_223 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_165SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_166SampleInfo;
struct InstrumentPCM instrument_pcm_data_224 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_166SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_167SampleInfo;
struct InstrumentPCM instrument_pcm_data_225 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_167SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_168SampleInfo;
struct InstrumentPCM instrument_pcm_data_226 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_168SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_169SampleInfo;
struct InstrumentPCM instrument_pcm_data_227 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_169SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_170SampleInfo;
struct InstrumentPCM instrument_pcm_data_228 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_170SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_171SampleInfo;
struct InstrumentPCM instrument_pcm_data_229 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_171SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_172SampleInfo;
struct InstrumentPCM instrument_pcm_data_230 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_172SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_173SampleInfo;
struct InstrumentPCM instrument_pcm_data_231 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_173SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_174SampleInfo;
struct InstrumentPCM instrument_pcm_data_232 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_174SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_175SampleInfo;
struct InstrumentPCM instrument_pcm_data_233 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_175SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_176SampleInfo;
struct InstrumentPCM instrument_pcm_data_234 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_176SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_177SampleInfo;
struct InstrumentPCM instrument_pcm_data_235 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_177SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_178SampleInfo;
struct InstrumentPCM instrument_pcm_data_236 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_178SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_179SampleInfo;
struct InstrumentPCM instrument_pcm_data_237 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_179SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_180SampleInfo;
struct InstrumentPCM instrument_pcm_data_238 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_180SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_181SampleInfo;
struct InstrumentPCM instrument_pcm_data_239 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_181SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_182SampleInfo;
struct InstrumentPCM instrument_pcm_data_240 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_182SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_183SampleInfo;
struct InstrumentPCM instrument_pcm_data_241 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_183SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_242 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_184SampleInfo;
struct InstrumentPCM instrument_pcm_data_243 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_184SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_185SampleInfo;
struct InstrumentPCM instrument_pcm_data_244 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_185SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_186SampleInfo;
struct InstrumentPCM instrument_pcm_data_245 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_186SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_187SampleInfo;
struct InstrumentPCM instrument_pcm_data_246 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_187SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_188SampleInfo;
struct InstrumentPCM instrument_pcm_data_247 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_188SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_189SampleInfo;
struct InstrumentPCM instrument_pcm_data_248 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_189SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_190SampleInfo;
struct InstrumentPCM instrument_pcm_data_249 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_190SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_191SampleInfo;
struct InstrumentPCM instrument_pcm_data_250 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_191SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_192SampleInfo;
struct InstrumentPCM instrument_pcm_data_251 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_192SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_193SampleInfo;
struct InstrumentPCM instrument_pcm_data_252 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_193SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_003SampleInfo;
struct InstrumentPCM instrument_pcm_data_253 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_003SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_009SampleInfo;
struct InstrumentPCM instrument_pcm_data_254 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_009SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_041SampleInfo;
struct InstrumentPCM instrument_pcm_data_255 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_041SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_058SampleInfo;
struct InstrumentPCM instrument_pcm_data_256 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_058SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_194SampleInfo;
struct InstrumentPCM instrument_pcm_data_257 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_194SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_108SampleInfo;
struct InstrumentPCM instrument_pcm_data_258 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_108SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_195SampleInfo;
struct InstrumentPCM instrument_pcm_data_259 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_195SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_196SampleInfo;
struct InstrumentPCM instrument_pcm_data_260 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_196SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_191SampleInfo;
struct InstrumentPCM instrument_pcm_data_261 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_191SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_197SampleInfo;
struct InstrumentPCM instrument_pcm_data_262 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_197SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_198SampleInfo;
struct InstrumentPCM instrument_pcm_data_263 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_198SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_199SampleInfo;
struct InstrumentPCM instrument_pcm_data_264 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_199SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_200SampleInfo;
struct InstrumentPCM instrument_pcm_data_265 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_200SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_201SampleInfo;
struct InstrumentPCM instrument_pcm_data_266 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_201SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_202SampleInfo;
struct InstrumentPCM instrument_pcm_data_267 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_202SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_268 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_013SampleInfo;
struct InstrumentPCM instrument_pcm_data_269 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_013SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_203SampleInfo;
struct InstrumentPCM instrument_pcm_data_270 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_203SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_271 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_204SampleInfo;
struct InstrumentPCM instrument_pcm_data_272 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_204SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_273 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_274 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_205SampleInfo;
struct InstrumentPCM instrument_pcm_data_275 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_205SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_042SampleInfo;
struct InstrumentPCM instrument_pcm_data_276 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_042SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_206SampleInfo;
struct InstrumentPCM instrument_pcm_data_277 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_206SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_207SampleInfo;
struct InstrumentPCM instrument_pcm_data_278 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_207SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_279 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_208SampleInfo;
struct InstrumentPCM instrument_pcm_data_280 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_208SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_112SampleInfo;
struct InstrumentPCM instrument_pcm_data_281 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_112SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_282 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_283 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_209SampleInfo;
struct InstrumentPCM instrument_pcm_data_284 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_209SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_210SampleInfo;
struct InstrumentPCM instrument_pcm_data_285 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_210SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_211SampleInfo;
struct InstrumentPCM instrument_pcm_data_286 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_211SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_287 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a998e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_288 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a996e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_289 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_212SampleInfo;
struct InstrumentPCM instrument_pcm_data_290 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_212SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_117SampleInfo;
struct InstrumentPCM instrument_pcm_data_291 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_117SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_292 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_293 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_023SampleInfo;
struct InstrumentPCM instrument_pcm_data_294 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_023SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_213SampleInfo;
struct InstrumentPCM instrument_pcm_data_295 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_213SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_214SampleInfo;
struct InstrumentPCM instrument_pcm_data_296 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_214SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_297 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_215SampleInfo;
struct InstrumentPCM instrument_pcm_data_298 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_215SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_216SampleInfo;
struct InstrumentPCM instrument_pcm_data_299 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_216SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_217SampleInfo;
struct InstrumentPCM instrument_pcm_data_300 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_217SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_107SampleInfo;
struct InstrumentPCM instrument_pcm_data_301 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_107SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_215SampleInfo;
struct InstrumentPCM instrument_pcm_data_302 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_215SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_218SampleInfo;
struct InstrumentPCM instrument_pcm_data_303 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_218SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_219SampleInfo;
struct InstrumentPCM instrument_pcm_data_304 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_219SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern const struct SampleInfo sfx_220SampleInfo;
struct InstrumentPCM instrument_pcm_data_305 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_220SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_306 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_221SampleInfo;
struct InstrumentPCM instrument_pcm_data_307 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_221SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_222SampleInfo;
struct InstrumentPCM instrument_pcm_data_308 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_222SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_093SampleInfo;
struct InstrumentPCM instrument_pcm_data_309 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_093SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_094SampleInfo;
struct InstrumentPCM instrument_pcm_data_310 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_094SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_095SampleInfo;
struct InstrumentPCM instrument_pcm_data_311 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_095SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_096SampleInfo;
struct InstrumentPCM instrument_pcm_data_312 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_096SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_097SampleInfo;
struct InstrumentPCM instrument_pcm_data_313 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_097SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_098SampleInfo;
struct InstrumentPCM instrument_pcm_data_314 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_098SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_099SampleInfo;
struct InstrumentPCM instrument_pcm_data_315 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_099SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_100SampleInfo;
struct InstrumentPCM instrument_pcm_data_316 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_100SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_101SampleInfo;
struct InstrumentPCM instrument_pcm_data_317 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_101SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_102SampleInfo;
struct InstrumentPCM instrument_pcm_data_318 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_102SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_103SampleInfo;
struct InstrumentPCM instrument_pcm_data_319 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_103SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_104SampleInfo;
struct InstrumentPCM instrument_pcm_data_320 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_104SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_105SampleInfo;
struct InstrumentPCM instrument_pcm_data_321 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_105SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_106SampleInfo;
struct InstrumentPCM instrument_pcm_data_322 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_106SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_223SampleInfo;
struct InstrumentPCM instrument_pcm_data_323 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_223SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_224SampleInfo;
struct InstrumentPCM instrument_pcm_data_324 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_224SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_225SampleInfo;
struct InstrumentPCM instrument_pcm_data_325 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_225SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_326 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_327 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_328 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_200SampleInfo;
struct InstrumentPCM instrument_pcm_data_329 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_200SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_227SampleInfo;
struct InstrumentPCM instrument_pcm_data_330 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_227SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_228SampleInfo;
struct InstrumentPCM instrument_pcm_data_331 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_228SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_110SampleInfo;
struct InstrumentPCM instrument_pcm_data_332 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_110SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_111SampleInfo;
struct InstrumentPCM instrument_pcm_data_333 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_111SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_334 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_230SampleInfo;
struct InstrumentPCM instrument_pcm_data_335 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_230SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_336 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_207SampleInfo;
struct InstrumentPCM instrument_pcm_data_337 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_207SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_206SampleInfo;
struct InstrumentPCM instrument_pcm_data_338 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_206SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_339 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a95248, // POINTER
};

extern const struct SampleInfo sfx_211SampleInfo;
struct InstrumentPCM instrument_pcm_data_340 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_211SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_231SampleInfo;
struct InstrumentPCM instrument_pcm_data_341 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_231SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_232SampleInfo;
struct InstrumentPCM instrument_pcm_data_342 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_232SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_233SampleInfo;
struct InstrumentPCM instrument_pcm_data_343 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_233SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_234SampleInfo;
struct InstrumentPCM instrument_pcm_data_344 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_234SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_235SampleInfo;
struct InstrumentPCM instrument_pcm_data_345 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_235SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_346 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_347 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

struct InstrumentPSG instrument_psg_data_348 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_349 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_350 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_351 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_352 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_353 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_354 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_355 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_356 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_357 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x00000000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x00054aaa,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_358 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x004cf83e,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x00091249,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_359 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x48,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_360 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x50,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_361 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x58,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_362 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x88,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_363 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x90,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_364 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x98,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_365 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xc8,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_366 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xd0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_367 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x10,
    /* unk22        */ 0x5,
};

struct InstrumentPSG instrument_psg_data_368 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x50,
    /* unk22        */ 0x5,
};

struct InstrumentPSG instrument_psg_data_369 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x6c,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_370 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x70,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_371 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x74,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_372 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x78,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_373 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x7c,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_374 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xec,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_375 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xf0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_376 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xf4,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_377 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xf8,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_378 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xfc,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_379 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_380 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_381 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_382 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_383 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_384 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_385 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_386 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_387 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_388 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x00000000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x00054aaa,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00091249,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_389 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86870, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_390 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86880, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_391 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86890, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_392 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868a0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_393 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868b0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_394 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868c0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_395 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868d0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_396 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86870, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_397 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_398 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_399 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00077878,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_400 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x8,
};

struct InstrumentPSG instrument_psg_data_401 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x8,
};

struct InstrumentPSG instrument_psg_data_402 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00077878,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x8,
};

struct InstrumentPSG instrument_psg_data_403 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x50,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_404 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x58,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_405 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x90,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_406 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x98,
    /* unk22        */ 0x2,
};

struct InstrumentPSG instrument_psg_data_407 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x10,
    /* unk22        */ 0x3,
};

struct InstrumentPSG instrument_psg_data_408 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x50,
    /* unk22        */ 0x3,
};

struct InstrumentPSG instrument_psg_data_409 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x50,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_410 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x58,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_411 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x90,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_412 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x98,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_413 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x10,
    /* unk22        */ 0x1,
};

struct InstrumentPSG instrument_psg_data_414 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x50,
    /* unk22        */ 0x1,
};

struct InstrumentPSG instrument_psg_data_415 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0073745d,
    /* unkC         */ 0x00400000,
    /* unk10        */ 0x001fc000,
    /* unk14        */ 0x0004b425,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x0004611a,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_416 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0073745d,
    /* unkC         */ 0x00400000,
    /* unk10        */ 0x001fc000,
    /* unk14        */ 0x0004b425,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x0004611a,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_236SampleInfo;
struct InstrumentPCM instrument_pcm_data_417 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_236SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_237SampleInfo;
struct InstrumentPCM instrument_pcm_data_418 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_237SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_202SampleInfo;
struct InstrumentPCM instrument_pcm_data_419 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_202SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_003SampleInfo;
struct InstrumentPCM instrument_pcm_data_420 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_003SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_204SampleInfo;
struct InstrumentPCM instrument_pcm_data_421 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_204SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_196SampleInfo;
struct InstrumentPCM instrument_pcm_data_422 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_196SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_238SampleInfo;
struct InstrumentPCM instrument_pcm_data_423 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_238SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_239SampleInfo;
struct InstrumentPCM instrument_pcm_data_424 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_239SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_240SampleInfo;
struct InstrumentPCM instrument_pcm_data_425 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_240SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_241SampleInfo;
struct InstrumentPCM instrument_pcm_data_426 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_241SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_242SampleInfo;
struct InstrumentPCM instrument_pcm_data_427 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_242SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_243SampleInfo;
struct InstrumentPCM instrument_pcm_data_428 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_243SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_244SampleInfo;
struct InstrumentPCM instrument_pcm_data_429 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_244SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_245SampleInfo;
struct InstrumentPCM instrument_pcm_data_430 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_245SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_246SampleInfo;
struct InstrumentPCM instrument_pcm_data_431 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_246SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_247SampleInfo;
struct InstrumentPCM instrument_pcm_data_432 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_247SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_248SampleInfo;
struct InstrumentPCM instrument_pcm_data_433 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_248SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_249SampleInfo;
struct InstrumentPCM instrument_pcm_data_434 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_249SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_250SampleInfo;
struct InstrumentPCM instrument_pcm_data_435 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_250SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_251SampleInfo;
struct InstrumentPCM instrument_pcm_data_436 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_251SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_252SampleInfo;
struct InstrumentPCM instrument_pcm_data_437 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_252SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_253SampleInfo;
struct InstrumentPCM instrument_pcm_data_438 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_253SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_254SampleInfo;
struct InstrumentPCM instrument_pcm_data_439 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_254SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_255SampleInfo;
struct InstrumentPCM instrument_pcm_data_440 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_255SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_256SampleInfo;
struct InstrumentPCM instrument_pcm_data_441 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_256SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_257SampleInfo;
struct InstrumentPCM instrument_pcm_data_442 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_257SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_258SampleInfo;
struct InstrumentPCM instrument_pcm_data_443 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_258SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_259SampleInfo;
struct InstrumentPCM instrument_pcm_data_444 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_259SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_260SampleInfo;
struct InstrumentPCM instrument_pcm_data_445 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_260SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_446 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_447 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_261SampleInfo;
struct InstrumentPCM instrument_pcm_data_448 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_261SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_449 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_263SampleInfo;
struct InstrumentPCM instrument_pcm_data_450 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_263SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_451 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a95248, // POINTER
};

extern const struct SampleInfo sfx_264SampleInfo;
struct InstrumentPCM instrument_pcm_data_452 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_264SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_265SampleInfo;
struct InstrumentPCM instrument_pcm_data_453 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_265SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_266SampleInfo;
struct InstrumentPCM instrument_pcm_data_454 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_266SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_267SampleInfo;
struct InstrumentPCM instrument_pcm_data_455 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_267SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_268SampleInfo;
struct InstrumentPCM instrument_pcm_data_456 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_268SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_269SampleInfo;
struct InstrumentPCM instrument_pcm_data_457 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_269SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_270SampleInfo;
struct InstrumentPCM instrument_pcm_data_458 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_270SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_271SampleInfo;
struct InstrumentPCM instrument_pcm_data_459 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_271SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_272SampleInfo;
struct InstrumentPCM instrument_pcm_data_460 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_272SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_273SampleInfo;
struct InstrumentPCM instrument_pcm_data_461 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_273SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_274SampleInfo;
struct InstrumentPCM instrument_pcm_data_462 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_274SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_275SampleInfo;
struct InstrumentPCM instrument_pcm_data_463 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_275SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_464 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_221SampleInfo;
struct InstrumentPCM instrument_pcm_data_465 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_221SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_466 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_467 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99d3c, // POINTER
};

extern const struct SampleInfo sfx_276SampleInfo;
struct InstrumentPCM instrument_pcm_data_468 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_276SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern const struct SampleInfo sfx_277SampleInfo;
struct InstrumentPCM instrument_pcm_data_469 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_277SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_200SampleInfo;
struct InstrumentPCM instrument_pcm_data_470 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_200SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_194SampleInfo;
struct InstrumentPCM instrument_pcm_data_471 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_194SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_195SampleInfo;
struct InstrumentPCM instrument_pcm_data_472 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_195SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_278SampleInfo;
struct InstrumentPCM instrument_pcm_data_473 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_278SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_197SampleInfo;
struct InstrumentPCM instrument_pcm_data_474 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_197SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_279SampleInfo;
struct InstrumentPCM instrument_pcm_data_475 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_279SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_280SampleInfo;
struct InstrumentPCM instrument_pcm_data_476 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_280SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_281SampleInfo;
struct InstrumentPCM instrument_pcm_data_477 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_281SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_198SampleInfo;
struct InstrumentPCM instrument_pcm_data_478 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_198SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_282SampleInfo;
struct InstrumentPCM instrument_pcm_data_479 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_282SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_283SampleInfo;
struct InstrumentPCM instrument_pcm_data_480 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_283SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_284SampleInfo;
struct InstrumentPCM instrument_pcm_data_481 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_284SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_285SampleInfo;
struct InstrumentPCM instrument_pcm_data_482 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_285SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_117SampleInfo;
struct InstrumentPCM instrument_pcm_data_483 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_117SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_484 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_485 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_118SampleInfo;
struct InstrumentPCM instrument_pcm_data_486 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_118SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_286SampleInfo;
struct InstrumentPCM instrument_pcm_data_487 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_286SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_287SampleInfo;
struct InstrumentPCM instrument_pcm_data_488 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_287SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_003SampleInfo;
struct InstrumentPCM instrument_pcm_data_489 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_003SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_490 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_288SampleInfo;
struct InstrumentPCM instrument_pcm_data_491 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_288SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_289SampleInfo;
struct InstrumentPCM instrument_pcm_data_492 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_289SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_200SampleInfo;
struct InstrumentPCM instrument_pcm_data_493 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_200SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_494 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_290SampleInfo;
struct InstrumentPCM instrument_pcm_data_495 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_290SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_291SampleInfo;
struct InstrumentPCM instrument_pcm_data_496 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_291SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_006SampleInfo;
struct InstrumentPCM instrument_pcm_data_497 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_006SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_292SampleInfo;
struct InstrumentPCM instrument_pcm_data_498 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_292SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_293SampleInfo;
struct InstrumentPCM instrument_pcm_data_499 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_293SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_294SampleInfo;
struct InstrumentPCM instrument_pcm_data_500 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_294SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_232SampleInfo;
struct InstrumentPCM instrument_pcm_data_501 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_232SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_206SampleInfo;
struct InstrumentPCM instrument_pcm_data_502 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_206SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_295SampleInfo;
struct InstrumentPCM instrument_pcm_data_503 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_295SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_504 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a998e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_505 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_296SampleInfo;
struct InstrumentPCM instrument_pcm_data_506 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_296SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_297SampleInfo;
struct InstrumentPCM instrument_pcm_data_507 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_297SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_298SampleInfo;
struct InstrumentPCM instrument_pcm_data_508 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_298SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_299SampleInfo;
struct InstrumentPCM instrument_pcm_data_509 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_299SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_204SampleInfo;
struct InstrumentPCM instrument_pcm_data_510 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_204SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_230SampleInfo;
struct InstrumentPCM instrument_pcm_data_511 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_230SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_512 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_300SampleInfo;
struct InstrumentPCM instrument_pcm_data_513 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_300SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_301SampleInfo;
struct InstrumentPCM instrument_pcm_data_514 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_301SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_302SampleInfo;
struct InstrumentPCM instrument_pcm_data_515 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_302SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_303SampleInfo;
struct InstrumentPCM instrument_pcm_data_516 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_303SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_304SampleInfo;
struct InstrumentPCM instrument_pcm_data_517 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_304SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_234SampleInfo;
struct InstrumentPCM instrument_pcm_data_518 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_234SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_519 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_520 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_194SampleInfo;
struct InstrumentPCM instrument_pcm_data_521 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_194SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_110SampleInfo;
struct InstrumentPCM instrument_pcm_data_522 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_110SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_111SampleInfo;
struct InstrumentPCM instrument_pcm_data_523 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_111SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_524 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a95248, // POINTER
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_525 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_305SampleInfo;
struct InstrumentPCM instrument_pcm_data_526 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_305SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_306SampleInfo;
struct InstrumentPCM instrument_pcm_data_527 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_306SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_307SampleInfo;
struct InstrumentPCM instrument_pcm_data_528 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_307SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_529 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_308SampleInfo;
struct InstrumentPCM instrument_pcm_data_530 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_308SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_238SampleInfo;
struct InstrumentPCM instrument_pcm_data_531 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_238SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_309SampleInfo;
struct InstrumentPCM instrument_pcm_data_532 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_309SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_533 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_310SampleInfo;
struct InstrumentPCM instrument_pcm_data_534 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_310SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_203SampleInfo;
struct InstrumentPCM instrument_pcm_data_535 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_203SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_311SampleInfo;
struct InstrumentPCM instrument_pcm_data_536 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_311SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_209SampleInfo;
struct InstrumentPCM instrument_pcm_data_537 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_209SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_210SampleInfo;
struct InstrumentPCM instrument_pcm_data_538 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_210SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_539 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_211SampleInfo;
struct InstrumentPCM instrument_pcm_data_540 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_211SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_541 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_232SampleInfo;
struct InstrumentPCM instrument_pcm_data_542 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_232SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_312SampleInfo;
struct InstrumentPCM instrument_pcm_data_543 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_312SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_313SampleInfo;
struct InstrumentPCM instrument_pcm_data_544 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_313SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_277SampleInfo;
struct InstrumentPCM instrument_pcm_data_545 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_277SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_314SampleInfo;
struct InstrumentPCM instrument_pcm_data_546 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_314SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_205SampleInfo;
struct InstrumentPCM instrument_pcm_data_547 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_205SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_548 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_109SampleInfo;
struct InstrumentPCM instrument_pcm_data_549 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_109SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_550 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_240SampleInfo;
struct InstrumentPCM instrument_pcm_data_551 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_240SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_315SampleInfo;
struct InstrumentPCM instrument_pcm_data_552 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_315SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_316SampleInfo;
struct InstrumentPCM instrument_pcm_data_553 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_316SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_317SampleInfo;
struct InstrumentPCM instrument_pcm_data_554 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_317SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_239SampleInfo;
struct InstrumentPCM instrument_pcm_data_555 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_239SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_318SampleInfo;
struct InstrumentPCM instrument_pcm_data_556 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_318SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_005SampleInfo;
struct InstrumentPCM instrument_pcm_data_557 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_005SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_319SampleInfo;
struct InstrumentPCM instrument_pcm_data_558 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_319SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_320SampleInfo;
struct InstrumentPCM instrument_pcm_data_559 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_320SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_560 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_561 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_562 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_322SampleInfo;
struct InstrumentPCM instrument_pcm_data_563 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_322SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_196SampleInfo;
struct InstrumentPCM instrument_pcm_data_564 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_196SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_314SampleInfo;
struct InstrumentPCM instrument_pcm_data_565 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_314SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_009SampleInfo;
struct InstrumentPCM instrument_pcm_data_566 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_009SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_567 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_568 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_569 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_570 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_323SampleInfo;
struct InstrumentPCM instrument_pcm_data_571 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_323SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_324SampleInfo;
struct InstrumentPCM instrument_pcm_data_572 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_324SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_013SampleInfo;
struct InstrumentPCM instrument_pcm_data_573 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_013SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_325SampleInfo;
struct InstrumentPCM instrument_pcm_data_574 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_325SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_326SampleInfo;
struct InstrumentPCM instrument_pcm_data_575 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_326SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_327SampleInfo;
struct InstrumentPCM instrument_pcm_data_576 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_327SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_328SampleInfo;
struct InstrumentPCM instrument_pcm_data_577 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_328SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_329SampleInfo;
struct InstrumentPCM instrument_pcm_data_578 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_329SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_579 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_330SampleInfo;
struct InstrumentPCM instrument_pcm_data_580 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_330SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_331SampleInfo;
struct InstrumentPCM instrument_pcm_data_581 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_331SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_332SampleInfo;
struct InstrumentPCM instrument_pcm_data_582 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_332SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_333SampleInfo;
struct InstrumentPCM instrument_pcm_data_583 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_333SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_584 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_334SampleInfo;
struct InstrumentPCM instrument_pcm_data_585 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_334SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_335SampleInfo;
struct InstrumentPCM instrument_pcm_data_586 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_335SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_336SampleInfo;
struct InstrumentPCM instrument_pcm_data_587 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_336SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_337SampleInfo;
struct InstrumentPCM instrument_pcm_data_588 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_337SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_330SampleInfo;
struct InstrumentPCM instrument_pcm_data_589 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_330SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_590 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_041SampleInfo;
struct InstrumentPCM instrument_pcm_data_591 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_041SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentPSG instrument_psg_data_592 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_593 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_315SampleInfo;
struct InstrumentPCM instrument_pcm_data_594 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_315SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_595 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_596 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a8660c, // POINTER
    /* Sub-bank */ (void *)0x08a96c10, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_597 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_338SampleInfo;
struct InstrumentPCM instrument_pcm_data_598 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_338SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_202SampleInfo;
struct InstrumentPCM instrument_pcm_data_599 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_202SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_339SampleInfo;
struct InstrumentPCM instrument_pcm_data_600 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_339SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_340SampleInfo;
struct InstrumentPCM instrument_pcm_data_601 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_340SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_341SampleInfo;
struct InstrumentPCM instrument_pcm_data_602 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_341SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_342SampleInfo;
struct InstrumentPCM instrument_pcm_data_603 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_342SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_604 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_009SampleInfo;
struct InstrumentPCM instrument_pcm_data_605 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_009SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_308SampleInfo;
struct InstrumentPCM instrument_pcm_data_606 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_308SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_238SampleInfo;
struct InstrumentPCM instrument_pcm_data_607 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_238SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_311SampleInfo;
struct InstrumentPCM instrument_pcm_data_608 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_311SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_609 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_124SampleInfo;
struct InstrumentPCM instrument_pcm_data_610 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_124SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_313SampleInfo;
struct InstrumentPCM instrument_pcm_data_611 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_313SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_343SampleInfo;
struct InstrumentPCM instrument_pcm_data_612 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_343SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_289SampleInfo;
struct InstrumentPCM instrument_pcm_data_613 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_289SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_200SampleInfo;
struct InstrumentPCM instrument_pcm_data_614 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_200SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_110SampleInfo;
struct InstrumentPCM instrument_pcm_data_615 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_110SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_111SampleInfo;
struct InstrumentPCM instrument_pcm_data_616 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_111SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_344SampleInfo;
struct InstrumentPCM instrument_pcm_data_617 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_344SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0000f83e,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0000c000,
};

extern const struct SampleInfo sfx_345SampleInfo;
struct InstrumentPCM instrument_pcm_data_618 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_345SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_346SampleInfo;
struct InstrumentPCM instrument_pcm_data_619 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_346SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_033SampleInfo;
struct InstrumentPCM instrument_pcm_data_620 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_033SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_621 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_622 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_347SampleInfo;
struct InstrumentPCM instrument_pcm_data_623 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_347SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_201SampleInfo;
struct InstrumentPCM instrument_pcm_data_624 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_201SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_348SampleInfo;
struct InstrumentPCM instrument_pcm_data_625 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_348SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_199SampleInfo;
struct InstrumentPCM instrument_pcm_data_626 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_199SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_349SampleInfo;
struct InstrumentPCM instrument_pcm_data_627 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_349SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_350SampleInfo;
struct InstrumentPCM instrument_pcm_data_628 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_350SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_351SampleInfo;
struct InstrumentPCM instrument_pcm_data_629 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_351SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_352SampleInfo;
struct InstrumentPCM instrument_pcm_data_630 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_352SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_353SampleInfo;
struct InstrumentPCM instrument_pcm_data_631 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_353SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_632 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_354SampleInfo;
struct InstrumentPCM instrument_pcm_data_633 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_354SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_634 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_635 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a8666c, // POINTER
    /* Sub-bank */ (void *)0x08a97210, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_636 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_355SampleInfo;
struct InstrumentPCM instrument_pcm_data_637 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_355SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_356SampleInfo;
struct InstrumentPCM instrument_pcm_data_638 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_356SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_300SampleInfo;
struct InstrumentPCM instrument_pcm_data_639 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_300SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_354SampleInfo;
struct InstrumentPCM instrument_pcm_data_640 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_354SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001faea0,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_641 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_642 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_206SampleInfo;
struct InstrumentPCM instrument_pcm_data_643 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_206SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_290SampleInfo;
struct InstrumentPCM instrument_pcm_data_644 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_290SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_207SampleInfo;
struct InstrumentPCM instrument_pcm_data_645 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_207SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_291SampleInfo;
struct InstrumentPCM instrument_pcm_data_646 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_291SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_647 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_648 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_649 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_357SampleInfo;
struct InstrumentPCM instrument_pcm_data_650 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_357SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_358SampleInfo;
struct InstrumentPCM instrument_pcm_data_651 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_358SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_359SampleInfo;
struct InstrumentPCM instrument_pcm_data_652 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_359SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_060SampleInfo;
struct InstrumentPCM instrument_pcm_data_653 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_060SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_061SampleInfo;
struct InstrumentPCM instrument_pcm_data_654 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_061SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_360SampleInfo;
struct InstrumentPCM instrument_pcm_data_655 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_360SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_361SampleInfo;
struct InstrumentPCM instrument_pcm_data_656 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_361SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_196SampleInfo;
struct InstrumentPCM instrument_pcm_data_657 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_196SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_362SampleInfo;
struct InstrumentPCM instrument_pcm_data_658 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_362SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_659 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_660 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a866cc, // POINTER
    /* Sub-bank */ (void *)0x08a97610, // POINTER
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_661 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a8672c, // POINTER
    /* Sub-bank */ (void *)0x08a97610, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_662 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_006SampleInfo;
struct InstrumentPCM instrument_pcm_data_663 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_006SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_664 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_363SampleInfo;
struct InstrumentPCM instrument_pcm_data_665 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_363SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_364SampleInfo;
struct InstrumentPCM instrument_pcm_data_666 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_364SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_667 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_668 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_260SampleInfo;
struct InstrumentPCM instrument_pcm_data_669 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_260SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_670 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_365SampleInfo;
struct InstrumentPCM instrument_pcm_data_671 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_365SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_366SampleInfo;
struct InstrumentPCM instrument_pcm_data_672 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_366SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_367SampleInfo;
struct InstrumentPCM instrument_pcm_data_673 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_367SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_368SampleInfo;
struct InstrumentPCM instrument_pcm_data_674 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_368SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_369SampleInfo;
struct InstrumentPCM instrument_pcm_data_675 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_369SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_370SampleInfo;
struct InstrumentPCM instrument_pcm_data_676 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_370SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_677 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_678 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_371SampleInfo;
struct InstrumentPCM instrument_pcm_data_679 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_371SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_680 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_372SampleInfo;
struct InstrumentPCM instrument_pcm_data_681 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_372SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_682 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_683 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_018SampleInfo;
struct InstrumentPCM instrument_pcm_data_684 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_018SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_685 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_686 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_373SampleInfo;
struct InstrumentPCM instrument_pcm_data_687 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_373SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_374SampleInfo;
struct InstrumentPCM instrument_pcm_data_688 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_374SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_375SampleInfo;
struct InstrumentPCM instrument_pcm_data_689 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_375SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_376SampleInfo;
struct InstrumentPCM instrument_pcm_data_690 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_376SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_260SampleInfo;
struct InstrumentPCM instrument_pcm_data_691 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_260SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_377SampleInfo;
struct InstrumentPCM instrument_pcm_data_692 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_377SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_378SampleInfo;
struct InstrumentPCM instrument_pcm_data_693 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_378SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_379SampleInfo;
struct InstrumentPCM instrument_pcm_data_694 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_379SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0003f07c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_261SampleInfo;
struct InstrumentPCM instrument_pcm_data_695 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_261SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_261SampleInfo;
struct InstrumentPCM instrument_pcm_data_696 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_261SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_697 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_698 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_380SampleInfo;
struct InstrumentPCM instrument_pcm_data_699 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_380SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_381SampleInfo;
struct InstrumentPCM instrument_pcm_data_700 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_381SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_293SampleInfo;
struct InstrumentPCM instrument_pcm_data_701 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_293SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_289SampleInfo;
struct InstrumentPCM instrument_pcm_data_702 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_289SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_346SampleInfo;
struct InstrumentPCM instrument_pcm_data_703 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_346SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_375SampleInfo;
struct InstrumentPCM instrument_pcm_data_704 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_375SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_705 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_706 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0x30,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a8678c, // POINTER
    /* Sub-bank */ (void *)0x08a97c10, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_707 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_708 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_382SampleInfo;
struct InstrumentPCM instrument_pcm_data_709 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_382SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_710 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_711 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_383SampleInfo;
struct InstrumentPCM instrument_pcm_data_712 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_383SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_384SampleInfo;
struct InstrumentPCM instrument_pcm_data_713 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_384SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_309SampleInfo;
struct InstrumentPCM instrument_pcm_data_714 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_309SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_715 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_385SampleInfo;
struct InstrumentPCM instrument_pcm_data_716 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_385SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_348SampleInfo;
struct InstrumentPCM instrument_pcm_data_717 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_348SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_718 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_719 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_386SampleInfo;
struct InstrumentPCM instrument_pcm_data_720 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_386SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_313SampleInfo;
struct InstrumentPCM instrument_pcm_data_721 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_313SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_722 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_293SampleInfo;
struct InstrumentPCM instrument_pcm_data_723 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_293SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_387SampleInfo;
struct InstrumentPCM instrument_pcm_data_724 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_387SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_342SampleInfo;
struct InstrumentPCM instrument_pcm_data_725 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_342SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_043SampleInfo;
struct InstrumentPCM instrument_pcm_data_726 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_043SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_727 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_728 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a996e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_729 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_388SampleInfo;
struct InstrumentPCM instrument_pcm_data_730 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_388SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_731 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_389SampleInfo;
struct InstrumentPCM instrument_pcm_data_732 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_389SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_733 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_348SampleInfo;
struct InstrumentPCM instrument_pcm_data_734 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_348SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_301SampleInfo;
struct InstrumentPCM instrument_pcm_data_735 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_301SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_302SampleInfo;
struct InstrumentPCM instrument_pcm_data_736 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_302SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_390SampleInfo;
struct InstrumentPCM instrument_pcm_data_737 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_390SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_043SampleInfo;
struct InstrumentPCM instrument_pcm_data_738 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_043SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_355SampleInfo;
struct InstrumentPCM instrument_pcm_data_739 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_355SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_356SampleInfo;
struct InstrumentPCM instrument_pcm_data_740 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_356SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_300SampleInfo;
struct InstrumentPCM instrument_pcm_data_741 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_300SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_354SampleInfo;
struct InstrumentPCM instrument_pcm_data_742 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_354SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001faea0,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_743 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_744 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_206SampleInfo;
struct InstrumentPCM instrument_pcm_data_745 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_206SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_290SampleInfo;
struct InstrumentPCM instrument_pcm_data_746 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_290SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_207SampleInfo;
struct InstrumentPCM instrument_pcm_data_747 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_207SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_291SampleInfo;
struct InstrumentPCM instrument_pcm_data_748 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_291SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_262SampleInfo;
struct InstrumentPCM instrument_pcm_data_749 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_262SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_750 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

extern const struct SampleInfo sfx_322SampleInfo;
struct InstrumentPCM instrument_pcm_data_751 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_322SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_289SampleInfo;
struct InstrumentPCM instrument_pcm_data_752 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_289SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_201SampleInfo;
struct InstrumentPCM instrument_pcm_data_753 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_201SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_194SampleInfo;
struct InstrumentPCM instrument_pcm_data_754 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_194SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_359SampleInfo;
struct InstrumentPCM instrument_pcm_data_755 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_359SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_391SampleInfo;
struct InstrumentPCM instrument_pcm_data_756 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_391SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentPSG instrument_psg_data_757 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0073745d,
    /* unkC         */ 0x00400000,
    /* unk10        */ 0x001fc000,
    /* unk14        */ 0x0004b425,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_758 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0073745d,
    /* unkC         */ 0x00400000,
    /* unk10        */ 0x001fc000,
    /* unk14        */ 0x0004b425,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_759 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86870, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x00400000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x0004b425,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_760 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86880, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_761 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86890, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_762 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868a0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_763 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868b0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_764 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868c0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_765 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a868d0, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

struct InstrumentPSG instrument_psg_data_766 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ (void *)0x08a86870, // POINTER
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_WAVE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

extern const struct SampleInfo sfx_392SampleInfo;
struct InstrumentPCM instrument_pcm_data_767 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_392SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_393SampleInfo;
struct InstrumentPCM instrument_pcm_data_768 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_393SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_769 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0x30,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a867c8, // POINTER
    /* Sub-bank */ (void *)0x08a98010, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_770 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_771 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_394SampleInfo;
struct InstrumentPCM instrument_pcm_data_772 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_394SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_395SampleInfo;
struct InstrumentPCM instrument_pcm_data_773 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_395SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_396SampleInfo;
struct InstrumentPCM instrument_pcm_data_774 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_396SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_397SampleInfo;
struct InstrumentPCM instrument_pcm_data_775 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_397SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_398SampleInfo;
struct InstrumentPCM instrument_pcm_data_776 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_398SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_777 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_399SampleInfo;
struct InstrumentPCM instrument_pcm_data_778 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_399SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_126SampleInfo;
struct InstrumentPCM instrument_pcm_data_779 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_126SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_127SampleInfo;
struct InstrumentPCM instrument_pcm_data_780 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_127SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_781 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_782 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99a14, // POINTER
};

extern const struct SampleInfo sfx_400SampleInfo;
struct InstrumentPCM instrument_pcm_data_783 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_400SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_398SampleInfo;
struct InstrumentPCM instrument_pcm_data_784 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_398SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_235SampleInfo;
struct InstrumentPCM instrument_pcm_data_785 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_235SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_401SampleInfo;
struct InstrumentPCM instrument_pcm_data_786 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_401SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_260SampleInfo;
struct InstrumentPCM instrument_pcm_data_787 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_260SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_399SampleInfo;
struct InstrumentPCM instrument_pcm_data_788 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_399SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_789 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_790 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99a14, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_791 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_263SampleInfo;
struct InstrumentPCM instrument_pcm_data_792 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_263SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_229SampleInfo;
struct InstrumentPCM instrument_pcm_data_793 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_229SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001ba35f,
};

extern const struct SampleInfo sfx_194SampleInfo;
struct InstrumentPCM instrument_pcm_data_794 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_194SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_399SampleInfo;
struct InstrumentPCM instrument_pcm_data_795 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_399SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_402SampleInfo;
struct InstrumentPCM instrument_pcm_data_796 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_402SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_403SampleInfo;
struct InstrumentPCM instrument_pcm_data_797 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_403SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_404SampleInfo;
struct InstrumentPCM instrument_pcm_data_798 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_404SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_799 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a867ec, // POINTER
    /* Sub-bank */ (void *)0x08a9860c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_800 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_801 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_405SampleInfo;
struct InstrumentPCM instrument_pcm_data_802 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_405SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_406SampleInfo;
struct InstrumentPCM instrument_pcm_data_803 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_406SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_407SampleInfo;
struct InstrumentPCM instrument_pcm_data_804 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_407SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_408SampleInfo;
struct InstrumentPCM instrument_pcm_data_805 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_408SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_409SampleInfo;
struct InstrumentPCM instrument_pcm_data_806 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_409SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_202SampleInfo;
struct InstrumentPCM instrument_pcm_data_807 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_202SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_410SampleInfo;
struct InstrumentPCM instrument_pcm_data_808 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_410SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_809 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_810 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_300SampleInfo;
struct InstrumentPCM instrument_pcm_data_811 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_300SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_058SampleInfo;
struct InstrumentPCM instrument_pcm_data_812 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_058SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_306SampleInfo;
struct InstrumentPCM instrument_pcm_data_813 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_306SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_391SampleInfo;
struct InstrumentPCM instrument_pcm_data_814 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_391SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_373SampleInfo;
struct InstrumentPCM instrument_pcm_data_815 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_373SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_110SampleInfo;
struct InstrumentPCM instrument_pcm_data_816 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_110SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_363SampleInfo;
struct InstrumentPCM instrument_pcm_data_817 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_363SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_005SampleInfo;
struct InstrumentPCM instrument_pcm_data_818 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_005SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_293SampleInfo;
struct InstrumentPCM instrument_pcm_data_819 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_293SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_411SampleInfo;
struct InstrumentPCM instrument_pcm_data_820 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_411SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_412SampleInfo;
struct InstrumentPCM instrument_pcm_data_821 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_412SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_413SampleInfo;
struct InstrumentPCM instrument_pcm_data_822 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_413SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0022bd20,
};

extern const struct SampleInfo sfx_414SampleInfo;
struct InstrumentPCM instrument_pcm_data_823 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_414SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_415SampleInfo;
struct InstrumentPCM instrument_pcm_data_824 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_415SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_416SampleInfo;
struct InstrumentPCM instrument_pcm_data_825 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_416SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_417SampleInfo;
struct InstrumentPCM instrument_pcm_data_826 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_417SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_418SampleInfo;
struct InstrumentPCM instrument_pcm_data_827 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_418SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_419SampleInfo;
struct InstrumentPCM instrument_pcm_data_828 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_419SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_420SampleInfo;
struct InstrumentPCM instrument_pcm_data_829 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_420SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_421SampleInfo;
struct InstrumentPCM instrument_pcm_data_830 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_421SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_831 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_832 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a86828, // POINTER
    /* Sub-bank */ (void *)0x08a98a0c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_833 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_834 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99b4c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_835 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_422SampleInfo;
struct InstrumentPCM instrument_pcm_data_836 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_422SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_423SampleInfo;
struct InstrumentPCM instrument_pcm_data_837 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_423SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_313SampleInfo;
struct InstrumentPCM instrument_pcm_data_838 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_313SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_292SampleInfo;
struct InstrumentPCM instrument_pcm_data_839 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_292SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_387SampleInfo;
struct InstrumentPCM instrument_pcm_data_840 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_387SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_424SampleInfo;
struct InstrumentPCM instrument_pcm_data_841 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_424SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_421SampleInfo;
struct InstrumentPCM instrument_pcm_data_842 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_421SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_425SampleInfo;
struct InstrumentPCM instrument_pcm_data_843 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_425SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_320SampleInfo;
struct InstrumentPCM instrument_pcm_data_844 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_320SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_420SampleInfo;
struct InstrumentPCM instrument_pcm_data_845 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_420SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_421SampleInfo;
struct InstrumentPCM instrument_pcm_data_846 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_421SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_426SampleInfo;
struct InstrumentPCM instrument_pcm_data_847 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_426SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_848 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a86828, // POINTER
    /* Sub-bank */ (void *)0x08a98a0c, // POINTER
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_849 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a867ec, // POINTER
    /* Sub-bank */ (void *)0x08a9860c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_850 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_851 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99c60, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_852 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_039SampleInfo;
struct InstrumentPCM instrument_pcm_data_853 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_039SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_398SampleInfo;
struct InstrumentPCM instrument_pcm_data_854 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_398SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_007SampleInfo;
struct InstrumentPCM instrument_pcm_data_855 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_007SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_001SampleInfo;
struct InstrumentPCM instrument_pcm_data_856 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_001SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_003SampleInfo;
struct InstrumentPCM instrument_pcm_data_857 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_003SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentPSG instrument_psg_data_858 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_859 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_203SampleInfo;
struct InstrumentPCM instrument_pcm_data_860 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_203SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_239SampleInfo;
struct InstrumentPCM instrument_pcm_data_861 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_239SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_012SampleInfo;
struct InstrumentPCM instrument_pcm_data_862 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_012SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_386SampleInfo;
struct InstrumentPCM instrument_pcm_data_863 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_386SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_008SampleInfo;
struct InstrumentPCM instrument_pcm_data_864 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_008SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_383SampleInfo;
struct InstrumentPCM instrument_pcm_data_865 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_383SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_329SampleInfo;
struct InstrumentPCM instrument_pcm_data_866 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_329SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_005SampleInfo;
struct InstrumentPCM instrument_pcm_data_867 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_005SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_321SampleInfo;
struct InstrumentPCM instrument_pcm_data_868 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_321SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_235SampleInfo;
struct InstrumentPCM instrument_pcm_data_869 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_235SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_342SampleInfo;
struct InstrumentPCM instrument_pcm_data_870 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_342SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_401SampleInfo;
struct InstrumentPCM instrument_pcm_data_871 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_401SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_114SampleInfo;
struct InstrumentPCM instrument_pcm_data_872 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_114SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_196SampleInfo;
struct InstrumentPCM instrument_pcm_data_873 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_196SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_310SampleInfo;
struct InstrumentPCM instrument_pcm_data_874 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_310SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_303SampleInfo;
struct InstrumentPCM instrument_pcm_data_875 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_303SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_423SampleInfo;
struct InstrumentPCM instrument_pcm_data_876 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_423SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_877 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_203SampleInfo;
struct InstrumentPCM instrument_pcm_data_878 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_203SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_309SampleInfo;
struct InstrumentPCM instrument_pcm_data_879 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_309SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_124SampleInfo;
struct InstrumentPCM instrument_pcm_data_880 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_124SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_313SampleInfo;
struct InstrumentPCM instrument_pcm_data_881 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_313SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_354SampleInfo;
struct InstrumentPCM instrument_pcm_data_882 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_354SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_118SampleInfo;
struct InstrumentPCM instrument_pcm_data_883 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_118SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_322SampleInfo;
struct InstrumentPCM instrument_pcm_data_884 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_322SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_335SampleInfo;
struct InstrumentPCM instrument_pcm_data_885 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_335SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_297SampleInfo;
struct InstrumentPCM instrument_pcm_data_886 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_297SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_308SampleInfo;
struct InstrumentPCM instrument_pcm_data_887 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_308SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_238SampleInfo;
struct InstrumentPCM instrument_pcm_data_888 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_238SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_305SampleInfo;
struct InstrumentPCM instrument_pcm_data_889 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_305SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_410SampleInfo;
struct InstrumentPCM instrument_pcm_data_890 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_410SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_315SampleInfo;
struct InstrumentPCM instrument_pcm_data_891 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_315SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_015SampleInfo;
struct InstrumentPCM instrument_pcm_data_892 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_015SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_320SampleInfo;
struct InstrumentPCM instrument_pcm_data_893 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_320SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_113SampleInfo;
struct InstrumentPCM instrument_pcm_data_894 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_113SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern const struct SampleInfo sfx_399SampleInfo;
struct InstrumentPCM instrument_pcm_data_895 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_399SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_190SampleInfo;
struct InstrumentPCM instrument_pcm_data_896 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_190SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_011SampleInfo;
struct InstrumentPCM instrument_pcm_data_897 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_011SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_006SampleInfo;
struct InstrumentPCM instrument_pcm_data_898 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_006SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_899 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_900 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99a14, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_901 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_292SampleInfo;
struct InstrumentPCM instrument_pcm_data_902 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_292SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_903 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_293SampleInfo;
struct InstrumentPCM instrument_pcm_data_904 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_293SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_302SampleInfo;
struct InstrumentPCM instrument_pcm_data_905 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_302SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_400SampleInfo;
struct InstrumentPCM instrument_pcm_data_906 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_400SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_338SampleInfo;
struct InstrumentPCM instrument_pcm_data_907 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_338SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_335SampleInfo;
struct InstrumentPCM instrument_pcm_data_908 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_335SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_427SampleInfo;
struct InstrumentPCM instrument_pcm_data_909 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_427SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_428SampleInfo;
struct InstrumentPCM instrument_pcm_data_910 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_428SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_911 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_912 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_429SampleInfo;
struct InstrumentPCM instrument_pcm_data_913 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_429SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_217SampleInfo;
struct InstrumentPCM instrument_pcm_data_914 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_217SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_430SampleInfo;
struct InstrumentPCM instrument_pcm_data_915 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_430SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_431SampleInfo;
struct InstrumentPCM instrument_pcm_data_916 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_431SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_432SampleInfo;
struct InstrumentPCM instrument_pcm_data_917 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_432SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_433SampleInfo;
struct InstrumentPCM instrument_pcm_data_918 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_433SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_026SampleInfo;
struct InstrumentPCM instrument_pcm_data_919 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_026SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_117SampleInfo;
struct InstrumentPCM instrument_pcm_data_920 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_117SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0004d936,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern const struct SampleInfo sfx_434SampleInfo;
struct InstrumentPCM instrument_pcm_data_921 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_434SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern const struct SampleInfo sfx_405SampleInfo;
struct InstrumentPCM instrument_pcm_data_922 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_405SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_017SampleInfo;
struct InstrumentPCM instrument_pcm_data_923 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_017SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_042SampleInfo;
struct InstrumentPCM instrument_pcm_data_924 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_042SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_196SampleInfo;
struct InstrumentPCM instrument_pcm_data_925 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_196SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_041SampleInfo;
struct InstrumentPCM instrument_pcm_data_926 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_041SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_927 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a8666c, // POINTER
    /* Sub-bank */ (void *)0x08a97210, // POINTER
};

extern const struct SampleInfo sfx_203SampleInfo;
struct InstrumentPCM instrument_pcm_data_928 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_203SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_038SampleInfo;
struct InstrumentPCM instrument_pcm_data_929 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_038SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_028SampleInfo;
struct InstrumentPCM instrument_pcm_data_930 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_028SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_400SampleInfo;
struct InstrumentPCM instrument_pcm_data_931 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_400SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_230SampleInfo;
struct InstrumentPCM instrument_pcm_data_932 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_230SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_293SampleInfo;
struct InstrumentPCM instrument_pcm_data_933 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_293SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

struct InstrumentSubbankMultiKey instrument_subbank_multi_key_data_934 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_MULTI_KEY,
        /* unk1 */ 0xc,
        /* unk2 */ 0x0,
    },
    /* unk4     */ (void *)0x08a865ac, // POINTER
    /* Sub-bank */ (void *)0x08a97010, // POINTER
};

extern const struct SampleInfo sfx_230SampleInfo;
struct InstrumentPCM instrument_pcm_data_935 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_230SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_435SampleInfo;
struct InstrumentPCM instrument_pcm_data_936 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_435SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_226SampleInfo;
struct InstrumentPCM instrument_pcm_data_937 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_226SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_289SampleInfo;
struct InstrumentPCM instrument_pcm_data_938 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_289SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_436SampleInfo;
struct InstrumentPCM instrument_pcm_data_939 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_436SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_437SampleInfo;
struct InstrumentPCM instrument_pcm_data_940 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_437SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_438SampleInfo;
struct InstrumentPCM instrument_pcm_data_941 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_438SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_006SampleInfo;
struct InstrumentPCM instrument_pcm_data_942 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_006SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_309SampleInfo;
struct InstrumentPCM instrument_pcm_data_943 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_309SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_439SampleInfo;
struct InstrumentPCM instrument_pcm_data_944 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_439SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_237SampleInfo;
struct InstrumentPCM instrument_pcm_data_945 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_237SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_344SampleInfo;
struct InstrumentPCM instrument_pcm_data_946 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_344SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_947 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_217SampleInfo;
struct InstrumentPCM instrument_pcm_data_948 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_217SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_136SampleInfo;
struct InstrumentPCM instrument_pcm_data_949 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_136SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_107SampleInfo;
struct InstrumentPCM instrument_pcm_data_950 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_107SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_129SampleInfo;
struct InstrumentPCM instrument_pcm_data_951 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_129SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_214SampleInfo;
struct InstrumentPCM instrument_pcm_data_952 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_214SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_953 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a99b4c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_954 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a998e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_955 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9957c, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_956 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a996e4, // POINTER
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_957 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

extern const struct SampleInfo sfx_440SampleInfo;
struct InstrumentPCM instrument_pcm_data_958 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_440SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_441SampleInfo;
struct InstrumentPCM instrument_pcm_data_959 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_441SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_442SampleInfo;
struct InstrumentPCM instrument_pcm_data_960 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_442SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_443SampleInfo;
struct InstrumentPCM instrument_pcm_data_961 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sfx_443SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_444SampleInfo;
struct InstrumentPCM instrument_pcm_data_962 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_444SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_445SampleInfo;
struct InstrumentPCM instrument_pcm_data_963 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_445SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_446SampleInfo;
struct InstrumentPCM instrument_pcm_data_964 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_446SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_447SampleInfo;
struct InstrumentPCM instrument_pcm_data_965 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_447SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_448SampleInfo;
struct InstrumentPCM instrument_pcm_data_966 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_448SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_449SampleInfo;
struct InstrumentPCM instrument_pcm_data_967 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_449SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_450SampleInfo;
struct InstrumentPCM instrument_pcm_data_968 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_450SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_451SampleInfo;
struct InstrumentPCM instrument_pcm_data_969 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_451SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_452SampleInfo;
struct InstrumentPCM instrument_pcm_data_970 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_452SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_971 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_972 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x41,
        /* unk2 */ 0x10,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_453SampleInfo;
struct InstrumentPCM instrument_pcm_data_973 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_453SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_454SampleInfo;
struct InstrumentPCM instrument_pcm_data_974 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_454SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_455SampleInfo;
struct InstrumentPCM instrument_pcm_data_975 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_455SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_976 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_456SampleInfo;
struct InstrumentPCM instrument_pcm_data_977 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_456SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_457SampleInfo;
struct InstrumentPCM instrument_pcm_data_978 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_457SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_458SampleInfo;
struct InstrumentPCM instrument_pcm_data_979 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_458SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_459SampleInfo;
struct InstrumentPCM instrument_pcm_data_980 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_459SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_460SampleInfo;
struct InstrumentPCM instrument_pcm_data_981 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_460SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_461SampleInfo;
struct InstrumentPCM instrument_pcm_data_982 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_461SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_462SampleInfo;
struct InstrumentPCM instrument_pcm_data_983 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_462SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_463SampleInfo;
struct InstrumentPCM instrument_pcm_data_984 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_463SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_464SampleInfo;
struct InstrumentPCM instrument_pcm_data_985 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_464SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_465SampleInfo;
struct InstrumentPCM instrument_pcm_data_986 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_465SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_466SampleInfo;
struct InstrumentPCM instrument_pcm_data_987 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_466SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_086SampleInfo;
struct InstrumentPCM instrument_pcm_data_988 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_086SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_467SampleInfo;
struct InstrumentPCM instrument_pcm_data_989 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_467SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_385SampleInfo;
struct InstrumentPCM instrument_pcm_data_990 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_385SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_991 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x34,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_450SampleInfo;
struct InstrumentPCM instrument_pcm_data_992 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_450SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_993 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_994 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x0,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_469SampleInfo;
struct InstrumentPCM instrument_pcm_data_995 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0xffc0,
    },
    /* Sample */ &sfx_469SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_470SampleInfo;
struct InstrumentPCM instrument_pcm_data_996 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_470SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_471SampleInfo;
struct InstrumentPCM instrument_pcm_data_997 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_471SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_472SampleInfo;
struct InstrumentPCM instrument_pcm_data_998 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_472SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_473SampleInfo;
struct InstrumentPCM instrument_pcm_data_999 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc0,
    },
    /* Sample */ &sfx_473SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_474SampleInfo;
struct InstrumentPCM instrument_pcm_data_1000 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_474SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_475SampleInfo;
struct InstrumentPCM instrument_pcm_data_1001 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_475SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_476SampleInfo;
struct InstrumentPCM instrument_pcm_data_1002 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_476SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_477SampleInfo;
struct InstrumentPCM instrument_pcm_data_1003 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x60,
    },
    /* Sample */ &sfx_477SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_478SampleInfo;
struct InstrumentPCM instrument_pcm_data_1004 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_478SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_477SampleInfo;
struct InstrumentPCM instrument_pcm_data_1005 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x35,
        /* unk2 */ 0x60,
    },
    /* Sample */ &sfx_477SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_479SampleInfo;
struct InstrumentPCM instrument_pcm_data_1006 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_479SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_480SampleInfo;
struct InstrumentPCM instrument_pcm_data_1007 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x10,
    },
    /* Sample */ &sfx_480SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_450SampleInfo;
struct InstrumentPCM instrument_pcm_data_1008 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_450SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_481SampleInfo;
struct InstrumentPCM instrument_pcm_data_1009 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sfx_481SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_482SampleInfo;
struct InstrumentPCM instrument_pcm_data_1010 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_482SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_483SampleInfo;
struct InstrumentPCM instrument_pcm_data_1011 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_483SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_484SampleInfo;
struct InstrumentPCM instrument_pcm_data_1012 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_484SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_485SampleInfo;
struct InstrumentPCM instrument_pcm_data_1013 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_485SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_216SampleInfo;
struct InstrumentPCM instrument_pcm_data_1014 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sfx_216SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_486SampleInfo;
struct InstrumentPCM instrument_pcm_data_1015 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xc,
    },
    /* Sample */ &sfx_486SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_487SampleInfo;
struct InstrumentPCM instrument_pcm_data_1016 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_487SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_488SampleInfo;
struct InstrumentPCM instrument_pcm_data_1017 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xc,
    },
    /* Sample */ &sfx_488SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_489SampleInfo;
struct InstrumentPCM instrument_pcm_data_1018 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_489SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_490SampleInfo;
struct InstrumentPCM instrument_pcm_data_1019 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_490SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_491SampleInfo;
struct InstrumentPCM instrument_pcm_data_1020 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_491SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_492SampleInfo;
struct InstrumentPCM instrument_pcm_data_1021 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_492SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_493SampleInfo;
struct InstrumentPCM instrument_pcm_data_1022 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_493SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_494SampleInfo;
struct InstrumentPCM instrument_pcm_data_1023 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_494SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_487SampleInfo;
struct InstrumentPCM instrument_pcm_data_1024 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_487SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_495SampleInfo;
struct InstrumentPCM instrument_pcm_data_1025 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_495SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_496SampleInfo;
struct InstrumentPCM instrument_pcm_data_1026 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_496SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_497SampleInfo;
struct InstrumentPCM instrument_pcm_data_1027 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_497SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_498SampleInfo;
struct InstrumentPCM instrument_pcm_data_1028 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_498SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_499SampleInfo;
struct InstrumentPCM instrument_pcm_data_1029 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_499SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_500SampleInfo;
struct InstrumentPCM instrument_pcm_data_1030 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_500SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_501SampleInfo;
struct InstrumentPCM instrument_pcm_data_1031 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_501SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_502SampleInfo;
struct InstrumentPCM instrument_pcm_data_1032 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_502SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_503SampleInfo;
struct InstrumentPCM instrument_pcm_data_1033 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_503SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_504SampleInfo;
struct InstrumentPCM instrument_pcm_data_1034 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_504SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_505SampleInfo;
struct InstrumentPCM instrument_pcm_data_1035 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_505SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_506SampleInfo;
struct InstrumentPCM instrument_pcm_data_1036 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_506SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_507SampleInfo;
struct InstrumentPCM instrument_pcm_data_1037 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_507SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_508SampleInfo;
struct InstrumentPCM instrument_pcm_data_1038 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_508SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_509SampleInfo;
struct InstrumentPCM instrument_pcm_data_1039 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_509SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_510SampleInfo;
struct InstrumentPCM instrument_pcm_data_1040 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_510SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_511SampleInfo;
struct InstrumentPCM instrument_pcm_data_1041 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_511SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_512SampleInfo;
struct InstrumentPCM instrument_pcm_data_1042 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_512SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_513SampleInfo;
struct InstrumentPCM instrument_pcm_data_1043 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_513SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_514SampleInfo;
struct InstrumentPCM instrument_pcm_data_1044 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_514SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_515SampleInfo;
struct InstrumentPCM instrument_pcm_data_1045 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_515SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_516SampleInfo;
struct InstrumentPCM instrument_pcm_data_1046 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_516SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_517SampleInfo;
struct InstrumentPCM instrument_pcm_data_1047 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_517SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_518SampleInfo;
struct InstrumentPCM instrument_pcm_data_1048 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_518SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_518SampleInfo;
struct InstrumentPCM instrument_pcm_data_1049 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_518SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_489SampleInfo;
struct InstrumentPCM instrument_pcm_data_1050 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_489SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_519SampleInfo;
struct InstrumentPCM instrument_pcm_data_1051 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_519SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_520SampleInfo;
struct InstrumentPCM instrument_pcm_data_1052 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_520SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_521SampleInfo;
struct InstrumentPCM instrument_pcm_data_1053 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_521SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_522SampleInfo;
struct InstrumentPCM instrument_pcm_data_1054 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_522SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_523SampleInfo;
struct InstrumentPCM instrument_pcm_data_1055 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_523SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_524SampleInfo;
struct InstrumentPCM instrument_pcm_data_1056 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x40,
    },
    /* Sample */ &sfx_524SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_525SampleInfo;
struct InstrumentPCM instrument_pcm_data_1057 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_525SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_526SampleInfo;
struct InstrumentPCM instrument_pcm_data_1058 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_526SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_527SampleInfo;
struct InstrumentPCM instrument_pcm_data_1059 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_527SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_528SampleInfo;
struct InstrumentPCM instrument_pcm_data_1060 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_528SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_529SampleInfo;
struct InstrumentPCM instrument_pcm_data_1061 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_529SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_529SampleInfo;
struct InstrumentPCM instrument_pcm_data_1062 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_529SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_506SampleInfo;
struct InstrumentPCM instrument_pcm_data_1063 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_506SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_530SampleInfo;
struct InstrumentPCM instrument_pcm_data_1064 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_530SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_531SampleInfo;
struct InstrumentPCM instrument_pcm_data_1065 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_531SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_530SampleInfo;
struct InstrumentPCM instrument_pcm_data_1066 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_530SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_532SampleInfo;
struct InstrumentPCM instrument_pcm_data_1067 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_532SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_533SampleInfo;
struct InstrumentPCM instrument_pcm_data_1068 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_533SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_534SampleInfo;
struct InstrumentPCM instrument_pcm_data_1069 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_534SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_535SampleInfo;
struct InstrumentPCM instrument_pcm_data_1070 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_535SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_536SampleInfo;
struct InstrumentPCM instrument_pcm_data_1071 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_536SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_435SampleInfo;
struct InstrumentPCM instrument_pcm_data_1072 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_435SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_537SampleInfo;
struct InstrumentPCM instrument_pcm_data_1073 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_537SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_538SampleInfo;
struct InstrumentPCM instrument_pcm_data_1074 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_538SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_539SampleInfo;
struct InstrumentPCM instrument_pcm_data_1075 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_539SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_540SampleInfo;
struct InstrumentPCM instrument_pcm_data_1076 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_540SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_541SampleInfo;
struct InstrumentPCM instrument_pcm_data_1077 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_541SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_542SampleInfo;
struct InstrumentPCM instrument_pcm_data_1078 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_542SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_543SampleInfo;
struct InstrumentPCM instrument_pcm_data_1079 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x40,
    },
    /* Sample */ &sfx_543SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_544SampleInfo;
struct InstrumentPCM instrument_pcm_data_1080 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_544SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_545SampleInfo;
struct InstrumentPCM instrument_pcm_data_1081 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_545SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_546SampleInfo;
struct InstrumentPCM instrument_pcm_data_1082 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_546SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_547SampleInfo;
struct InstrumentPCM instrument_pcm_data_1083 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sfx_547SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_548SampleInfo;
struct InstrumentPCM instrument_pcm_data_1084 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_548SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_549SampleInfo;
struct InstrumentPCM instrument_pcm_data_1085 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_549SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_550SampleInfo;
struct InstrumentPCM instrument_pcm_data_1086 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_550SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_220SampleInfo;
struct InstrumentPCM instrument_pcm_data_1087 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_220SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_218SampleInfo;
struct InstrumentPCM instrument_pcm_data_1088 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_218SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_551SampleInfo;
struct InstrumentPCM instrument_pcm_data_1089 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_551SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_552SampleInfo;
struct InstrumentPCM instrument_pcm_data_1090 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_552SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_553SampleInfo;
struct InstrumentPCM instrument_pcm_data_1091 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_553SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_554SampleInfo;
struct InstrumentPCM instrument_pcm_data_1092 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_554SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_555SampleInfo;
struct InstrumentPCM instrument_pcm_data_1093 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_555SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_556SampleInfo;
struct InstrumentPCM instrument_pcm_data_1094 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_556SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_557SampleInfo;
struct InstrumentPCM instrument_pcm_data_1095 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_557SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_558SampleInfo;
struct InstrumentPCM instrument_pcm_data_1096 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_558SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_559SampleInfo;
struct InstrumentPCM instrument_pcm_data_1097 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_559SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_560SampleInfo;
struct InstrumentPCM instrument_pcm_data_1098 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_560SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern const struct SampleInfo sfx_561SampleInfo;
struct InstrumentPCM instrument_pcm_data_1099 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_561SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_562SampleInfo;
struct InstrumentPCM instrument_pcm_data_1100 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_562SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_233SampleInfo;
struct InstrumentPCM instrument_pcm_data_1101 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_233SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_563SampleInfo;
struct InstrumentPCM instrument_pcm_data_1102 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_563SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_564SampleInfo;
struct InstrumentPCM instrument_pcm_data_1103 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sfx_564SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_565SampleInfo;
struct InstrumentPCM instrument_pcm_data_1104 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0xffc8,
    },
    /* Sample */ &sfx_565SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_565SampleInfo;
struct InstrumentPCM instrument_pcm_data_1105 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_565SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_566SampleInfo;
struct InstrumentPCM instrument_pcm_data_1106 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_566SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_567SampleInfo;
struct InstrumentPCM instrument_pcm_data_1107 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_567SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_1108 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_446SampleInfo;
struct InstrumentPCM instrument_pcm_data_1109 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_446SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_474SampleInfo;
struct InstrumentPCM instrument_pcm_data_1110 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_474SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_216SampleInfo;
struct InstrumentPCM instrument_pcm_data_1111 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sfx_216SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_568SampleInfo;
struct InstrumentPCM instrument_pcm_data_1112 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_568SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_569SampleInfo;
struct InstrumentPCM instrument_pcm_data_1113 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_569SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_570SampleInfo;
struct InstrumentPCM instrument_pcm_data_1114 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_570SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_571SampleInfo;
struct InstrumentPCM instrument_pcm_data_1115 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_571SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_572SampleInfo;
struct InstrumentPCM instrument_pcm_data_1116 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_572SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_573SampleInfo;
struct InstrumentPCM instrument_pcm_data_1117 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_573SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_574SampleInfo;
struct InstrumentPCM instrument_pcm_data_1118 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_574SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_575SampleInfo;
struct InstrumentPCM instrument_pcm_data_1119 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_575SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_576SampleInfo;
struct InstrumentPCM instrument_pcm_data_1120 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_576SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_577SampleInfo;
struct InstrumentPCM instrument_pcm_data_1121 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_577SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_578SampleInfo;
struct InstrumentPCM instrument_pcm_data_1122 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_578SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_579SampleInfo;
struct InstrumentPCM instrument_pcm_data_1123 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_579SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_580SampleInfo;
struct InstrumentPCM instrument_pcm_data_1124 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_580SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_581SampleInfo;
struct InstrumentPCM instrument_pcm_data_1125 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_581SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_582SampleInfo;
struct InstrumentPCM instrument_pcm_data_1126 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_582SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_583SampleInfo;
struct InstrumentPCM instrument_pcm_data_1127 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_583SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_584SampleInfo;
struct InstrumentPCM instrument_pcm_data_1128 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_584SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_585SampleInfo;
struct InstrumentPCM instrument_pcm_data_1129 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_585SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_586SampleInfo;
struct InstrumentPCM instrument_pcm_data_1130 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_586SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_587SampleInfo;
struct InstrumentPCM instrument_pcm_data_1131 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_587SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_440SampleInfo;
struct InstrumentPCM instrument_pcm_data_1132 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_440SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_441SampleInfo;
struct InstrumentPCM instrument_pcm_data_1133 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_441SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_442SampleInfo;
struct InstrumentPCM instrument_pcm_data_1134 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_442SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_443SampleInfo;
struct InstrumentPCM instrument_pcm_data_1135 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_443SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_444SampleInfo;
struct InstrumentPCM instrument_pcm_data_1136 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_444SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_445SampleInfo;
struct InstrumentPCM instrument_pcm_data_1137 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_445SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_446SampleInfo;
struct InstrumentPCM instrument_pcm_data_1138 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_446SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_447SampleInfo;
struct InstrumentPCM instrument_pcm_data_1139 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_447SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_448SampleInfo;
struct InstrumentPCM instrument_pcm_data_1140 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_448SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_449SampleInfo;
struct InstrumentPCM instrument_pcm_data_1141 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_449SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_450SampleInfo;
struct InstrumentPCM instrument_pcm_data_1142 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_450SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_451SampleInfo;
struct InstrumentPCM instrument_pcm_data_1143 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_451SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_452SampleInfo;
struct InstrumentPCM instrument_pcm_data_1144 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_452SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_1145 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_1146 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_453SampleInfo;
struct InstrumentPCM instrument_pcm_data_1147 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_453SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_454SampleInfo;
struct InstrumentPCM instrument_pcm_data_1148 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_454SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_455SampleInfo;
struct InstrumentPCM instrument_pcm_data_1149 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_455SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_1150 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_456SampleInfo;
struct InstrumentPCM instrument_pcm_data_1151 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_456SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_457SampleInfo;
struct InstrumentPCM instrument_pcm_data_1152 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_457SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_458SampleInfo;
struct InstrumentPCM instrument_pcm_data_1153 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_458SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_459SampleInfo;
struct InstrumentPCM instrument_pcm_data_1154 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_459SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_460SampleInfo;
struct InstrumentPCM instrument_pcm_data_1155 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_460SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_461SampleInfo;
struct InstrumentPCM instrument_pcm_data_1156 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_461SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_462SampleInfo;
struct InstrumentPCM instrument_pcm_data_1157 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_462SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_463SampleInfo;
struct InstrumentPCM instrument_pcm_data_1158 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_463SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_518SampleInfo;
struct InstrumentPCM instrument_pcm_data_1159 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_518SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_465SampleInfo;
struct InstrumentPCM instrument_pcm_data_1160 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_465SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_466SampleInfo;
struct InstrumentPCM instrument_pcm_data_1161 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_466SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_086SampleInfo;
struct InstrumentPCM instrument_pcm_data_1162 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_086SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_467SampleInfo;
struct InstrumentPCM instrument_pcm_data_1163 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_467SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_385SampleInfo;
struct InstrumentPCM instrument_pcm_data_1164 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_385SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_1165 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_450SampleInfo;
struct InstrumentPCM instrument_pcm_data_1166 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_450SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_1167 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_1168 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_469SampleInfo;
struct InstrumentPCM instrument_pcm_data_1169 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_469SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_470SampleInfo;
struct InstrumentPCM instrument_pcm_data_1170 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_470SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_471SampleInfo;
struct InstrumentPCM instrument_pcm_data_1171 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_471SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_472SampleInfo;
struct InstrumentPCM instrument_pcm_data_1172 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_472SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_473SampleInfo;
struct InstrumentPCM instrument_pcm_data_1173 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_473SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_474SampleInfo;
struct InstrumentPCM instrument_pcm_data_1174 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_474SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_475SampleInfo;
struct InstrumentPCM instrument_pcm_data_1175 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_475SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_476SampleInfo;
struct InstrumentPCM instrument_pcm_data_1176 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_476SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_477SampleInfo;
struct InstrumentPCM instrument_pcm_data_1177 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_477SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_478SampleInfo;
struct InstrumentPCM instrument_pcm_data_1178 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_478SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_477SampleInfo;
struct InstrumentPCM instrument_pcm_data_1179 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_477SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_479SampleInfo;
struct InstrumentPCM instrument_pcm_data_1180 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_479SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_480SampleInfo;
struct InstrumentPCM instrument_pcm_data_1181 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_480SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_450SampleInfo;
struct InstrumentPCM instrument_pcm_data_1182 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_450SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_481SampleInfo;
struct InstrumentPCM instrument_pcm_data_1183 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_481SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_482SampleInfo;
struct InstrumentPCM instrument_pcm_data_1184 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_482SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_483SampleInfo;
struct InstrumentPCM instrument_pcm_data_1185 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_483SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_484SampleInfo;
struct InstrumentPCM instrument_pcm_data_1186 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_484SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_216SampleInfo;
struct InstrumentPCM instrument_pcm_data_1187 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_216SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_486SampleInfo;
struct InstrumentPCM instrument_pcm_data_1188 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_486SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_487SampleInfo;
struct InstrumentPCM instrument_pcm_data_1189 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_487SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_488SampleInfo;
struct InstrumentPCM instrument_pcm_data_1190 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_488SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_489SampleInfo;
struct InstrumentPCM instrument_pcm_data_1191 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_489SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_490SampleInfo;
struct InstrumentPCM instrument_pcm_data_1192 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_490SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_491SampleInfo;
struct InstrumentPCM instrument_pcm_data_1193 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_491SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_492SampleInfo;
struct InstrumentPCM instrument_pcm_data_1194 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_492SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_493SampleInfo;
struct InstrumentPCM instrument_pcm_data_1195 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_493SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_494SampleInfo;
struct InstrumentPCM instrument_pcm_data_1196 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_494SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_495SampleInfo;
struct InstrumentPCM instrument_pcm_data_1197 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_495SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_496SampleInfo;
struct InstrumentPCM instrument_pcm_data_1198 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_496SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_497SampleInfo;
struct InstrumentPCM instrument_pcm_data_1199 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_497SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_498SampleInfo;
struct InstrumentPCM instrument_pcm_data_1200 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_498SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_499SampleInfo;
struct InstrumentPCM instrument_pcm_data_1201 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_499SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_500SampleInfo;
struct InstrumentPCM instrument_pcm_data_1202 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_500SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_501SampleInfo;
struct InstrumentPCM instrument_pcm_data_1203 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_501SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_502SampleInfo;
struct InstrumentPCM instrument_pcm_data_1204 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_502SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_503SampleInfo;
struct InstrumentPCM instrument_pcm_data_1205 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_503SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_504SampleInfo;
struct InstrumentPCM instrument_pcm_data_1206 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_504SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_505SampleInfo;
struct InstrumentPCM instrument_pcm_data_1207 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_505SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_506SampleInfo;
struct InstrumentPCM instrument_pcm_data_1208 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_506SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_507SampleInfo;
struct InstrumentPCM instrument_pcm_data_1209 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_507SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_508SampleInfo;
struct InstrumentPCM instrument_pcm_data_1210 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_508SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_509SampleInfo;
struct InstrumentPCM instrument_pcm_data_1211 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_509SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_510SampleInfo;
struct InstrumentPCM instrument_pcm_data_1212 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_510SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_511SampleInfo;
struct InstrumentPCM instrument_pcm_data_1213 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_511SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_512SampleInfo;
struct InstrumentPCM instrument_pcm_data_1214 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_512SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_513SampleInfo;
struct InstrumentPCM instrument_pcm_data_1215 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_513SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_514SampleInfo;
struct InstrumentPCM instrument_pcm_data_1216 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_514SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_515SampleInfo;
struct InstrumentPCM instrument_pcm_data_1217 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_515SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_516SampleInfo;
struct InstrumentPCM instrument_pcm_data_1218 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_516SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1219 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a996e4, // POINTER
};

extern const struct SampleInfo sfx_588SampleInfo;
struct InstrumentPCM instrument_pcm_data_1220 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_588SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_589SampleInfo;
struct InstrumentPCM instrument_pcm_data_1221 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_589SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_590SampleInfo;
struct InstrumentPCM instrument_pcm_data_1222 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_590SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_591SampleInfo;
struct InstrumentPCM instrument_pcm_data_1223 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_591SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_190SampleInfo;
struct InstrumentPCM instrument_pcm_data_1224 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_190SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_449SampleInfo;
struct InstrumentPCM instrument_pcm_data_1225 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_449SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_592SampleInfo;
struct InstrumentPCM instrument_pcm_data_1226 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sfx_592SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_593SampleInfo;
struct InstrumentPCM instrument_pcm_data_1227 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sfx_593SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_594SampleInfo;
struct InstrumentPCM instrument_pcm_data_1228 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_594SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_594SampleInfo;
struct InstrumentPCM instrument_pcm_data_1229 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x35,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sfx_594SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_590SampleInfo;
struct InstrumentPCM instrument_pcm_data_1230 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x30,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_590SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_588SampleInfo;
struct InstrumentPCM instrument_pcm_data_1231 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x37,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_588SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_588SampleInfo;
struct InstrumentPCM instrument_pcm_data_1232 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_588SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_588SampleInfo;
struct InstrumentPCM instrument_pcm_data_1233 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_588SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_595SampleInfo;
struct InstrumentPCM instrument_pcm_data_1234 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_595SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_596SampleInfo;
struct InstrumentPCM instrument_pcm_data_1235 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_596SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_597SampleInfo;
struct InstrumentPCM instrument_pcm_data_1236 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_597SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_598SampleInfo;
struct InstrumentPCM instrument_pcm_data_1237 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_598SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_141SampleInfo;
struct InstrumentPCM instrument_pcm_data_1238 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_141SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_142SampleInfo;
struct InstrumentPCM instrument_pcm_data_1239 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_142SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_143SampleInfo;
struct InstrumentPCM instrument_pcm_data_1240 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_143SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_599SampleInfo;
struct InstrumentPCM instrument_pcm_data_1241 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sfx_599SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_600SampleInfo;
struct InstrumentPCM instrument_pcm_data_1242 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_600SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_131SampleInfo;
struct InstrumentPCM instrument_pcm_data_1243 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_131SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_132SampleInfo;
struct InstrumentPCM instrument_pcm_data_1244 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_132SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_133SampleInfo;
struct InstrumentPCM instrument_pcm_data_1245 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_133SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_134SampleInfo;
struct InstrumentPCM instrument_pcm_data_1246 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_134SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_135SampleInfo;
struct InstrumentPCM instrument_pcm_data_1247 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_135SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_136SampleInfo;
struct InstrumentPCM instrument_pcm_data_1248 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_136SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_601SampleInfo;
struct InstrumentPCM instrument_pcm_data_1249 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_601SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_602SampleInfo;
struct InstrumentPCM instrument_pcm_data_1250 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_602SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_603SampleInfo;
struct InstrumentPCM instrument_pcm_data_1251 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_603SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_604SampleInfo;
struct InstrumentPCM instrument_pcm_data_1252 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_604SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_605SampleInfo;
struct InstrumentPCM instrument_pcm_data_1253 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_605SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_606SampleInfo;
struct InstrumentPCM instrument_pcm_data_1254 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_606SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_607SampleInfo;
struct InstrumentPCM instrument_pcm_data_1255 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_607SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_608SampleInfo;
struct InstrumentPCM instrument_pcm_data_1256 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_608SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_609SampleInfo;
struct InstrumentPCM instrument_pcm_data_1257 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_609SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_610SampleInfo;
struct InstrumentPCM instrument_pcm_data_1258 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_610SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_611SampleInfo;
struct InstrumentPCM instrument_pcm_data_1259 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_611SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_612SampleInfo;
struct InstrumentPCM instrument_pcm_data_1260 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_612SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_613SampleInfo;
struct InstrumentPCM instrument_pcm_data_1261 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_613SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_614SampleInfo;
struct InstrumentPCM instrument_pcm_data_1262 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_614SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_615SampleInfo;
struct InstrumentPCM instrument_pcm_data_1263 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_615SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_616SampleInfo;
struct InstrumentPCM instrument_pcm_data_1264 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_616SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_617SampleInfo;
struct InstrumentPCM instrument_pcm_data_1265 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_617SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_618SampleInfo;
struct InstrumentPCM instrument_pcm_data_1266 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_618SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_619SampleInfo;
struct InstrumentPCM instrument_pcm_data_1267 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_619SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_620SampleInfo;
struct InstrumentPCM instrument_pcm_data_1268 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_620SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_621SampleInfo;
struct InstrumentPCM instrument_pcm_data_1269 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_621SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_622SampleInfo;
struct InstrumentPCM instrument_pcm_data_1270 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_622SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_623SampleInfo;
struct InstrumentPCM instrument_pcm_data_1271 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_623SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_624SampleInfo;
struct InstrumentPCM instrument_pcm_data_1272 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_624SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_625SampleInfo;
struct InstrumentPCM instrument_pcm_data_1273 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_625SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_626SampleInfo;
struct InstrumentPCM instrument_pcm_data_1274 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_626SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_627SampleInfo;
struct InstrumentPCM instrument_pcm_data_1275 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_627SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_628SampleInfo;
struct InstrumentPCM instrument_pcm_data_1276 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_628SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_629SampleInfo;
struct InstrumentPCM instrument_pcm_data_1277 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_629SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_630SampleInfo;
struct InstrumentPCM instrument_pcm_data_1278 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_630SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_631SampleInfo;
struct InstrumentPCM instrument_pcm_data_1279 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_631SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_632SampleInfo;
struct InstrumentPCM instrument_pcm_data_1280 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_632SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_633SampleInfo;
struct InstrumentPCM instrument_pcm_data_1281 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_633SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_634SampleInfo;
struct InstrumentPCM instrument_pcm_data_1282 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_634SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_635SampleInfo;
struct InstrumentPCM instrument_pcm_data_1283 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_635SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_636SampleInfo;
struct InstrumentPCM instrument_pcm_data_1284 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_636SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_637SampleInfo;
struct InstrumentPCM instrument_pcm_data_1285 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_637SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_638SampleInfo;
struct InstrumentPCM instrument_pcm_data_1286 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_638SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_639SampleInfo;
struct InstrumentPCM instrument_pcm_data_1287 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_639SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_640SampleInfo;
struct InstrumentPCM instrument_pcm_data_1288 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_640SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_641SampleInfo;
struct InstrumentPCM instrument_pcm_data_1289 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_641SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_642SampleInfo;
struct InstrumentPCM instrument_pcm_data_1290 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_642SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_643SampleInfo;
struct InstrumentPCM instrument_pcm_data_1291 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_643SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_644SampleInfo;
struct InstrumentPCM instrument_pcm_data_1292 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_644SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_645SampleInfo;
struct InstrumentPCM instrument_pcm_data_1293 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_645SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_646SampleInfo;
struct InstrumentPCM instrument_pcm_data_1294 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_646SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_647SampleInfo;
struct InstrumentPCM instrument_pcm_data_1295 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_647SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_648SampleInfo;
struct InstrumentPCM instrument_pcm_data_1296 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_648SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_649SampleInfo;
struct InstrumentPCM instrument_pcm_data_1297 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_649SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_650SampleInfo;
struct InstrumentPCM instrument_pcm_data_1298 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_650SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_651SampleInfo;
struct InstrumentPCM instrument_pcm_data_1299 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_651SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_652SampleInfo;
struct InstrumentPCM instrument_pcm_data_1300 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_652SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_653SampleInfo;
struct InstrumentPCM instrument_pcm_data_1301 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_653SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_654SampleInfo;
struct InstrumentPCM instrument_pcm_data_1302 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_654SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_655SampleInfo;
struct InstrumentPCM instrument_pcm_data_1303 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_655SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_656SampleInfo;
struct InstrumentPCM instrument_pcm_data_1304 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_656SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_657SampleInfo;
struct InstrumentPCM instrument_pcm_data_1305 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_657SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_658SampleInfo;
struct InstrumentPCM instrument_pcm_data_1306 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_658SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_659SampleInfo;
struct InstrumentPCM instrument_pcm_data_1307 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_659SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_660SampleInfo;
struct InstrumentPCM instrument_pcm_data_1308 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_660SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_661SampleInfo;
struct InstrumentPCM instrument_pcm_data_1309 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_661SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_662SampleInfo;
struct InstrumentPCM instrument_pcm_data_1310 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_662SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_663SampleInfo;
struct InstrumentPCM instrument_pcm_data_1311 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_663SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_664SampleInfo;
struct InstrumentPCM instrument_pcm_data_1312 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_664SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_665SampleInfo;
struct InstrumentPCM instrument_pcm_data_1313 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_665SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_666SampleInfo;
struct InstrumentPCM instrument_pcm_data_1314 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_666SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_667SampleInfo;
struct InstrumentPCM instrument_pcm_data_1315 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_667SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_668SampleInfo;
struct InstrumentPCM instrument_pcm_data_1316 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_668SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_669SampleInfo;
struct InstrumentPCM instrument_pcm_data_1317 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_669SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_670SampleInfo;
struct InstrumentPCM instrument_pcm_data_1318 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_670SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_671SampleInfo;
struct InstrumentPCM instrument_pcm_data_1319 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_671SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_672SampleInfo;
struct InstrumentPCM instrument_pcm_data_1320 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_672SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_673SampleInfo;
struct InstrumentPCM instrument_pcm_data_1321 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_673SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_674SampleInfo;
struct InstrumentPCM instrument_pcm_data_1322 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_674SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_675SampleInfo;
struct InstrumentPCM instrument_pcm_data_1323 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_675SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_676SampleInfo;
struct InstrumentPCM instrument_pcm_data_1324 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_676SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_677SampleInfo;
struct InstrumentPCM instrument_pcm_data_1325 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_677SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_678SampleInfo;
struct InstrumentPCM instrument_pcm_data_1326 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_678SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_679SampleInfo;
struct InstrumentPCM instrument_pcm_data_1327 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_679SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_680SampleInfo;
struct InstrumentPCM instrument_pcm_data_1328 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_680SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_681SampleInfo;
struct InstrumentPCM instrument_pcm_data_1329 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_681SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_682SampleInfo;
struct InstrumentPCM instrument_pcm_data_1330 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_682SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_683SampleInfo;
struct InstrumentPCM instrument_pcm_data_1331 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_683SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_684SampleInfo;
struct InstrumentPCM instrument_pcm_data_1332 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_684SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_685SampleInfo;
struct InstrumentPCM instrument_pcm_data_1333 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_685SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_686SampleInfo;
struct InstrumentPCM instrument_pcm_data_1334 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_686SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_687SampleInfo;
struct InstrumentPCM instrument_pcm_data_1335 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_687SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_688SampleInfo;
struct InstrumentPCM instrument_pcm_data_1336 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_688SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_689SampleInfo;
struct InstrumentPCM instrument_pcm_data_1337 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_689SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_690SampleInfo;
struct InstrumentPCM instrument_pcm_data_1338 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_690SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_691SampleInfo;
struct InstrumentPCM instrument_pcm_data_1339 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_691SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_692SampleInfo;
struct InstrumentPCM instrument_pcm_data_1340 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_692SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_693SampleInfo;
struct InstrumentPCM instrument_pcm_data_1341 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_693SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_694SampleInfo;
struct InstrumentPCM instrument_pcm_data_1342 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_694SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_695SampleInfo;
struct InstrumentPCM instrument_pcm_data_1343 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_695SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_696SampleInfo;
struct InstrumentPCM instrument_pcm_data_1344 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_696SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_697SampleInfo;
struct InstrumentPCM instrument_pcm_data_1345 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_697SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_698SampleInfo;
struct InstrumentPCM instrument_pcm_data_1346 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_698SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_699SampleInfo;
struct InstrumentPCM instrument_pcm_data_1347 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_699SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_700SampleInfo;
struct InstrumentPCM instrument_pcm_data_1348 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_700SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_701SampleInfo;
struct InstrumentPCM instrument_pcm_data_1349 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_701SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_702SampleInfo;
struct InstrumentPCM instrument_pcm_data_1350 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_702SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_703SampleInfo;
struct InstrumentPCM instrument_pcm_data_1351 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_703SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_704SampleInfo;
struct InstrumentPCM instrument_pcm_data_1352 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_704SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_705SampleInfo;
struct InstrumentPCM instrument_pcm_data_1353 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_705SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_706SampleInfo;
struct InstrumentPCM instrument_pcm_data_1354 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_706SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_707SampleInfo;
struct InstrumentPCM instrument_pcm_data_1355 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_707SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_708SampleInfo;
struct InstrumentPCM instrument_pcm_data_1356 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_708SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_709SampleInfo;
struct InstrumentPCM instrument_pcm_data_1357 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_709SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_710SampleInfo;
struct InstrumentPCM instrument_pcm_data_1358 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_710SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_711SampleInfo;
struct InstrumentPCM instrument_pcm_data_1359 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_711SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_712SampleInfo;
struct InstrumentPCM instrument_pcm_data_1360 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_712SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_713SampleInfo;
struct InstrumentPCM instrument_pcm_data_1361 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_713SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_714SampleInfo;
struct InstrumentPCM instrument_pcm_data_1362 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_714SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_715SampleInfo;
struct InstrumentPCM instrument_pcm_data_1363 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_715SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_716SampleInfo;
struct InstrumentPCM instrument_pcm_data_1364 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_716SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_717SampleInfo;
struct InstrumentPCM instrument_pcm_data_1365 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_717SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_718SampleInfo;
struct InstrumentPCM instrument_pcm_data_1366 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_718SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_719SampleInfo;
struct InstrumentPCM instrument_pcm_data_1367 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_719SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_720SampleInfo;
struct InstrumentPCM instrument_pcm_data_1368 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_720SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_721SampleInfo;
struct InstrumentPCM instrument_pcm_data_1369 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_721SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_722SampleInfo;
struct InstrumentPCM instrument_pcm_data_1370 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_722SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_723SampleInfo;
struct InstrumentPCM instrument_pcm_data_1371 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_723SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_724SampleInfo;
struct InstrumentPCM instrument_pcm_data_1372 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_724SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_725SampleInfo;
struct InstrumentPCM instrument_pcm_data_1373 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_725SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_726SampleInfo;
struct InstrumentPCM instrument_pcm_data_1374 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_726SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_727SampleInfo;
struct InstrumentPCM instrument_pcm_data_1375 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_727SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_728SampleInfo;
struct InstrumentPCM instrument_pcm_data_1376 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_728SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_729SampleInfo;
struct InstrumentPCM instrument_pcm_data_1377 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_729SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_730SampleInfo;
struct InstrumentPCM instrument_pcm_data_1378 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_730SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_731SampleInfo;
struct InstrumentPCM instrument_pcm_data_1379 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_731SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_732SampleInfo;
struct InstrumentPCM instrument_pcm_data_1380 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_732SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_733SampleInfo;
struct InstrumentPCM instrument_pcm_data_1381 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_733SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_734SampleInfo;
struct InstrumentPCM instrument_pcm_data_1382 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_734SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_735SampleInfo;
struct InstrumentPCM instrument_pcm_data_1383 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_735SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_736SampleInfo;
struct InstrumentPCM instrument_pcm_data_1384 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_736SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_737SampleInfo;
struct InstrumentPCM instrument_pcm_data_1385 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_737SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_738SampleInfo;
struct InstrumentPCM instrument_pcm_data_1386 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_738SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_739SampleInfo;
struct InstrumentPCM instrument_pcm_data_1387 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_739SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_740SampleInfo;
struct InstrumentPCM instrument_pcm_data_1388 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_740SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_741SampleInfo;
struct InstrumentPCM instrument_pcm_data_1389 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_741SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_742SampleInfo;
struct InstrumentPCM instrument_pcm_data_1390 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_742SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_743SampleInfo;
struct InstrumentPCM instrument_pcm_data_1391 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_743SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_744SampleInfo;
struct InstrumentPCM instrument_pcm_data_1392 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_744SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_745SampleInfo;
struct InstrumentPCM instrument_pcm_data_1393 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_745SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_746SampleInfo;
struct InstrumentPCM instrument_pcm_data_1394 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_746SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_747SampleInfo;
struct InstrumentPCM instrument_pcm_data_1395 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_747SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_748SampleInfo;
struct InstrumentPCM instrument_pcm_data_1396 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_748SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_749SampleInfo;
struct InstrumentPCM instrument_pcm_data_1397 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_749SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_750SampleInfo;
struct InstrumentPCM instrument_pcm_data_1398 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_750SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_751SampleInfo;
struct InstrumentPCM instrument_pcm_data_1399 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_751SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_752SampleInfo;
struct InstrumentPCM instrument_pcm_data_1400 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_752SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_753SampleInfo;
struct InstrumentPCM instrument_pcm_data_1401 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_753SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_754SampleInfo;
struct InstrumentPCM instrument_pcm_data_1402 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_754SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_755SampleInfo;
struct InstrumentPCM instrument_pcm_data_1403 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_755SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_756SampleInfo;
struct InstrumentPCM instrument_pcm_data_1404 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_756SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_757SampleInfo;
struct InstrumentPCM instrument_pcm_data_1405 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_757SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_758SampleInfo;
struct InstrumentPCM instrument_pcm_data_1406 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_758SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_759SampleInfo;
struct InstrumentPCM instrument_pcm_data_1407 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_759SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_760SampleInfo;
struct InstrumentPCM instrument_pcm_data_1408 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_760SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_761SampleInfo;
struct InstrumentPCM instrument_pcm_data_1409 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_761SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_762SampleInfo;
struct InstrumentPCM instrument_pcm_data_1410 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_762SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_763SampleInfo;
struct InstrumentPCM instrument_pcm_data_1411 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_763SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_764SampleInfo;
struct InstrumentPCM instrument_pcm_data_1412 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_764SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_765SampleInfo;
struct InstrumentPCM instrument_pcm_data_1413 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_765SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_766SampleInfo;
struct InstrumentPCM instrument_pcm_data_1414 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_766SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_767SampleInfo;
struct InstrumentPCM instrument_pcm_data_1415 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_767SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_768SampleInfo;
struct InstrumentPCM instrument_pcm_data_1416 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_768SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_769SampleInfo;
struct InstrumentPCM instrument_pcm_data_1417 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_769SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_770SampleInfo;
struct InstrumentPCM instrument_pcm_data_1418 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_770SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_771SampleInfo;
struct InstrumentPCM instrument_pcm_data_1419 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_771SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_772SampleInfo;
struct InstrumentPCM instrument_pcm_data_1420 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_772SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_773SampleInfo;
struct InstrumentPCM instrument_pcm_data_1421 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_773SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_774SampleInfo;
struct InstrumentPCM instrument_pcm_data_1422 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_774SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_775SampleInfo;
struct InstrumentPCM instrument_pcm_data_1423 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_775SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_776SampleInfo;
struct InstrumentPCM instrument_pcm_data_1424 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_776SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_777SampleInfo;
struct InstrumentPCM instrument_pcm_data_1425 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_777SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_778SampleInfo;
struct InstrumentPCM instrument_pcm_data_1426 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_778SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_779SampleInfo;
struct InstrumentPCM instrument_pcm_data_1427 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_779SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_780SampleInfo;
struct InstrumentPCM instrument_pcm_data_1428 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_780SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_781SampleInfo;
struct InstrumentPCM instrument_pcm_data_1429 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_781SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_782SampleInfo;
struct InstrumentPCM instrument_pcm_data_1430 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_782SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_783SampleInfo;
struct InstrumentPCM instrument_pcm_data_1431 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_783SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_784SampleInfo;
struct InstrumentPCM instrument_pcm_data_1432 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_784SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_785SampleInfo;
struct InstrumentPCM instrument_pcm_data_1433 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_785SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_786SampleInfo;
struct InstrumentPCM instrument_pcm_data_1434 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_786SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_787SampleInfo;
struct InstrumentPCM instrument_pcm_data_1435 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_787SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_788SampleInfo;
struct InstrumentPCM instrument_pcm_data_1436 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_788SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_789SampleInfo;
struct InstrumentPCM instrument_pcm_data_1437 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_789SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_790SampleInfo;
struct InstrumentPCM instrument_pcm_data_1438 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_790SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_791SampleInfo;
struct InstrumentPCM instrument_pcm_data_1439 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_791SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_449SampleInfo;
struct InstrumentPCM instrument_pcm_data_1440 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_449SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_792SampleInfo;
struct InstrumentPCM instrument_pcm_data_1441 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_792SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_451SampleInfo;
struct InstrumentPCM instrument_pcm_data_1442 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sfx_451SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_793SampleInfo;
struct InstrumentPCM instrument_pcm_data_1443 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x30,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_793SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_591SampleInfo;
struct InstrumentPCM instrument_pcm_data_1444 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_591SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_793SampleInfo;
struct InstrumentPCM instrument_pcm_data_1445 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x36,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_793SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_793SampleInfo;
struct InstrumentPCM instrument_pcm_data_1446 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_793SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_794SampleInfo;
struct InstrumentPCM instrument_pcm_data_1447 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_794SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00014867,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_795SampleInfo;
struct InstrumentPCM instrument_pcm_data_1448 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_795SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_796SampleInfo;
struct InstrumentPCM instrument_pcm_data_1449 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_796SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_796SampleInfo;
struct InstrumentPCM instrument_pcm_data_1450 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3f,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_796SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_796SampleInfo;
struct InstrumentPCM instrument_pcm_data_1451 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x46,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_796SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_797SampleInfo;
struct InstrumentPCM instrument_pcm_data_1452 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_797SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_798SampleInfo;
struct InstrumentPCM instrument_pcm_data_1453 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_798SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_799SampleInfo;
struct InstrumentPCM instrument_pcm_data_1454 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_799SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_456SampleInfo;
struct InstrumentPCM instrument_pcm_data_1455 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_456SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_800SampleInfo;
struct InstrumentPCM instrument_pcm_data_1456 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_800SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00022aa4,
};

extern const struct SampleInfo sfx_801SampleInfo;
struct InstrumentPCM instrument_pcm_data_1457 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_801SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_600SampleInfo;
struct InstrumentPCM instrument_pcm_data_1458 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_600SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_588SampleInfo;
struct InstrumentPCM instrument_pcm_data_1459 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_588SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_589SampleInfo;
struct InstrumentPCM instrument_pcm_data_1460 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_589SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_802SampleInfo;
struct InstrumentPCM instrument_pcm_data_1461 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_802SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_803SampleInfo;
struct InstrumentPCM instrument_pcm_data_1462 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_803SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_188SampleInfo;
struct InstrumentPCM instrument_pcm_data_1463 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sfx_188SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_804SampleInfo;
struct InstrumentPCM instrument_pcm_data_1464 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_804SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_805SampleInfo;
struct InstrumentPCM instrument_pcm_data_1465 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_805SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_806SampleInfo;
struct InstrumentPCM instrument_pcm_data_1466 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_806SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_807SampleInfo;
struct InstrumentPCM instrument_pcm_data_1467 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_807SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_023SampleInfo;
struct InstrumentPCM instrument_pcm_data_1468 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_023SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_808SampleInfo;
struct InstrumentPCM instrument_pcm_data_1469 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_808SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_809SampleInfo;
struct InstrumentPCM instrument_pcm_data_1470 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_809SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_810SampleInfo;
struct InstrumentPCM instrument_pcm_data_1471 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_810SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_811SampleInfo;
struct InstrumentPCM instrument_pcm_data_1472 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_811SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_812SampleInfo;
struct InstrumentPCM instrument_pcm_data_1473 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_812SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00133e0f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_813SampleInfo;
struct InstrumentPCM instrument_pcm_data_1474 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_813SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_814SampleInfo;
struct InstrumentPCM instrument_pcm_data_1475 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x37,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_814SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern const struct SampleInfo sfx_123SampleInfo;
struct InstrumentPCM instrument_pcm_data_1476 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_123SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_815SampleInfo;
struct InstrumentPCM instrument_pcm_data_1477 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_815SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_816SampleInfo;
struct InstrumentPCM instrument_pcm_data_1478 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_816SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_817SampleInfo;
struct InstrumentPCM instrument_pcm_data_1479 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_817SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern const struct SampleInfo sfx_818SampleInfo;
struct InstrumentPCM instrument_pcm_data_1480 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_818SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_819SampleInfo;
struct InstrumentPCM instrument_pcm_data_1481 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_819SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_820SampleInfo;
struct InstrumentPCM instrument_pcm_data_1482 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_820SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_821SampleInfo;
struct InstrumentPCM instrument_pcm_data_1483 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_821SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_822SampleInfo;
struct InstrumentPCM instrument_pcm_data_1484 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_822SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_823SampleInfo;
struct InstrumentPCM instrument_pcm_data_1485 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_823SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_824SampleInfo;
struct InstrumentPCM instrument_pcm_data_1486 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_824SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_034SampleInfo;
struct InstrumentPCM instrument_pcm_data_1487 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_034SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_600SampleInfo;
struct InstrumentPCM instrument_pcm_data_1488 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_600SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00013fff,
};

extern const struct SampleInfo sfx_825SampleInfo;
struct InstrumentPCM instrument_pcm_data_1489 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_825SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_030SampleInfo;
struct InstrumentPCM instrument_pcm_data_1490 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_030SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_826SampleInfo;
struct InstrumentPCM instrument_pcm_data_1491 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_826SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_827SampleInfo;
struct InstrumentPCM instrument_pcm_data_1492 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_827SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_828SampleInfo;
struct InstrumentPCM instrument_pcm_data_1493 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_828SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_829SampleInfo;
struct InstrumentPCM instrument_pcm_data_1494 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_829SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_830SampleInfo;
struct InstrumentPCM instrument_pcm_data_1495 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_830SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_831SampleInfo;
struct InstrumentPCM instrument_pcm_data_1496 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_831SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_832SampleInfo;
struct InstrumentPCM instrument_pcm_data_1497 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_832SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_833SampleInfo;
struct InstrumentPCM instrument_pcm_data_1498 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_833SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_834SampleInfo;
struct InstrumentPCM instrument_pcm_data_1499 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_834SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_835SampleInfo;
struct InstrumentPCM instrument_pcm_data_1500 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_835SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1501 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

extern const struct SampleInfo sfx_824SampleInfo;
struct InstrumentPCM instrument_pcm_data_1502 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_824SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_836SampleInfo;
struct InstrumentPCM instrument_pcm_data_1503 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_836SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_791SampleInfo;
struct InstrumentPCM instrument_pcm_data_1504 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_791SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_837SampleInfo;
struct InstrumentPCM instrument_pcm_data_1505 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_837SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_838SampleInfo;
struct InstrumentPCM instrument_pcm_data_1506 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_838SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_839SampleInfo;
struct InstrumentPCM instrument_pcm_data_1507 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_839SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_824SampleInfo;
struct InstrumentPCM instrument_pcm_data_1508 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_824SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_509SampleInfo;
struct InstrumentPCM instrument_pcm_data_1509 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_509SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_840SampleInfo;
struct InstrumentPCM instrument_pcm_data_1510 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_840SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_832SampleInfo;
struct InstrumentPCM instrument_pcm_data_1511 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_832SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_818SampleInfo;
struct InstrumentPCM instrument_pcm_data_1512 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_818SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_841SampleInfo;
struct InstrumentPCM instrument_pcm_data_1513 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_841SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_823SampleInfo;
struct InstrumentPCM instrument_pcm_data_1514 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_823SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_127SampleInfo;
struct InstrumentPCM instrument_pcm_data_1515 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_127SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_842SampleInfo;
struct InstrumentPCM instrument_pcm_data_1516 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_842SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_835SampleInfo;
struct InstrumentPCM instrument_pcm_data_1517 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_835SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1518 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x0,
};

extern const struct SampleInfo sfx_819SampleInfo;
struct InstrumentPCM instrument_pcm_data_1519 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_819SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_843SampleInfo;
struct InstrumentPCM instrument_pcm_data_1520 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_843SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_844SampleInfo;
struct InstrumentPCM instrument_pcm_data_1521 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_844SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_845SampleInfo;
struct InstrumentPCM instrument_pcm_data_1522 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_845SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_846SampleInfo;
struct InstrumentPCM instrument_pcm_data_1523 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_846SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_839SampleInfo;
struct InstrumentPCM instrument_pcm_data_1524 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_839SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_847SampleInfo;
struct InstrumentPCM instrument_pcm_data_1525 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_847SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_848SampleInfo;
struct InstrumentPCM instrument_pcm_data_1526 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_848SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_849SampleInfo;
struct InstrumentPCM instrument_pcm_data_1527 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_849SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_429SampleInfo;
struct InstrumentPCM instrument_pcm_data_1528 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_429SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_820SampleInfo;
struct InstrumentPCM instrument_pcm_data_1529 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_820SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_850SampleInfo;
struct InstrumentPCM instrument_pcm_data_1530 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_850SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_851SampleInfo;
struct InstrumentPCM instrument_pcm_data_1531 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_851SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_852SampleInfo;
struct InstrumentPCM instrument_pcm_data_1532 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_852SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_853SampleInfo;
struct InstrumentPCM instrument_pcm_data_1533 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_853SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_854SampleInfo;
struct InstrumentPCM instrument_pcm_data_1534 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_854SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_004SampleInfo;
struct InstrumentPCM instrument_pcm_data_1535 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_004SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_428SampleInfo;
struct InstrumentPCM instrument_pcm_data_1536 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_428SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_214SampleInfo;
struct InstrumentPCM instrument_pcm_data_1537 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_214SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_1538 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_855SampleInfo;
struct InstrumentPCM instrument_pcm_data_1539 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_855SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_818SampleInfo;
struct InstrumentPCM instrument_pcm_data_1540 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_818SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_819SampleInfo;
struct InstrumentPCM instrument_pcm_data_1541 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_819SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_835SampleInfo;
struct InstrumentPCM instrument_pcm_data_1542 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_835SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_856SampleInfo;
struct InstrumentPCM instrument_pcm_data_1543 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_856SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_857SampleInfo;
struct InstrumentPCM instrument_pcm_data_1544 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_857SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1545 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x000418c6,
    /* Channel      */ PSG_NOISE_CHANNEL,
    /* unk21        */ 0x0,
    /* unk22        */ 0x8,
};

extern const struct SampleInfo sfx_820SampleInfo;
struct InstrumentPCM instrument_pcm_data_1546 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_820SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_834SampleInfo;
struct InstrumentPCM instrument_pcm_data_1547 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_834SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_858SampleInfo;
struct InstrumentPCM instrument_pcm_data_1548 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_858SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_859SampleInfo;
struct InstrumentPCM instrument_pcm_data_1549 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_859SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_086SampleInfo;
struct InstrumentPCM instrument_pcm_data_1550 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_086SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_197SampleInfo;
struct InstrumentPCM instrument_pcm_data_1551 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_197SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_860SampleInfo;
struct InstrumentPCM instrument_pcm_data_1552 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_860SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern const struct SampleInfo sfx_860SampleInfo;
struct InstrumentPCM instrument_pcm_data_1553 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_860SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_432SampleInfo;
struct InstrumentPCM instrument_pcm_data_1554 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_432SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1555 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9a2e8, // POINTER
};

extern const struct SampleInfo sfx_832SampleInfo;
struct InstrumentPCM instrument_pcm_data_1556 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_832SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_222SampleInfo;
struct InstrumentPCM instrument_pcm_data_1557 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_222SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_829SampleInfo;
struct InstrumentPCM instrument_pcm_data_1558 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_829SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1559 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_861SampleInfo;
struct InstrumentPCM instrument_pcm_data_1560 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_861SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1561 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_824SampleInfo;
struct InstrumentPCM instrument_pcm_data_1562 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_824SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_862SampleInfo;
struct InstrumentPCM instrument_pcm_data_1563 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_862SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_279SampleInfo;
struct InstrumentPCM instrument_pcm_data_1564 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_279SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_863SampleInfo;
struct InstrumentPCM instrument_pcm_data_1565 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_863SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_864SampleInfo;
struct InstrumentPCM instrument_pcm_data_1566 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_864SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_834SampleInfo;
struct InstrumentPCM instrument_pcm_data_1567 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_834SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_836SampleInfo;
struct InstrumentPCM instrument_pcm_data_1568 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_836SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_829SampleInfo;
struct InstrumentPCM instrument_pcm_data_1569 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_829SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_865SampleInfo;
struct InstrumentPCM instrument_pcm_data_1570 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_865SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_792SampleInfo;
struct InstrumentPCM instrument_pcm_data_1571 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_792SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_866SampleInfo;
struct InstrumentPCM instrument_pcm_data_1572 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_866SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_865SampleInfo;
struct InstrumentPCM instrument_pcm_data_1573 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_865SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_867SampleInfo;
struct InstrumentPCM instrument_pcm_data_1574 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_867SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_434SampleInfo;
struct InstrumentPCM instrument_pcm_data_1575 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_434SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern const struct SampleInfo sfx_346SampleInfo;
struct InstrumentPCM instrument_pcm_data_1576 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_346SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1577 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9940c, // POINTER
};

struct InstrumentPSG instrument_psg_data_1578 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1579 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9a240, // POINTER
};

extern const struct SampleInfo sfx_868SampleInfo;
struct InstrumentPCM instrument_pcm_data_1580 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_868SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_869SampleInfo;
struct InstrumentPCM instrument_pcm_data_1581 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_869SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_431SampleInfo;
struct InstrumentPCM instrument_pcm_data_1582 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_431SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_030SampleInfo;
struct InstrumentPCM instrument_pcm_data_1583 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_030SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_870SampleInfo;
struct InstrumentPCM instrument_pcm_data_1584 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_870SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_792SampleInfo;
struct InstrumentPCM instrument_pcm_data_1585 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_792SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_865SampleInfo;
struct InstrumentPCM instrument_pcm_data_1586 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_865SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_871SampleInfo;
struct InstrumentPCM instrument_pcm_data_1587 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_871SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_872SampleInfo;
struct InstrumentPCM instrument_pcm_data_1588 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_872SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_873SampleInfo;
struct InstrumentPCM instrument_pcm_data_1589 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_873SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_856SampleInfo;
struct InstrumentPCM instrument_pcm_data_1590 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_856SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_874SampleInfo;
struct InstrumentPCM instrument_pcm_data_1591 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_874SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1592 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x001fc000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_875SampleInfo;
struct InstrumentPCM instrument_pcm_data_1593 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_875SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_876SampleInfo;
struct InstrumentPCM instrument_pcm_data_1594 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_876SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_877SampleInfo;
struct InstrumentPCM instrument_pcm_data_1595 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_877SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_791SampleInfo;
struct InstrumentPCM instrument_pcm_data_1596 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_791SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_878SampleInfo;
struct InstrumentPCM instrument_pcm_data_1597 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_878SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_879SampleInfo;
struct InstrumentPCM instrument_pcm_data_1598 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_879SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_791SampleInfo;
struct InstrumentPCM instrument_pcm_data_1599 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_791SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1600 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9a2e8, // POINTER
};

extern const struct SampleInfo sfx_880SampleInfo;
struct InstrumentPCM instrument_pcm_data_1601 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_880SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_881SampleInfo;
struct InstrumentPCM instrument_pcm_data_1602 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_881SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_863SampleInfo;
struct InstrumentPCM instrument_pcm_data_1603 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_863SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_030SampleInfo;
struct InstrumentPCM instrument_pcm_data_1604 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_030SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_430SampleInfo;
struct InstrumentPCM instrument_pcm_data_1605 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_430SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005745d1,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_842SampleInfo;
struct InstrumentPCM instrument_pcm_data_1606 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_842SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_882SampleInfo;
struct InstrumentPCM instrument_pcm_data_1607 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_882SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_883SampleInfo;
struct InstrumentPCM instrument_pcm_data_1608 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_883SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_884SampleInfo;
struct InstrumentPCM instrument_pcm_data_1609 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_884SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_214SampleInfo;
struct InstrumentPCM instrument_pcm_data_1610 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_214SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_122SampleInfo;
struct InstrumentPCM instrument_pcm_data_1611 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_122SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_885SampleInfo;
struct InstrumentPCM instrument_pcm_data_1612 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_885SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_886SampleInfo;
struct InstrumentPCM instrument_pcm_data_1613 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_886SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_823SampleInfo;
struct InstrumentPCM instrument_pcm_data_1614 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_823SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_887SampleInfo;
struct InstrumentPCM instrument_pcm_data_1615 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_887SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_885SampleInfo;
struct InstrumentPCM instrument_pcm_data_1616 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_885SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_198SampleInfo;
struct InstrumentPCM instrument_pcm_data_1617 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_198SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1618 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x24,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a996e4, // POINTER
};

extern const struct SampleInfo sfx_197SampleInfo;
struct InstrumentPCM instrument_pcm_data_1619 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_197SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_030SampleInfo;
struct InstrumentPCM instrument_pcm_data_1620 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_030SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005745d1,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_888SampleInfo;
struct InstrumentPCM instrument_pcm_data_1621 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_888SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1622 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0073745d,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x001fc000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1623 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0073745d,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x001fc000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_086SampleInfo;
struct InstrumentPCM instrument_pcm_data_1624 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_086SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_796SampleInfo;
struct InstrumentPCM instrument_pcm_data_1625 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x46,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_796SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_889SampleInfo;
struct InstrumentPCM instrument_pcm_data_1626 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_889SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern const struct SampleInfo sfx_433SampleInfo;
struct InstrumentPCM instrument_pcm_data_1627 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_433SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_819SampleInfo;
struct InstrumentPCM instrument_pcm_data_1628 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_819SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_890SampleInfo;
struct InstrumentPCM instrument_pcm_data_1629 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_890SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x001f2fd6,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_834SampleInfo;
struct InstrumentPCM instrument_pcm_data_1630 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_834SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_891SampleInfo;
struct InstrumentPCM instrument_pcm_data_1631 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_891SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_859SampleInfo;
struct InstrumentPCM instrument_pcm_data_1632 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_859SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_892SampleInfo;
struct InstrumentPCM instrument_pcm_data_1633 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_892SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x001d8ba2,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_874SampleInfo;
struct InstrumentPCM instrument_pcm_data_1634 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_874SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1635 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00077878,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1636 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x00077878,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1637 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x90,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_892SampleInfo;
struct InstrumentPCM instrument_pcm_data_1638 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_892SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001d8ba2,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0006aa9f,
};

extern const struct SampleInfo sfx_893SampleInfo;
struct InstrumentPCM instrument_pcm_data_1639 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_893SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_864SampleInfo;
struct InstrumentPCM instrument_pcm_data_1640 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_864SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_790SampleInfo;
struct InstrumentPCM instrument_pcm_data_1641 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_790SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern const struct SampleInfo sfx_894SampleInfo;
struct InstrumentPCM instrument_pcm_data_1642 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_894SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_895SampleInfo;
struct InstrumentPCM instrument_pcm_data_1643 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_895SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1644 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_896SampleInfo;
struct InstrumentPCM instrument_pcm_data_1645 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_896SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_897SampleInfo;
struct InstrumentPCM instrument_pcm_data_1646 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_897SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_898SampleInfo;
struct InstrumentPCM instrument_pcm_data_1647 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_898SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_899SampleInfo;
struct InstrumentPCM instrument_pcm_data_1648 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_899SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_900SampleInfo;
struct InstrumentPCM instrument_pcm_data_1649 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_900SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

struct InstrumentPSG instrument_psg_data_1650 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1651 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_2,
    /* unk21        */ 0x0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1652 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0xd0,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1653 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x007f0000,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x007f0000,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x007f0000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x58,
    /* unk22        */ 0x4,
};

struct InstrumentPSG instrument_psg_data_1654 = {
    {
        /* Type */ INSTRUMENT_PSG,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Wave Channel */ NULL,
    /* unk8         */ 0x0066a052,
    /* unkC         */ 0x007e0000,
    /* unk10        */ 0x00122492,
    /* unk14        */ 0x007f0000,
    /* unk18        */ 0x00000000,
    /* unk1C        */ 0x003f8000,
    /* Channel      */ PSG_PULSE_CHANNEL_1,
    /* unk21        */ 0x78,
    /* unk22        */ 0x4,
};

extern const struct SampleInfo sfx_439SampleInfo;
struct InstrumentPCM instrument_pcm_data_1655 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_439SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_901SampleInfo;
struct InstrumentPCM instrument_pcm_data_1656 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_901SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0011952a,
};

extern const struct SampleInfo sfx_901SampleInfo;
struct InstrumentPCM instrument_pcm_data_1657 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_901SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_902SampleInfo;
struct InstrumentPCM instrument_pcm_data_1658 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_902SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

struct InstrumentSubbankSingleKey instrument_subbank_single_key_data_1659 = {
    {
        /* Type */ INSTRUMENT_SUBBANK_SINGLE_KEY,
        /* unk1 */ 0x18,
        /* unk2 */ 0x0,
    },
    /* Sub-bank */ (void *)0x08a9a240, // POINTER
};

extern const struct SampleInfo sfx_903SampleInfo;
struct InstrumentPCM instrument_pcm_data_1660 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_903SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_904SampleInfo;
struct InstrumentPCM instrument_pcm_data_1661 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_904SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_905SampleInfo;
struct InstrumentPCM instrument_pcm_data_1662 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_905SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_906SampleInfo;
struct InstrumentPCM instrument_pcm_data_1663 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_906SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_907SampleInfo;
struct InstrumentPCM instrument_pcm_data_1664 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_907SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_908SampleInfo;
struct InstrumentPCM instrument_pcm_data_1665 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_908SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern const struct SampleInfo sfx_909SampleInfo;
struct InstrumentPCM instrument_pcm_data_1666 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_909SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_910SampleInfo;
struct InstrumentPCM instrument_pcm_data_1667 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_910SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_911SampleInfo;
struct InstrumentPCM instrument_pcm_data_1668 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_911SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_912SampleInfo;
struct InstrumentPCM instrument_pcm_data_1669 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_912SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_913SampleInfo;
struct InstrumentPCM instrument_pcm_data_1670 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_913SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern const struct SampleInfo sfx_914SampleInfo;
struct InstrumentPCM instrument_pcm_data_1671 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_914SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_915SampleInfo;
struct InstrumentPCM instrument_pcm_data_1672 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_915SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_916SampleInfo;
struct InstrumentPCM instrument_pcm_data_1673 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_916SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0000c000,
};

extern const struct SampleInfo sfx_917SampleInfo;
struct InstrumentPCM instrument_pcm_data_1674 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_917SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_918SampleInfo;
struct InstrumentPCM instrument_pcm_data_1675 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_918SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_919SampleInfo;
struct InstrumentPCM instrument_pcm_data_1676 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_919SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern const struct SampleInfo sfx_919SampleInfo;
struct InstrumentPCM instrument_pcm_data_1677 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_919SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_920SampleInfo;
struct InstrumentPCM instrument_pcm_data_1678 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_920SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern const struct SampleInfo sfx_921SampleInfo;
struct InstrumentPCM instrument_pcm_data_1679 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_921SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_922SampleInfo;
struct InstrumentPCM instrument_pcm_data_1680 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_922SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_923SampleInfo;
struct InstrumentPCM instrument_pcm_data_1681 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_923SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_859SampleInfo;
struct InstrumentPCM instrument_pcm_data_1682 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_859SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_924SampleInfo;
struct InstrumentPCM instrument_pcm_data_1683 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_924SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_925SampleInfo;
struct InstrumentPCM instrument_pcm_data_1684 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_925SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_926SampleInfo;
struct InstrumentPCM instrument_pcm_data_1685 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_926SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_927SampleInfo;
struct InstrumentPCM instrument_pcm_data_1686 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_927SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_928SampleInfo;
struct InstrumentPCM instrument_pcm_data_1687 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_928SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_929SampleInfo;
struct InstrumentPCM instrument_pcm_data_1688 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_929SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_930SampleInfo;
struct InstrumentPCM instrument_pcm_data_1689 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_930SampleInfo,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_931SampleInfo;
struct InstrumentPCM instrument_pcm_data_1690 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_931SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern const struct SampleInfo sfx_844SampleInfo;
struct InstrumentPCM instrument_pcm_data_1691 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_844SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_868SampleInfo;
struct InstrumentPCM instrument_pcm_data_1692 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_868SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_869SampleInfo;
struct InstrumentPCM instrument_pcm_data_1693 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_869SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_431SampleInfo;
struct InstrumentPCM instrument_pcm_data_1694 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_431SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_880SampleInfo;
struct InstrumentPCM instrument_pcm_data_1695 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_880SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_883SampleInfo;
struct InstrumentPCM instrument_pcm_data_1696 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_883SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_884SampleInfo;
struct InstrumentPCM instrument_pcm_data_1697 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_884SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_887SampleInfo;
struct InstrumentPCM instrument_pcm_data_1698 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_887SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_825SampleInfo;
struct InstrumentPCM instrument_pcm_data_1699 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_825SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_827SampleInfo;
struct InstrumentPCM instrument_pcm_data_1700 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_827SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_811SampleInfo;
struct InstrumentPCM instrument_pcm_data_1701 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_811SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_812SampleInfo;
struct InstrumentPCM instrument_pcm_data_1702 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_812SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00133e0f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_813SampleInfo;
struct InstrumentPCM instrument_pcm_data_1703 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_813SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern const struct SampleInfo sfx_834SampleInfo;
struct InstrumentPCM instrument_pcm_data_1704 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_834SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern const struct SampleInfo sfx_461SampleInfo;
struct InstrumentPCM instrument_pcm_data_1705 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_461SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_463SampleInfo;
struct InstrumentPCM instrument_pcm_data_1706 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_463SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_087SampleInfo;
struct InstrumentPCM instrument_pcm_data_1707 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_087SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern const struct SampleInfo sfx_468SampleInfo;
struct InstrumentPCM instrument_pcm_data_1708 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_468SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern const struct SampleInfo sfx_898SampleInfo;
struct InstrumentPCM instrument_pcm_data_1709 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_898SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_899SampleInfo;
struct InstrumentPCM instrument_pcm_data_1710 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_899SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_932SampleInfo;
struct InstrumentPCM instrument_pcm_data_1711 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_932SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_933SampleInfo;
struct InstrumentPCM instrument_pcm_data_1712 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_933SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_934SampleInfo;
struct InstrumentPCM instrument_pcm_data_1713 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_934SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_935SampleInfo;
struct InstrumentPCM instrument_pcm_data_1714 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_935SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_936SampleInfo;
struct InstrumentPCM instrument_pcm_data_1715 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_936SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_937SampleInfo;
struct InstrumentPCM instrument_pcm_data_1716 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_937SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_938SampleInfo;
struct InstrumentPCM instrument_pcm_data_1717 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_938SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_939SampleInfo;
struct InstrumentPCM instrument_pcm_data_1718 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_939SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_940SampleInfo;
struct InstrumentPCM instrument_pcm_data_1719 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_940SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_941SampleInfo;
struct InstrumentPCM instrument_pcm_data_1720 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_941SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_942SampleInfo;
struct InstrumentPCM instrument_pcm_data_1721 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_942SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_943SampleInfo;
struct InstrumentPCM instrument_pcm_data_1722 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_943SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_944SampleInfo;
struct InstrumentPCM instrument_pcm_data_1723 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_944SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_945SampleInfo;
struct InstrumentPCM instrument_pcm_data_1724 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_945SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_946SampleInfo;
struct InstrumentPCM instrument_pcm_data_1725 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_946SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_947SampleInfo;
struct InstrumentPCM instrument_pcm_data_1726 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_947SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_948SampleInfo;
struct InstrumentPCM instrument_pcm_data_1727 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_948SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_949SampleInfo;
struct InstrumentPCM instrument_pcm_data_1728 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_949SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_950SampleInfo;
struct InstrumentPCM instrument_pcm_data_1729 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_950SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_951SampleInfo;
struct InstrumentPCM instrument_pcm_data_1730 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_951SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_952SampleInfo;
struct InstrumentPCM instrument_pcm_data_1731 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_952SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_953SampleInfo;
struct InstrumentPCM instrument_pcm_data_1732 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_953SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_954SampleInfo;
struct InstrumentPCM instrument_pcm_data_1733 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_954SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_955SampleInfo;
struct InstrumentPCM instrument_pcm_data_1734 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_955SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_956SampleInfo;
struct InstrumentPCM instrument_pcm_data_1735 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_956SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_957SampleInfo;
struct InstrumentPCM instrument_pcm_data_1736 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_957SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_958SampleInfo;
struct InstrumentPCM instrument_pcm_data_1737 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_958SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_959SampleInfo;
struct InstrumentPCM instrument_pcm_data_1738 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_959SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_960SampleInfo;
struct InstrumentPCM instrument_pcm_data_1739 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_960SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_961SampleInfo;
struct InstrumentPCM instrument_pcm_data_1740 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_961SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern const struct SampleInfo sfx_962SampleInfo;
struct InstrumentPCM instrument_pcm_data_1741 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sfx_962SampleInfo,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};
