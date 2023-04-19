#include "global.h"
#include "sound.h"

extern struct SampleInfo sample_001_info;
struct InstrumentPCM instrument_pcm_data_1 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_001_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_002_info;
struct InstrumentPCM instrument_pcm_data_2 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_002_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_002_info;
struct InstrumentPCM instrument_pcm_data_3 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_002_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_003_info;
struct InstrumentPCM instrument_pcm_data_4 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_004_info;
struct InstrumentPCM instrument_pcm_data_5 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_004_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_005_info;
struct InstrumentPCM instrument_pcm_data_6 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_006_info;
struct InstrumentPCM instrument_pcm_data_7 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_007_info;
struct InstrumentPCM instrument_pcm_data_8 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_007_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_9 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_009_info;
struct InstrumentPCM instrument_pcm_data_10 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_info,
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

extern struct SampleInfo sample_010_info;
struct InstrumentPCM instrument_pcm_data_12 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_010_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_011_info;
struct InstrumentPCM instrument_pcm_data_13 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_011_info,
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

extern struct SampleInfo sample_012_info;
struct InstrumentPCM instrument_pcm_data_17 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_012_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_013_info;
struct InstrumentPCM instrument_pcm_data_18 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_013_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_014_info;
struct InstrumentPCM instrument_pcm_data_19 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_014_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_20 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_016_info;
struct InstrumentPCM instrument_pcm_data_21 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_22 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_018_info;
struct InstrumentPCM instrument_pcm_data_23 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_018_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_019_info;
struct InstrumentPCM instrument_pcm_data_24 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_019_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_020_info;
struct InstrumentPCM instrument_pcm_data_25 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_020_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_021_info;
struct InstrumentPCM instrument_pcm_data_26 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_021_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_022_info;
struct InstrumentPCM instrument_pcm_data_27 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_022_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_023_info;
struct InstrumentPCM instrument_pcm_data_28 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_023_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_024_info;
struct InstrumentPCM instrument_pcm_data_29 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_024_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_025_info;
struct InstrumentPCM instrument_pcm_data_30 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_025_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_026_info;
struct InstrumentPCM instrument_pcm_data_31 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_026_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_32 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_027_info;
struct InstrumentPCM instrument_pcm_data_33 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_34 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_029_info;
struct InstrumentPCM instrument_pcm_data_35 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_029_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_030_info;
struct InstrumentPCM instrument_pcm_data_36 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_info,
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

extern struct SampleInfo sample_031_info;
struct InstrumentPCM instrument_pcm_data_38 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_031_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_032_info;
struct InstrumentPCM instrument_pcm_data_39 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_032_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_033_info;
struct InstrumentPCM instrument_pcm_data_40 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_033_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_034_info;
struct InstrumentPCM instrument_pcm_data_41 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_034_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_035_info;
struct InstrumentPCM instrument_pcm_data_42 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_035_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_036_info;
struct InstrumentPCM instrument_pcm_data_43 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_036_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_037_info;
struct InstrumentPCM instrument_pcm_data_44 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_037_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_038_info;
struct InstrumentPCM instrument_pcm_data_45 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_038_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_039_info;
struct InstrumentPCM instrument_pcm_data_46 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_039_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_040_info;
struct InstrumentPCM instrument_pcm_data_47 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_040_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_041_info;
struct InstrumentPCM instrument_pcm_data_48 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_49 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_042_info;
struct InstrumentPCM instrument_pcm_data_50 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_043_info;
struct InstrumentPCM instrument_pcm_data_51 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_info,
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

extern struct SampleInfo sample_044_info;
struct InstrumentPCM instrument_pcm_data_56 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_044_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_045_info;
struct InstrumentPCM instrument_pcm_data_57 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_045_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_046_info;
struct InstrumentPCM instrument_pcm_data_58 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_046_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_047_info;
struct InstrumentPCM instrument_pcm_data_59 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_047_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_048_info;
struct InstrumentPCM instrument_pcm_data_60 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_048_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_049_info;
struct InstrumentPCM instrument_pcm_data_61 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_049_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_050_info;
struct InstrumentPCM instrument_pcm_data_62 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_050_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_051_info;
struct InstrumentPCM instrument_pcm_data_63 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_051_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_052_info;
struct InstrumentPCM instrument_pcm_data_64 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_052_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_053_info;
struct InstrumentPCM instrument_pcm_data_65 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_053_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_054_info;
struct InstrumentPCM instrument_pcm_data_66 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_054_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_055_info;
struct InstrumentPCM instrument_pcm_data_67 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_055_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_056_info;
struct InstrumentPCM instrument_pcm_data_68 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_056_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_057_info;
struct InstrumentPCM instrument_pcm_data_69 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_057_info,
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

extern struct SampleInfo sample_016_info;
struct InstrumentPCM instrument_pcm_data_71 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_027_info;
struct InstrumentPCM instrument_pcm_data_72 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_73 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_058_info;
struct InstrumentPCM instrument_pcm_data_74 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_059_info;
struct InstrumentPCM instrument_pcm_data_75 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_059_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_76 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_77 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_060_info;
struct InstrumentPCM instrument_pcm_data_78 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_061_info;
struct InstrumentPCM instrument_pcm_data_79 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_061_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_062_info;
struct InstrumentPCM instrument_pcm_data_80 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_062_info,
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

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_82 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_83 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_060_info;
struct InstrumentPCM instrument_pcm_data_84 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_043_info;
struct InstrumentPCM instrument_pcm_data_85 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_027_info;
struct InstrumentPCM instrument_pcm_data_86 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_058_info;
struct InstrumentPCM instrument_pcm_data_87 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_88 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
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

extern struct SampleInfo sample_016_info;
struct InstrumentPCM instrument_pcm_data_91 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_059_info;
struct InstrumentPCM instrument_pcm_data_92 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_059_info,
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

extern struct SampleInfo sample_031_info;
struct InstrumentPCM instrument_pcm_data_94 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_031_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_041_info;
struct InstrumentPCM instrument_pcm_data_95 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_063_info;
struct InstrumentPCM instrument_pcm_data_96 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_063_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_064_info;
struct InstrumentPCM instrument_pcm_data_97 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_064_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_065_info;
struct InstrumentPCM instrument_pcm_data_98 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_065_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_066_info;
struct InstrumentPCM instrument_pcm_data_99 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_066_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_067_info;
struct InstrumentPCM instrument_pcm_data_100 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_067_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_068_info;
struct InstrumentPCM instrument_pcm_data_101 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_068_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_069_info;
struct InstrumentPCM instrument_pcm_data_102 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_069_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_070_info;
struct InstrumentPCM instrument_pcm_data_103 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_070_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_071_info;
struct InstrumentPCM instrument_pcm_data_104 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_071_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_072_info;
struct InstrumentPCM instrument_pcm_data_105 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_072_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_073_info;
struct InstrumentPCM instrument_pcm_data_106 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_073_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_074_info;
struct InstrumentPCM instrument_pcm_data_107 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_074_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_075_info;
struct InstrumentPCM instrument_pcm_data_108 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_075_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_076_info;
struct InstrumentPCM instrument_pcm_data_109 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_076_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_077_info;
struct InstrumentPCM instrument_pcm_data_110 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_077_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_078_info;
struct InstrumentPCM instrument_pcm_data_111 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_078_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_079_info;
struct InstrumentPCM instrument_pcm_data_112 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_079_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_080_info;
struct InstrumentPCM instrument_pcm_data_113 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_080_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_081_info;
struct InstrumentPCM instrument_pcm_data_114 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_081_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_082_info;
struct InstrumentPCM instrument_pcm_data_115 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_082_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_083_info;
struct InstrumentPCM instrument_pcm_data_116 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_083_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_084_info;
struct InstrumentPCM instrument_pcm_data_117 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_084_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_085_info;
struct InstrumentPCM instrument_pcm_data_118 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_085_info,
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

extern struct SampleInfo sample_086_info;
struct InstrumentPCM instrument_pcm_data_121 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_122 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_info,
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

extern struct SampleInfo sample_034_info;
struct InstrumentPCM instrument_pcm_data_124 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_034_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_088_info;
struct InstrumentPCM instrument_pcm_data_125 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_088_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_089_info;
struct InstrumentPCM instrument_pcm_data_126 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_089_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_090_info;
struct InstrumentPCM instrument_pcm_data_127 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_090_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_091_info;
struct InstrumentPCM instrument_pcm_data_128 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_091_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_092_info;
struct InstrumentPCM instrument_pcm_data_129 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_092_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_093_info;
struct InstrumentPCM instrument_pcm_data_130 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_093_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_094_info;
struct InstrumentPCM instrument_pcm_data_131 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_094_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_095_info;
struct InstrumentPCM instrument_pcm_data_132 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_095_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_096_info;
struct InstrumentPCM instrument_pcm_data_133 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_096_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_097_info;
struct InstrumentPCM instrument_pcm_data_134 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_097_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_098_info;
struct InstrumentPCM instrument_pcm_data_135 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_098_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_099_info;
struct InstrumentPCM instrument_pcm_data_136 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_099_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_100_info;
struct InstrumentPCM instrument_pcm_data_137 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_100_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_101_info;
struct InstrumentPCM instrument_pcm_data_138 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_101_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_102_info;
struct InstrumentPCM instrument_pcm_data_139 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_102_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_103_info;
struct InstrumentPCM instrument_pcm_data_140 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_103_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_104_info;
struct InstrumentPCM instrument_pcm_data_141 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_104_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_105_info;
struct InstrumentPCM instrument_pcm_data_142 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_105_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_106_info;
struct InstrumentPCM instrument_pcm_data_143 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_106_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_107_info;
struct InstrumentPCM instrument_pcm_data_144 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_107_info,
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

extern struct SampleInfo sample_016_info;
struct InstrumentPCM instrument_pcm_data_146 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_108_info;
struct InstrumentPCM instrument_pcm_data_147 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_108_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_148 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_109_info;
struct InstrumentPCM instrument_pcm_data_149 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_109_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_150 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_110_info;
struct InstrumentPCM instrument_pcm_data_151 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_111_info;
struct InstrumentPCM instrument_pcm_data_152 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_112_info;
struct InstrumentPCM instrument_pcm_data_153 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_112_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_060_info;
struct InstrumentPCM instrument_pcm_data_154 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_155 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_156 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
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

extern struct SampleInfo sample_043_info;
struct InstrumentPCM instrument_pcm_data_158 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_042_info;
struct InstrumentPCM instrument_pcm_data_159 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_160 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_058_info;
struct InstrumentPCM instrument_pcm_data_161 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_027_info;
struct InstrumentPCM instrument_pcm_data_162 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_163 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_115_info;
struct InstrumentPCM instrument_pcm_data_164 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_115_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_116_info;
struct InstrumentPCM instrument_pcm_data_165 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_116_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_166 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_117_info;
struct InstrumentPCM instrument_pcm_data_167 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_118_info;
struct InstrumentPCM instrument_pcm_data_168 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_118_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_119_info;
struct InstrumentPCM instrument_pcm_data_169 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_119_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_120_info;
struct InstrumentPCM instrument_pcm_data_170 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_120_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_121_info;
struct InstrumentPCM instrument_pcm_data_171 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_121_info,
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

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_174 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_121_info;
struct InstrumentPCM instrument_pcm_data_175 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_121_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_123_info;
struct InstrumentPCM instrument_pcm_data_176 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_123_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_124_info;
struct InstrumentPCM instrument_pcm_data_177 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_124_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_125_info;
struct InstrumentPCM instrument_pcm_data_178 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_125_info,
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

extern struct SampleInfo sample_126_info;
struct InstrumentPCM instrument_pcm_data_182 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_126_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_127_info;
struct InstrumentPCM instrument_pcm_data_183 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_127_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_128_info;
struct InstrumentPCM instrument_pcm_data_184 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_128_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_129_info;
struct InstrumentPCM instrument_pcm_data_185 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_129_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_130_info;
struct InstrumentPCM instrument_pcm_data_186 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_130_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_131_info;
struct InstrumentPCM instrument_pcm_data_187 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_131_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_132_info;
struct InstrumentPCM instrument_pcm_data_188 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_132_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_133_info;
struct InstrumentPCM instrument_pcm_data_189 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_133_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_134_info;
struct InstrumentPCM instrument_pcm_data_190 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_134_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_135_info;
struct InstrumentPCM instrument_pcm_data_191 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_135_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_136_info;
struct InstrumentPCM instrument_pcm_data_192 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_136_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_137_info;
struct InstrumentPCM instrument_pcm_data_193 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_137_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_138_info;
struct InstrumentPCM instrument_pcm_data_194 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_138_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_139_info;
struct InstrumentPCM instrument_pcm_data_195 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_139_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_140_info;
struct InstrumentPCM instrument_pcm_data_196 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_140_info,
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

extern struct SampleInfo sample_141_info;
struct InstrumentPCM instrument_pcm_data_198 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_141_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_142_info;
struct InstrumentPCM instrument_pcm_data_199 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_142_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_143_info;
struct InstrumentPCM instrument_pcm_data_200 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_143_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_144_info;
struct InstrumentPCM instrument_pcm_data_201 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_144_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_145_info;
struct InstrumentPCM instrument_pcm_data_202 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_145_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_146_info;
struct InstrumentPCM instrument_pcm_data_203 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_146_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_147_info;
struct InstrumentPCM instrument_pcm_data_204 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_147_info,
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

extern struct SampleInfo sample_148_info;
struct InstrumentPCM instrument_pcm_data_206 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_148_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_149_info;
struct InstrumentPCM instrument_pcm_data_207 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_149_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_150_info;
struct InstrumentPCM instrument_pcm_data_208 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_150_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_151_info;
struct InstrumentPCM instrument_pcm_data_209 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_151_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_152_info;
struct InstrumentPCM instrument_pcm_data_210 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_152_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_153_info;
struct InstrumentPCM instrument_pcm_data_211 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_153_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_154_info;
struct InstrumentPCM instrument_pcm_data_212 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_154_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_155_info;
struct InstrumentPCM instrument_pcm_data_213 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_155_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_156_info;
struct InstrumentPCM instrument_pcm_data_214 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_156_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_157_info;
struct InstrumentPCM instrument_pcm_data_215 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_157_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_158_info;
struct InstrumentPCM instrument_pcm_data_216 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_158_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_159_info;
struct InstrumentPCM instrument_pcm_data_217 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_159_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_160_info;
struct InstrumentPCM instrument_pcm_data_218 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_160_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_161_info;
struct InstrumentPCM instrument_pcm_data_219 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_161_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_162_info;
struct InstrumentPCM instrument_pcm_data_220 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_162_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_163_info;
struct InstrumentPCM instrument_pcm_data_221 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_163_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_164_info;
struct InstrumentPCM instrument_pcm_data_222 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_164_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_165_info;
struct InstrumentPCM instrument_pcm_data_223 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_165_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_166_info;
struct InstrumentPCM instrument_pcm_data_224 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_166_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_167_info;
struct InstrumentPCM instrument_pcm_data_225 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_167_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_168_info;
struct InstrumentPCM instrument_pcm_data_226 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_168_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_169_info;
struct InstrumentPCM instrument_pcm_data_227 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_169_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_170_info;
struct InstrumentPCM instrument_pcm_data_228 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_170_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_171_info;
struct InstrumentPCM instrument_pcm_data_229 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_171_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_172_info;
struct InstrumentPCM instrument_pcm_data_230 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_172_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_173_info;
struct InstrumentPCM instrument_pcm_data_231 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_173_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_174_info;
struct InstrumentPCM instrument_pcm_data_232 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_174_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_175_info;
struct InstrumentPCM instrument_pcm_data_233 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_175_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_176_info;
struct InstrumentPCM instrument_pcm_data_234 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_176_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_177_info;
struct InstrumentPCM instrument_pcm_data_235 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_177_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_178_info;
struct InstrumentPCM instrument_pcm_data_236 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_178_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_179_info;
struct InstrumentPCM instrument_pcm_data_237 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_179_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_180_info;
struct InstrumentPCM instrument_pcm_data_238 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_180_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_181_info;
struct InstrumentPCM instrument_pcm_data_239 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_181_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_182_info;
struct InstrumentPCM instrument_pcm_data_240 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_182_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_183_info;
struct InstrumentPCM instrument_pcm_data_241 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_183_info,
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

extern struct SampleInfo sample_184_info;
struct InstrumentPCM instrument_pcm_data_243 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_184_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_185_info;
struct InstrumentPCM instrument_pcm_data_244 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_185_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_186_info;
struct InstrumentPCM instrument_pcm_data_245 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_186_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_187_info;
struct InstrumentPCM instrument_pcm_data_246 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_187_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_188_info;
struct InstrumentPCM instrument_pcm_data_247 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_188_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_189_info;
struct InstrumentPCM instrument_pcm_data_248 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_189_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_190_info;
struct InstrumentPCM instrument_pcm_data_249 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_190_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_191_info;
struct InstrumentPCM instrument_pcm_data_250 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_191_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_192_info;
struct InstrumentPCM instrument_pcm_data_251 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_192_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_193_info;
struct InstrumentPCM instrument_pcm_data_252 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_193_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_003_info;
struct InstrumentPCM instrument_pcm_data_253 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_009_info;
struct InstrumentPCM instrument_pcm_data_254 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_041_info;
struct InstrumentPCM instrument_pcm_data_255 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_058_info;
struct InstrumentPCM instrument_pcm_data_256 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_194_info;
struct InstrumentPCM instrument_pcm_data_257 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_108_info;
struct InstrumentPCM instrument_pcm_data_258 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_108_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_195_info;
struct InstrumentPCM instrument_pcm_data_259 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_195_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_196_info;
struct InstrumentPCM instrument_pcm_data_260 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_191_info;
struct InstrumentPCM instrument_pcm_data_261 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_191_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_197_info;
struct InstrumentPCM instrument_pcm_data_262 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_198_info;
struct InstrumentPCM instrument_pcm_data_263 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_198_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_199_info;
struct InstrumentPCM instrument_pcm_data_264 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_199_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_200_info;
struct InstrumentPCM instrument_pcm_data_265 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_201_info;
struct InstrumentPCM instrument_pcm_data_266 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_201_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_202_info;
struct InstrumentPCM instrument_pcm_data_267 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_268 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_013_info;
struct InstrumentPCM instrument_pcm_data_269 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_013_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_203_info;
struct InstrumentPCM instrument_pcm_data_270 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_271 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_204_info;
struct InstrumentPCM instrument_pcm_data_272 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_204_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_273 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_274 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_205_info;
struct InstrumentPCM instrument_pcm_data_275 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_205_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_042_info;
struct InstrumentPCM instrument_pcm_data_276 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_206_info;
struct InstrumentPCM instrument_pcm_data_277 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_207_info;
struct InstrumentPCM instrument_pcm_data_278 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_279 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_208_info;
struct InstrumentPCM instrument_pcm_data_280 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_208_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_112_info;
struct InstrumentPCM instrument_pcm_data_281 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_112_info,
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

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_283 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_209_info;
struct InstrumentPCM instrument_pcm_data_284 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_209_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_210_info;
struct InstrumentPCM instrument_pcm_data_285 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_210_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_211_info;
struct InstrumentPCM instrument_pcm_data_286 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_211_info,
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

extern struct SampleInfo sample_212_info;
struct InstrumentPCM instrument_pcm_data_290 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_212_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_117_info;
struct InstrumentPCM instrument_pcm_data_291 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_292 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_293 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_023_info;
struct InstrumentPCM instrument_pcm_data_294 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_023_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_213_info;
struct InstrumentPCM instrument_pcm_data_295 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_213_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_214_info;
struct InstrumentPCM instrument_pcm_data_296 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_297 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_215_info;
struct InstrumentPCM instrument_pcm_data_298 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_215_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_216_info;
struct InstrumentPCM instrument_pcm_data_299 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_216_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_217_info;
struct InstrumentPCM instrument_pcm_data_300 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_217_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_107_info;
struct InstrumentPCM instrument_pcm_data_301 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_107_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_215_info;
struct InstrumentPCM instrument_pcm_data_302 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_215_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_218_info;
struct InstrumentPCM instrument_pcm_data_303 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_218_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_219_info;
struct InstrumentPCM instrument_pcm_data_304 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_219_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleInfo sample_220_info;
struct InstrumentPCM instrument_pcm_data_305 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_220_info,
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

extern struct SampleInfo sample_221_info;
struct InstrumentPCM instrument_pcm_data_307 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_221_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_222_info;
struct InstrumentPCM instrument_pcm_data_308 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_222_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_093_info;
struct InstrumentPCM instrument_pcm_data_309 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_093_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_094_info;
struct InstrumentPCM instrument_pcm_data_310 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_094_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_095_info;
struct InstrumentPCM instrument_pcm_data_311 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_095_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_096_info;
struct InstrumentPCM instrument_pcm_data_312 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_096_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_097_info;
struct InstrumentPCM instrument_pcm_data_313 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_097_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_098_info;
struct InstrumentPCM instrument_pcm_data_314 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_098_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_099_info;
struct InstrumentPCM instrument_pcm_data_315 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_099_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_100_info;
struct InstrumentPCM instrument_pcm_data_316 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_100_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_101_info;
struct InstrumentPCM instrument_pcm_data_317 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_101_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_102_info;
struct InstrumentPCM instrument_pcm_data_318 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_102_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_103_info;
struct InstrumentPCM instrument_pcm_data_319 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_103_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_104_info;
struct InstrumentPCM instrument_pcm_data_320 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_104_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_105_info;
struct InstrumentPCM instrument_pcm_data_321 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_105_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_106_info;
struct InstrumentPCM instrument_pcm_data_322 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_106_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_223_info;
struct InstrumentPCM instrument_pcm_data_323 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_223_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_224_info;
struct InstrumentPCM instrument_pcm_data_324 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_224_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_225_info;
struct InstrumentPCM instrument_pcm_data_325 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_225_info,
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

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_327 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_328 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_200_info;
struct InstrumentPCM instrument_pcm_data_329 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_227_info;
struct InstrumentPCM instrument_pcm_data_330 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_227_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_228_info;
struct InstrumentPCM instrument_pcm_data_331 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_228_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_110_info;
struct InstrumentPCM instrument_pcm_data_332 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_111_info;
struct InstrumentPCM instrument_pcm_data_333 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_334 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_230_info;
struct InstrumentPCM instrument_pcm_data_335 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_336 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_207_info;
struct InstrumentPCM instrument_pcm_data_337 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_206_info;
struct InstrumentPCM instrument_pcm_data_338 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_info,
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

extern struct SampleInfo sample_211_info;
struct InstrumentPCM instrument_pcm_data_340 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_211_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_231_info;
struct InstrumentPCM instrument_pcm_data_341 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_231_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_232_info;
struct InstrumentPCM instrument_pcm_data_342 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_232_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_233_info;
struct InstrumentPCM instrument_pcm_data_343 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_233_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_234_info;
struct InstrumentPCM instrument_pcm_data_344 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_234_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_235_info;
struct InstrumentPCM instrument_pcm_data_345 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_235_info,
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

extern struct SampleInfo sample_236_info;
struct InstrumentPCM instrument_pcm_data_417 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_236_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_237_info;
struct InstrumentPCM instrument_pcm_data_418 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_237_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_202_info;
struct InstrumentPCM instrument_pcm_data_419 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_003_info;
struct InstrumentPCM instrument_pcm_data_420 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_204_info;
struct InstrumentPCM instrument_pcm_data_421 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_204_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_196_info;
struct InstrumentPCM instrument_pcm_data_422 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_238_info;
struct InstrumentPCM instrument_pcm_data_423 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_239_info;
struct InstrumentPCM instrument_pcm_data_424 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_239_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_240_info;
struct InstrumentPCM instrument_pcm_data_425 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_240_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_241_info;
struct InstrumentPCM instrument_pcm_data_426 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_241_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_242_info;
struct InstrumentPCM instrument_pcm_data_427 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_242_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_243_info;
struct InstrumentPCM instrument_pcm_data_428 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_243_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_244_info;
struct InstrumentPCM instrument_pcm_data_429 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_244_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_245_info;
struct InstrumentPCM instrument_pcm_data_430 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_245_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_246_info;
struct InstrumentPCM instrument_pcm_data_431 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_246_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_247_info;
struct InstrumentPCM instrument_pcm_data_432 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_247_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_248_info;
struct InstrumentPCM instrument_pcm_data_433 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_248_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_249_info;
struct InstrumentPCM instrument_pcm_data_434 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_249_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_250_info;
struct InstrumentPCM instrument_pcm_data_435 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_250_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_251_info;
struct InstrumentPCM instrument_pcm_data_436 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_251_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_252_info;
struct InstrumentPCM instrument_pcm_data_437 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_252_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_253_info;
struct InstrumentPCM instrument_pcm_data_438 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_253_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_254_info;
struct InstrumentPCM instrument_pcm_data_439 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_254_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_255_info;
struct InstrumentPCM instrument_pcm_data_440 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_255_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_256_info;
struct InstrumentPCM instrument_pcm_data_441 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_256_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_257_info;
struct InstrumentPCM instrument_pcm_data_442 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_257_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_258_info;
struct InstrumentPCM instrument_pcm_data_443 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_258_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_259_info;
struct InstrumentPCM instrument_pcm_data_444 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_259_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_260_info;
struct InstrumentPCM instrument_pcm_data_445 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_446 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_447 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_261_info;
struct InstrumentPCM instrument_pcm_data_448 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_261_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_449 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_263_info;
struct InstrumentPCM instrument_pcm_data_450 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_263_info,
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

extern struct SampleInfo sample_264_info;
struct InstrumentPCM instrument_pcm_data_452 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_264_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_265_info;
struct InstrumentPCM instrument_pcm_data_453 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_265_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_266_info;
struct InstrumentPCM instrument_pcm_data_454 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_266_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_267_info;
struct InstrumentPCM instrument_pcm_data_455 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_267_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_268_info;
struct InstrumentPCM instrument_pcm_data_456 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_268_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_269_info;
struct InstrumentPCM instrument_pcm_data_457 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_269_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_270_info;
struct InstrumentPCM instrument_pcm_data_458 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_270_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_271_info;
struct InstrumentPCM instrument_pcm_data_459 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_271_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_272_info;
struct InstrumentPCM instrument_pcm_data_460 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_272_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_273_info;
struct InstrumentPCM instrument_pcm_data_461 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_273_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_274_info;
struct InstrumentPCM instrument_pcm_data_462 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_274_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_275_info;
struct InstrumentPCM instrument_pcm_data_463 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_275_info,
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

extern struct SampleInfo sample_221_info;
struct InstrumentPCM instrument_pcm_data_465 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_221_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_466 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
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

extern struct SampleInfo sample_276_info;
struct InstrumentPCM instrument_pcm_data_468 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_276_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleInfo sample_277_info;
struct InstrumentPCM instrument_pcm_data_469 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_277_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_200_info;
struct InstrumentPCM instrument_pcm_data_470 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_194_info;
struct InstrumentPCM instrument_pcm_data_471 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_195_info;
struct InstrumentPCM instrument_pcm_data_472 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_195_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_278_info;
struct InstrumentPCM instrument_pcm_data_473 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_278_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_197_info;
struct InstrumentPCM instrument_pcm_data_474 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_279_info;
struct InstrumentPCM instrument_pcm_data_475 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_279_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_280_info;
struct InstrumentPCM instrument_pcm_data_476 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_280_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_281_info;
struct InstrumentPCM instrument_pcm_data_477 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_281_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_198_info;
struct InstrumentPCM instrument_pcm_data_478 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_198_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_282_info;
struct InstrumentPCM instrument_pcm_data_479 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_282_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_283_info;
struct InstrumentPCM instrument_pcm_data_480 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_283_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_284_info;
struct InstrumentPCM instrument_pcm_data_481 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_284_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_285_info;
struct InstrumentPCM instrument_pcm_data_482 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_285_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_117_info;
struct InstrumentPCM instrument_pcm_data_483 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_info,
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

extern struct SampleInfo sample_118_info;
struct InstrumentPCM instrument_pcm_data_486 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_118_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_286_info;
struct InstrumentPCM instrument_pcm_data_487 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_286_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_287_info;
struct InstrumentPCM instrument_pcm_data_488 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_287_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_003_info;
struct InstrumentPCM instrument_pcm_data_489 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_490 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_288_info;
struct InstrumentPCM instrument_pcm_data_491 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_288_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_289_info;
struct InstrumentPCM instrument_pcm_data_492 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_200_info;
struct InstrumentPCM instrument_pcm_data_493 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_info,
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

extern struct SampleInfo sample_290_info;
struct InstrumentPCM instrument_pcm_data_495 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_290_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_291_info;
struct InstrumentPCM instrument_pcm_data_496 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_291_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_006_info;
struct InstrumentPCM instrument_pcm_data_497 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_292_info;
struct InstrumentPCM instrument_pcm_data_498 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_292_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_293_info;
struct InstrumentPCM instrument_pcm_data_499 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_294_info;
struct InstrumentPCM instrument_pcm_data_500 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_294_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_232_info;
struct InstrumentPCM instrument_pcm_data_501 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_232_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_206_info;
struct InstrumentPCM instrument_pcm_data_502 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_295_info;
struct InstrumentPCM instrument_pcm_data_503 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_295_info,
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

extern struct SampleInfo sample_296_info;
struct InstrumentPCM instrument_pcm_data_506 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_296_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_297_info;
struct InstrumentPCM instrument_pcm_data_507 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_297_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_298_info;
struct InstrumentPCM instrument_pcm_data_508 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_298_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_299_info;
struct InstrumentPCM instrument_pcm_data_509 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_299_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_204_info;
struct InstrumentPCM instrument_pcm_data_510 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_204_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_230_info;
struct InstrumentPCM instrument_pcm_data_511 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_info,
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

extern struct SampleInfo sample_300_info;
struct InstrumentPCM instrument_pcm_data_513 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_301_info;
struct InstrumentPCM instrument_pcm_data_514 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_301_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_302_info;
struct InstrumentPCM instrument_pcm_data_515 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_302_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_303_info;
struct InstrumentPCM instrument_pcm_data_516 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_303_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_304_info;
struct InstrumentPCM instrument_pcm_data_517 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_304_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_234_info;
struct InstrumentPCM instrument_pcm_data_518 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_234_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_519 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_520 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_194_info;
struct InstrumentPCM instrument_pcm_data_521 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_110_info;
struct InstrumentPCM instrument_pcm_data_522 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_111_info;
struct InstrumentPCM instrument_pcm_data_523 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_info,
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

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_525 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_305_info;
struct InstrumentPCM instrument_pcm_data_526 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_305_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_306_info;
struct InstrumentPCM instrument_pcm_data_527 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_306_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_307_info;
struct InstrumentPCM instrument_pcm_data_528 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_307_info,
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

extern struct SampleInfo sample_308_info;
struct InstrumentPCM instrument_pcm_data_530 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_308_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_238_info;
struct InstrumentPCM instrument_pcm_data_531 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_309_info;
struct InstrumentPCM instrument_pcm_data_532 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_533 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_310_info;
struct InstrumentPCM instrument_pcm_data_534 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_310_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_203_info;
struct InstrumentPCM instrument_pcm_data_535 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_311_info;
struct InstrumentPCM instrument_pcm_data_536 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_311_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_209_info;
struct InstrumentPCM instrument_pcm_data_537 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_209_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_210_info;
struct InstrumentPCM instrument_pcm_data_538 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_210_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_539 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_211_info;
struct InstrumentPCM instrument_pcm_data_540 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_211_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_541 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_232_info;
struct InstrumentPCM instrument_pcm_data_542 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_232_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_312_info;
struct InstrumentPCM instrument_pcm_data_543 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_312_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_313_info;
struct InstrumentPCM instrument_pcm_data_544 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_277_info;
struct InstrumentPCM instrument_pcm_data_545 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_277_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_314_info;
struct InstrumentPCM instrument_pcm_data_546 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_314_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_205_info;
struct InstrumentPCM instrument_pcm_data_547 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_205_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_548 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_109_info;
struct InstrumentPCM instrument_pcm_data_549 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_109_info,
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

extern struct SampleInfo sample_240_info;
struct InstrumentPCM instrument_pcm_data_551 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_240_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_315_info;
struct InstrumentPCM instrument_pcm_data_552 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_315_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_316_info;
struct InstrumentPCM instrument_pcm_data_553 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_316_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_317_info;
struct InstrumentPCM instrument_pcm_data_554 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_317_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_239_info;
struct InstrumentPCM instrument_pcm_data_555 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_239_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_318_info;
struct InstrumentPCM instrument_pcm_data_556 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_318_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_005_info;
struct InstrumentPCM instrument_pcm_data_557 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_319_info;
struct InstrumentPCM instrument_pcm_data_558 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_319_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_320_info;
struct InstrumentPCM instrument_pcm_data_559 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_320_info,
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

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_562 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_322_info;
struct InstrumentPCM instrument_pcm_data_563 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_322_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_196_info;
struct InstrumentPCM instrument_pcm_data_564 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_314_info;
struct InstrumentPCM instrument_pcm_data_565 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_314_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_009_info;
struct InstrumentPCM instrument_pcm_data_566 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_567 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_568 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_569 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
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

extern struct SampleInfo sample_323_info;
struct InstrumentPCM instrument_pcm_data_571 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_323_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_324_info;
struct InstrumentPCM instrument_pcm_data_572 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_324_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_013_info;
struct InstrumentPCM instrument_pcm_data_573 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_013_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_325_info;
struct InstrumentPCM instrument_pcm_data_574 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_325_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_326_info;
struct InstrumentPCM instrument_pcm_data_575 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_326_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_327_info;
struct InstrumentPCM instrument_pcm_data_576 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_327_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_328_info;
struct InstrumentPCM instrument_pcm_data_577 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_328_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_329_info;
struct InstrumentPCM instrument_pcm_data_578 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_329_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_579 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_330_info;
struct InstrumentPCM instrument_pcm_data_580 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_330_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_331_info;
struct InstrumentPCM instrument_pcm_data_581 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_331_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_332_info;
struct InstrumentPCM instrument_pcm_data_582 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_332_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_333_info;
struct InstrumentPCM instrument_pcm_data_583 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_333_info,
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

extern struct SampleInfo sample_334_info;
struct InstrumentPCM instrument_pcm_data_585 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_334_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_335_info;
struct InstrumentPCM instrument_pcm_data_586 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_335_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_336_info;
struct InstrumentPCM instrument_pcm_data_587 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_336_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_337_info;
struct InstrumentPCM instrument_pcm_data_588 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_337_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_330_info;
struct InstrumentPCM instrument_pcm_data_589 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_330_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_590 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_041_info;
struct InstrumentPCM instrument_pcm_data_591 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_info,
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

extern struct SampleInfo sample_315_info;
struct InstrumentPCM instrument_pcm_data_594 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_315_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_595 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
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

extern struct SampleInfo sample_338_info;
struct InstrumentPCM instrument_pcm_data_598 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_338_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_202_info;
struct InstrumentPCM instrument_pcm_data_599 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_339_info;
struct InstrumentPCM instrument_pcm_data_600 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_339_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_340_info;
struct InstrumentPCM instrument_pcm_data_601 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_340_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_341_info;
struct InstrumentPCM instrument_pcm_data_602 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_341_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_342_info;
struct InstrumentPCM instrument_pcm_data_603 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_342_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_604 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_009_info;
struct InstrumentPCM instrument_pcm_data_605 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_308_info;
struct InstrumentPCM instrument_pcm_data_606 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_308_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_238_info;
struct InstrumentPCM instrument_pcm_data_607 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_311_info;
struct InstrumentPCM instrument_pcm_data_608 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_311_info,
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

extern struct SampleInfo sample_124_info;
struct InstrumentPCM instrument_pcm_data_610 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_124_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_313_info;
struct InstrumentPCM instrument_pcm_data_611 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_343_info;
struct InstrumentPCM instrument_pcm_data_612 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_343_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_289_info;
struct InstrumentPCM instrument_pcm_data_613 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_200_info;
struct InstrumentPCM instrument_pcm_data_614 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_110_info;
struct InstrumentPCM instrument_pcm_data_615 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_111_info;
struct InstrumentPCM instrument_pcm_data_616 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_344_info;
struct InstrumentPCM instrument_pcm_data_617 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_344_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0000f83e,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0000c000,
};

extern struct SampleInfo sample_345_info;
struct InstrumentPCM instrument_pcm_data_618 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_345_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_346_info;
struct InstrumentPCM instrument_pcm_data_619 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_346_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_033_info;
struct InstrumentPCM instrument_pcm_data_620 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_033_info,
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

extern struct SampleInfo sample_347_info;
struct InstrumentPCM instrument_pcm_data_623 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_347_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_201_info;
struct InstrumentPCM instrument_pcm_data_624 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_201_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_348_info;
struct InstrumentPCM instrument_pcm_data_625 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_348_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_199_info;
struct InstrumentPCM instrument_pcm_data_626 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_199_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_349_info;
struct InstrumentPCM instrument_pcm_data_627 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_349_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_350_info;
struct InstrumentPCM instrument_pcm_data_628 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_350_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_351_info;
struct InstrumentPCM instrument_pcm_data_629 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_351_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_352_info;
struct InstrumentPCM instrument_pcm_data_630 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_352_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_353_info;
struct InstrumentPCM instrument_pcm_data_631 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_353_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_632 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_354_info;
struct InstrumentPCM instrument_pcm_data_633 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_634 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
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

extern struct SampleInfo sample_355_info;
struct InstrumentPCM instrument_pcm_data_637 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_355_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_356_info;
struct InstrumentPCM instrument_pcm_data_638 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_356_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_300_info;
struct InstrumentPCM instrument_pcm_data_639 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_354_info;
struct InstrumentPCM instrument_pcm_data_640 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001faea0,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_641 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_642 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_206_info;
struct InstrumentPCM instrument_pcm_data_643 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_290_info;
struct InstrumentPCM instrument_pcm_data_644 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_290_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_207_info;
struct InstrumentPCM instrument_pcm_data_645 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_291_info;
struct InstrumentPCM instrument_pcm_data_646 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_291_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_647 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
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

extern struct SampleInfo sample_357_info;
struct InstrumentPCM instrument_pcm_data_650 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_357_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_358_info;
struct InstrumentPCM instrument_pcm_data_651 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_358_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_359_info;
struct InstrumentPCM instrument_pcm_data_652 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_359_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_060_info;
struct InstrumentPCM instrument_pcm_data_653 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_061_info;
struct InstrumentPCM instrument_pcm_data_654 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_061_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_360_info;
struct InstrumentPCM instrument_pcm_data_655 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_360_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_361_info;
struct InstrumentPCM instrument_pcm_data_656 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_361_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_196_info;
struct InstrumentPCM instrument_pcm_data_657 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_362_info;
struct InstrumentPCM instrument_pcm_data_658 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_362_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_659 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
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

extern struct SampleInfo sample_006_info;
struct InstrumentPCM instrument_pcm_data_663 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_664 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_363_info;
struct InstrumentPCM instrument_pcm_data_665 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_363_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_364_info;
struct InstrumentPCM instrument_pcm_data_666 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_364_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_667 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_668 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_260_info;
struct InstrumentPCM instrument_pcm_data_669 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_670 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_365_info;
struct InstrumentPCM instrument_pcm_data_671 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_365_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_366_info;
struct InstrumentPCM instrument_pcm_data_672 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_366_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_367_info;
struct InstrumentPCM instrument_pcm_data_673 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_367_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_368_info;
struct InstrumentPCM instrument_pcm_data_674 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_368_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_369_info;
struct InstrumentPCM instrument_pcm_data_675 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_369_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_370_info;
struct InstrumentPCM instrument_pcm_data_676 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_370_info,
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

extern struct SampleInfo sample_371_info;
struct InstrumentPCM instrument_pcm_data_679 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_371_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_680 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_372_info;
struct InstrumentPCM instrument_pcm_data_681 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_372_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_682 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_683 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_018_info;
struct InstrumentPCM instrument_pcm_data_684 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_018_info,
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

extern struct SampleInfo sample_373_info;
struct InstrumentPCM instrument_pcm_data_687 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_373_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_374_info;
struct InstrumentPCM instrument_pcm_data_688 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_374_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_375_info;
struct InstrumentPCM instrument_pcm_data_689 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_375_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_376_info;
struct InstrumentPCM instrument_pcm_data_690 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_376_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_260_info;
struct InstrumentPCM instrument_pcm_data_691 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_377_info;
struct InstrumentPCM instrument_pcm_data_692 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_377_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_378_info;
struct InstrumentPCM instrument_pcm_data_693 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_378_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_379_info;
struct InstrumentPCM instrument_pcm_data_694 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_379_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0003f07c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_261_info;
struct InstrumentPCM instrument_pcm_data_695 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_261_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_261_info;
struct InstrumentPCM instrument_pcm_data_696 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_261_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_697 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_698 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_380_info;
struct InstrumentPCM instrument_pcm_data_699 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_380_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_381_info;
struct InstrumentPCM instrument_pcm_data_700 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_381_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_293_info;
struct InstrumentPCM instrument_pcm_data_701 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_289_info;
struct InstrumentPCM instrument_pcm_data_702 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_346_info;
struct InstrumentPCM instrument_pcm_data_703 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_346_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_375_info;
struct InstrumentPCM instrument_pcm_data_704 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_375_info,
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

extern struct SampleInfo sample_382_info;
struct InstrumentPCM instrument_pcm_data_709 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_382_info,
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

extern struct SampleInfo sample_383_info;
struct InstrumentPCM instrument_pcm_data_712 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_383_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_384_info;
struct InstrumentPCM instrument_pcm_data_713 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_384_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_309_info;
struct InstrumentPCM instrument_pcm_data_714 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_715 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_385_info;
struct InstrumentPCM instrument_pcm_data_716 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_385_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_348_info;
struct InstrumentPCM instrument_pcm_data_717 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_348_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_718 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_719 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_386_info;
struct InstrumentPCM instrument_pcm_data_720 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_386_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_313_info;
struct InstrumentPCM instrument_pcm_data_721 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_722 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_293_info;
struct InstrumentPCM instrument_pcm_data_723 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_387_info;
struct InstrumentPCM instrument_pcm_data_724 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_387_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_342_info;
struct InstrumentPCM instrument_pcm_data_725 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_342_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_043_info;
struct InstrumentPCM instrument_pcm_data_726 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_info,
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

extern struct SampleInfo sample_388_info;
struct InstrumentPCM instrument_pcm_data_730 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_388_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_731 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_389_info;
struct InstrumentPCM instrument_pcm_data_732 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_389_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_733 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_348_info;
struct InstrumentPCM instrument_pcm_data_734 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_348_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_301_info;
struct InstrumentPCM instrument_pcm_data_735 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_301_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_302_info;
struct InstrumentPCM instrument_pcm_data_736 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_302_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_390_info;
struct InstrumentPCM instrument_pcm_data_737 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_390_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_043_info;
struct InstrumentPCM instrument_pcm_data_738 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_355_info;
struct InstrumentPCM instrument_pcm_data_739 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_355_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_356_info;
struct InstrumentPCM instrument_pcm_data_740 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_356_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_300_info;
struct InstrumentPCM instrument_pcm_data_741 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_354_info;
struct InstrumentPCM instrument_pcm_data_742 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001faea0,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_743 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_744 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_206_info;
struct InstrumentPCM instrument_pcm_data_745 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_290_info;
struct InstrumentPCM instrument_pcm_data_746 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_290_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_207_info;
struct InstrumentPCM instrument_pcm_data_747 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_291_info;
struct InstrumentPCM instrument_pcm_data_748 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_291_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_262_info;
struct InstrumentPCM instrument_pcm_data_749 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_info,
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

extern struct SampleInfo sample_322_info;
struct InstrumentPCM instrument_pcm_data_751 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_322_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_289_info;
struct InstrumentPCM instrument_pcm_data_752 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_201_info;
struct InstrumentPCM instrument_pcm_data_753 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_201_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_194_info;
struct InstrumentPCM instrument_pcm_data_754 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_359_info;
struct InstrumentPCM instrument_pcm_data_755 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_359_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_391_info;
struct InstrumentPCM instrument_pcm_data_756 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_391_info,
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

extern struct SampleInfo sample_392_info;
struct InstrumentPCM instrument_pcm_data_767 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_392_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_393_info;
struct InstrumentPCM instrument_pcm_data_768 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_393_info,
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

extern struct SampleInfo sample_394_info;
struct InstrumentPCM instrument_pcm_data_772 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_394_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_395_info;
struct InstrumentPCM instrument_pcm_data_773 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_395_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_396_info;
struct InstrumentPCM instrument_pcm_data_774 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_396_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_397_info;
struct InstrumentPCM instrument_pcm_data_775 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_397_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_398_info;
struct InstrumentPCM instrument_pcm_data_776 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_398_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_777 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_399_info;
struct InstrumentPCM instrument_pcm_data_778 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_126_info;
struct InstrumentPCM instrument_pcm_data_779 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_126_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_127_info;
struct InstrumentPCM instrument_pcm_data_780 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_127_info,
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

extern struct SampleInfo sample_400_info;
struct InstrumentPCM instrument_pcm_data_783 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_400_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_398_info;
struct InstrumentPCM instrument_pcm_data_784 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_398_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_235_info;
struct InstrumentPCM instrument_pcm_data_785 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_235_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_401_info;
struct InstrumentPCM instrument_pcm_data_786 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_401_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_260_info;
struct InstrumentPCM instrument_pcm_data_787 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_399_info;
struct InstrumentPCM instrument_pcm_data_788 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_info,
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

extern struct SampleInfo sample_263_info;
struct InstrumentPCM instrument_pcm_data_792 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_263_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_229_info;
struct InstrumentPCM instrument_pcm_data_793 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001ba35f,
};

extern struct SampleInfo sample_194_info;
struct InstrumentPCM instrument_pcm_data_794 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_399_info;
struct InstrumentPCM instrument_pcm_data_795 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_402_info;
struct InstrumentPCM instrument_pcm_data_796 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_402_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_403_info;
struct InstrumentPCM instrument_pcm_data_797 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_403_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_404_info;
struct InstrumentPCM instrument_pcm_data_798 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_404_info,
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

extern struct SampleInfo sample_405_info;
struct InstrumentPCM instrument_pcm_data_802 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_405_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_406_info;
struct InstrumentPCM instrument_pcm_data_803 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_406_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_407_info;
struct InstrumentPCM instrument_pcm_data_804 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_407_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_408_info;
struct InstrumentPCM instrument_pcm_data_805 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_408_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_409_info;
struct InstrumentPCM instrument_pcm_data_806 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_409_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_202_info;
struct InstrumentPCM instrument_pcm_data_807 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_410_info;
struct InstrumentPCM instrument_pcm_data_808 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_410_info,
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

extern struct SampleInfo sample_300_info;
struct InstrumentPCM instrument_pcm_data_811 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_058_info;
struct InstrumentPCM instrument_pcm_data_812 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_306_info;
struct InstrumentPCM instrument_pcm_data_813 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_306_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_391_info;
struct InstrumentPCM instrument_pcm_data_814 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_391_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_373_info;
struct InstrumentPCM instrument_pcm_data_815 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_373_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_110_info;
struct InstrumentPCM instrument_pcm_data_816 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_363_info;
struct InstrumentPCM instrument_pcm_data_817 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_363_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_005_info;
struct InstrumentPCM instrument_pcm_data_818 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_293_info;
struct InstrumentPCM instrument_pcm_data_819 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_411_info;
struct InstrumentPCM instrument_pcm_data_820 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_411_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_412_info;
struct InstrumentPCM instrument_pcm_data_821 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_412_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_413_info;
struct InstrumentPCM instrument_pcm_data_822 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_413_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0022bd20,
};

extern struct SampleInfo sample_414_info;
struct InstrumentPCM instrument_pcm_data_823 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_414_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_415_info;
struct InstrumentPCM instrument_pcm_data_824 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_415_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_416_info;
struct InstrumentPCM instrument_pcm_data_825 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_416_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_417_info;
struct InstrumentPCM instrument_pcm_data_826 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_417_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_418_info;
struct InstrumentPCM instrument_pcm_data_827 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_418_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_419_info;
struct InstrumentPCM instrument_pcm_data_828 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_419_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_420_info;
struct InstrumentPCM instrument_pcm_data_829 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_420_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_421_info;
struct InstrumentPCM instrument_pcm_data_830 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_421_info,
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

extern struct SampleInfo sample_422_info;
struct InstrumentPCM instrument_pcm_data_836 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_422_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_423_info;
struct InstrumentPCM instrument_pcm_data_837 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_423_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_313_info;
struct InstrumentPCM instrument_pcm_data_838 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_292_info;
struct InstrumentPCM instrument_pcm_data_839 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_292_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_387_info;
struct InstrumentPCM instrument_pcm_data_840 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_387_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_424_info;
struct InstrumentPCM instrument_pcm_data_841 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_424_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_421_info;
struct InstrumentPCM instrument_pcm_data_842 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_421_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_425_info;
struct InstrumentPCM instrument_pcm_data_843 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_425_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_320_info;
struct InstrumentPCM instrument_pcm_data_844 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_320_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_420_info;
struct InstrumentPCM instrument_pcm_data_845 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_420_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_421_info;
struct InstrumentPCM instrument_pcm_data_846 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_421_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_426_info;
struct InstrumentPCM instrument_pcm_data_847 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_426_info,
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

extern struct SampleInfo sample_039_info;
struct InstrumentPCM instrument_pcm_data_853 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_039_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_398_info;
struct InstrumentPCM instrument_pcm_data_854 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_398_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_007_info;
struct InstrumentPCM instrument_pcm_data_855 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_007_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_001_info;
struct InstrumentPCM instrument_pcm_data_856 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_001_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_003_info;
struct InstrumentPCM instrument_pcm_data_857 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_info,
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

extern struct SampleInfo sample_203_info;
struct InstrumentPCM instrument_pcm_data_860 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_239_info;
struct InstrumentPCM instrument_pcm_data_861 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_239_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_012_info;
struct InstrumentPCM instrument_pcm_data_862 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_012_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_386_info;
struct InstrumentPCM instrument_pcm_data_863 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_386_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_008_info;
struct InstrumentPCM instrument_pcm_data_864 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_383_info;
struct InstrumentPCM instrument_pcm_data_865 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_383_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_329_info;
struct InstrumentPCM instrument_pcm_data_866 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_329_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_005_info;
struct InstrumentPCM instrument_pcm_data_867 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_321_info;
struct InstrumentPCM instrument_pcm_data_868 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_235_info;
struct InstrumentPCM instrument_pcm_data_869 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_235_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_342_info;
struct InstrumentPCM instrument_pcm_data_870 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_342_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_401_info;
struct InstrumentPCM instrument_pcm_data_871 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_401_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_114_info;
struct InstrumentPCM instrument_pcm_data_872 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_196_info;
struct InstrumentPCM instrument_pcm_data_873 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_310_info;
struct InstrumentPCM instrument_pcm_data_874 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_310_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_303_info;
struct InstrumentPCM instrument_pcm_data_875 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_303_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_423_info;
struct InstrumentPCM instrument_pcm_data_876 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_423_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_877 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_203_info;
struct InstrumentPCM instrument_pcm_data_878 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_309_info;
struct InstrumentPCM instrument_pcm_data_879 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_124_info;
struct InstrumentPCM instrument_pcm_data_880 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_124_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_313_info;
struct InstrumentPCM instrument_pcm_data_881 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_354_info;
struct InstrumentPCM instrument_pcm_data_882 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_118_info;
struct InstrumentPCM instrument_pcm_data_883 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_118_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_322_info;
struct InstrumentPCM instrument_pcm_data_884 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_322_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_335_info;
struct InstrumentPCM instrument_pcm_data_885 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_335_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_297_info;
struct InstrumentPCM instrument_pcm_data_886 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_297_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_308_info;
struct InstrumentPCM instrument_pcm_data_887 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_308_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_238_info;
struct InstrumentPCM instrument_pcm_data_888 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_305_info;
struct InstrumentPCM instrument_pcm_data_889 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_305_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_410_info;
struct InstrumentPCM instrument_pcm_data_890 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_410_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_315_info;
struct InstrumentPCM instrument_pcm_data_891 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_315_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_015_info;
struct InstrumentPCM instrument_pcm_data_892 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_320_info;
struct InstrumentPCM instrument_pcm_data_893 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_320_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_113_info;
struct InstrumentPCM instrument_pcm_data_894 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleInfo sample_399_info;
struct InstrumentPCM instrument_pcm_data_895 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_190_info;
struct InstrumentPCM instrument_pcm_data_896 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_190_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_011_info;
struct InstrumentPCM instrument_pcm_data_897 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_011_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_006_info;
struct InstrumentPCM instrument_pcm_data_898 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_info,
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

extern struct SampleInfo sample_292_info;
struct InstrumentPCM instrument_pcm_data_902 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_292_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_903 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_293_info;
struct InstrumentPCM instrument_pcm_data_904 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_302_info;
struct InstrumentPCM instrument_pcm_data_905 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_302_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_400_info;
struct InstrumentPCM instrument_pcm_data_906 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_400_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_338_info;
struct InstrumentPCM instrument_pcm_data_907 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_338_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_335_info;
struct InstrumentPCM instrument_pcm_data_908 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_335_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_427_info;
struct InstrumentPCM instrument_pcm_data_909 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_427_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_428_info;
struct InstrumentPCM instrument_pcm_data_910 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_428_info,
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

extern struct SampleInfo sample_429_info;
struct InstrumentPCM instrument_pcm_data_913 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_429_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_217_info;
struct InstrumentPCM instrument_pcm_data_914 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_217_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_430_info;
struct InstrumentPCM instrument_pcm_data_915 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_430_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_431_info;
struct InstrumentPCM instrument_pcm_data_916 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_431_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_432_info;
struct InstrumentPCM instrument_pcm_data_917 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_432_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_433_info;
struct InstrumentPCM instrument_pcm_data_918 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_433_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_026_info;
struct InstrumentPCM instrument_pcm_data_919 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_026_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_117_info;
struct InstrumentPCM instrument_pcm_data_920 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0004d936,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleInfo sample_434_info;
struct InstrumentPCM instrument_pcm_data_921 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_434_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern struct SampleInfo sample_405_info;
struct InstrumentPCM instrument_pcm_data_922 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_405_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_017_info;
struct InstrumentPCM instrument_pcm_data_923 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_042_info;
struct InstrumentPCM instrument_pcm_data_924 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_196_info;
struct InstrumentPCM instrument_pcm_data_925 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_041_info;
struct InstrumentPCM instrument_pcm_data_926 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_info,
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

extern struct SampleInfo sample_203_info;
struct InstrumentPCM instrument_pcm_data_928 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_038_info;
struct InstrumentPCM instrument_pcm_data_929 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_038_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_028_info;
struct InstrumentPCM instrument_pcm_data_930 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_400_info;
struct InstrumentPCM instrument_pcm_data_931 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_400_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_230_info;
struct InstrumentPCM instrument_pcm_data_932 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_293_info;
struct InstrumentPCM instrument_pcm_data_933 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_info,
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

extern struct SampleInfo sample_230_info;
struct InstrumentPCM instrument_pcm_data_935 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_435_info;
struct InstrumentPCM instrument_pcm_data_936 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_435_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_226_info;
struct InstrumentPCM instrument_pcm_data_937 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_289_info;
struct InstrumentPCM instrument_pcm_data_938 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_436_info;
struct InstrumentPCM instrument_pcm_data_939 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_436_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_437_info;
struct InstrumentPCM instrument_pcm_data_940 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_437_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_438_info;
struct InstrumentPCM instrument_pcm_data_941 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_438_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_006_info;
struct InstrumentPCM instrument_pcm_data_942 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_309_info;
struct InstrumentPCM instrument_pcm_data_943 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_439_info;
struct InstrumentPCM instrument_pcm_data_944 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_439_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_237_info;
struct InstrumentPCM instrument_pcm_data_945 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_237_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_344_info;
struct InstrumentPCM instrument_pcm_data_946 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_344_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_947 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_217_info;
struct InstrumentPCM instrument_pcm_data_948 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_217_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_136_info;
struct InstrumentPCM instrument_pcm_data_949 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_136_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_107_info;
struct InstrumentPCM instrument_pcm_data_950 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_107_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_129_info;
struct InstrumentPCM instrument_pcm_data_951 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_129_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_214_info;
struct InstrumentPCM instrument_pcm_data_952 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_info,
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

extern struct SampleInfo sample_440_info;
struct InstrumentPCM instrument_pcm_data_958 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_440_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_441_info;
struct InstrumentPCM instrument_pcm_data_959 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_441_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_442_info;
struct InstrumentPCM instrument_pcm_data_960 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_442_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_443_info;
struct InstrumentPCM instrument_pcm_data_961 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sample_443_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_444_info;
struct InstrumentPCM instrument_pcm_data_962 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_444_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_445_info;
struct InstrumentPCM instrument_pcm_data_963 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_445_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_446_info;
struct InstrumentPCM instrument_pcm_data_964 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_446_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_447_info;
struct InstrumentPCM instrument_pcm_data_965 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_447_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_448_info;
struct InstrumentPCM instrument_pcm_data_966 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_448_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_449_info;
struct InstrumentPCM instrument_pcm_data_967 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_449_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_450_info;
struct InstrumentPCM instrument_pcm_data_968 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_450_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_451_info;
struct InstrumentPCM instrument_pcm_data_969 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_451_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_452_info;
struct InstrumentPCM instrument_pcm_data_970 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_452_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_971 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_972 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x41,
        /* unk2 */ 0x10,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_453_info;
struct InstrumentPCM instrument_pcm_data_973 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_453_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_454_info;
struct InstrumentPCM instrument_pcm_data_974 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_454_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_455_info;
struct InstrumentPCM instrument_pcm_data_975 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_455_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_976 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_456_info;
struct InstrumentPCM instrument_pcm_data_977 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_456_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_457_info;
struct InstrumentPCM instrument_pcm_data_978 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_457_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_458_info;
struct InstrumentPCM instrument_pcm_data_979 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_458_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_459_info;
struct InstrumentPCM instrument_pcm_data_980 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_459_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_460_info;
struct InstrumentPCM instrument_pcm_data_981 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_460_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_461_info;
struct InstrumentPCM instrument_pcm_data_982 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_461_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_462_info;
struct InstrumentPCM instrument_pcm_data_983 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_462_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_463_info;
struct InstrumentPCM instrument_pcm_data_984 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_463_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_464_info;
struct InstrumentPCM instrument_pcm_data_985 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_464_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_465_info;
struct InstrumentPCM instrument_pcm_data_986 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_465_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_466_info;
struct InstrumentPCM instrument_pcm_data_987 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_466_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_086_info;
struct InstrumentPCM instrument_pcm_data_988 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_467_info;
struct InstrumentPCM instrument_pcm_data_989 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_467_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_385_info;
struct InstrumentPCM instrument_pcm_data_990 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_385_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_991 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x34,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_450_info;
struct InstrumentPCM instrument_pcm_data_992 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_450_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_993 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_994 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x0,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_469_info;
struct InstrumentPCM instrument_pcm_data_995 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0xffc0,
    },
    /* Sample */ &sample_469_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_470_info;
struct InstrumentPCM instrument_pcm_data_996 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_470_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_471_info;
struct InstrumentPCM instrument_pcm_data_997 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_471_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_472_info;
struct InstrumentPCM instrument_pcm_data_998 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_472_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_473_info;
struct InstrumentPCM instrument_pcm_data_999 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc0,
    },
    /* Sample */ &sample_473_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_474_info;
struct InstrumentPCM instrument_pcm_data_1000 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_474_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_475_info;
struct InstrumentPCM instrument_pcm_data_1001 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_475_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_476_info;
struct InstrumentPCM instrument_pcm_data_1002 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_476_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_477_info;
struct InstrumentPCM instrument_pcm_data_1003 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x60,
    },
    /* Sample */ &sample_477_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_478_info;
struct InstrumentPCM instrument_pcm_data_1004 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_478_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_477_info;
struct InstrumentPCM instrument_pcm_data_1005 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x35,
        /* unk2 */ 0x60,
    },
    /* Sample */ &sample_477_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_479_info;
struct InstrumentPCM instrument_pcm_data_1006 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_479_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_480_info;
struct InstrumentPCM instrument_pcm_data_1007 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x10,
    },
    /* Sample */ &sample_480_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_450_info;
struct InstrumentPCM instrument_pcm_data_1008 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_450_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_481_info;
struct InstrumentPCM instrument_pcm_data_1009 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sample_481_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_482_info;
struct InstrumentPCM instrument_pcm_data_1010 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_482_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_483_info;
struct InstrumentPCM instrument_pcm_data_1011 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_483_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_484_info;
struct InstrumentPCM instrument_pcm_data_1012 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_484_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_485_info;
struct InstrumentPCM instrument_pcm_data_1013 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_485_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_216_info;
struct InstrumentPCM instrument_pcm_data_1014 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_216_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_486_info;
struct InstrumentPCM instrument_pcm_data_1015 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xc,
    },
    /* Sample */ &sample_486_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_487_info;
struct InstrumentPCM instrument_pcm_data_1016 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_487_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_488_info;
struct InstrumentPCM instrument_pcm_data_1017 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xc,
    },
    /* Sample */ &sample_488_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_489_info;
struct InstrumentPCM instrument_pcm_data_1018 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_489_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_490_info;
struct InstrumentPCM instrument_pcm_data_1019 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_490_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_491_info;
struct InstrumentPCM instrument_pcm_data_1020 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_491_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_492_info;
struct InstrumentPCM instrument_pcm_data_1021 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_492_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_493_info;
struct InstrumentPCM instrument_pcm_data_1022 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_493_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_494_info;
struct InstrumentPCM instrument_pcm_data_1023 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_494_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_487_info;
struct InstrumentPCM instrument_pcm_data_1024 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_487_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_495_info;
struct InstrumentPCM instrument_pcm_data_1025 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_495_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_496_info;
struct InstrumentPCM instrument_pcm_data_1026 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_496_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_497_info;
struct InstrumentPCM instrument_pcm_data_1027 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_497_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_498_info;
struct InstrumentPCM instrument_pcm_data_1028 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_498_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_499_info;
struct InstrumentPCM instrument_pcm_data_1029 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_499_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_500_info;
struct InstrumentPCM instrument_pcm_data_1030 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_500_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_501_info;
struct InstrumentPCM instrument_pcm_data_1031 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_501_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_502_info;
struct InstrumentPCM instrument_pcm_data_1032 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_502_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_503_info;
struct InstrumentPCM instrument_pcm_data_1033 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_503_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_504_info;
struct InstrumentPCM instrument_pcm_data_1034 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_504_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_505_info;
struct InstrumentPCM instrument_pcm_data_1035 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_505_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_506_info;
struct InstrumentPCM instrument_pcm_data_1036 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_506_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_507_info;
struct InstrumentPCM instrument_pcm_data_1037 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_507_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_508_info;
struct InstrumentPCM instrument_pcm_data_1038 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_508_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_509_info;
struct InstrumentPCM instrument_pcm_data_1039 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_509_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_510_info;
struct InstrumentPCM instrument_pcm_data_1040 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_510_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_511_info;
struct InstrumentPCM instrument_pcm_data_1041 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_511_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_512_info;
struct InstrumentPCM instrument_pcm_data_1042 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_512_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_513_info;
struct InstrumentPCM instrument_pcm_data_1043 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_513_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_514_info;
struct InstrumentPCM instrument_pcm_data_1044 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_514_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_515_info;
struct InstrumentPCM instrument_pcm_data_1045 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_515_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_516_info;
struct InstrumentPCM instrument_pcm_data_1046 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_516_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_517_info;
struct InstrumentPCM instrument_pcm_data_1047 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_517_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_518_info;
struct InstrumentPCM instrument_pcm_data_1048 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_518_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_518_info;
struct InstrumentPCM instrument_pcm_data_1049 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_518_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_489_info;
struct InstrumentPCM instrument_pcm_data_1050 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_489_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_519_info;
struct InstrumentPCM instrument_pcm_data_1051 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_519_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_520_info;
struct InstrumentPCM instrument_pcm_data_1052 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_520_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_521_info;
struct InstrumentPCM instrument_pcm_data_1053 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_521_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_522_info;
struct InstrumentPCM instrument_pcm_data_1054 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_522_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_523_info;
struct InstrumentPCM instrument_pcm_data_1055 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_523_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_524_info;
struct InstrumentPCM instrument_pcm_data_1056 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x40,
    },
    /* Sample */ &sample_524_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_525_info;
struct InstrumentPCM instrument_pcm_data_1057 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_525_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_526_info;
struct InstrumentPCM instrument_pcm_data_1058 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_526_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_527_info;
struct InstrumentPCM instrument_pcm_data_1059 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_527_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_528_info;
struct InstrumentPCM instrument_pcm_data_1060 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_528_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_529_info;
struct InstrumentPCM instrument_pcm_data_1061 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_529_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_529_info;
struct InstrumentPCM instrument_pcm_data_1062 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_529_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_506_info;
struct InstrumentPCM instrument_pcm_data_1063 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_506_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_530_info;
struct InstrumentPCM instrument_pcm_data_1064 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_530_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_531_info;
struct InstrumentPCM instrument_pcm_data_1065 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_531_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_530_info;
struct InstrumentPCM instrument_pcm_data_1066 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_530_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_532_info;
struct InstrumentPCM instrument_pcm_data_1067 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_532_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_533_info;
struct InstrumentPCM instrument_pcm_data_1068 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_533_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_534_info;
struct InstrumentPCM instrument_pcm_data_1069 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_534_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_535_info;
struct InstrumentPCM instrument_pcm_data_1070 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_535_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_536_info;
struct InstrumentPCM instrument_pcm_data_1071 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_536_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_435_info;
struct InstrumentPCM instrument_pcm_data_1072 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_435_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_537_info;
struct InstrumentPCM instrument_pcm_data_1073 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_537_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_538_info;
struct InstrumentPCM instrument_pcm_data_1074 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_538_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_539_info;
struct InstrumentPCM instrument_pcm_data_1075 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_539_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_540_info;
struct InstrumentPCM instrument_pcm_data_1076 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_540_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_541_info;
struct InstrumentPCM instrument_pcm_data_1077 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_541_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_542_info;
struct InstrumentPCM instrument_pcm_data_1078 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_542_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_543_info;
struct InstrumentPCM instrument_pcm_data_1079 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x40,
    },
    /* Sample */ &sample_543_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_544_info;
struct InstrumentPCM instrument_pcm_data_1080 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_544_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_545_info;
struct InstrumentPCM instrument_pcm_data_1081 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_545_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_546_info;
struct InstrumentPCM instrument_pcm_data_1082 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_546_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_547_info;
struct InstrumentPCM instrument_pcm_data_1083 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sample_547_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_548_info;
struct InstrumentPCM instrument_pcm_data_1084 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_548_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_549_info;
struct InstrumentPCM instrument_pcm_data_1085 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_549_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_550_info;
struct InstrumentPCM instrument_pcm_data_1086 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_550_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_220_info;
struct InstrumentPCM instrument_pcm_data_1087 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_220_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_218_info;
struct InstrumentPCM instrument_pcm_data_1088 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_218_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_551_info;
struct InstrumentPCM instrument_pcm_data_1089 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_551_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_552_info;
struct InstrumentPCM instrument_pcm_data_1090 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_552_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_553_info;
struct InstrumentPCM instrument_pcm_data_1091 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_553_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_554_info;
struct InstrumentPCM instrument_pcm_data_1092 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_554_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_555_info;
struct InstrumentPCM instrument_pcm_data_1093 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_555_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_556_info;
struct InstrumentPCM instrument_pcm_data_1094 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_556_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_557_info;
struct InstrumentPCM instrument_pcm_data_1095 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_557_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_558_info;
struct InstrumentPCM instrument_pcm_data_1096 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_558_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_559_info;
struct InstrumentPCM instrument_pcm_data_1097 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_559_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_560_info;
struct InstrumentPCM instrument_pcm_data_1098 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_560_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleInfo sample_561_info;
struct InstrumentPCM instrument_pcm_data_1099 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_561_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_562_info;
struct InstrumentPCM instrument_pcm_data_1100 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_562_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_233_info;
struct InstrumentPCM instrument_pcm_data_1101 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_233_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_563_info;
struct InstrumentPCM instrument_pcm_data_1102 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_563_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_564_info;
struct InstrumentPCM instrument_pcm_data_1103 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_564_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_565_info;
struct InstrumentPCM instrument_pcm_data_1104 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0xffc8,
    },
    /* Sample */ &sample_565_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_565_info;
struct InstrumentPCM instrument_pcm_data_1105 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_565_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_566_info;
struct InstrumentPCM instrument_pcm_data_1106 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_566_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_567_info;
struct InstrumentPCM instrument_pcm_data_1107 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_567_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_1108 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_446_info;
struct InstrumentPCM instrument_pcm_data_1109 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_446_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_474_info;
struct InstrumentPCM instrument_pcm_data_1110 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_474_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_216_info;
struct InstrumentPCM instrument_pcm_data_1111 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_216_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_568_info;
struct InstrumentPCM instrument_pcm_data_1112 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_568_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_569_info;
struct InstrumentPCM instrument_pcm_data_1113 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_569_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_570_info;
struct InstrumentPCM instrument_pcm_data_1114 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_570_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_571_info;
struct InstrumentPCM instrument_pcm_data_1115 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_571_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_572_info;
struct InstrumentPCM instrument_pcm_data_1116 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_572_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_573_info;
struct InstrumentPCM instrument_pcm_data_1117 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_573_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_574_info;
struct InstrumentPCM instrument_pcm_data_1118 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_574_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_575_info;
struct InstrumentPCM instrument_pcm_data_1119 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_575_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_576_info;
struct InstrumentPCM instrument_pcm_data_1120 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_576_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_577_info;
struct InstrumentPCM instrument_pcm_data_1121 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_577_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_578_info;
struct InstrumentPCM instrument_pcm_data_1122 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_578_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_579_info;
struct InstrumentPCM instrument_pcm_data_1123 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_579_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_580_info;
struct InstrumentPCM instrument_pcm_data_1124 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_580_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_581_info;
struct InstrumentPCM instrument_pcm_data_1125 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_581_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_582_info;
struct InstrumentPCM instrument_pcm_data_1126 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_582_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_583_info;
struct InstrumentPCM instrument_pcm_data_1127 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_583_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_584_info;
struct InstrumentPCM instrument_pcm_data_1128 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_584_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_585_info;
struct InstrumentPCM instrument_pcm_data_1129 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_585_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_586_info;
struct InstrumentPCM instrument_pcm_data_1130 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_586_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_587_info;
struct InstrumentPCM instrument_pcm_data_1131 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_587_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_440_info;
struct InstrumentPCM instrument_pcm_data_1132 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_440_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_441_info;
struct InstrumentPCM instrument_pcm_data_1133 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_441_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_442_info;
struct InstrumentPCM instrument_pcm_data_1134 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_442_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_443_info;
struct InstrumentPCM instrument_pcm_data_1135 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_443_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_444_info;
struct InstrumentPCM instrument_pcm_data_1136 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_444_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_445_info;
struct InstrumentPCM instrument_pcm_data_1137 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_445_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_446_info;
struct InstrumentPCM instrument_pcm_data_1138 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_446_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_447_info;
struct InstrumentPCM instrument_pcm_data_1139 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_447_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_448_info;
struct InstrumentPCM instrument_pcm_data_1140 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_448_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_449_info;
struct InstrumentPCM instrument_pcm_data_1141 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_449_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_450_info;
struct InstrumentPCM instrument_pcm_data_1142 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_450_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_451_info;
struct InstrumentPCM instrument_pcm_data_1143 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_451_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_452_info;
struct InstrumentPCM instrument_pcm_data_1144 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_452_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_1145 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_1146 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_453_info;
struct InstrumentPCM instrument_pcm_data_1147 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_453_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_454_info;
struct InstrumentPCM instrument_pcm_data_1148 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_454_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_455_info;
struct InstrumentPCM instrument_pcm_data_1149 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_455_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_1150 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_456_info;
struct InstrumentPCM instrument_pcm_data_1151 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_456_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_457_info;
struct InstrumentPCM instrument_pcm_data_1152 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_457_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_458_info;
struct InstrumentPCM instrument_pcm_data_1153 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_458_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_459_info;
struct InstrumentPCM instrument_pcm_data_1154 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_459_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_460_info;
struct InstrumentPCM instrument_pcm_data_1155 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_460_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_461_info;
struct InstrumentPCM instrument_pcm_data_1156 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_461_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_462_info;
struct InstrumentPCM instrument_pcm_data_1157 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_462_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_463_info;
struct InstrumentPCM instrument_pcm_data_1158 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_463_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_518_info;
struct InstrumentPCM instrument_pcm_data_1159 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_518_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_465_info;
struct InstrumentPCM instrument_pcm_data_1160 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_465_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_466_info;
struct InstrumentPCM instrument_pcm_data_1161 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_466_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_086_info;
struct InstrumentPCM instrument_pcm_data_1162 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_467_info;
struct InstrumentPCM instrument_pcm_data_1163 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_467_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_385_info;
struct InstrumentPCM instrument_pcm_data_1164 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_385_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_1165 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_450_info;
struct InstrumentPCM instrument_pcm_data_1166 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_450_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_1167 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_1168 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_469_info;
struct InstrumentPCM instrument_pcm_data_1169 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_469_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_470_info;
struct InstrumentPCM instrument_pcm_data_1170 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_470_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_471_info;
struct InstrumentPCM instrument_pcm_data_1171 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_471_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_472_info;
struct InstrumentPCM instrument_pcm_data_1172 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_472_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_473_info;
struct InstrumentPCM instrument_pcm_data_1173 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_473_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_474_info;
struct InstrumentPCM instrument_pcm_data_1174 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_474_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_475_info;
struct InstrumentPCM instrument_pcm_data_1175 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_475_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_476_info;
struct InstrumentPCM instrument_pcm_data_1176 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_476_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_477_info;
struct InstrumentPCM instrument_pcm_data_1177 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_477_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_478_info;
struct InstrumentPCM instrument_pcm_data_1178 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_478_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_477_info;
struct InstrumentPCM instrument_pcm_data_1179 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_477_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_479_info;
struct InstrumentPCM instrument_pcm_data_1180 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_479_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_480_info;
struct InstrumentPCM instrument_pcm_data_1181 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_480_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_450_info;
struct InstrumentPCM instrument_pcm_data_1182 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_450_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_481_info;
struct InstrumentPCM instrument_pcm_data_1183 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_481_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_482_info;
struct InstrumentPCM instrument_pcm_data_1184 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_482_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_483_info;
struct InstrumentPCM instrument_pcm_data_1185 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_483_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_484_info;
struct InstrumentPCM instrument_pcm_data_1186 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_484_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_216_info;
struct InstrumentPCM instrument_pcm_data_1187 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_216_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_486_info;
struct InstrumentPCM instrument_pcm_data_1188 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_486_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_487_info;
struct InstrumentPCM instrument_pcm_data_1189 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_487_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_488_info;
struct InstrumentPCM instrument_pcm_data_1190 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_488_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_489_info;
struct InstrumentPCM instrument_pcm_data_1191 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_489_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_490_info;
struct InstrumentPCM instrument_pcm_data_1192 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_490_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_491_info;
struct InstrumentPCM instrument_pcm_data_1193 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_491_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_492_info;
struct InstrumentPCM instrument_pcm_data_1194 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_492_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_493_info;
struct InstrumentPCM instrument_pcm_data_1195 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_493_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_494_info;
struct InstrumentPCM instrument_pcm_data_1196 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_494_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_495_info;
struct InstrumentPCM instrument_pcm_data_1197 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_495_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_496_info;
struct InstrumentPCM instrument_pcm_data_1198 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_496_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_497_info;
struct InstrumentPCM instrument_pcm_data_1199 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_497_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_498_info;
struct InstrumentPCM instrument_pcm_data_1200 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_498_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_499_info;
struct InstrumentPCM instrument_pcm_data_1201 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_499_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_500_info;
struct InstrumentPCM instrument_pcm_data_1202 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_500_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_501_info;
struct InstrumentPCM instrument_pcm_data_1203 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_501_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_502_info;
struct InstrumentPCM instrument_pcm_data_1204 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_502_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_503_info;
struct InstrumentPCM instrument_pcm_data_1205 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_503_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_504_info;
struct InstrumentPCM instrument_pcm_data_1206 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_504_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_505_info;
struct InstrumentPCM instrument_pcm_data_1207 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_505_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_506_info;
struct InstrumentPCM instrument_pcm_data_1208 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_506_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_507_info;
struct InstrumentPCM instrument_pcm_data_1209 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_507_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_508_info;
struct InstrumentPCM instrument_pcm_data_1210 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_508_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_509_info;
struct InstrumentPCM instrument_pcm_data_1211 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_509_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_510_info;
struct InstrumentPCM instrument_pcm_data_1212 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_510_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_511_info;
struct InstrumentPCM instrument_pcm_data_1213 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_511_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_512_info;
struct InstrumentPCM instrument_pcm_data_1214 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_512_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_513_info;
struct InstrumentPCM instrument_pcm_data_1215 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_513_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_514_info;
struct InstrumentPCM instrument_pcm_data_1216 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_514_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_515_info;
struct InstrumentPCM instrument_pcm_data_1217 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_515_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_516_info;
struct InstrumentPCM instrument_pcm_data_1218 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_516_info,
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

extern struct SampleInfo sample_588_info;
struct InstrumentPCM instrument_pcm_data_1220 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_589_info;
struct InstrumentPCM instrument_pcm_data_1221 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_589_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_590_info;
struct InstrumentPCM instrument_pcm_data_1222 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_590_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_591_info;
struct InstrumentPCM instrument_pcm_data_1223 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_591_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_190_info;
struct InstrumentPCM instrument_pcm_data_1224 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_190_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_449_info;
struct InstrumentPCM instrument_pcm_data_1225 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_449_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_592_info;
struct InstrumentPCM instrument_pcm_data_1226 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sample_592_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_593_info;
struct InstrumentPCM instrument_pcm_data_1227 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sample_593_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_594_info;
struct InstrumentPCM instrument_pcm_data_1228 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_594_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_594_info;
struct InstrumentPCM instrument_pcm_data_1229 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x35,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_594_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_590_info;
struct InstrumentPCM instrument_pcm_data_1230 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x30,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_590_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_588_info;
struct InstrumentPCM instrument_pcm_data_1231 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x37,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_588_info;
struct InstrumentPCM instrument_pcm_data_1232 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_588_info;
struct InstrumentPCM instrument_pcm_data_1233 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_595_info;
struct InstrumentPCM instrument_pcm_data_1234 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_595_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_596_info;
struct InstrumentPCM instrument_pcm_data_1235 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_596_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_597_info;
struct InstrumentPCM instrument_pcm_data_1236 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_597_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_598_info;
struct InstrumentPCM instrument_pcm_data_1237 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_598_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_141_info;
struct InstrumentPCM instrument_pcm_data_1238 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_141_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_142_info;
struct InstrumentPCM instrument_pcm_data_1239 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_142_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_143_info;
struct InstrumentPCM instrument_pcm_data_1240 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_143_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_599_info;
struct InstrumentPCM instrument_pcm_data_1241 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_599_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_600_info;
struct InstrumentPCM instrument_pcm_data_1242 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_600_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_131_info;
struct InstrumentPCM instrument_pcm_data_1243 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_131_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_132_info;
struct InstrumentPCM instrument_pcm_data_1244 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_132_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_133_info;
struct InstrumentPCM instrument_pcm_data_1245 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_133_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_134_info;
struct InstrumentPCM instrument_pcm_data_1246 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_134_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_135_info;
struct InstrumentPCM instrument_pcm_data_1247 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_135_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_136_info;
struct InstrumentPCM instrument_pcm_data_1248 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_136_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_601_info;
struct InstrumentPCM instrument_pcm_data_1249 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_601_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_602_info;
struct InstrumentPCM instrument_pcm_data_1250 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_602_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_603_info;
struct InstrumentPCM instrument_pcm_data_1251 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_603_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_604_info;
struct InstrumentPCM instrument_pcm_data_1252 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_604_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_605_info;
struct InstrumentPCM instrument_pcm_data_1253 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_605_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_606_info;
struct InstrumentPCM instrument_pcm_data_1254 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_606_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_607_info;
struct InstrumentPCM instrument_pcm_data_1255 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_607_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_608_info;
struct InstrumentPCM instrument_pcm_data_1256 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_608_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_609_info;
struct InstrumentPCM instrument_pcm_data_1257 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_609_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_610_info;
struct InstrumentPCM instrument_pcm_data_1258 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_610_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_611_info;
struct InstrumentPCM instrument_pcm_data_1259 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_611_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_612_info;
struct InstrumentPCM instrument_pcm_data_1260 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_612_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_613_info;
struct InstrumentPCM instrument_pcm_data_1261 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_613_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_614_info;
struct InstrumentPCM instrument_pcm_data_1262 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_614_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_615_info;
struct InstrumentPCM instrument_pcm_data_1263 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_615_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_616_info;
struct InstrumentPCM instrument_pcm_data_1264 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_616_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_617_info;
struct InstrumentPCM instrument_pcm_data_1265 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_617_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_618_info;
struct InstrumentPCM instrument_pcm_data_1266 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_618_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_619_info;
struct InstrumentPCM instrument_pcm_data_1267 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_619_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_620_info;
struct InstrumentPCM instrument_pcm_data_1268 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_620_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_621_info;
struct InstrumentPCM instrument_pcm_data_1269 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_621_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_622_info;
struct InstrumentPCM instrument_pcm_data_1270 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_622_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_623_info;
struct InstrumentPCM instrument_pcm_data_1271 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_623_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_624_info;
struct InstrumentPCM instrument_pcm_data_1272 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_624_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_625_info;
struct InstrumentPCM instrument_pcm_data_1273 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_625_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_626_info;
struct InstrumentPCM instrument_pcm_data_1274 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_626_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_627_info;
struct InstrumentPCM instrument_pcm_data_1275 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_627_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_628_info;
struct InstrumentPCM instrument_pcm_data_1276 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_628_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_629_info;
struct InstrumentPCM instrument_pcm_data_1277 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_629_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_630_info;
struct InstrumentPCM instrument_pcm_data_1278 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_630_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_631_info;
struct InstrumentPCM instrument_pcm_data_1279 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_631_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_632_info;
struct InstrumentPCM instrument_pcm_data_1280 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_632_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_633_info;
struct InstrumentPCM instrument_pcm_data_1281 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_633_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_634_info;
struct InstrumentPCM instrument_pcm_data_1282 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_634_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_635_info;
struct InstrumentPCM instrument_pcm_data_1283 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_635_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_636_info;
struct InstrumentPCM instrument_pcm_data_1284 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_636_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_637_info;
struct InstrumentPCM instrument_pcm_data_1285 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_637_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_638_info;
struct InstrumentPCM instrument_pcm_data_1286 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_638_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_639_info;
struct InstrumentPCM instrument_pcm_data_1287 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_639_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_640_info;
struct InstrumentPCM instrument_pcm_data_1288 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_640_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_641_info;
struct InstrumentPCM instrument_pcm_data_1289 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_641_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_642_info;
struct InstrumentPCM instrument_pcm_data_1290 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_642_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_643_info;
struct InstrumentPCM instrument_pcm_data_1291 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_643_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_644_info;
struct InstrumentPCM instrument_pcm_data_1292 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_644_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_645_info;
struct InstrumentPCM instrument_pcm_data_1293 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_645_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_646_info;
struct InstrumentPCM instrument_pcm_data_1294 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_646_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_647_info;
struct InstrumentPCM instrument_pcm_data_1295 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_647_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_648_info;
struct InstrumentPCM instrument_pcm_data_1296 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_648_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_649_info;
struct InstrumentPCM instrument_pcm_data_1297 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_649_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_650_info;
struct InstrumentPCM instrument_pcm_data_1298 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_650_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_651_info;
struct InstrumentPCM instrument_pcm_data_1299 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_651_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_652_info;
struct InstrumentPCM instrument_pcm_data_1300 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_652_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_653_info;
struct InstrumentPCM instrument_pcm_data_1301 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_653_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_654_info;
struct InstrumentPCM instrument_pcm_data_1302 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_654_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_655_info;
struct InstrumentPCM instrument_pcm_data_1303 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_655_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_656_info;
struct InstrumentPCM instrument_pcm_data_1304 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_656_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_657_info;
struct InstrumentPCM instrument_pcm_data_1305 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_657_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_658_info;
struct InstrumentPCM instrument_pcm_data_1306 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_658_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_659_info;
struct InstrumentPCM instrument_pcm_data_1307 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_659_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_660_info;
struct InstrumentPCM instrument_pcm_data_1308 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_660_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_661_info;
struct InstrumentPCM instrument_pcm_data_1309 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_661_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_662_info;
struct InstrumentPCM instrument_pcm_data_1310 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_662_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_663_info;
struct InstrumentPCM instrument_pcm_data_1311 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_663_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_664_info;
struct InstrumentPCM instrument_pcm_data_1312 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_664_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_665_info;
struct InstrumentPCM instrument_pcm_data_1313 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_665_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_666_info;
struct InstrumentPCM instrument_pcm_data_1314 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_666_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_667_info;
struct InstrumentPCM instrument_pcm_data_1315 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_667_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_668_info;
struct InstrumentPCM instrument_pcm_data_1316 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_668_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_669_info;
struct InstrumentPCM instrument_pcm_data_1317 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_669_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_670_info;
struct InstrumentPCM instrument_pcm_data_1318 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_670_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_671_info;
struct InstrumentPCM instrument_pcm_data_1319 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_671_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_672_info;
struct InstrumentPCM instrument_pcm_data_1320 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_672_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_673_info;
struct InstrumentPCM instrument_pcm_data_1321 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_673_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_674_info;
struct InstrumentPCM instrument_pcm_data_1322 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_674_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_675_info;
struct InstrumentPCM instrument_pcm_data_1323 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_675_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_676_info;
struct InstrumentPCM instrument_pcm_data_1324 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_676_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_677_info;
struct InstrumentPCM instrument_pcm_data_1325 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_677_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_678_info;
struct InstrumentPCM instrument_pcm_data_1326 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_678_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_679_info;
struct InstrumentPCM instrument_pcm_data_1327 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_679_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_680_info;
struct InstrumentPCM instrument_pcm_data_1328 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_680_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_681_info;
struct InstrumentPCM instrument_pcm_data_1329 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_681_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_682_info;
struct InstrumentPCM instrument_pcm_data_1330 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_682_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_683_info;
struct InstrumentPCM instrument_pcm_data_1331 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_683_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_684_info;
struct InstrumentPCM instrument_pcm_data_1332 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_684_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_685_info;
struct InstrumentPCM instrument_pcm_data_1333 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_685_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_686_info;
struct InstrumentPCM instrument_pcm_data_1334 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_686_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_687_info;
struct InstrumentPCM instrument_pcm_data_1335 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_687_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_688_info;
struct InstrumentPCM instrument_pcm_data_1336 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_688_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_689_info;
struct InstrumentPCM instrument_pcm_data_1337 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_689_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_690_info;
struct InstrumentPCM instrument_pcm_data_1338 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_690_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_691_info;
struct InstrumentPCM instrument_pcm_data_1339 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_691_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_692_info;
struct InstrumentPCM instrument_pcm_data_1340 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_692_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_693_info;
struct InstrumentPCM instrument_pcm_data_1341 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_693_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_694_info;
struct InstrumentPCM instrument_pcm_data_1342 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_694_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_695_info;
struct InstrumentPCM instrument_pcm_data_1343 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_695_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_696_info;
struct InstrumentPCM instrument_pcm_data_1344 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_696_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_697_info;
struct InstrumentPCM instrument_pcm_data_1345 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_697_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_698_info;
struct InstrumentPCM instrument_pcm_data_1346 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_698_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_699_info;
struct InstrumentPCM instrument_pcm_data_1347 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_699_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_700_info;
struct InstrumentPCM instrument_pcm_data_1348 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_700_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_701_info;
struct InstrumentPCM instrument_pcm_data_1349 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_701_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_702_info;
struct InstrumentPCM instrument_pcm_data_1350 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_702_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_703_info;
struct InstrumentPCM instrument_pcm_data_1351 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_703_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_704_info;
struct InstrumentPCM instrument_pcm_data_1352 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_704_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_705_info;
struct InstrumentPCM instrument_pcm_data_1353 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_705_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_706_info;
struct InstrumentPCM instrument_pcm_data_1354 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_706_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_707_info;
struct InstrumentPCM instrument_pcm_data_1355 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_707_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_708_info;
struct InstrumentPCM instrument_pcm_data_1356 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_708_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_709_info;
struct InstrumentPCM instrument_pcm_data_1357 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_709_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_710_info;
struct InstrumentPCM instrument_pcm_data_1358 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_710_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_711_info;
struct InstrumentPCM instrument_pcm_data_1359 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_711_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_712_info;
struct InstrumentPCM instrument_pcm_data_1360 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_712_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_713_info;
struct InstrumentPCM instrument_pcm_data_1361 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_713_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_714_info;
struct InstrumentPCM instrument_pcm_data_1362 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_714_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_715_info;
struct InstrumentPCM instrument_pcm_data_1363 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_715_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_716_info;
struct InstrumentPCM instrument_pcm_data_1364 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_716_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_717_info;
struct InstrumentPCM instrument_pcm_data_1365 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_717_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_718_info;
struct InstrumentPCM instrument_pcm_data_1366 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_718_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_719_info;
struct InstrumentPCM instrument_pcm_data_1367 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_719_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_720_info;
struct InstrumentPCM instrument_pcm_data_1368 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_720_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_721_info;
struct InstrumentPCM instrument_pcm_data_1369 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_721_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_722_info;
struct InstrumentPCM instrument_pcm_data_1370 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_722_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_723_info;
struct InstrumentPCM instrument_pcm_data_1371 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_723_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_724_info;
struct InstrumentPCM instrument_pcm_data_1372 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_724_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_725_info;
struct InstrumentPCM instrument_pcm_data_1373 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_725_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_726_info;
struct InstrumentPCM instrument_pcm_data_1374 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_726_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_727_info;
struct InstrumentPCM instrument_pcm_data_1375 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_727_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_728_info;
struct InstrumentPCM instrument_pcm_data_1376 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_728_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_729_info;
struct InstrumentPCM instrument_pcm_data_1377 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_729_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_730_info;
struct InstrumentPCM instrument_pcm_data_1378 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_730_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_731_info;
struct InstrumentPCM instrument_pcm_data_1379 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_731_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_732_info;
struct InstrumentPCM instrument_pcm_data_1380 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_732_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_733_info;
struct InstrumentPCM instrument_pcm_data_1381 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_733_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_734_info;
struct InstrumentPCM instrument_pcm_data_1382 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_734_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_735_info;
struct InstrumentPCM instrument_pcm_data_1383 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_735_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_736_info;
struct InstrumentPCM instrument_pcm_data_1384 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_736_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_737_info;
struct InstrumentPCM instrument_pcm_data_1385 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_737_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_738_info;
struct InstrumentPCM instrument_pcm_data_1386 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_738_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_739_info;
struct InstrumentPCM instrument_pcm_data_1387 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_739_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_740_info;
struct InstrumentPCM instrument_pcm_data_1388 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_740_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_741_info;
struct InstrumentPCM instrument_pcm_data_1389 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_741_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_742_info;
struct InstrumentPCM instrument_pcm_data_1390 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_742_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_743_info;
struct InstrumentPCM instrument_pcm_data_1391 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_743_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_744_info;
struct InstrumentPCM instrument_pcm_data_1392 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_744_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_745_info;
struct InstrumentPCM instrument_pcm_data_1393 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_745_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_746_info;
struct InstrumentPCM instrument_pcm_data_1394 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_746_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_747_info;
struct InstrumentPCM instrument_pcm_data_1395 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_747_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_748_info;
struct InstrumentPCM instrument_pcm_data_1396 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_748_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_749_info;
struct InstrumentPCM instrument_pcm_data_1397 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_749_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_750_info;
struct InstrumentPCM instrument_pcm_data_1398 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_750_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_751_info;
struct InstrumentPCM instrument_pcm_data_1399 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_751_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_752_info;
struct InstrumentPCM instrument_pcm_data_1400 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_752_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_753_info;
struct InstrumentPCM instrument_pcm_data_1401 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_753_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_754_info;
struct InstrumentPCM instrument_pcm_data_1402 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_754_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_755_info;
struct InstrumentPCM instrument_pcm_data_1403 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_755_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_756_info;
struct InstrumentPCM instrument_pcm_data_1404 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_756_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_757_info;
struct InstrumentPCM instrument_pcm_data_1405 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_757_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_758_info;
struct InstrumentPCM instrument_pcm_data_1406 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_758_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_759_info;
struct InstrumentPCM instrument_pcm_data_1407 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_759_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_760_info;
struct InstrumentPCM instrument_pcm_data_1408 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_760_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_761_info;
struct InstrumentPCM instrument_pcm_data_1409 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_761_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_762_info;
struct InstrumentPCM instrument_pcm_data_1410 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_762_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_763_info;
struct InstrumentPCM instrument_pcm_data_1411 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_763_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_764_info;
struct InstrumentPCM instrument_pcm_data_1412 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_764_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_765_info;
struct InstrumentPCM instrument_pcm_data_1413 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_765_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_766_info;
struct InstrumentPCM instrument_pcm_data_1414 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_766_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_767_info;
struct InstrumentPCM instrument_pcm_data_1415 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_767_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_768_info;
struct InstrumentPCM instrument_pcm_data_1416 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_768_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_769_info;
struct InstrumentPCM instrument_pcm_data_1417 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_769_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_770_info;
struct InstrumentPCM instrument_pcm_data_1418 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_770_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_771_info;
struct InstrumentPCM instrument_pcm_data_1419 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_771_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_772_info;
struct InstrumentPCM instrument_pcm_data_1420 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_772_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_773_info;
struct InstrumentPCM instrument_pcm_data_1421 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_773_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_774_info;
struct InstrumentPCM instrument_pcm_data_1422 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_774_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_775_info;
struct InstrumentPCM instrument_pcm_data_1423 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_775_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_776_info;
struct InstrumentPCM instrument_pcm_data_1424 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_776_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_777_info;
struct InstrumentPCM instrument_pcm_data_1425 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_777_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_778_info;
struct InstrumentPCM instrument_pcm_data_1426 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_778_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_779_info;
struct InstrumentPCM instrument_pcm_data_1427 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_779_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_780_info;
struct InstrumentPCM instrument_pcm_data_1428 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_780_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_781_info;
struct InstrumentPCM instrument_pcm_data_1429 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_781_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_782_info;
struct InstrumentPCM instrument_pcm_data_1430 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_782_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_783_info;
struct InstrumentPCM instrument_pcm_data_1431 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_783_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_784_info;
struct InstrumentPCM instrument_pcm_data_1432 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_784_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_785_info;
struct InstrumentPCM instrument_pcm_data_1433 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_785_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_786_info;
struct InstrumentPCM instrument_pcm_data_1434 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_786_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_787_info;
struct InstrumentPCM instrument_pcm_data_1435 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_787_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_788_info;
struct InstrumentPCM instrument_pcm_data_1436 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_788_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_789_info;
struct InstrumentPCM instrument_pcm_data_1437 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_789_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_790_info;
struct InstrumentPCM instrument_pcm_data_1438 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_790_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_791_info;
struct InstrumentPCM instrument_pcm_data_1439 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_449_info;
struct InstrumentPCM instrument_pcm_data_1440 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_449_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_792_info;
struct InstrumentPCM instrument_pcm_data_1441 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_792_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_451_info;
struct InstrumentPCM instrument_pcm_data_1442 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_451_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_793_info;
struct InstrumentPCM instrument_pcm_data_1443 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x30,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_793_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_591_info;
struct InstrumentPCM instrument_pcm_data_1444 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_591_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_793_info;
struct InstrumentPCM instrument_pcm_data_1445 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x36,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_793_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_793_info;
struct InstrumentPCM instrument_pcm_data_1446 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_793_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_794_info;
struct InstrumentPCM instrument_pcm_data_1447 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_794_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00014867,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_795_info;
struct InstrumentPCM instrument_pcm_data_1448 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_795_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_796_info;
struct InstrumentPCM instrument_pcm_data_1449 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_796_info;
struct InstrumentPCM instrument_pcm_data_1450 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3f,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_796_info;
struct InstrumentPCM instrument_pcm_data_1451 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x46,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_797_info;
struct InstrumentPCM instrument_pcm_data_1452 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_797_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_798_info;
struct InstrumentPCM instrument_pcm_data_1453 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_798_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_799_info;
struct InstrumentPCM instrument_pcm_data_1454 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_799_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_456_info;
struct InstrumentPCM instrument_pcm_data_1455 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_456_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_800_info;
struct InstrumentPCM instrument_pcm_data_1456 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_800_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00022aa4,
};

extern struct SampleInfo sample_801_info;
struct InstrumentPCM instrument_pcm_data_1457 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_801_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_600_info;
struct InstrumentPCM instrument_pcm_data_1458 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_600_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_588_info;
struct InstrumentPCM instrument_pcm_data_1459 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_588_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_589_info;
struct InstrumentPCM instrument_pcm_data_1460 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_589_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_802_info;
struct InstrumentPCM instrument_pcm_data_1461 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_802_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_803_info;
struct InstrumentPCM instrument_pcm_data_1462 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_803_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_188_info;
struct InstrumentPCM instrument_pcm_data_1463 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_188_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_804_info;
struct InstrumentPCM instrument_pcm_data_1464 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_804_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_805_info;
struct InstrumentPCM instrument_pcm_data_1465 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_805_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_806_info;
struct InstrumentPCM instrument_pcm_data_1466 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_806_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_807_info;
struct InstrumentPCM instrument_pcm_data_1467 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_807_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_023_info;
struct InstrumentPCM instrument_pcm_data_1468 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_023_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_808_info;
struct InstrumentPCM instrument_pcm_data_1469 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_808_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_809_info;
struct InstrumentPCM instrument_pcm_data_1470 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_809_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_810_info;
struct InstrumentPCM instrument_pcm_data_1471 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_810_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_811_info;
struct InstrumentPCM instrument_pcm_data_1472 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_811_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_812_info;
struct InstrumentPCM instrument_pcm_data_1473 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_812_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00133e0f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_813_info;
struct InstrumentPCM instrument_pcm_data_1474 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_813_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_814_info;
struct InstrumentPCM instrument_pcm_data_1475 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x37,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_814_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleInfo sample_123_info;
struct InstrumentPCM instrument_pcm_data_1476 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_123_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_815_info;
struct InstrumentPCM instrument_pcm_data_1477 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_815_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_816_info;
struct InstrumentPCM instrument_pcm_data_1478 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_816_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_817_info;
struct InstrumentPCM instrument_pcm_data_1479 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_817_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleInfo sample_818_info;
struct InstrumentPCM instrument_pcm_data_1480 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_818_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_819_info;
struct InstrumentPCM instrument_pcm_data_1481 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_820_info;
struct InstrumentPCM instrument_pcm_data_1482 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_820_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_821_info;
struct InstrumentPCM instrument_pcm_data_1483 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_821_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_822_info;
struct InstrumentPCM instrument_pcm_data_1484 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_822_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_823_info;
struct InstrumentPCM instrument_pcm_data_1485 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_823_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_824_info;
struct InstrumentPCM instrument_pcm_data_1486 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_034_info;
struct InstrumentPCM instrument_pcm_data_1487 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_034_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_600_info;
struct InstrumentPCM instrument_pcm_data_1488 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_600_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00013fff,
};

extern struct SampleInfo sample_825_info;
struct InstrumentPCM instrument_pcm_data_1489 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_825_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_030_info;
struct InstrumentPCM instrument_pcm_data_1490 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_826_info;
struct InstrumentPCM instrument_pcm_data_1491 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_826_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_827_info;
struct InstrumentPCM instrument_pcm_data_1492 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_827_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_828_info;
struct InstrumentPCM instrument_pcm_data_1493 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_828_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_829_info;
struct InstrumentPCM instrument_pcm_data_1494 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_829_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_830_info;
struct InstrumentPCM instrument_pcm_data_1495 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_830_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_831_info;
struct InstrumentPCM instrument_pcm_data_1496 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_831_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_832_info;
struct InstrumentPCM instrument_pcm_data_1497 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_832_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_833_info;
struct InstrumentPCM instrument_pcm_data_1498 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_833_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_834_info;
struct InstrumentPCM instrument_pcm_data_1499 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_835_info;
struct InstrumentPCM instrument_pcm_data_1500 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_835_info,
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

extern struct SampleInfo sample_824_info;
struct InstrumentPCM instrument_pcm_data_1502 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_836_info;
struct InstrumentPCM instrument_pcm_data_1503 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_836_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_791_info;
struct InstrumentPCM instrument_pcm_data_1504 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_837_info;
struct InstrumentPCM instrument_pcm_data_1505 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_837_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_838_info;
struct InstrumentPCM instrument_pcm_data_1506 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_838_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_839_info;
struct InstrumentPCM instrument_pcm_data_1507 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_839_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_824_info;
struct InstrumentPCM instrument_pcm_data_1508 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_509_info;
struct InstrumentPCM instrument_pcm_data_1509 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_509_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_840_info;
struct InstrumentPCM instrument_pcm_data_1510 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_840_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_832_info;
struct InstrumentPCM instrument_pcm_data_1511 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_832_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_818_info;
struct InstrumentPCM instrument_pcm_data_1512 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_818_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_841_info;
struct InstrumentPCM instrument_pcm_data_1513 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_841_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_823_info;
struct InstrumentPCM instrument_pcm_data_1514 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_823_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_127_info;
struct InstrumentPCM instrument_pcm_data_1515 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_127_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_842_info;
struct InstrumentPCM instrument_pcm_data_1516 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_842_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_835_info;
struct InstrumentPCM instrument_pcm_data_1517 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_835_info,
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

extern struct SampleInfo sample_819_info;
struct InstrumentPCM instrument_pcm_data_1519 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_843_info;
struct InstrumentPCM instrument_pcm_data_1520 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_843_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_844_info;
struct InstrumentPCM instrument_pcm_data_1521 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_844_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_845_info;
struct InstrumentPCM instrument_pcm_data_1522 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_845_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_846_info;
struct InstrumentPCM instrument_pcm_data_1523 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_846_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_839_info;
struct InstrumentPCM instrument_pcm_data_1524 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_839_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_847_info;
struct InstrumentPCM instrument_pcm_data_1525 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_847_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_848_info;
struct InstrumentPCM instrument_pcm_data_1526 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_848_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_849_info;
struct InstrumentPCM instrument_pcm_data_1527 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_849_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_429_info;
struct InstrumentPCM instrument_pcm_data_1528 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_429_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_820_info;
struct InstrumentPCM instrument_pcm_data_1529 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_820_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_850_info;
struct InstrumentPCM instrument_pcm_data_1530 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_850_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_851_info;
struct InstrumentPCM instrument_pcm_data_1531 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_851_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_852_info;
struct InstrumentPCM instrument_pcm_data_1532 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_852_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_853_info;
struct InstrumentPCM instrument_pcm_data_1533 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_853_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_854_info;
struct InstrumentPCM instrument_pcm_data_1534 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_854_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_004_info;
struct InstrumentPCM instrument_pcm_data_1535 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_004_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_428_info;
struct InstrumentPCM instrument_pcm_data_1536 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_428_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_214_info;
struct InstrumentPCM instrument_pcm_data_1537 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_1538 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_855_info;
struct InstrumentPCM instrument_pcm_data_1539 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_855_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_818_info;
struct InstrumentPCM instrument_pcm_data_1540 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_818_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_819_info;
struct InstrumentPCM instrument_pcm_data_1541 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_835_info;
struct InstrumentPCM instrument_pcm_data_1542 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_835_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_856_info;
struct InstrumentPCM instrument_pcm_data_1543 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_856_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_857_info;
struct InstrumentPCM instrument_pcm_data_1544 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_857_info,
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

extern struct SampleInfo sample_820_info;
struct InstrumentPCM instrument_pcm_data_1546 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_820_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_834_info;
struct InstrumentPCM instrument_pcm_data_1547 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_858_info;
struct InstrumentPCM instrument_pcm_data_1548 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_858_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_859_info;
struct InstrumentPCM instrument_pcm_data_1549 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_859_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_086_info;
struct InstrumentPCM instrument_pcm_data_1550 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_197_info;
struct InstrumentPCM instrument_pcm_data_1551 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_860_info;
struct InstrumentPCM instrument_pcm_data_1552 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_860_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleInfo sample_860_info;
struct InstrumentPCM instrument_pcm_data_1553 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_860_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_432_info;
struct InstrumentPCM instrument_pcm_data_1554 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_432_info,
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

extern struct SampleInfo sample_832_info;
struct InstrumentPCM instrument_pcm_data_1556 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_832_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_222_info;
struct InstrumentPCM instrument_pcm_data_1557 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_222_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_829_info;
struct InstrumentPCM instrument_pcm_data_1558 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_829_info,
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

extern struct SampleInfo sample_861_info;
struct InstrumentPCM instrument_pcm_data_1560 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_861_info,
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

extern struct SampleInfo sample_824_info;
struct InstrumentPCM instrument_pcm_data_1562 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_862_info;
struct InstrumentPCM instrument_pcm_data_1563 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_862_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_279_info;
struct InstrumentPCM instrument_pcm_data_1564 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_279_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_863_info;
struct InstrumentPCM instrument_pcm_data_1565 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_863_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_864_info;
struct InstrumentPCM instrument_pcm_data_1566 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_864_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_834_info;
struct InstrumentPCM instrument_pcm_data_1567 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_836_info;
struct InstrumentPCM instrument_pcm_data_1568 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_836_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_829_info;
struct InstrumentPCM instrument_pcm_data_1569 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_829_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_865_info;
struct InstrumentPCM instrument_pcm_data_1570 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_865_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_792_info;
struct InstrumentPCM instrument_pcm_data_1571 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_792_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_866_info;
struct InstrumentPCM instrument_pcm_data_1572 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_866_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_865_info;
struct InstrumentPCM instrument_pcm_data_1573 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_865_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_867_info;
struct InstrumentPCM instrument_pcm_data_1574 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_867_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_434_info;
struct InstrumentPCM instrument_pcm_data_1575 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_434_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern struct SampleInfo sample_346_info;
struct InstrumentPCM instrument_pcm_data_1576 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_346_info,
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

extern struct SampleInfo sample_868_info;
struct InstrumentPCM instrument_pcm_data_1580 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_868_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_869_info;
struct InstrumentPCM instrument_pcm_data_1581 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_869_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_431_info;
struct InstrumentPCM instrument_pcm_data_1582 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_431_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_030_info;
struct InstrumentPCM instrument_pcm_data_1583 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_870_info;
struct InstrumentPCM instrument_pcm_data_1584 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_870_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_792_info;
struct InstrumentPCM instrument_pcm_data_1585 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_792_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_865_info;
struct InstrumentPCM instrument_pcm_data_1586 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_865_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_871_info;
struct InstrumentPCM instrument_pcm_data_1587 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_871_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_872_info;
struct InstrumentPCM instrument_pcm_data_1588 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_872_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_873_info;
struct InstrumentPCM instrument_pcm_data_1589 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_873_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_856_info;
struct InstrumentPCM instrument_pcm_data_1590 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_856_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_874_info;
struct InstrumentPCM instrument_pcm_data_1591 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_874_info,
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

extern struct SampleInfo sample_875_info;
struct InstrumentPCM instrument_pcm_data_1593 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_875_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_876_info;
struct InstrumentPCM instrument_pcm_data_1594 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_876_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_877_info;
struct InstrumentPCM instrument_pcm_data_1595 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_877_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_791_info;
struct InstrumentPCM instrument_pcm_data_1596 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_878_info;
struct InstrumentPCM instrument_pcm_data_1597 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_878_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_879_info;
struct InstrumentPCM instrument_pcm_data_1598 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_879_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_791_info;
struct InstrumentPCM instrument_pcm_data_1599 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_info,
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

extern struct SampleInfo sample_880_info;
struct InstrumentPCM instrument_pcm_data_1601 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_880_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_881_info;
struct InstrumentPCM instrument_pcm_data_1602 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_881_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_863_info;
struct InstrumentPCM instrument_pcm_data_1603 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_863_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_030_info;
struct InstrumentPCM instrument_pcm_data_1604 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_430_info;
struct InstrumentPCM instrument_pcm_data_1605 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_430_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005745d1,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_842_info;
struct InstrumentPCM instrument_pcm_data_1606 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_842_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_882_info;
struct InstrumentPCM instrument_pcm_data_1607 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_882_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_883_info;
struct InstrumentPCM instrument_pcm_data_1608 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_883_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_884_info;
struct InstrumentPCM instrument_pcm_data_1609 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_884_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_214_info;
struct InstrumentPCM instrument_pcm_data_1610 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_122_info;
struct InstrumentPCM instrument_pcm_data_1611 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_885_info;
struct InstrumentPCM instrument_pcm_data_1612 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_885_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_886_info;
struct InstrumentPCM instrument_pcm_data_1613 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_886_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_823_info;
struct InstrumentPCM instrument_pcm_data_1614 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_823_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_887_info;
struct InstrumentPCM instrument_pcm_data_1615 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_887_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_885_info;
struct InstrumentPCM instrument_pcm_data_1616 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_885_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_198_info;
struct InstrumentPCM instrument_pcm_data_1617 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_198_info,
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

extern struct SampleInfo sample_197_info;
struct InstrumentPCM instrument_pcm_data_1619 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_030_info;
struct InstrumentPCM instrument_pcm_data_1620 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005745d1,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_888_info;
struct InstrumentPCM instrument_pcm_data_1621 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_888_info,
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

extern struct SampleInfo sample_086_info;
struct InstrumentPCM instrument_pcm_data_1624 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_796_info;
struct InstrumentPCM instrument_pcm_data_1625 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x46,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_889_info;
struct InstrumentPCM instrument_pcm_data_1626 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_889_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern struct SampleInfo sample_433_info;
struct InstrumentPCM instrument_pcm_data_1627 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_433_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_819_info;
struct InstrumentPCM instrument_pcm_data_1628 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_890_info;
struct InstrumentPCM instrument_pcm_data_1629 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_890_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x001f2fd6,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_834_info;
struct InstrumentPCM instrument_pcm_data_1630 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_891_info;
struct InstrumentPCM instrument_pcm_data_1631 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_891_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_859_info;
struct InstrumentPCM instrument_pcm_data_1632 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_859_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_892_info;
struct InstrumentPCM instrument_pcm_data_1633 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_892_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x001d8ba2,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_874_info;
struct InstrumentPCM instrument_pcm_data_1634 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_874_info,
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

extern struct SampleInfo sample_892_info;
struct InstrumentPCM instrument_pcm_data_1638 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_892_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001d8ba2,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0006aa9f,
};

extern struct SampleInfo sample_893_info;
struct InstrumentPCM instrument_pcm_data_1639 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_893_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_864_info;
struct InstrumentPCM instrument_pcm_data_1640 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_864_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_790_info;
struct InstrumentPCM instrument_pcm_data_1641 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_790_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleInfo sample_894_info;
struct InstrumentPCM instrument_pcm_data_1642 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_894_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_895_info;
struct InstrumentPCM instrument_pcm_data_1643 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_895_info,
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

extern struct SampleInfo sample_896_info;
struct InstrumentPCM instrument_pcm_data_1645 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_896_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_897_info;
struct InstrumentPCM instrument_pcm_data_1646 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_897_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_898_info;
struct InstrumentPCM instrument_pcm_data_1647 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_898_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_899_info;
struct InstrumentPCM instrument_pcm_data_1648 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_899_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_900_info;
struct InstrumentPCM instrument_pcm_data_1649 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_900_info,
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

extern struct SampleInfo sample_439_info;
struct InstrumentPCM instrument_pcm_data_1655 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_439_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_901_info;
struct InstrumentPCM instrument_pcm_data_1656 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_901_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0011952a,
};

extern struct SampleInfo sample_901_info;
struct InstrumentPCM instrument_pcm_data_1657 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_901_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_902_info;
struct InstrumentPCM instrument_pcm_data_1658 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_902_info,
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

extern struct SampleInfo sample_903_info;
struct InstrumentPCM instrument_pcm_data_1660 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_903_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_904_info;
struct InstrumentPCM instrument_pcm_data_1661 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_904_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_905_info;
struct InstrumentPCM instrument_pcm_data_1662 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_905_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_906_info;
struct InstrumentPCM instrument_pcm_data_1663 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_906_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_907_info;
struct InstrumentPCM instrument_pcm_data_1664 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_907_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_908_info;
struct InstrumentPCM instrument_pcm_data_1665 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_908_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleInfo sample_909_info;
struct InstrumentPCM instrument_pcm_data_1666 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_909_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_910_info;
struct InstrumentPCM instrument_pcm_data_1667 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_910_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_911_info;
struct InstrumentPCM instrument_pcm_data_1668 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_911_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_912_info;
struct InstrumentPCM instrument_pcm_data_1669 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_912_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_913_info;
struct InstrumentPCM instrument_pcm_data_1670 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_913_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleInfo sample_914_info;
struct InstrumentPCM instrument_pcm_data_1671 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_914_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_915_info;
struct InstrumentPCM instrument_pcm_data_1672 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_915_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_916_info;
struct InstrumentPCM instrument_pcm_data_1673 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_916_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0000c000,
};

extern struct SampleInfo sample_917_info;
struct InstrumentPCM instrument_pcm_data_1674 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_917_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_918_info;
struct InstrumentPCM instrument_pcm_data_1675 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_918_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_919_info;
struct InstrumentPCM instrument_pcm_data_1676 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_919_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleInfo sample_919_info;
struct InstrumentPCM instrument_pcm_data_1677 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_919_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_920_info;
struct InstrumentPCM instrument_pcm_data_1678 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_920_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleInfo sample_921_info;
struct InstrumentPCM instrument_pcm_data_1679 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_921_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_922_info;
struct InstrumentPCM instrument_pcm_data_1680 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_922_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_923_info;
struct InstrumentPCM instrument_pcm_data_1681 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_923_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_859_info;
struct InstrumentPCM instrument_pcm_data_1682 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_859_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_924_info;
struct InstrumentPCM instrument_pcm_data_1683 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_924_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_925_info;
struct InstrumentPCM instrument_pcm_data_1684 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_925_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_926_info;
struct InstrumentPCM instrument_pcm_data_1685 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_926_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_927_info;
struct InstrumentPCM instrument_pcm_data_1686 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_927_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_928_info;
struct InstrumentPCM instrument_pcm_data_1687 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_928_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_929_info;
struct InstrumentPCM instrument_pcm_data_1688 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_929_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_930_info;
struct InstrumentPCM instrument_pcm_data_1689 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_930_info,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_931_info;
struct InstrumentPCM instrument_pcm_data_1690 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_931_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleInfo sample_844_info;
struct InstrumentPCM instrument_pcm_data_1691 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_844_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_868_info;
struct InstrumentPCM instrument_pcm_data_1692 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_868_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_869_info;
struct InstrumentPCM instrument_pcm_data_1693 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_869_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_431_info;
struct InstrumentPCM instrument_pcm_data_1694 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_431_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_880_info;
struct InstrumentPCM instrument_pcm_data_1695 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_880_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_883_info;
struct InstrumentPCM instrument_pcm_data_1696 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_883_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_884_info;
struct InstrumentPCM instrument_pcm_data_1697 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_884_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_887_info;
struct InstrumentPCM instrument_pcm_data_1698 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_887_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_825_info;
struct InstrumentPCM instrument_pcm_data_1699 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_825_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_827_info;
struct InstrumentPCM instrument_pcm_data_1700 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_827_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_811_info;
struct InstrumentPCM instrument_pcm_data_1701 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_811_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_812_info;
struct InstrumentPCM instrument_pcm_data_1702 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_812_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00133e0f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_813_info;
struct InstrumentPCM instrument_pcm_data_1703 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_813_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleInfo sample_834_info;
struct InstrumentPCM instrument_pcm_data_1704 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleInfo sample_461_info;
struct InstrumentPCM instrument_pcm_data_1705 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_461_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_463_info;
struct InstrumentPCM instrument_pcm_data_1706 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_463_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_087_info;
struct InstrumentPCM instrument_pcm_data_1707 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleInfo sample_468_info;
struct InstrumentPCM instrument_pcm_data_1708 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleInfo sample_898_info;
struct InstrumentPCM instrument_pcm_data_1709 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_898_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_899_info;
struct InstrumentPCM instrument_pcm_data_1710 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_899_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_932_info;
struct InstrumentPCM instrument_pcm_data_1711 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_932_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_933_info;
struct InstrumentPCM instrument_pcm_data_1712 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_933_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_934_info;
struct InstrumentPCM instrument_pcm_data_1713 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_934_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_935_info;
struct InstrumentPCM instrument_pcm_data_1714 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_935_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_936_info;
struct InstrumentPCM instrument_pcm_data_1715 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_936_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_937_info;
struct InstrumentPCM instrument_pcm_data_1716 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_937_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_938_info;
struct InstrumentPCM instrument_pcm_data_1717 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_938_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_939_info;
struct InstrumentPCM instrument_pcm_data_1718 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_939_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_940_info;
struct InstrumentPCM instrument_pcm_data_1719 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_940_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_941_info;
struct InstrumentPCM instrument_pcm_data_1720 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_941_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_942_info;
struct InstrumentPCM instrument_pcm_data_1721 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_942_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_943_info;
struct InstrumentPCM instrument_pcm_data_1722 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_943_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_944_info;
struct InstrumentPCM instrument_pcm_data_1723 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_944_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_945_info;
struct InstrumentPCM instrument_pcm_data_1724 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_945_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_946_info;
struct InstrumentPCM instrument_pcm_data_1725 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_946_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_947_info;
struct InstrumentPCM instrument_pcm_data_1726 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_947_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_948_info;
struct InstrumentPCM instrument_pcm_data_1727 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_948_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_949_info;
struct InstrumentPCM instrument_pcm_data_1728 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_949_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_950_info;
struct InstrumentPCM instrument_pcm_data_1729 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_950_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_951_info;
struct InstrumentPCM instrument_pcm_data_1730 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_951_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_952_info;
struct InstrumentPCM instrument_pcm_data_1731 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_952_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_953_info;
struct InstrumentPCM instrument_pcm_data_1732 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_953_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_954_info;
struct InstrumentPCM instrument_pcm_data_1733 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_954_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_955_info;
struct InstrumentPCM instrument_pcm_data_1734 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_955_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_956_info;
struct InstrumentPCM instrument_pcm_data_1735 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_956_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_957_info;
struct InstrumentPCM instrument_pcm_data_1736 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_957_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_958_info;
struct InstrumentPCM instrument_pcm_data_1737 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_958_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_959_info;
struct InstrumentPCM instrument_pcm_data_1738 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_959_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_960_info;
struct InstrumentPCM instrument_pcm_data_1739 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_960_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_961_info;
struct InstrumentPCM instrument_pcm_data_1740 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_961_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleInfo sample_962_info;
struct InstrumentPCM instrument_pcm_data_1741 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_962_info,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};
