#include "global.h"
#include "sound.h"

extern struct SampleData sample_001_data;
struct InstrumentPCM instrument_pcm_data_1 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_001_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_002_data;
struct InstrumentPCM instrument_pcm_data_2 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_002_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_002_data;
struct InstrumentPCM instrument_pcm_data_3 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_002_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_003_data;
struct InstrumentPCM instrument_pcm_data_4 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_004_data;
struct InstrumentPCM instrument_pcm_data_5 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_004_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_005_data;
struct InstrumentPCM instrument_pcm_data_6 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_006_data;
struct InstrumentPCM instrument_pcm_data_7 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_007_data;
struct InstrumentPCM instrument_pcm_data_8 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_007_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_9 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_009_data;
struct InstrumentPCM instrument_pcm_data_10 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_data,
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

extern struct SampleData sample_010_data;
struct InstrumentPCM instrument_pcm_data_12 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_010_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_011_data;
struct InstrumentPCM instrument_pcm_data_13 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_011_data,
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

extern struct SampleData sample_012_data;
struct InstrumentPCM instrument_pcm_data_17 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_012_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_013_data;
struct InstrumentPCM instrument_pcm_data_18 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_013_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_014_data;
struct InstrumentPCM instrument_pcm_data_19 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_014_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_20 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_016_data;
struct InstrumentPCM instrument_pcm_data_21 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_22 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_018_data;
struct InstrumentPCM instrument_pcm_data_23 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_018_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_019_data;
struct InstrumentPCM instrument_pcm_data_24 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_019_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_020_data;
struct InstrumentPCM instrument_pcm_data_25 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_020_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_021_data;
struct InstrumentPCM instrument_pcm_data_26 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_021_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_022_data;
struct InstrumentPCM instrument_pcm_data_27 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_022_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_023_data;
struct InstrumentPCM instrument_pcm_data_28 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_023_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_024_data;
struct InstrumentPCM instrument_pcm_data_29 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_024_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_025_data;
struct InstrumentPCM instrument_pcm_data_30 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_025_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_026_data;
struct InstrumentPCM instrument_pcm_data_31 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_026_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_32 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_027_data;
struct InstrumentPCM instrument_pcm_data_33 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_34 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_029_data;
struct InstrumentPCM instrument_pcm_data_35 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_029_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_030_data;
struct InstrumentPCM instrument_pcm_data_36 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_data,
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

extern struct SampleData sample_031_data;
struct InstrumentPCM instrument_pcm_data_38 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_031_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_032_data;
struct InstrumentPCM instrument_pcm_data_39 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_032_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_033_data;
struct InstrumentPCM instrument_pcm_data_40 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_033_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_034_data;
struct InstrumentPCM instrument_pcm_data_41 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_034_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_035_data;
struct InstrumentPCM instrument_pcm_data_42 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_035_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_036_data;
struct InstrumentPCM instrument_pcm_data_43 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_036_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_037_data;
struct InstrumentPCM instrument_pcm_data_44 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_037_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_038_data;
struct InstrumentPCM instrument_pcm_data_45 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_038_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_039_data;
struct InstrumentPCM instrument_pcm_data_46 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_039_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_040_data;
struct InstrumentPCM instrument_pcm_data_47 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_040_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_041_data;
struct InstrumentPCM instrument_pcm_data_48 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_49 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_042_data;
struct InstrumentPCM instrument_pcm_data_50 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_043_data;
struct InstrumentPCM instrument_pcm_data_51 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_data,
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

extern struct SampleData sample_044_data;
struct InstrumentPCM instrument_pcm_data_56 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_044_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_045_data;
struct InstrumentPCM instrument_pcm_data_57 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_045_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_046_data;
struct InstrumentPCM instrument_pcm_data_58 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_046_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_047_data;
struct InstrumentPCM instrument_pcm_data_59 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_047_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_048_data;
struct InstrumentPCM instrument_pcm_data_60 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_048_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_049_data;
struct InstrumentPCM instrument_pcm_data_61 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_049_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_050_data;
struct InstrumentPCM instrument_pcm_data_62 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_050_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_051_data;
struct InstrumentPCM instrument_pcm_data_63 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_051_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_052_data;
struct InstrumentPCM instrument_pcm_data_64 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_052_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_053_data;
struct InstrumentPCM instrument_pcm_data_65 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_053_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_054_data;
struct InstrumentPCM instrument_pcm_data_66 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_054_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_055_data;
struct InstrumentPCM instrument_pcm_data_67 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_055_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_056_data;
struct InstrumentPCM instrument_pcm_data_68 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_056_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_057_data;
struct InstrumentPCM instrument_pcm_data_69 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_057_data,
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

extern struct SampleData sample_016_data;
struct InstrumentPCM instrument_pcm_data_71 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_027_data;
struct InstrumentPCM instrument_pcm_data_72 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_73 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_058_data;
struct InstrumentPCM instrument_pcm_data_74 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_059_data;
struct InstrumentPCM instrument_pcm_data_75 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_059_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_76 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_77 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_060_data;
struct InstrumentPCM instrument_pcm_data_78 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_061_data;
struct InstrumentPCM instrument_pcm_data_79 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_061_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_062_data;
struct InstrumentPCM instrument_pcm_data_80 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_062_data,
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

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_82 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_83 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_060_data;
struct InstrumentPCM instrument_pcm_data_84 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_043_data;
struct InstrumentPCM instrument_pcm_data_85 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_027_data;
struct InstrumentPCM instrument_pcm_data_86 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_058_data;
struct InstrumentPCM instrument_pcm_data_87 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_88 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
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

extern struct SampleData sample_016_data;
struct InstrumentPCM instrument_pcm_data_91 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_059_data;
struct InstrumentPCM instrument_pcm_data_92 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_059_data,
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

extern struct SampleData sample_031_data;
struct InstrumentPCM instrument_pcm_data_94 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_031_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_041_data;
struct InstrumentPCM instrument_pcm_data_95 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_063_data;
struct InstrumentPCM instrument_pcm_data_96 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_063_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_064_data;
struct InstrumentPCM instrument_pcm_data_97 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_064_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_065_data;
struct InstrumentPCM instrument_pcm_data_98 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_065_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_066_data;
struct InstrumentPCM instrument_pcm_data_99 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_066_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_067_data;
struct InstrumentPCM instrument_pcm_data_100 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_067_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_068_data;
struct InstrumentPCM instrument_pcm_data_101 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_068_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_069_data;
struct InstrumentPCM instrument_pcm_data_102 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_069_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_070_data;
struct InstrumentPCM instrument_pcm_data_103 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_070_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_071_data;
struct InstrumentPCM instrument_pcm_data_104 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_071_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_072_data;
struct InstrumentPCM instrument_pcm_data_105 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_072_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_073_data;
struct InstrumentPCM instrument_pcm_data_106 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_073_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_074_data;
struct InstrumentPCM instrument_pcm_data_107 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_074_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_075_data;
struct InstrumentPCM instrument_pcm_data_108 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_075_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_076_data;
struct InstrumentPCM instrument_pcm_data_109 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_076_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_077_data;
struct InstrumentPCM instrument_pcm_data_110 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_077_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_078_data;
struct InstrumentPCM instrument_pcm_data_111 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_078_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_079_data;
struct InstrumentPCM instrument_pcm_data_112 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_079_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_080_data;
struct InstrumentPCM instrument_pcm_data_113 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_080_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_081_data;
struct InstrumentPCM instrument_pcm_data_114 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_081_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_082_data;
struct InstrumentPCM instrument_pcm_data_115 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_082_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_083_data;
struct InstrumentPCM instrument_pcm_data_116 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_083_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_084_data;
struct InstrumentPCM instrument_pcm_data_117 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_084_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_085_data;
struct InstrumentPCM instrument_pcm_data_118 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_085_data,
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

extern struct SampleData sample_086_data;
struct InstrumentPCM instrument_pcm_data_121 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_122 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_data,
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

extern struct SampleData sample_034_data;
struct InstrumentPCM instrument_pcm_data_124 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_034_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_088_data;
struct InstrumentPCM instrument_pcm_data_125 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_088_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_089_data;
struct InstrumentPCM instrument_pcm_data_126 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_089_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_090_data;
struct InstrumentPCM instrument_pcm_data_127 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_090_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_091_data;
struct InstrumentPCM instrument_pcm_data_128 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_091_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_092_data;
struct InstrumentPCM instrument_pcm_data_129 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_092_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_093_data;
struct InstrumentPCM instrument_pcm_data_130 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_093_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_094_data;
struct InstrumentPCM instrument_pcm_data_131 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_094_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_095_data;
struct InstrumentPCM instrument_pcm_data_132 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_095_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_096_data;
struct InstrumentPCM instrument_pcm_data_133 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_096_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_097_data;
struct InstrumentPCM instrument_pcm_data_134 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_097_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_098_data;
struct InstrumentPCM instrument_pcm_data_135 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_098_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_099_data;
struct InstrumentPCM instrument_pcm_data_136 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_099_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_100_data;
struct InstrumentPCM instrument_pcm_data_137 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_100_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_101_data;
struct InstrumentPCM instrument_pcm_data_138 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_101_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_102_data;
struct InstrumentPCM instrument_pcm_data_139 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_102_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_103_data;
struct InstrumentPCM instrument_pcm_data_140 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_103_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_104_data;
struct InstrumentPCM instrument_pcm_data_141 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_104_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_105_data;
struct InstrumentPCM instrument_pcm_data_142 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_105_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_106_data;
struct InstrumentPCM instrument_pcm_data_143 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_106_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_107_data;
struct InstrumentPCM instrument_pcm_data_144 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_107_data,
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

extern struct SampleData sample_016_data;
struct InstrumentPCM instrument_pcm_data_146 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_016_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_108_data;
struct InstrumentPCM instrument_pcm_data_147 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_108_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_148 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_109_data;
struct InstrumentPCM instrument_pcm_data_149 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_109_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_150 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_110_data;
struct InstrumentPCM instrument_pcm_data_151 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_111_data;
struct InstrumentPCM instrument_pcm_data_152 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_112_data;
struct InstrumentPCM instrument_pcm_data_153 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_112_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_060_data;
struct InstrumentPCM instrument_pcm_data_154 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_155 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_156 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
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

extern struct SampleData sample_043_data;
struct InstrumentPCM instrument_pcm_data_158 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_042_data;
struct InstrumentPCM instrument_pcm_data_159 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_160 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_058_data;
struct InstrumentPCM instrument_pcm_data_161 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_027_data;
struct InstrumentPCM instrument_pcm_data_162 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_027_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_163 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_115_data;
struct InstrumentPCM instrument_pcm_data_164 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_115_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_116_data;
struct InstrumentPCM instrument_pcm_data_165 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_116_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_166 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_117_data;
struct InstrumentPCM instrument_pcm_data_167 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_118_data;
struct InstrumentPCM instrument_pcm_data_168 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_118_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_119_data;
struct InstrumentPCM instrument_pcm_data_169 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_119_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_120_data;
struct InstrumentPCM instrument_pcm_data_170 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_120_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_121_data;
struct InstrumentPCM instrument_pcm_data_171 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_121_data,
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

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_174 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_121_data;
struct InstrumentPCM instrument_pcm_data_175 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_121_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_123_data;
struct InstrumentPCM instrument_pcm_data_176 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_123_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_124_data;
struct InstrumentPCM instrument_pcm_data_177 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_124_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_125_data;
struct InstrumentPCM instrument_pcm_data_178 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_125_data,
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

extern struct SampleData sample_126_data;
struct InstrumentPCM instrument_pcm_data_182 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_126_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_127_data;
struct InstrumentPCM instrument_pcm_data_183 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_127_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_128_data;
struct InstrumentPCM instrument_pcm_data_184 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_128_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_129_data;
struct InstrumentPCM instrument_pcm_data_185 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_129_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_130_data;
struct InstrumentPCM instrument_pcm_data_186 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_130_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_131_data;
struct InstrumentPCM instrument_pcm_data_187 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_131_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_132_data;
struct InstrumentPCM instrument_pcm_data_188 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_132_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_133_data;
struct InstrumentPCM instrument_pcm_data_189 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_133_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_134_data;
struct InstrumentPCM instrument_pcm_data_190 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_134_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_135_data;
struct InstrumentPCM instrument_pcm_data_191 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_135_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_136_data;
struct InstrumentPCM instrument_pcm_data_192 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_136_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_137_data;
struct InstrumentPCM instrument_pcm_data_193 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_137_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_138_data;
struct InstrumentPCM instrument_pcm_data_194 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_138_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_139_data;
struct InstrumentPCM instrument_pcm_data_195 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_139_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_140_data;
struct InstrumentPCM instrument_pcm_data_196 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_140_data,
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

extern struct SampleData sample_141_data;
struct InstrumentPCM instrument_pcm_data_198 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_141_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_142_data;
struct InstrumentPCM instrument_pcm_data_199 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_142_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_143_data;
struct InstrumentPCM instrument_pcm_data_200 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_143_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_144_data;
struct InstrumentPCM instrument_pcm_data_201 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_144_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_145_data;
struct InstrumentPCM instrument_pcm_data_202 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_145_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_146_data;
struct InstrumentPCM instrument_pcm_data_203 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_146_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_147_data;
struct InstrumentPCM instrument_pcm_data_204 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_147_data,
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

extern struct SampleData sample_148_data;
struct InstrumentPCM instrument_pcm_data_206 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_148_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_149_data;
struct InstrumentPCM instrument_pcm_data_207 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_149_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_150_data;
struct InstrumentPCM instrument_pcm_data_208 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_150_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_151_data;
struct InstrumentPCM instrument_pcm_data_209 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_151_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_152_data;
struct InstrumentPCM instrument_pcm_data_210 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_152_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_153_data;
struct InstrumentPCM instrument_pcm_data_211 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_153_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_154_data;
struct InstrumentPCM instrument_pcm_data_212 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_154_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_155_data;
struct InstrumentPCM instrument_pcm_data_213 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_155_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_156_data;
struct InstrumentPCM instrument_pcm_data_214 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_156_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_157_data;
struct InstrumentPCM instrument_pcm_data_215 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_157_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_158_data;
struct InstrumentPCM instrument_pcm_data_216 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_158_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_159_data;
struct InstrumentPCM instrument_pcm_data_217 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_159_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_160_data;
struct InstrumentPCM instrument_pcm_data_218 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_160_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_161_data;
struct InstrumentPCM instrument_pcm_data_219 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_161_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_162_data;
struct InstrumentPCM instrument_pcm_data_220 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_162_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_163_data;
struct InstrumentPCM instrument_pcm_data_221 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_163_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_164_data;
struct InstrumentPCM instrument_pcm_data_222 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_164_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_165_data;
struct InstrumentPCM instrument_pcm_data_223 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_165_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_166_data;
struct InstrumentPCM instrument_pcm_data_224 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_166_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_167_data;
struct InstrumentPCM instrument_pcm_data_225 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_167_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_168_data;
struct InstrumentPCM instrument_pcm_data_226 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_168_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_169_data;
struct InstrumentPCM instrument_pcm_data_227 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_169_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_170_data;
struct InstrumentPCM instrument_pcm_data_228 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_170_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_171_data;
struct InstrumentPCM instrument_pcm_data_229 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_171_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_172_data;
struct InstrumentPCM instrument_pcm_data_230 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_172_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_173_data;
struct InstrumentPCM instrument_pcm_data_231 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_173_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_174_data;
struct InstrumentPCM instrument_pcm_data_232 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_174_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_175_data;
struct InstrumentPCM instrument_pcm_data_233 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_175_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_176_data;
struct InstrumentPCM instrument_pcm_data_234 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_176_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_177_data;
struct InstrumentPCM instrument_pcm_data_235 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_177_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_178_data;
struct InstrumentPCM instrument_pcm_data_236 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_178_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_179_data;
struct InstrumentPCM instrument_pcm_data_237 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_179_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_180_data;
struct InstrumentPCM instrument_pcm_data_238 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_180_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_181_data;
struct InstrumentPCM instrument_pcm_data_239 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_181_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_182_data;
struct InstrumentPCM instrument_pcm_data_240 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_182_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_183_data;
struct InstrumentPCM instrument_pcm_data_241 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_183_data,
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

extern struct SampleData sample_184_data;
struct InstrumentPCM instrument_pcm_data_243 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_184_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_185_data;
struct InstrumentPCM instrument_pcm_data_244 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_185_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_186_data;
struct InstrumentPCM instrument_pcm_data_245 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_186_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_187_data;
struct InstrumentPCM instrument_pcm_data_246 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_187_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_188_data;
struct InstrumentPCM instrument_pcm_data_247 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_188_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_189_data;
struct InstrumentPCM instrument_pcm_data_248 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_189_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_190_data;
struct InstrumentPCM instrument_pcm_data_249 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_190_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_191_data;
struct InstrumentPCM instrument_pcm_data_250 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_191_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_192_data;
struct InstrumentPCM instrument_pcm_data_251 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_192_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_193_data;
struct InstrumentPCM instrument_pcm_data_252 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_193_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_003_data;
struct InstrumentPCM instrument_pcm_data_253 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_009_data;
struct InstrumentPCM instrument_pcm_data_254 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_041_data;
struct InstrumentPCM instrument_pcm_data_255 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_058_data;
struct InstrumentPCM instrument_pcm_data_256 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_194_data;
struct InstrumentPCM instrument_pcm_data_257 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_108_data;
struct InstrumentPCM instrument_pcm_data_258 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_108_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_195_data;
struct InstrumentPCM instrument_pcm_data_259 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_195_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_data_260 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_191_data;
struct InstrumentPCM instrument_pcm_data_261 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_191_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_197_data;
struct InstrumentPCM instrument_pcm_data_262 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_198_data;
struct InstrumentPCM instrument_pcm_data_263 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_198_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_199_data;
struct InstrumentPCM instrument_pcm_data_264 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_199_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_200_data;
struct InstrumentPCM instrument_pcm_data_265 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_201_data;
struct InstrumentPCM instrument_pcm_data_266 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_201_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_202_data;
struct InstrumentPCM instrument_pcm_data_267 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_268 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_013_data;
struct InstrumentPCM instrument_pcm_data_269 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_013_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_203_data;
struct InstrumentPCM instrument_pcm_data_270 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_271 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_204_data;
struct InstrumentPCM instrument_pcm_data_272 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_204_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_273 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_274 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_205_data;
struct InstrumentPCM instrument_pcm_data_275 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_205_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_042_data;
struct InstrumentPCM instrument_pcm_data_276 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_206_data;
struct InstrumentPCM instrument_pcm_data_277 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_207_data;
struct InstrumentPCM instrument_pcm_data_278 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_279 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_208_data;
struct InstrumentPCM instrument_pcm_data_280 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_208_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_112_data;
struct InstrumentPCM instrument_pcm_data_281 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_112_data,
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

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_283 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_209_data;
struct InstrumentPCM instrument_pcm_data_284 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_209_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_210_data;
struct InstrumentPCM instrument_pcm_data_285 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_210_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_211_data;
struct InstrumentPCM instrument_pcm_data_286 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_211_data,
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

extern struct SampleData sample_212_data;
struct InstrumentPCM instrument_pcm_data_290 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_212_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_117_data;
struct InstrumentPCM instrument_pcm_data_291 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_292 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_293 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_023_data;
struct InstrumentPCM instrument_pcm_data_294 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_023_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_213_data;
struct InstrumentPCM instrument_pcm_data_295 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_213_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_214_data;
struct InstrumentPCM instrument_pcm_data_296 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_297 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_215_data;
struct InstrumentPCM instrument_pcm_data_298 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_215_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_216_data;
struct InstrumentPCM instrument_pcm_data_299 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_216_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_217_data;
struct InstrumentPCM instrument_pcm_data_300 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_217_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_107_data;
struct InstrumentPCM instrument_pcm_data_301 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_107_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_215_data;
struct InstrumentPCM instrument_pcm_data_302 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_215_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_218_data;
struct InstrumentPCM instrument_pcm_data_303 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_218_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_219_data;
struct InstrumentPCM instrument_pcm_data_304 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_219_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleData sample_220_data;
struct InstrumentPCM instrument_pcm_data_305 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_220_data,
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

extern struct SampleData sample_221_data;
struct InstrumentPCM instrument_pcm_data_307 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_221_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_222_data;
struct InstrumentPCM instrument_pcm_data_308 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_222_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_093_data;
struct InstrumentPCM instrument_pcm_data_309 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_093_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_094_data;
struct InstrumentPCM instrument_pcm_data_310 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_094_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_095_data;
struct InstrumentPCM instrument_pcm_data_311 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_095_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_096_data;
struct InstrumentPCM instrument_pcm_data_312 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_096_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_097_data;
struct InstrumentPCM instrument_pcm_data_313 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_097_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_098_data;
struct InstrumentPCM instrument_pcm_data_314 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_098_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_099_data;
struct InstrumentPCM instrument_pcm_data_315 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_099_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_100_data;
struct InstrumentPCM instrument_pcm_data_316 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_100_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_101_data;
struct InstrumentPCM instrument_pcm_data_317 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_101_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_102_data;
struct InstrumentPCM instrument_pcm_data_318 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_102_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_103_data;
struct InstrumentPCM instrument_pcm_data_319 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_103_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_104_data;
struct InstrumentPCM instrument_pcm_data_320 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_104_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_105_data;
struct InstrumentPCM instrument_pcm_data_321 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_105_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_106_data;
struct InstrumentPCM instrument_pcm_data_322 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_106_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_223_data;
struct InstrumentPCM instrument_pcm_data_323 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_223_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_224_data;
struct InstrumentPCM instrument_pcm_data_324 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_224_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_225_data;
struct InstrumentPCM instrument_pcm_data_325 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_225_data,
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

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_327 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_328 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_200_data;
struct InstrumentPCM instrument_pcm_data_329 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_227_data;
struct InstrumentPCM instrument_pcm_data_330 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_227_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_228_data;
struct InstrumentPCM instrument_pcm_data_331 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_228_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_110_data;
struct InstrumentPCM instrument_pcm_data_332 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_111_data;
struct InstrumentPCM instrument_pcm_data_333 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_334 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_230_data;
struct InstrumentPCM instrument_pcm_data_335 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_336 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_207_data;
struct InstrumentPCM instrument_pcm_data_337 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_206_data;
struct InstrumentPCM instrument_pcm_data_338 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_data,
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

extern struct SampleData sample_211_data;
struct InstrumentPCM instrument_pcm_data_340 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_211_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_231_data;
struct InstrumentPCM instrument_pcm_data_341 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_231_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_232_data;
struct InstrumentPCM instrument_pcm_data_342 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_232_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_233_data;
struct InstrumentPCM instrument_pcm_data_343 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_233_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_234_data;
struct InstrumentPCM instrument_pcm_data_344 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_234_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_235_data;
struct InstrumentPCM instrument_pcm_data_345 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_235_data,
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

extern struct SampleData sample_236_data;
struct InstrumentPCM instrument_pcm_data_417 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_236_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_237_data;
struct InstrumentPCM instrument_pcm_data_418 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_237_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_202_data;
struct InstrumentPCM instrument_pcm_data_419 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_003_data;
struct InstrumentPCM instrument_pcm_data_420 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_204_data;
struct InstrumentPCM instrument_pcm_data_421 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_204_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_data_422 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_238_data;
struct InstrumentPCM instrument_pcm_data_423 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_239_data;
struct InstrumentPCM instrument_pcm_data_424 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_239_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_240_data;
struct InstrumentPCM instrument_pcm_data_425 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_240_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_241_data;
struct InstrumentPCM instrument_pcm_data_426 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_241_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_242_data;
struct InstrumentPCM instrument_pcm_data_427 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_242_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_243_data;
struct InstrumentPCM instrument_pcm_data_428 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_243_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_244_data;
struct InstrumentPCM instrument_pcm_data_429 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_244_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_245_data;
struct InstrumentPCM instrument_pcm_data_430 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_245_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_246_data;
struct InstrumentPCM instrument_pcm_data_431 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_246_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_247_data;
struct InstrumentPCM instrument_pcm_data_432 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_247_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_248_data;
struct InstrumentPCM instrument_pcm_data_433 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_248_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_249_data;
struct InstrumentPCM instrument_pcm_data_434 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_249_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_250_data;
struct InstrumentPCM instrument_pcm_data_435 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_250_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_251_data;
struct InstrumentPCM instrument_pcm_data_436 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_251_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_252_data;
struct InstrumentPCM instrument_pcm_data_437 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_252_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_253_data;
struct InstrumentPCM instrument_pcm_data_438 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_253_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_254_data;
struct InstrumentPCM instrument_pcm_data_439 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_254_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_255_data;
struct InstrumentPCM instrument_pcm_data_440 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_255_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_256_data;
struct InstrumentPCM instrument_pcm_data_441 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_256_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_257_data;
struct InstrumentPCM instrument_pcm_data_442 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_257_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_258_data;
struct InstrumentPCM instrument_pcm_data_443 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_258_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_259_data;
struct InstrumentPCM instrument_pcm_data_444 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_259_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_260_data;
struct InstrumentPCM instrument_pcm_data_445 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_446 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_447 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_261_data;
struct InstrumentPCM instrument_pcm_data_448 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_261_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_449 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_263_data;
struct InstrumentPCM instrument_pcm_data_450 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_263_data,
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

extern struct SampleData sample_264_data;
struct InstrumentPCM instrument_pcm_data_452 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_264_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_265_data;
struct InstrumentPCM instrument_pcm_data_453 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_265_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_266_data;
struct InstrumentPCM instrument_pcm_data_454 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_266_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_267_data;
struct InstrumentPCM instrument_pcm_data_455 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_267_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_268_data;
struct InstrumentPCM instrument_pcm_data_456 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_268_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_269_data;
struct InstrumentPCM instrument_pcm_data_457 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_269_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_270_data;
struct InstrumentPCM instrument_pcm_data_458 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_270_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_271_data;
struct InstrumentPCM instrument_pcm_data_459 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_271_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_272_data;
struct InstrumentPCM instrument_pcm_data_460 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_272_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_273_data;
struct InstrumentPCM instrument_pcm_data_461 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_273_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_274_data;
struct InstrumentPCM instrument_pcm_data_462 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_274_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_275_data;
struct InstrumentPCM instrument_pcm_data_463 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_275_data,
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

extern struct SampleData sample_221_data;
struct InstrumentPCM instrument_pcm_data_465 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_221_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_466 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
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

extern struct SampleData sample_276_data;
struct InstrumentPCM instrument_pcm_data_468 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_276_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleData sample_277_data;
struct InstrumentPCM instrument_pcm_data_469 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_277_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_200_data;
struct InstrumentPCM instrument_pcm_data_470 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_194_data;
struct InstrumentPCM instrument_pcm_data_471 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_195_data;
struct InstrumentPCM instrument_pcm_data_472 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_195_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_278_data;
struct InstrumentPCM instrument_pcm_data_473 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_278_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_197_data;
struct InstrumentPCM instrument_pcm_data_474 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_279_data;
struct InstrumentPCM instrument_pcm_data_475 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_279_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_280_data;
struct InstrumentPCM instrument_pcm_data_476 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_280_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_281_data;
struct InstrumentPCM instrument_pcm_data_477 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_281_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_198_data;
struct InstrumentPCM instrument_pcm_data_478 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_198_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_282_data;
struct InstrumentPCM instrument_pcm_data_479 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_282_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_283_data;
struct InstrumentPCM instrument_pcm_data_480 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_283_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_284_data;
struct InstrumentPCM instrument_pcm_data_481 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_284_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_285_data;
struct InstrumentPCM instrument_pcm_data_482 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_285_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_117_data;
struct InstrumentPCM instrument_pcm_data_483 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_data,
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

extern struct SampleData sample_118_data;
struct InstrumentPCM instrument_pcm_data_486 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_118_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_286_data;
struct InstrumentPCM instrument_pcm_data_487 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_286_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_287_data;
struct InstrumentPCM instrument_pcm_data_488 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_287_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_003_data;
struct InstrumentPCM instrument_pcm_data_489 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_490 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_288_data;
struct InstrumentPCM instrument_pcm_data_491 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_288_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_289_data;
struct InstrumentPCM instrument_pcm_data_492 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_200_data;
struct InstrumentPCM instrument_pcm_data_493 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_data,
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

extern struct SampleData sample_290_data;
struct InstrumentPCM instrument_pcm_data_495 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_290_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_291_data;
struct InstrumentPCM instrument_pcm_data_496 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_291_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_006_data;
struct InstrumentPCM instrument_pcm_data_497 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_292_data;
struct InstrumentPCM instrument_pcm_data_498 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_292_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_293_data;
struct InstrumentPCM instrument_pcm_data_499 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_294_data;
struct InstrumentPCM instrument_pcm_data_500 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_294_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_232_data;
struct InstrumentPCM instrument_pcm_data_501 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_232_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_206_data;
struct InstrumentPCM instrument_pcm_data_502 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_295_data;
struct InstrumentPCM instrument_pcm_data_503 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_295_data,
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

extern struct SampleData sample_296_data;
struct InstrumentPCM instrument_pcm_data_506 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_296_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_297_data;
struct InstrumentPCM instrument_pcm_data_507 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_297_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_298_data;
struct InstrumentPCM instrument_pcm_data_508 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_298_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_299_data;
struct InstrumentPCM instrument_pcm_data_509 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_299_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_204_data;
struct InstrumentPCM instrument_pcm_data_510 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_204_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_230_data;
struct InstrumentPCM instrument_pcm_data_511 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_data,
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

extern struct SampleData sample_300_data;
struct InstrumentPCM instrument_pcm_data_513 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_301_data;
struct InstrumentPCM instrument_pcm_data_514 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_301_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_302_data;
struct InstrumentPCM instrument_pcm_data_515 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_302_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_303_data;
struct InstrumentPCM instrument_pcm_data_516 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_303_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_304_data;
struct InstrumentPCM instrument_pcm_data_517 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_304_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_234_data;
struct InstrumentPCM instrument_pcm_data_518 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_234_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_519 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_520 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_194_data;
struct InstrumentPCM instrument_pcm_data_521 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_110_data;
struct InstrumentPCM instrument_pcm_data_522 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_111_data;
struct InstrumentPCM instrument_pcm_data_523 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_data,
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

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_525 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_305_data;
struct InstrumentPCM instrument_pcm_data_526 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_305_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_306_data;
struct InstrumentPCM instrument_pcm_data_527 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_306_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_307_data;
struct InstrumentPCM instrument_pcm_data_528 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_307_data,
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

extern struct SampleData sample_308_data;
struct InstrumentPCM instrument_pcm_data_530 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_308_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_238_data;
struct InstrumentPCM instrument_pcm_data_531 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_309_data;
struct InstrumentPCM instrument_pcm_data_532 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_533 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_310_data;
struct InstrumentPCM instrument_pcm_data_534 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_310_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_203_data;
struct InstrumentPCM instrument_pcm_data_535 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_311_data;
struct InstrumentPCM instrument_pcm_data_536 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_311_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_209_data;
struct InstrumentPCM instrument_pcm_data_537 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_209_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_210_data;
struct InstrumentPCM instrument_pcm_data_538 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_210_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_539 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_211_data;
struct InstrumentPCM instrument_pcm_data_540 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_211_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_541 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_232_data;
struct InstrumentPCM instrument_pcm_data_542 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_232_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_312_data;
struct InstrumentPCM instrument_pcm_data_543 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_312_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_313_data;
struct InstrumentPCM instrument_pcm_data_544 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_277_data;
struct InstrumentPCM instrument_pcm_data_545 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_277_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_314_data;
struct InstrumentPCM instrument_pcm_data_546 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_314_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_205_data;
struct InstrumentPCM instrument_pcm_data_547 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_205_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_548 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_109_data;
struct InstrumentPCM instrument_pcm_data_549 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_109_data,
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

extern struct SampleData sample_240_data;
struct InstrumentPCM instrument_pcm_data_551 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_240_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_315_data;
struct InstrumentPCM instrument_pcm_data_552 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_315_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_316_data;
struct InstrumentPCM instrument_pcm_data_553 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_316_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_317_data;
struct InstrumentPCM instrument_pcm_data_554 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_317_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_239_data;
struct InstrumentPCM instrument_pcm_data_555 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_239_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_318_data;
struct InstrumentPCM instrument_pcm_data_556 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_318_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001d1745,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_005_data;
struct InstrumentPCM instrument_pcm_data_557 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_319_data;
struct InstrumentPCM instrument_pcm_data_558 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_319_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_320_data;
struct InstrumentPCM instrument_pcm_data_559 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_320_data,
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

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_562 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_322_data;
struct InstrumentPCM instrument_pcm_data_563 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_322_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_data_564 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_314_data;
struct InstrumentPCM instrument_pcm_data_565 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_314_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_009_data;
struct InstrumentPCM instrument_pcm_data_566 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_567 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_568 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_569 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
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

extern struct SampleData sample_323_data;
struct InstrumentPCM instrument_pcm_data_571 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_323_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_324_data;
struct InstrumentPCM instrument_pcm_data_572 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_324_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_013_data;
struct InstrumentPCM instrument_pcm_data_573 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_013_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001556a0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_325_data;
struct InstrumentPCM instrument_pcm_data_574 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_325_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_326_data;
struct InstrumentPCM instrument_pcm_data_575 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_326_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x0009b26c,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_327_data;
struct InstrumentPCM instrument_pcm_data_576 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_327_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_328_data;
struct InstrumentPCM instrument_pcm_data_577 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_328_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_329_data;
struct InstrumentPCM instrument_pcm_data_578 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_329_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_579 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_330_data;
struct InstrumentPCM instrument_pcm_data_580 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_330_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_331_data;
struct InstrumentPCM instrument_pcm_data_581 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_331_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_332_data;
struct InstrumentPCM instrument_pcm_data_582 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_332_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_333_data;
struct InstrumentPCM instrument_pcm_data_583 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_333_data,
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

extern struct SampleData sample_334_data;
struct InstrumentPCM instrument_pcm_data_585 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_334_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_335_data;
struct InstrumentPCM instrument_pcm_data_586 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_335_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_336_data;
struct InstrumentPCM instrument_pcm_data_587 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_336_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_337_data;
struct InstrumentPCM instrument_pcm_data_588 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_337_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_330_data;
struct InstrumentPCM instrument_pcm_data_589 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_330_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_590 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_041_data;
struct InstrumentPCM instrument_pcm_data_591 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_data,
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

extern struct SampleData sample_315_data;
struct InstrumentPCM instrument_pcm_data_594 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_315_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_595 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
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

extern struct SampleData sample_338_data;
struct InstrumentPCM instrument_pcm_data_598 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_338_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_202_data;
struct InstrumentPCM instrument_pcm_data_599 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_339_data;
struct InstrumentPCM instrument_pcm_data_600 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_339_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_340_data;
struct InstrumentPCM instrument_pcm_data_601 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_340_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_341_data;
struct InstrumentPCM instrument_pcm_data_602 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_341_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_342_data;
struct InstrumentPCM instrument_pcm_data_603 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_342_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_604 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_009_data;
struct InstrumentPCM instrument_pcm_data_605 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_009_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_308_data;
struct InstrumentPCM instrument_pcm_data_606 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_308_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_238_data;
struct InstrumentPCM instrument_pcm_data_607 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_311_data;
struct InstrumentPCM instrument_pcm_data_608 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_311_data,
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

extern struct SampleData sample_124_data;
struct InstrumentPCM instrument_pcm_data_610 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_124_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_313_data;
struct InstrumentPCM instrument_pcm_data_611 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_343_data;
struct InstrumentPCM instrument_pcm_data_612 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_343_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_289_data;
struct InstrumentPCM instrument_pcm_data_613 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_200_data;
struct InstrumentPCM instrument_pcm_data_614 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_200_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_110_data;
struct InstrumentPCM instrument_pcm_data_615 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_111_data;
struct InstrumentPCM instrument_pcm_data_616 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_111_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_344_data;
struct InstrumentPCM instrument_pcm_data_617 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_344_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0000f83e,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0000c000,
};

extern struct SampleData sample_345_data;
struct InstrumentPCM instrument_pcm_data_618 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_345_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_346_data;
struct InstrumentPCM instrument_pcm_data_619 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_346_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_033_data;
struct InstrumentPCM instrument_pcm_data_620 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_033_data,
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

extern struct SampleData sample_347_data;
struct InstrumentPCM instrument_pcm_data_623 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_347_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_201_data;
struct InstrumentPCM instrument_pcm_data_624 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_201_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_348_data;
struct InstrumentPCM instrument_pcm_data_625 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_348_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_199_data;
struct InstrumentPCM instrument_pcm_data_626 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_199_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_349_data;
struct InstrumentPCM instrument_pcm_data_627 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_349_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_350_data;
struct InstrumentPCM instrument_pcm_data_628 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_350_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_351_data;
struct InstrumentPCM instrument_pcm_data_629 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_351_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_352_data;
struct InstrumentPCM instrument_pcm_data_630 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_352_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_353_data;
struct InstrumentPCM instrument_pcm_data_631 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_353_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_632 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_354_data;
struct InstrumentPCM instrument_pcm_data_633 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_634 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
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

extern struct SampleData sample_355_data;
struct InstrumentPCM instrument_pcm_data_637 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_355_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_356_data;
struct InstrumentPCM instrument_pcm_data_638 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_356_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_300_data;
struct InstrumentPCM instrument_pcm_data_639 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_354_data;
struct InstrumentPCM instrument_pcm_data_640 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001faea0,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_641 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_642 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_206_data;
struct InstrumentPCM instrument_pcm_data_643 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_290_data;
struct InstrumentPCM instrument_pcm_data_644 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_290_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_207_data;
struct InstrumentPCM instrument_pcm_data_645 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_291_data;
struct InstrumentPCM instrument_pcm_data_646 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_291_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_647 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
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

extern struct SampleData sample_357_data;
struct InstrumentPCM instrument_pcm_data_650 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_357_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_358_data;
struct InstrumentPCM instrument_pcm_data_651 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_358_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_359_data;
struct InstrumentPCM instrument_pcm_data_652 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_359_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_060_data;
struct InstrumentPCM instrument_pcm_data_653 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_060_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_061_data;
struct InstrumentPCM instrument_pcm_data_654 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_061_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_360_data;
struct InstrumentPCM instrument_pcm_data_655 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_360_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_361_data;
struct InstrumentPCM instrument_pcm_data_656 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_361_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_data_657 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_362_data;
struct InstrumentPCM instrument_pcm_data_658 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_362_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_659 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
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

extern struct SampleData sample_006_data;
struct InstrumentPCM instrument_pcm_data_663 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_664 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_363_data;
struct InstrumentPCM instrument_pcm_data_665 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_363_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_364_data;
struct InstrumentPCM instrument_pcm_data_666 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_364_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_667 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_668 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_260_data;
struct InstrumentPCM instrument_pcm_data_669 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_670 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_365_data;
struct InstrumentPCM instrument_pcm_data_671 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_365_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_366_data;
struct InstrumentPCM instrument_pcm_data_672 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_366_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_367_data;
struct InstrumentPCM instrument_pcm_data_673 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_367_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_368_data;
struct InstrumentPCM instrument_pcm_data_674 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_368_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_369_data;
struct InstrumentPCM instrument_pcm_data_675 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_369_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_370_data;
struct InstrumentPCM instrument_pcm_data_676 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_370_data,
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

extern struct SampleData sample_371_data;
struct InstrumentPCM instrument_pcm_data_679 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_371_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_680 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_372_data;
struct InstrumentPCM instrument_pcm_data_681 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_372_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_682 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_683 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_018_data;
struct InstrumentPCM instrument_pcm_data_684 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_018_data,
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

extern struct SampleData sample_373_data;
struct InstrumentPCM instrument_pcm_data_687 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_373_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_374_data;
struct InstrumentPCM instrument_pcm_data_688 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_374_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_375_data;
struct InstrumentPCM instrument_pcm_data_689 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_375_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_376_data;
struct InstrumentPCM instrument_pcm_data_690 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_376_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_260_data;
struct InstrumentPCM instrument_pcm_data_691 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_377_data;
struct InstrumentPCM instrument_pcm_data_692 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_377_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_378_data;
struct InstrumentPCM instrument_pcm_data_693 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_378_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_379_data;
struct InstrumentPCM instrument_pcm_data_694 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_379_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0003f07c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_261_data;
struct InstrumentPCM instrument_pcm_data_695 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_261_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_261_data;
struct InstrumentPCM instrument_pcm_data_696 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_261_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_697 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_698 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_380_data;
struct InstrumentPCM instrument_pcm_data_699 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_380_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_381_data;
struct InstrumentPCM instrument_pcm_data_700 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_381_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_293_data;
struct InstrumentPCM instrument_pcm_data_701 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_289_data;
struct InstrumentPCM instrument_pcm_data_702 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_346_data;
struct InstrumentPCM instrument_pcm_data_703 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_346_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_375_data;
struct InstrumentPCM instrument_pcm_data_704 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_375_data,
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

extern struct SampleData sample_382_data;
struct InstrumentPCM instrument_pcm_data_709 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_382_data,
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

extern struct SampleData sample_383_data;
struct InstrumentPCM instrument_pcm_data_712 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_383_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_384_data;
struct InstrumentPCM instrument_pcm_data_713 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_384_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_309_data;
struct InstrumentPCM instrument_pcm_data_714 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_715 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_385_data;
struct InstrumentPCM instrument_pcm_data_716 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_385_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_348_data;
struct InstrumentPCM instrument_pcm_data_717 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_348_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_718 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_719 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_386_data;
struct InstrumentPCM instrument_pcm_data_720 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_386_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_313_data;
struct InstrumentPCM instrument_pcm_data_721 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_722 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_293_data;
struct InstrumentPCM instrument_pcm_data_723 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_387_data;
struct InstrumentPCM instrument_pcm_data_724 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_387_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_342_data;
struct InstrumentPCM instrument_pcm_data_725 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_342_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_043_data;
struct InstrumentPCM instrument_pcm_data_726 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_data,
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

extern struct SampleData sample_388_data;
struct InstrumentPCM instrument_pcm_data_730 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_388_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_731 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_389_data;
struct InstrumentPCM instrument_pcm_data_732 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_389_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_733 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_348_data;
struct InstrumentPCM instrument_pcm_data_734 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_348_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_301_data;
struct InstrumentPCM instrument_pcm_data_735 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_301_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_302_data;
struct InstrumentPCM instrument_pcm_data_736 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_302_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_390_data;
struct InstrumentPCM instrument_pcm_data_737 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_390_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_043_data;
struct InstrumentPCM instrument_pcm_data_738 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_043_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_355_data;
struct InstrumentPCM instrument_pcm_data_739 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_355_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_356_data;
struct InstrumentPCM instrument_pcm_data_740 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_356_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_300_data;
struct InstrumentPCM instrument_pcm_data_741 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_354_data;
struct InstrumentPCM instrument_pcm_data_742 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001faea0,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_743 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_744 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_206_data;
struct InstrumentPCM instrument_pcm_data_745 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_206_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_290_data;
struct InstrumentPCM instrument_pcm_data_746 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_290_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000d219d,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_207_data;
struct InstrumentPCM instrument_pcm_data_747 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_207_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_291_data;
struct InstrumentPCM instrument_pcm_data_748 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_291_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_data_749 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_262_data,
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

extern struct SampleData sample_322_data;
struct InstrumentPCM instrument_pcm_data_751 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_322_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_289_data;
struct InstrumentPCM instrument_pcm_data_752 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_201_data;
struct InstrumentPCM instrument_pcm_data_753 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_201_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_194_data;
struct InstrumentPCM instrument_pcm_data_754 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_359_data;
struct InstrumentPCM instrument_pcm_data_755 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_359_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_391_data;
struct InstrumentPCM instrument_pcm_data_756 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_391_data,
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

extern struct SampleData sample_392_data;
struct InstrumentPCM instrument_pcm_data_767 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_392_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_393_data;
struct InstrumentPCM instrument_pcm_data_768 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_393_data,
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

extern struct SampleData sample_394_data;
struct InstrumentPCM instrument_pcm_data_772 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_394_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_395_data;
struct InstrumentPCM instrument_pcm_data_773 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_395_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_396_data;
struct InstrumentPCM instrument_pcm_data_774 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_396_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_397_data;
struct InstrumentPCM instrument_pcm_data_775 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_397_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_398_data;
struct InstrumentPCM instrument_pcm_data_776 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_398_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_777 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_399_data;
struct InstrumentPCM instrument_pcm_data_778 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_126_data;
struct InstrumentPCM instrument_pcm_data_779 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_126_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0002a052,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_127_data;
struct InstrumentPCM instrument_pcm_data_780 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_127_data,
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

extern struct SampleData sample_400_data;
struct InstrumentPCM instrument_pcm_data_783 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_400_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_398_data;
struct InstrumentPCM instrument_pcm_data_784 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_398_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_235_data;
struct InstrumentPCM instrument_pcm_data_785 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_235_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_401_data;
struct InstrumentPCM instrument_pcm_data_786 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_401_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_260_data;
struct InstrumentPCM instrument_pcm_data_787 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_260_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_399_data;
struct InstrumentPCM instrument_pcm_data_788 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_data,
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

extern struct SampleData sample_263_data;
struct InstrumentPCM instrument_pcm_data_792 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_263_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_data_793 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_229_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001ba35f,
};

extern struct SampleData sample_194_data;
struct InstrumentPCM instrument_pcm_data_794 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_194_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_399_data;
struct InstrumentPCM instrument_pcm_data_795 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_402_data;
struct InstrumentPCM instrument_pcm_data_796 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_402_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_403_data;
struct InstrumentPCM instrument_pcm_data_797 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_403_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_404_data;
struct InstrumentPCM instrument_pcm_data_798 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_404_data,
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

extern struct SampleData sample_405_data;
struct InstrumentPCM instrument_pcm_data_802 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_405_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_406_data;
struct InstrumentPCM instrument_pcm_data_803 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_406_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_407_data;
struct InstrumentPCM instrument_pcm_data_804 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_407_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_408_data;
struct InstrumentPCM instrument_pcm_data_805 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_408_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_409_data;
struct InstrumentPCM instrument_pcm_data_806 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_409_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_202_data;
struct InstrumentPCM instrument_pcm_data_807 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_202_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_410_data;
struct InstrumentPCM instrument_pcm_data_808 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_410_data,
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

extern struct SampleData sample_300_data;
struct InstrumentPCM instrument_pcm_data_811 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_300_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_058_data;
struct InstrumentPCM instrument_pcm_data_812 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_058_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_306_data;
struct InstrumentPCM instrument_pcm_data_813 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_306_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_391_data;
struct InstrumentPCM instrument_pcm_data_814 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_391_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_373_data;
struct InstrumentPCM instrument_pcm_data_815 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_373_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_110_data;
struct InstrumentPCM instrument_pcm_data_816 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_110_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_363_data;
struct InstrumentPCM instrument_pcm_data_817 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_363_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_005_data;
struct InstrumentPCM instrument_pcm_data_818 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_293_data;
struct InstrumentPCM instrument_pcm_data_819 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_411_data;
struct InstrumentPCM instrument_pcm_data_820 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_411_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_412_data;
struct InstrumentPCM instrument_pcm_data_821 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_412_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_413_data;
struct InstrumentPCM instrument_pcm_data_822 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_413_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0022bd20,
};

extern struct SampleData sample_414_data;
struct InstrumentPCM instrument_pcm_data_823 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_414_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_415_data;
struct InstrumentPCM instrument_pcm_data_824 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_415_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_416_data;
struct InstrumentPCM instrument_pcm_data_825 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_416_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_417_data;
struct InstrumentPCM instrument_pcm_data_826 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_417_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_418_data;
struct InstrumentPCM instrument_pcm_data_827 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_418_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_419_data;
struct InstrumentPCM instrument_pcm_data_828 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_419_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_420_data;
struct InstrumentPCM instrument_pcm_data_829 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_420_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_421_data;
struct InstrumentPCM instrument_pcm_data_830 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_421_data,
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

extern struct SampleData sample_422_data;
struct InstrumentPCM instrument_pcm_data_836 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_422_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_423_data;
struct InstrumentPCM instrument_pcm_data_837 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_423_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_313_data;
struct InstrumentPCM instrument_pcm_data_838 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_292_data;
struct InstrumentPCM instrument_pcm_data_839 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_292_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_387_data;
struct InstrumentPCM instrument_pcm_data_840 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_387_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_424_data;
struct InstrumentPCM instrument_pcm_data_841 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_424_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_421_data;
struct InstrumentPCM instrument_pcm_data_842 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_421_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_425_data;
struct InstrumentPCM instrument_pcm_data_843 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_425_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_320_data;
struct InstrumentPCM instrument_pcm_data_844 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_320_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_420_data;
struct InstrumentPCM instrument_pcm_data_845 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_420_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00083502,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_421_data;
struct InstrumentPCM instrument_pcm_data_846 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_421_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_426_data;
struct InstrumentPCM instrument_pcm_data_847 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_426_data,
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

extern struct SampleData sample_039_data;
struct InstrumentPCM instrument_pcm_data_853 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_039_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_398_data;
struct InstrumentPCM instrument_pcm_data_854 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_398_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_007_data;
struct InstrumentPCM instrument_pcm_data_855 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_007_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_001_data;
struct InstrumentPCM instrument_pcm_data_856 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_001_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0059cc48,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_003_data;
struct InstrumentPCM instrument_pcm_data_857 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_003_data,
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

extern struct SampleData sample_203_data;
struct InstrumentPCM instrument_pcm_data_860 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_239_data;
struct InstrumentPCM instrument_pcm_data_861 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_239_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_012_data;
struct InstrumentPCM instrument_pcm_data_862 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_012_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_386_data;
struct InstrumentPCM instrument_pcm_data_863 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_386_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_008_data;
struct InstrumentPCM instrument_pcm_data_864 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_008_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_383_data;
struct InstrumentPCM instrument_pcm_data_865 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_383_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_329_data;
struct InstrumentPCM instrument_pcm_data_866 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_329_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_005_data;
struct InstrumentPCM instrument_pcm_data_867 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_005_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_data_868 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_321_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_235_data;
struct InstrumentPCM instrument_pcm_data_869 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_235_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_342_data;
struct InstrumentPCM instrument_pcm_data_870 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_342_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_401_data;
struct InstrumentPCM instrument_pcm_data_871 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_401_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_data_872 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_114_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_data_873 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_310_data;
struct InstrumentPCM instrument_pcm_data_874 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_310_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_303_data;
struct InstrumentPCM instrument_pcm_data_875 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_303_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_423_data;
struct InstrumentPCM instrument_pcm_data_876 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_423_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_877 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_203_data;
struct InstrumentPCM instrument_pcm_data_878 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_309_data;
struct InstrumentPCM instrument_pcm_data_879 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_124_data;
struct InstrumentPCM instrument_pcm_data_880 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_124_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x0026c9b2,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_313_data;
struct InstrumentPCM instrument_pcm_data_881 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_313_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_354_data;
struct InstrumentPCM instrument_pcm_data_882 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_354_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001f83e,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_118_data;
struct InstrumentPCM instrument_pcm_data_883 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_118_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_322_data;
struct InstrumentPCM instrument_pcm_data_884 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_322_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001f83e0,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_335_data;
struct InstrumentPCM instrument_pcm_data_885 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_335_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_297_data;
struct InstrumentPCM instrument_pcm_data_886 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_297_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_308_data;
struct InstrumentPCM instrument_pcm_data_887 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_308_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_238_data;
struct InstrumentPCM instrument_pcm_data_888 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_238_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_305_data;
struct InstrumentPCM instrument_pcm_data_889 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_305_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_410_data;
struct InstrumentPCM instrument_pcm_data_890 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_410_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_315_data;
struct InstrumentPCM instrument_pcm_data_891 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_315_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_data_892 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_015_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_320_data;
struct InstrumentPCM instrument_pcm_data_893 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_320_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_113_data;
struct InstrumentPCM instrument_pcm_data_894 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_113_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00235dd1,
};

extern struct SampleData sample_399_data;
struct InstrumentPCM instrument_pcm_data_895 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_399_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_190_data;
struct InstrumentPCM instrument_pcm_data_896 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_190_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_011_data;
struct InstrumentPCM instrument_pcm_data_897 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_011_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_006_data;
struct InstrumentPCM instrument_pcm_data_898 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_data,
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

extern struct SampleData sample_292_data;
struct InstrumentPCM instrument_pcm_data_902 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_292_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_903 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_293_data;
struct InstrumentPCM instrument_pcm_data_904 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000fc1f,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_302_data;
struct InstrumentPCM instrument_pcm_data_905 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_302_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_400_data;
struct InstrumentPCM instrument_pcm_data_906 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_400_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_338_data;
struct InstrumentPCM instrument_pcm_data_907 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_338_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0060364d,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_335_data;
struct InstrumentPCM instrument_pcm_data_908 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_335_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_427_data;
struct InstrumentPCM instrument_pcm_data_909 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_427_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_428_data;
struct InstrumentPCM instrument_pcm_data_910 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_428_data,
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

extern struct SampleData sample_429_data;
struct InstrumentPCM instrument_pcm_data_913 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_429_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_217_data;
struct InstrumentPCM instrument_pcm_data_914 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_217_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_430_data;
struct InstrumentPCM instrument_pcm_data_915 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_430_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_431_data;
struct InstrumentPCM instrument_pcm_data_916 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_431_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_432_data;
struct InstrumentPCM instrument_pcm_data_917 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_432_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_433_data;
struct InstrumentPCM instrument_pcm_data_918 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_433_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_026_data;
struct InstrumentPCM instrument_pcm_data_919 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_026_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_117_data;
struct InstrumentPCM instrument_pcm_data_920 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_117_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x0004d936,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleData sample_434_data;
struct InstrumentPCM instrument_pcm_data_921 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_434_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern struct SampleData sample_405_data;
struct InstrumentPCM instrument_pcm_data_922 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_405_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_017_data;
struct InstrumentPCM instrument_pcm_data_923 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_017_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_042_data;
struct InstrumentPCM instrument_pcm_data_924 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_042_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_data_925 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_196_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_041_data;
struct InstrumentPCM instrument_pcm_data_926 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_041_data,
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

extern struct SampleData sample_203_data;
struct InstrumentPCM instrument_pcm_data_928 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_203_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_038_data;
struct InstrumentPCM instrument_pcm_data_929 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_038_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_028_data;
struct InstrumentPCM instrument_pcm_data_930 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_028_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_400_data;
struct InstrumentPCM instrument_pcm_data_931 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_400_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_230_data;
struct InstrumentPCM instrument_pcm_data_932 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_293_data;
struct InstrumentPCM instrument_pcm_data_933 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_293_data,
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

extern struct SampleData sample_230_data;
struct InstrumentPCM instrument_pcm_data_935 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_230_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x000cd40a,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_435_data;
struct InstrumentPCM instrument_pcm_data_936 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_435_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_226_data;
struct InstrumentPCM instrument_pcm_data_937 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_226_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_289_data;
struct InstrumentPCM instrument_pcm_data_938 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_289_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_436_data;
struct InstrumentPCM instrument_pcm_data_939 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_436_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_437_data;
struct InstrumentPCM instrument_pcm_data_940 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_437_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_438_data;
struct InstrumentPCM instrument_pcm_data_941 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_438_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_006_data;
struct InstrumentPCM instrument_pcm_data_942 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_006_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_309_data;
struct InstrumentPCM instrument_pcm_data_943 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_309_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000a814,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_439_data;
struct InstrumentPCM instrument_pcm_data_944 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_439_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_237_data;
struct InstrumentPCM instrument_pcm_data_945 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_237_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_344_data;
struct InstrumentPCM instrument_pcm_data_946 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_344_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_947 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_217_data;
struct InstrumentPCM instrument_pcm_data_948 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_217_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_136_data;
struct InstrumentPCM instrument_pcm_data_949 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_136_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_107_data;
struct InstrumentPCM instrument_pcm_data_950 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_107_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_129_data;
struct InstrumentPCM instrument_pcm_data_951 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_129_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_214_data;
struct InstrumentPCM instrument_pcm_data_952 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_data,
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

extern struct SampleData sample_440_data;
struct InstrumentPCM instrument_pcm_data_958 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_440_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_441_data;
struct InstrumentPCM instrument_pcm_data_959 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_441_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_442_data;
struct InstrumentPCM instrument_pcm_data_960 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_442_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_443_data;
struct InstrumentPCM instrument_pcm_data_961 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sample_443_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_444_data;
struct InstrumentPCM instrument_pcm_data_962 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_444_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_445_data;
struct InstrumentPCM instrument_pcm_data_963 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_445_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_446_data;
struct InstrumentPCM instrument_pcm_data_964 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_446_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_447_data;
struct InstrumentPCM instrument_pcm_data_965 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_447_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_448_data;
struct InstrumentPCM instrument_pcm_data_966 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_448_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_449_data;
struct InstrumentPCM instrument_pcm_data_967 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_449_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_450_data;
struct InstrumentPCM instrument_pcm_data_968 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_450_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_451_data;
struct InstrumentPCM instrument_pcm_data_969 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_451_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_452_data;
struct InstrumentPCM instrument_pcm_data_970 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_452_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_971 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_972 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x41,
        /* unk2 */ 0x10,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_453_data;
struct InstrumentPCM instrument_pcm_data_973 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_453_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_454_data;
struct InstrumentPCM instrument_pcm_data_974 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_454_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_455_data;
struct InstrumentPCM instrument_pcm_data_975 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_455_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_976 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_456_data;
struct InstrumentPCM instrument_pcm_data_977 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_456_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_457_data;
struct InstrumentPCM instrument_pcm_data_978 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_457_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_458_data;
struct InstrumentPCM instrument_pcm_data_979 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_458_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_459_data;
struct InstrumentPCM instrument_pcm_data_980 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_459_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_460_data;
struct InstrumentPCM instrument_pcm_data_981 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_460_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_461_data;
struct InstrumentPCM instrument_pcm_data_982 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_461_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_462_data;
struct InstrumentPCM instrument_pcm_data_983 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_462_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_463_data;
struct InstrumentPCM instrument_pcm_data_984 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_463_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_464_data;
struct InstrumentPCM instrument_pcm_data_985 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_464_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_465_data;
struct InstrumentPCM instrument_pcm_data_986 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_465_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_466_data;
struct InstrumentPCM instrument_pcm_data_987 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_466_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_086_data;
struct InstrumentPCM instrument_pcm_data_988 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_467_data;
struct InstrumentPCM instrument_pcm_data_989 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_467_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_385_data;
struct InstrumentPCM instrument_pcm_data_990 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_385_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_991 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x34,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_450_data;
struct InstrumentPCM instrument_pcm_data_992 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_450_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_993 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_994 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x0,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_469_data;
struct InstrumentPCM instrument_pcm_data_995 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0xffc0,
    },
    /* Sample */ &sample_469_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_470_data;
struct InstrumentPCM instrument_pcm_data_996 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_470_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_471_data;
struct InstrumentPCM instrument_pcm_data_997 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_471_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_472_data;
struct InstrumentPCM instrument_pcm_data_998 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_472_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_473_data;
struct InstrumentPCM instrument_pcm_data_999 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc0,
    },
    /* Sample */ &sample_473_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_474_data;
struct InstrumentPCM instrument_pcm_data_1000 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_474_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_475_data;
struct InstrumentPCM instrument_pcm_data_1001 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_475_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_476_data;
struct InstrumentPCM instrument_pcm_data_1002 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_476_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_477_data;
struct InstrumentPCM instrument_pcm_data_1003 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x60,
    },
    /* Sample */ &sample_477_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_478_data;
struct InstrumentPCM instrument_pcm_data_1004 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_478_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_477_data;
struct InstrumentPCM instrument_pcm_data_1005 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x35,
        /* unk2 */ 0x60,
    },
    /* Sample */ &sample_477_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_479_data;
struct InstrumentPCM instrument_pcm_data_1006 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_479_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_480_data;
struct InstrumentPCM instrument_pcm_data_1007 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x10,
    },
    /* Sample */ &sample_480_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_450_data;
struct InstrumentPCM instrument_pcm_data_1008 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_450_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_481_data;
struct InstrumentPCM instrument_pcm_data_1009 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xfff0,
    },
    /* Sample */ &sample_481_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_482_data;
struct InstrumentPCM instrument_pcm_data_1010 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_482_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_483_data;
struct InstrumentPCM instrument_pcm_data_1011 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_483_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_484_data;
struct InstrumentPCM instrument_pcm_data_1012 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_484_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_485_data;
struct InstrumentPCM instrument_pcm_data_1013 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_485_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_216_data;
struct InstrumentPCM instrument_pcm_data_1014 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_216_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_486_data;
struct InstrumentPCM instrument_pcm_data_1015 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xc,
    },
    /* Sample */ &sample_486_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_487_data;
struct InstrumentPCM instrument_pcm_data_1016 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_487_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_488_data;
struct InstrumentPCM instrument_pcm_data_1017 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xc,
    },
    /* Sample */ &sample_488_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_489_data;
struct InstrumentPCM instrument_pcm_data_1018 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_489_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_490_data;
struct InstrumentPCM instrument_pcm_data_1019 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_490_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_491_data;
struct InstrumentPCM instrument_pcm_data_1020 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_491_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_492_data;
struct InstrumentPCM instrument_pcm_data_1021 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_492_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_493_data;
struct InstrumentPCM instrument_pcm_data_1022 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_493_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_494_data;
struct InstrumentPCM instrument_pcm_data_1023 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_494_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_487_data;
struct InstrumentPCM instrument_pcm_data_1024 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_487_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_495_data;
struct InstrumentPCM instrument_pcm_data_1025 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_495_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_496_data;
struct InstrumentPCM instrument_pcm_data_1026 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_496_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_497_data;
struct InstrumentPCM instrument_pcm_data_1027 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_497_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_498_data;
struct InstrumentPCM instrument_pcm_data_1028 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_498_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_499_data;
struct InstrumentPCM instrument_pcm_data_1029 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_499_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_500_data;
struct InstrumentPCM instrument_pcm_data_1030 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_500_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_501_data;
struct InstrumentPCM instrument_pcm_data_1031 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_501_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_502_data;
struct InstrumentPCM instrument_pcm_data_1032 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_502_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_503_data;
struct InstrumentPCM instrument_pcm_data_1033 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_503_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_504_data;
struct InstrumentPCM instrument_pcm_data_1034 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_504_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_505_data;
struct InstrumentPCM instrument_pcm_data_1035 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_505_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_506_data;
struct InstrumentPCM instrument_pcm_data_1036 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_506_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_507_data;
struct InstrumentPCM instrument_pcm_data_1037 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_507_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_508_data;
struct InstrumentPCM instrument_pcm_data_1038 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_508_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_509_data;
struct InstrumentPCM instrument_pcm_data_1039 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_509_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_510_data;
struct InstrumentPCM instrument_pcm_data_1040 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_510_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_511_data;
struct InstrumentPCM instrument_pcm_data_1041 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_511_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_512_data;
struct InstrumentPCM instrument_pcm_data_1042 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_512_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_513_data;
struct InstrumentPCM instrument_pcm_data_1043 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_513_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_514_data;
struct InstrumentPCM instrument_pcm_data_1044 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_514_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_515_data;
struct InstrumentPCM instrument_pcm_data_1045 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_515_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_516_data;
struct InstrumentPCM instrument_pcm_data_1046 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_516_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_517_data;
struct InstrumentPCM instrument_pcm_data_1047 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_517_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_518_data;
struct InstrumentPCM instrument_pcm_data_1048 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_518_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_518_data;
struct InstrumentPCM instrument_pcm_data_1049 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_518_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_489_data;
struct InstrumentPCM instrument_pcm_data_1050 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_489_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_519_data;
struct InstrumentPCM instrument_pcm_data_1051 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_519_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_520_data;
struct InstrumentPCM instrument_pcm_data_1052 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_520_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_521_data;
struct InstrumentPCM instrument_pcm_data_1053 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_521_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_522_data;
struct InstrumentPCM instrument_pcm_data_1054 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_522_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_523_data;
struct InstrumentPCM instrument_pcm_data_1055 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_523_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_524_data;
struct InstrumentPCM instrument_pcm_data_1056 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x40,
    },
    /* Sample */ &sample_524_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_525_data;
struct InstrumentPCM instrument_pcm_data_1057 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_525_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_526_data;
struct InstrumentPCM instrument_pcm_data_1058 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_526_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_527_data;
struct InstrumentPCM instrument_pcm_data_1059 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_527_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_528_data;
struct InstrumentPCM instrument_pcm_data_1060 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_528_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_529_data;
struct InstrumentPCM instrument_pcm_data_1061 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_529_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_529_data;
struct InstrumentPCM instrument_pcm_data_1062 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_529_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_506_data;
struct InstrumentPCM instrument_pcm_data_1063 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_506_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_530_data;
struct InstrumentPCM instrument_pcm_data_1064 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_530_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_531_data;
struct InstrumentPCM instrument_pcm_data_1065 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_531_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_530_data;
struct InstrumentPCM instrument_pcm_data_1066 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_530_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_532_data;
struct InstrumentPCM instrument_pcm_data_1067 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_532_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_533_data;
struct InstrumentPCM instrument_pcm_data_1068 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_533_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_534_data;
struct InstrumentPCM instrument_pcm_data_1069 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_534_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_535_data;
struct InstrumentPCM instrument_pcm_data_1070 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_535_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_536_data;
struct InstrumentPCM instrument_pcm_data_1071 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_536_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_435_data;
struct InstrumentPCM instrument_pcm_data_1072 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_435_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_537_data;
struct InstrumentPCM instrument_pcm_data_1073 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_537_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_538_data;
struct InstrumentPCM instrument_pcm_data_1074 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_538_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_539_data;
struct InstrumentPCM instrument_pcm_data_1075 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_539_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_540_data;
struct InstrumentPCM instrument_pcm_data_1076 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_540_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_541_data;
struct InstrumentPCM instrument_pcm_data_1077 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_541_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_542_data;
struct InstrumentPCM instrument_pcm_data_1078 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_542_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_543_data;
struct InstrumentPCM instrument_pcm_data_1079 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x40,
    },
    /* Sample */ &sample_543_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_544_data;
struct InstrumentPCM instrument_pcm_data_1080 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_544_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_545_data;
struct InstrumentPCM instrument_pcm_data_1081 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_545_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_546_data;
struct InstrumentPCM instrument_pcm_data_1082 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_546_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_547_data;
struct InstrumentPCM instrument_pcm_data_1083 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sample_547_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_548_data;
struct InstrumentPCM instrument_pcm_data_1084 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_548_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_549_data;
struct InstrumentPCM instrument_pcm_data_1085 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_549_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0001a433,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_550_data;
struct InstrumentPCM instrument_pcm_data_1086 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_550_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_220_data;
struct InstrumentPCM instrument_pcm_data_1087 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_220_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_218_data;
struct InstrumentPCM instrument_pcm_data_1088 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_218_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_551_data;
struct InstrumentPCM instrument_pcm_data_1089 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_551_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_552_data;
struct InstrumentPCM instrument_pcm_data_1090 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_552_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_553_data;
struct InstrumentPCM instrument_pcm_data_1091 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_553_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_554_data;
struct InstrumentPCM instrument_pcm_data_1092 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_554_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_555_data;
struct InstrumentPCM instrument_pcm_data_1093 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_555_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_556_data;
struct InstrumentPCM instrument_pcm_data_1094 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_556_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_557_data;
struct InstrumentPCM instrument_pcm_data_1095 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_557_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_558_data;
struct InstrumentPCM instrument_pcm_data_1096 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_558_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_559_data;
struct InstrumentPCM instrument_pcm_data_1097 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_559_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_560_data;
struct InstrumentPCM instrument_pcm_data_1098 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_560_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00218000,
};

extern struct SampleData sample_561_data;
struct InstrumentPCM instrument_pcm_data_1099 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_561_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_562_data;
struct InstrumentPCM instrument_pcm_data_1100 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_562_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_233_data;
struct InstrumentPCM instrument_pcm_data_1101 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_233_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_563_data;
struct InstrumentPCM instrument_pcm_data_1102 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_563_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_564_data;
struct InstrumentPCM instrument_pcm_data_1103 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_564_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_565_data;
struct InstrumentPCM instrument_pcm_data_1104 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0xffc8,
    },
    /* Sample */ &sample_565_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_565_data;
struct InstrumentPCM instrument_pcm_data_1105 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_565_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_566_data;
struct InstrumentPCM instrument_pcm_data_1106 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_566_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_567_data;
struct InstrumentPCM instrument_pcm_data_1107 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_567_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_1108 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_446_data;
struct InstrumentPCM instrument_pcm_data_1109 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_446_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_474_data;
struct InstrumentPCM instrument_pcm_data_1110 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_474_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_216_data;
struct InstrumentPCM instrument_pcm_data_1111 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffc1,
    },
    /* Sample */ &sample_216_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_568_data;
struct InstrumentPCM instrument_pcm_data_1112 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_568_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_569_data;
struct InstrumentPCM instrument_pcm_data_1113 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_569_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_570_data;
struct InstrumentPCM instrument_pcm_data_1114 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_570_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_571_data;
struct InstrumentPCM instrument_pcm_data_1115 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_571_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_572_data;
struct InstrumentPCM instrument_pcm_data_1116 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_572_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_573_data;
struct InstrumentPCM instrument_pcm_data_1117 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_573_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_574_data;
struct InstrumentPCM instrument_pcm_data_1118 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_574_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_575_data;
struct InstrumentPCM instrument_pcm_data_1119 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_575_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_576_data;
struct InstrumentPCM instrument_pcm_data_1120 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_576_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_577_data;
struct InstrumentPCM instrument_pcm_data_1121 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_577_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_578_data;
struct InstrumentPCM instrument_pcm_data_1122 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_578_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_579_data;
struct InstrumentPCM instrument_pcm_data_1123 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_579_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_580_data;
struct InstrumentPCM instrument_pcm_data_1124 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_580_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_581_data;
struct InstrumentPCM instrument_pcm_data_1125 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_581_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_582_data;
struct InstrumentPCM instrument_pcm_data_1126 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_582_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_583_data;
struct InstrumentPCM instrument_pcm_data_1127 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_583_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_584_data;
struct InstrumentPCM instrument_pcm_data_1128 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_584_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_585_data;
struct InstrumentPCM instrument_pcm_data_1129 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_585_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_586_data;
struct InstrumentPCM instrument_pcm_data_1130 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_586_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_587_data;
struct InstrumentPCM instrument_pcm_data_1131 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_587_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_440_data;
struct InstrumentPCM instrument_pcm_data_1132 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_440_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_441_data;
struct InstrumentPCM instrument_pcm_data_1133 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_441_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_442_data;
struct InstrumentPCM instrument_pcm_data_1134 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_442_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_443_data;
struct InstrumentPCM instrument_pcm_data_1135 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_443_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_444_data;
struct InstrumentPCM instrument_pcm_data_1136 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_444_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_445_data;
struct InstrumentPCM instrument_pcm_data_1137 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_445_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_446_data;
struct InstrumentPCM instrument_pcm_data_1138 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_446_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_447_data;
struct InstrumentPCM instrument_pcm_data_1139 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_447_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_448_data;
struct InstrumentPCM instrument_pcm_data_1140 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_448_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_449_data;
struct InstrumentPCM instrument_pcm_data_1141 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_449_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_450_data;
struct InstrumentPCM instrument_pcm_data_1142 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_450_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_451_data;
struct InstrumentPCM instrument_pcm_data_1143 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_451_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_452_data;
struct InstrumentPCM instrument_pcm_data_1144 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_452_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_1145 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_1146 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_453_data;
struct InstrumentPCM instrument_pcm_data_1147 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_453_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_454_data;
struct InstrumentPCM instrument_pcm_data_1148 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_454_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_455_data;
struct InstrumentPCM instrument_pcm_data_1149 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_455_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_1150 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_456_data;
struct InstrumentPCM instrument_pcm_data_1151 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_456_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_457_data;
struct InstrumentPCM instrument_pcm_data_1152 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_457_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0009d936,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_458_data;
struct InstrumentPCM instrument_pcm_data_1153 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_458_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_459_data;
struct InstrumentPCM instrument_pcm_data_1154 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_459_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_460_data;
struct InstrumentPCM instrument_pcm_data_1155 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_460_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_461_data;
struct InstrumentPCM instrument_pcm_data_1156 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_461_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_462_data;
struct InstrumentPCM instrument_pcm_data_1157 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_462_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_463_data;
struct InstrumentPCM instrument_pcm_data_1158 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_463_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_518_data;
struct InstrumentPCM instrument_pcm_data_1159 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_518_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_465_data;
struct InstrumentPCM instrument_pcm_data_1160 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_465_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_466_data;
struct InstrumentPCM instrument_pcm_data_1161 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_466_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_086_data;
struct InstrumentPCM instrument_pcm_data_1162 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_467_data;
struct InstrumentPCM instrument_pcm_data_1163 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_467_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_385_data;
struct InstrumentPCM instrument_pcm_data_1164 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_385_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_1165 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_450_data;
struct InstrumentPCM instrument_pcm_data_1166 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_450_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_1167 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_1168 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_469_data;
struct InstrumentPCM instrument_pcm_data_1169 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_469_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_470_data;
struct InstrumentPCM instrument_pcm_data_1170 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_470_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_471_data;
struct InstrumentPCM instrument_pcm_data_1171 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_471_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_472_data;
struct InstrumentPCM instrument_pcm_data_1172 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_472_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_473_data;
struct InstrumentPCM instrument_pcm_data_1173 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_473_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_474_data;
struct InstrumentPCM instrument_pcm_data_1174 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_474_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_475_data;
struct InstrumentPCM instrument_pcm_data_1175 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_475_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_476_data;
struct InstrumentPCM instrument_pcm_data_1176 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_476_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_477_data;
struct InstrumentPCM instrument_pcm_data_1177 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_477_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_478_data;
struct InstrumentPCM instrument_pcm_data_1178 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_478_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_477_data;
struct InstrumentPCM instrument_pcm_data_1179 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_477_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_479_data;
struct InstrumentPCM instrument_pcm_data_1180 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_479_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_480_data;
struct InstrumentPCM instrument_pcm_data_1181 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_480_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_450_data;
struct InstrumentPCM instrument_pcm_data_1182 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_450_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_481_data;
struct InstrumentPCM instrument_pcm_data_1183 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_481_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_482_data;
struct InstrumentPCM instrument_pcm_data_1184 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_482_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_483_data;
struct InstrumentPCM instrument_pcm_data_1185 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_483_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_484_data;
struct InstrumentPCM instrument_pcm_data_1186 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_484_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_216_data;
struct InstrumentPCM instrument_pcm_data_1187 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_216_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_486_data;
struct InstrumentPCM instrument_pcm_data_1188 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_486_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_487_data;
struct InstrumentPCM instrument_pcm_data_1189 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_487_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_488_data;
struct InstrumentPCM instrument_pcm_data_1190 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_488_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_489_data;
struct InstrumentPCM instrument_pcm_data_1191 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_489_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_490_data;
struct InstrumentPCM instrument_pcm_data_1192 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_490_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_491_data;
struct InstrumentPCM instrument_pcm_data_1193 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_491_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_492_data;
struct InstrumentPCM instrument_pcm_data_1194 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_492_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_493_data;
struct InstrumentPCM instrument_pcm_data_1195 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_493_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_494_data;
struct InstrumentPCM instrument_pcm_data_1196 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_494_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_495_data;
struct InstrumentPCM instrument_pcm_data_1197 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_495_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_496_data;
struct InstrumentPCM instrument_pcm_data_1198 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_496_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_497_data;
struct InstrumentPCM instrument_pcm_data_1199 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_497_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_498_data;
struct InstrumentPCM instrument_pcm_data_1200 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_498_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_499_data;
struct InstrumentPCM instrument_pcm_data_1201 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_499_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_500_data;
struct InstrumentPCM instrument_pcm_data_1202 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_500_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_501_data;
struct InstrumentPCM instrument_pcm_data_1203 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_501_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_502_data;
struct InstrumentPCM instrument_pcm_data_1204 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_502_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_503_data;
struct InstrumentPCM instrument_pcm_data_1205 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_503_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_504_data;
struct InstrumentPCM instrument_pcm_data_1206 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_504_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_505_data;
struct InstrumentPCM instrument_pcm_data_1207 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_505_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_506_data;
struct InstrumentPCM instrument_pcm_data_1208 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_506_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_507_data;
struct InstrumentPCM instrument_pcm_data_1209 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_507_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_508_data;
struct InstrumentPCM instrument_pcm_data_1210 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_508_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_509_data;
struct InstrumentPCM instrument_pcm_data_1211 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_509_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_510_data;
struct InstrumentPCM instrument_pcm_data_1212 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_510_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_511_data;
struct InstrumentPCM instrument_pcm_data_1213 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_511_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_512_data;
struct InstrumentPCM instrument_pcm_data_1214 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_512_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_513_data;
struct InstrumentPCM instrument_pcm_data_1215 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_513_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_514_data;
struct InstrumentPCM instrument_pcm_data_1216 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_514_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_515_data;
struct InstrumentPCM instrument_pcm_data_1217 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_515_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_516_data;
struct InstrumentPCM instrument_pcm_data_1218 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_516_data,
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

extern struct SampleData sample_588_data;
struct InstrumentPCM instrument_pcm_data_1220 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_589_data;
struct InstrumentPCM instrument_pcm_data_1221 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_589_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_590_data;
struct InstrumentPCM instrument_pcm_data_1222 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_590_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_591_data;
struct InstrumentPCM instrument_pcm_data_1223 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_591_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_190_data;
struct InstrumentPCM instrument_pcm_data_1224 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_190_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_449_data;
struct InstrumentPCM instrument_pcm_data_1225 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_449_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_592_data;
struct InstrumentPCM instrument_pcm_data_1226 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sample_592_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_593_data;
struct InstrumentPCM instrument_pcm_data_1227 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffd0,
    },
    /* Sample */ &sample_593_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_594_data;
struct InstrumentPCM instrument_pcm_data_1228 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_594_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_594_data;
struct InstrumentPCM instrument_pcm_data_1229 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x35,
        /* unk2 */ 0x30,
    },
    /* Sample */ &sample_594_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_590_data;
struct InstrumentPCM instrument_pcm_data_1230 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x30,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_590_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_588_data;
struct InstrumentPCM instrument_pcm_data_1231 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x37,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_588_data;
struct InstrumentPCM instrument_pcm_data_1232 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3e,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_588_data;
struct InstrumentPCM instrument_pcm_data_1233 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_588_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_595_data;
struct InstrumentPCM instrument_pcm_data_1234 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_595_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_596_data;
struct InstrumentPCM instrument_pcm_data_1235 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_596_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_597_data;
struct InstrumentPCM instrument_pcm_data_1236 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_597_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_598_data;
struct InstrumentPCM instrument_pcm_data_1237 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_598_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_141_data;
struct InstrumentPCM instrument_pcm_data_1238 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_141_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_142_data;
struct InstrumentPCM instrument_pcm_data_1239 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_142_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_143_data;
struct InstrumentPCM instrument_pcm_data_1240 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_143_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_599_data;
struct InstrumentPCM instrument_pcm_data_1241 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x40,
        /* unk2 */ 0x3f,
    },
    /* Sample */ &sample_599_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_600_data;
struct InstrumentPCM instrument_pcm_data_1242 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_600_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_131_data;
struct InstrumentPCM instrument_pcm_data_1243 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_131_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_132_data;
struct InstrumentPCM instrument_pcm_data_1244 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_132_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_133_data;
struct InstrumentPCM instrument_pcm_data_1245 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_133_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_134_data;
struct InstrumentPCM instrument_pcm_data_1246 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_134_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_135_data;
struct InstrumentPCM instrument_pcm_data_1247 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_135_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_136_data;
struct InstrumentPCM instrument_pcm_data_1248 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_136_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_601_data;
struct InstrumentPCM instrument_pcm_data_1249 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_601_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_602_data;
struct InstrumentPCM instrument_pcm_data_1250 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_602_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_603_data;
struct InstrumentPCM instrument_pcm_data_1251 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_603_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_604_data;
struct InstrumentPCM instrument_pcm_data_1252 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_604_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_605_data;
struct InstrumentPCM instrument_pcm_data_1253 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_605_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_606_data;
struct InstrumentPCM instrument_pcm_data_1254 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_606_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_607_data;
struct InstrumentPCM instrument_pcm_data_1255 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_607_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_608_data;
struct InstrumentPCM instrument_pcm_data_1256 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_608_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_609_data;
struct InstrumentPCM instrument_pcm_data_1257 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_609_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_610_data;
struct InstrumentPCM instrument_pcm_data_1258 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_610_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_611_data;
struct InstrumentPCM instrument_pcm_data_1259 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_611_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_612_data;
struct InstrumentPCM instrument_pcm_data_1260 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_612_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_613_data;
struct InstrumentPCM instrument_pcm_data_1261 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_613_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_614_data;
struct InstrumentPCM instrument_pcm_data_1262 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_614_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_615_data;
struct InstrumentPCM instrument_pcm_data_1263 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_615_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_616_data;
struct InstrumentPCM instrument_pcm_data_1264 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_616_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_617_data;
struct InstrumentPCM instrument_pcm_data_1265 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_617_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_618_data;
struct InstrumentPCM instrument_pcm_data_1266 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_618_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_619_data;
struct InstrumentPCM instrument_pcm_data_1267 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_619_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_620_data;
struct InstrumentPCM instrument_pcm_data_1268 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_620_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_621_data;
struct InstrumentPCM instrument_pcm_data_1269 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_621_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_622_data;
struct InstrumentPCM instrument_pcm_data_1270 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_622_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_623_data;
struct InstrumentPCM instrument_pcm_data_1271 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_623_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_624_data;
struct InstrumentPCM instrument_pcm_data_1272 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_624_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_625_data;
struct InstrumentPCM instrument_pcm_data_1273 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_625_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_626_data;
struct InstrumentPCM instrument_pcm_data_1274 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_626_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_627_data;
struct InstrumentPCM instrument_pcm_data_1275 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_627_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_628_data;
struct InstrumentPCM instrument_pcm_data_1276 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_628_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_629_data;
struct InstrumentPCM instrument_pcm_data_1277 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_629_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_630_data;
struct InstrumentPCM instrument_pcm_data_1278 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_630_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_631_data;
struct InstrumentPCM instrument_pcm_data_1279 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_631_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_632_data;
struct InstrumentPCM instrument_pcm_data_1280 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_632_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_633_data;
struct InstrumentPCM instrument_pcm_data_1281 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_633_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_634_data;
struct InstrumentPCM instrument_pcm_data_1282 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_634_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_635_data;
struct InstrumentPCM instrument_pcm_data_1283 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_635_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_636_data;
struct InstrumentPCM instrument_pcm_data_1284 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_636_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_637_data;
struct InstrumentPCM instrument_pcm_data_1285 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_637_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_638_data;
struct InstrumentPCM instrument_pcm_data_1286 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_638_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_639_data;
struct InstrumentPCM instrument_pcm_data_1287 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_639_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_640_data;
struct InstrumentPCM instrument_pcm_data_1288 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_640_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_641_data;
struct InstrumentPCM instrument_pcm_data_1289 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_641_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_642_data;
struct InstrumentPCM instrument_pcm_data_1290 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_642_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_643_data;
struct InstrumentPCM instrument_pcm_data_1291 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_643_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_644_data;
struct InstrumentPCM instrument_pcm_data_1292 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_644_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_645_data;
struct InstrumentPCM instrument_pcm_data_1293 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_645_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_646_data;
struct InstrumentPCM instrument_pcm_data_1294 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_646_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_647_data;
struct InstrumentPCM instrument_pcm_data_1295 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_647_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_648_data;
struct InstrumentPCM instrument_pcm_data_1296 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_648_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_649_data;
struct InstrumentPCM instrument_pcm_data_1297 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_649_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_650_data;
struct InstrumentPCM instrument_pcm_data_1298 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_650_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_651_data;
struct InstrumentPCM instrument_pcm_data_1299 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_651_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_652_data;
struct InstrumentPCM instrument_pcm_data_1300 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_652_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_653_data;
struct InstrumentPCM instrument_pcm_data_1301 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_653_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_654_data;
struct InstrumentPCM instrument_pcm_data_1302 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_654_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_655_data;
struct InstrumentPCM instrument_pcm_data_1303 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_655_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_656_data;
struct InstrumentPCM instrument_pcm_data_1304 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_656_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_657_data;
struct InstrumentPCM instrument_pcm_data_1305 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_657_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_658_data;
struct InstrumentPCM instrument_pcm_data_1306 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_658_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_659_data;
struct InstrumentPCM instrument_pcm_data_1307 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_659_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_660_data;
struct InstrumentPCM instrument_pcm_data_1308 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_660_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_661_data;
struct InstrumentPCM instrument_pcm_data_1309 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_661_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_662_data;
struct InstrumentPCM instrument_pcm_data_1310 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_662_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_663_data;
struct InstrumentPCM instrument_pcm_data_1311 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_663_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_664_data;
struct InstrumentPCM instrument_pcm_data_1312 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_664_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_665_data;
struct InstrumentPCM instrument_pcm_data_1313 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_665_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_666_data;
struct InstrumentPCM instrument_pcm_data_1314 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_666_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_667_data;
struct InstrumentPCM instrument_pcm_data_1315 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_667_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_668_data;
struct InstrumentPCM instrument_pcm_data_1316 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_668_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_669_data;
struct InstrumentPCM instrument_pcm_data_1317 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_669_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_670_data;
struct InstrumentPCM instrument_pcm_data_1318 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_670_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_671_data;
struct InstrumentPCM instrument_pcm_data_1319 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_671_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_672_data;
struct InstrumentPCM instrument_pcm_data_1320 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_672_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_673_data;
struct InstrumentPCM instrument_pcm_data_1321 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_673_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_674_data;
struct InstrumentPCM instrument_pcm_data_1322 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_674_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_675_data;
struct InstrumentPCM instrument_pcm_data_1323 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_675_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_676_data;
struct InstrumentPCM instrument_pcm_data_1324 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_676_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_677_data;
struct InstrumentPCM instrument_pcm_data_1325 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_677_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_678_data;
struct InstrumentPCM instrument_pcm_data_1326 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_678_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_679_data;
struct InstrumentPCM instrument_pcm_data_1327 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_679_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_680_data;
struct InstrumentPCM instrument_pcm_data_1328 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_680_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_681_data;
struct InstrumentPCM instrument_pcm_data_1329 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_681_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_682_data;
struct InstrumentPCM instrument_pcm_data_1330 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_682_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_683_data;
struct InstrumentPCM instrument_pcm_data_1331 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_683_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_684_data;
struct InstrumentPCM instrument_pcm_data_1332 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_684_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_685_data;
struct InstrumentPCM instrument_pcm_data_1333 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_685_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_686_data;
struct InstrumentPCM instrument_pcm_data_1334 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_686_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_687_data;
struct InstrumentPCM instrument_pcm_data_1335 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_687_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_688_data;
struct InstrumentPCM instrument_pcm_data_1336 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_688_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_689_data;
struct InstrumentPCM instrument_pcm_data_1337 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_689_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_690_data;
struct InstrumentPCM instrument_pcm_data_1338 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_690_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_691_data;
struct InstrumentPCM instrument_pcm_data_1339 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_691_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_692_data;
struct InstrumentPCM instrument_pcm_data_1340 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_692_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_693_data;
struct InstrumentPCM instrument_pcm_data_1341 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_693_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_694_data;
struct InstrumentPCM instrument_pcm_data_1342 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_694_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_695_data;
struct InstrumentPCM instrument_pcm_data_1343 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_695_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_696_data;
struct InstrumentPCM instrument_pcm_data_1344 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_696_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_697_data;
struct InstrumentPCM instrument_pcm_data_1345 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_697_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_698_data;
struct InstrumentPCM instrument_pcm_data_1346 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_698_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_699_data;
struct InstrumentPCM instrument_pcm_data_1347 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_699_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_700_data;
struct InstrumentPCM instrument_pcm_data_1348 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_700_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_701_data;
struct InstrumentPCM instrument_pcm_data_1349 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_701_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_702_data;
struct InstrumentPCM instrument_pcm_data_1350 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_702_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_703_data;
struct InstrumentPCM instrument_pcm_data_1351 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_703_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_704_data;
struct InstrumentPCM instrument_pcm_data_1352 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_704_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_705_data;
struct InstrumentPCM instrument_pcm_data_1353 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_705_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_706_data;
struct InstrumentPCM instrument_pcm_data_1354 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_706_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_707_data;
struct InstrumentPCM instrument_pcm_data_1355 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_707_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_708_data;
struct InstrumentPCM instrument_pcm_data_1356 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_708_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_709_data;
struct InstrumentPCM instrument_pcm_data_1357 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_709_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_710_data;
struct InstrumentPCM instrument_pcm_data_1358 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_710_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_711_data;
struct InstrumentPCM instrument_pcm_data_1359 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_711_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_712_data;
struct InstrumentPCM instrument_pcm_data_1360 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_712_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_713_data;
struct InstrumentPCM instrument_pcm_data_1361 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_713_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_714_data;
struct InstrumentPCM instrument_pcm_data_1362 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_714_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_715_data;
struct InstrumentPCM instrument_pcm_data_1363 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_715_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_716_data;
struct InstrumentPCM instrument_pcm_data_1364 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_716_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_717_data;
struct InstrumentPCM instrument_pcm_data_1365 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_717_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_718_data;
struct InstrumentPCM instrument_pcm_data_1366 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_718_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_719_data;
struct InstrumentPCM instrument_pcm_data_1367 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_719_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_720_data;
struct InstrumentPCM instrument_pcm_data_1368 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_720_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_721_data;
struct InstrumentPCM instrument_pcm_data_1369 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_721_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_722_data;
struct InstrumentPCM instrument_pcm_data_1370 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_722_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_723_data;
struct InstrumentPCM instrument_pcm_data_1371 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_723_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_724_data;
struct InstrumentPCM instrument_pcm_data_1372 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_724_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_725_data;
struct InstrumentPCM instrument_pcm_data_1373 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_725_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_726_data;
struct InstrumentPCM instrument_pcm_data_1374 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_726_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_727_data;
struct InstrumentPCM instrument_pcm_data_1375 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_727_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_728_data;
struct InstrumentPCM instrument_pcm_data_1376 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_728_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_729_data;
struct InstrumentPCM instrument_pcm_data_1377 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_729_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_730_data;
struct InstrumentPCM instrument_pcm_data_1378 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_730_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_731_data;
struct InstrumentPCM instrument_pcm_data_1379 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_731_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_732_data;
struct InstrumentPCM instrument_pcm_data_1380 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_732_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_733_data;
struct InstrumentPCM instrument_pcm_data_1381 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_733_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_734_data;
struct InstrumentPCM instrument_pcm_data_1382 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_734_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_735_data;
struct InstrumentPCM instrument_pcm_data_1383 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_735_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_736_data;
struct InstrumentPCM instrument_pcm_data_1384 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_736_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_737_data;
struct InstrumentPCM instrument_pcm_data_1385 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_737_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_738_data;
struct InstrumentPCM instrument_pcm_data_1386 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_738_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_739_data;
struct InstrumentPCM instrument_pcm_data_1387 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_739_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_740_data;
struct InstrumentPCM instrument_pcm_data_1388 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_740_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_741_data;
struct InstrumentPCM instrument_pcm_data_1389 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_741_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_742_data;
struct InstrumentPCM instrument_pcm_data_1390 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_742_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_743_data;
struct InstrumentPCM instrument_pcm_data_1391 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_743_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_744_data;
struct InstrumentPCM instrument_pcm_data_1392 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_744_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_745_data;
struct InstrumentPCM instrument_pcm_data_1393 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_745_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_746_data;
struct InstrumentPCM instrument_pcm_data_1394 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_746_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_747_data;
struct InstrumentPCM instrument_pcm_data_1395 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_747_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_748_data;
struct InstrumentPCM instrument_pcm_data_1396 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_748_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_749_data;
struct InstrumentPCM instrument_pcm_data_1397 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_749_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_750_data;
struct InstrumentPCM instrument_pcm_data_1398 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_750_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_751_data;
struct InstrumentPCM instrument_pcm_data_1399 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_751_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_752_data;
struct InstrumentPCM instrument_pcm_data_1400 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_752_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_753_data;
struct InstrumentPCM instrument_pcm_data_1401 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_753_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_754_data;
struct InstrumentPCM instrument_pcm_data_1402 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_754_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_755_data;
struct InstrumentPCM instrument_pcm_data_1403 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_755_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_756_data;
struct InstrumentPCM instrument_pcm_data_1404 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_756_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_757_data;
struct InstrumentPCM instrument_pcm_data_1405 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_757_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_758_data;
struct InstrumentPCM instrument_pcm_data_1406 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_758_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_759_data;
struct InstrumentPCM instrument_pcm_data_1407 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_759_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_760_data;
struct InstrumentPCM instrument_pcm_data_1408 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_760_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_761_data;
struct InstrumentPCM instrument_pcm_data_1409 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_761_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_762_data;
struct InstrumentPCM instrument_pcm_data_1410 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_762_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_763_data;
struct InstrumentPCM instrument_pcm_data_1411 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_763_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_764_data;
struct InstrumentPCM instrument_pcm_data_1412 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_764_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_765_data;
struct InstrumentPCM instrument_pcm_data_1413 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_765_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_766_data;
struct InstrumentPCM instrument_pcm_data_1414 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_766_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_767_data;
struct InstrumentPCM instrument_pcm_data_1415 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_767_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_768_data;
struct InstrumentPCM instrument_pcm_data_1416 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_768_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_769_data;
struct InstrumentPCM instrument_pcm_data_1417 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_769_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_770_data;
struct InstrumentPCM instrument_pcm_data_1418 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_770_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_771_data;
struct InstrumentPCM instrument_pcm_data_1419 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_771_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_772_data;
struct InstrumentPCM instrument_pcm_data_1420 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_772_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_773_data;
struct InstrumentPCM instrument_pcm_data_1421 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_773_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_774_data;
struct InstrumentPCM instrument_pcm_data_1422 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_774_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_775_data;
struct InstrumentPCM instrument_pcm_data_1423 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_775_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_776_data;
struct InstrumentPCM instrument_pcm_data_1424 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_776_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_777_data;
struct InstrumentPCM instrument_pcm_data_1425 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_777_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_778_data;
struct InstrumentPCM instrument_pcm_data_1426 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_778_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_779_data;
struct InstrumentPCM instrument_pcm_data_1427 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_779_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_780_data;
struct InstrumentPCM instrument_pcm_data_1428 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_780_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_781_data;
struct InstrumentPCM instrument_pcm_data_1429 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_781_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_782_data;
struct InstrumentPCM instrument_pcm_data_1430 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_782_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_783_data;
struct InstrumentPCM instrument_pcm_data_1431 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_783_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_784_data;
struct InstrumentPCM instrument_pcm_data_1432 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_784_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_785_data;
struct InstrumentPCM instrument_pcm_data_1433 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_785_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_786_data;
struct InstrumentPCM instrument_pcm_data_1434 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_786_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_787_data;
struct InstrumentPCM instrument_pcm_data_1435 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_787_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_788_data;
struct InstrumentPCM instrument_pcm_data_1436 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_788_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_789_data;
struct InstrumentPCM instrument_pcm_data_1437 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_789_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_790_data;
struct InstrumentPCM instrument_pcm_data_1438 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_790_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_791_data;
struct InstrumentPCM instrument_pcm_data_1439 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_449_data;
struct InstrumentPCM instrument_pcm_data_1440 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_449_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_792_data;
struct InstrumentPCM instrument_pcm_data_1441 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_792_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_451_data;
struct InstrumentPCM instrument_pcm_data_1442 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0xffe0,
    },
    /* Sample */ &sample_451_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_793_data;
struct InstrumentPCM instrument_pcm_data_1443 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x30,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_793_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_591_data;
struct InstrumentPCM instrument_pcm_data_1444 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_591_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_793_data;
struct InstrumentPCM instrument_pcm_data_1445 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x36,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_793_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_793_data;
struct InstrumentPCM instrument_pcm_data_1446 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_793_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00024c48,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_794_data;
struct InstrumentPCM instrument_pcm_data_1447 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_794_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00014867,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_795_data;
struct InstrumentPCM instrument_pcm_data_1448 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_795_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0013b26c,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_796_data;
struct InstrumentPCM instrument_pcm_data_1449 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x39,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_796_data;
struct InstrumentPCM instrument_pcm_data_1450 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3f,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_796_data;
struct InstrumentPCM instrument_pcm_data_1451 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x46,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_797_data;
struct InstrumentPCM instrument_pcm_data_1452 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_797_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_798_data;
struct InstrumentPCM instrument_pcm_data_1453 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_798_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_799_data;
struct InstrumentPCM instrument_pcm_data_1454 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_799_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_456_data;
struct InstrumentPCM instrument_pcm_data_1455 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_456_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_800_data;
struct InstrumentPCM instrument_pcm_data_1456 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_800_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00022aa4,
};

extern struct SampleData sample_801_data;
struct InstrumentPCM instrument_pcm_data_1457 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_801_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_600_data;
struct InstrumentPCM instrument_pcm_data_1458 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_600_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_588_data;
struct InstrumentPCM instrument_pcm_data_1459 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_588_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_589_data;
struct InstrumentPCM instrument_pcm_data_1460 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_589_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_802_data;
struct InstrumentPCM instrument_pcm_data_1461 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_802_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_803_data;
struct InstrumentPCM instrument_pcm_data_1462 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_803_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_188_data;
struct InstrumentPCM instrument_pcm_data_1463 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x20,
    },
    /* Sample */ &sample_188_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_804_data;
struct InstrumentPCM instrument_pcm_data_1464 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_804_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00267c1f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_805_data;
struct InstrumentPCM instrument_pcm_data_1465 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_805_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_806_data;
struct InstrumentPCM instrument_pcm_data_1466 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_806_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_807_data;
struct InstrumentPCM instrument_pcm_data_1467 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_807_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_023_data;
struct InstrumentPCM instrument_pcm_data_1468 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_023_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_808_data;
struct InstrumentPCM instrument_pcm_data_1469 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_808_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_809_data;
struct InstrumentPCM instrument_pcm_data_1470 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_809_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00034867,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_810_data;
struct InstrumentPCM instrument_pcm_data_1471 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_810_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_811_data;
struct InstrumentPCM instrument_pcm_data_1472 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_811_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_812_data;
struct InstrumentPCM instrument_pcm_data_1473 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_812_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00133e0f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_813_data;
struct InstrumentPCM instrument_pcm_data_1474 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_813_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_814_data;
struct InstrumentPCM instrument_pcm_data_1475 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x37,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_814_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleData sample_123_data;
struct InstrumentPCM instrument_pcm_data_1476 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_123_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_815_data;
struct InstrumentPCM instrument_pcm_data_1477 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_815_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_816_data;
struct InstrumentPCM instrument_pcm_data_1478 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_816_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_817_data;
struct InstrumentPCM instrument_pcm_data_1479 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_817_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00055552,
};

extern struct SampleData sample_818_data;
struct InstrumentPCM instrument_pcm_data_1480 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_818_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_819_data;
struct InstrumentPCM instrument_pcm_data_1481 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_820_data;
struct InstrumentPCM instrument_pcm_data_1482 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_820_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_821_data;
struct InstrumentPCM instrument_pcm_data_1483 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_821_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_822_data;
struct InstrumentPCM instrument_pcm_data_1484 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_822_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_823_data;
struct InstrumentPCM instrument_pcm_data_1485 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_823_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_824_data;
struct InstrumentPCM instrument_pcm_data_1486 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_034_data;
struct InstrumentPCM instrument_pcm_data_1487 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_034_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_600_data;
struct InstrumentPCM instrument_pcm_data_1488 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_600_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00013fff,
};

extern struct SampleData sample_825_data;
struct InstrumentPCM instrument_pcm_data_1489 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_825_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_030_data;
struct InstrumentPCM instrument_pcm_data_1490 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00307c1f,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_826_data;
struct InstrumentPCM instrument_pcm_data_1491 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_826_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_827_data;
struct InstrumentPCM instrument_pcm_data_1492 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_827_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_828_data;
struct InstrumentPCM instrument_pcm_data_1493 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_828_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_829_data;
struct InstrumentPCM instrument_pcm_data_1494 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_829_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_830_data;
struct InstrumentPCM instrument_pcm_data_1495 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_830_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_831_data;
struct InstrumentPCM instrument_pcm_data_1496 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_831_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_832_data;
struct InstrumentPCM instrument_pcm_data_1497 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_832_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_833_data;
struct InstrumentPCM instrument_pcm_data_1498 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_833_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_834_data;
struct InstrumentPCM instrument_pcm_data_1499 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_835_data;
struct InstrumentPCM instrument_pcm_data_1500 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_835_data,
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

extern struct SampleData sample_824_data;
struct InstrumentPCM instrument_pcm_data_1502 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_836_data;
struct InstrumentPCM instrument_pcm_data_1503 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_836_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_791_data;
struct InstrumentPCM instrument_pcm_data_1504 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_837_data;
struct InstrumentPCM instrument_pcm_data_1505 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_837_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_838_data;
struct InstrumentPCM instrument_pcm_data_1506 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_838_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_839_data;
struct InstrumentPCM instrument_pcm_data_1507 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_839_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_824_data;
struct InstrumentPCM instrument_pcm_data_1508 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_509_data;
struct InstrumentPCM instrument_pcm_data_1509 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_509_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_840_data;
struct InstrumentPCM instrument_pcm_data_1510 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_840_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_832_data;
struct InstrumentPCM instrument_pcm_data_1511 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_832_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_818_data;
struct InstrumentPCM instrument_pcm_data_1512 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_818_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_841_data;
struct InstrumentPCM instrument_pcm_data_1513 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_841_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_823_data;
struct InstrumentPCM instrument_pcm_data_1514 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_823_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_127_data;
struct InstrumentPCM instrument_pcm_data_1515 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_127_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_842_data;
struct InstrumentPCM instrument_pcm_data_1516 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_842_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_835_data;
struct InstrumentPCM instrument_pcm_data_1517 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_835_data,
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

extern struct SampleData sample_819_data;
struct InstrumentPCM instrument_pcm_data_1519 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_843_data;
struct InstrumentPCM instrument_pcm_data_1520 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_843_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_844_data;
struct InstrumentPCM instrument_pcm_data_1521 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_844_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_845_data;
struct InstrumentPCM instrument_pcm_data_1522 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_845_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_846_data;
struct InstrumentPCM instrument_pcm_data_1523 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_846_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_839_data;
struct InstrumentPCM instrument_pcm_data_1524 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_839_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_847_data;
struct InstrumentPCM instrument_pcm_data_1525 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_847_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_848_data;
struct InstrumentPCM instrument_pcm_data_1526 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_848_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_849_data;
struct InstrumentPCM instrument_pcm_data_1527 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_849_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_429_data;
struct InstrumentPCM instrument_pcm_data_1528 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_429_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_820_data;
struct InstrumentPCM instrument_pcm_data_1529 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_820_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_850_data;
struct InstrumentPCM instrument_pcm_data_1530 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_850_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_851_data;
struct InstrumentPCM instrument_pcm_data_1531 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_851_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_852_data;
struct InstrumentPCM instrument_pcm_data_1532 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_852_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_853_data;
struct InstrumentPCM instrument_pcm_data_1533 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_853_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_854_data;
struct InstrumentPCM instrument_pcm_data_1534 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_854_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_004_data;
struct InstrumentPCM instrument_pcm_data_1535 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_004_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_428_data;
struct InstrumentPCM instrument_pcm_data_1536 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_428_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00015029,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_214_data;
struct InstrumentPCM instrument_pcm_data_1537 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_1538 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_855_data;
struct InstrumentPCM instrument_pcm_data_1539 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_855_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_818_data;
struct InstrumentPCM instrument_pcm_data_1540 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_818_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_819_data;
struct InstrumentPCM instrument_pcm_data_1541 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_835_data;
struct InstrumentPCM instrument_pcm_data_1542 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_835_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_856_data;
struct InstrumentPCM instrument_pcm_data_1543 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_856_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_857_data;
struct InstrumentPCM instrument_pcm_data_1544 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_857_data,
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

extern struct SampleData sample_820_data;
struct InstrumentPCM instrument_pcm_data_1546 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_820_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_834_data;
struct InstrumentPCM instrument_pcm_data_1547 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_858_data;
struct InstrumentPCM instrument_pcm_data_1548 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_858_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_859_data;
struct InstrumentPCM instrument_pcm_data_1549 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_859_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_086_data;
struct InstrumentPCM instrument_pcm_data_1550 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_197_data;
struct InstrumentPCM instrument_pcm_data_1551 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_860_data;
struct InstrumentPCM instrument_pcm_data_1552 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_860_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00335029,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001a433b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleData sample_860_data;
struct InstrumentPCM instrument_pcm_data_1553 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_860_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x004cf83e,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_432_data;
struct InstrumentPCM instrument_pcm_data_1554 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_432_data,
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

extern struct SampleData sample_832_data;
struct InstrumentPCM instrument_pcm_data_1556 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_832_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_222_data;
struct InstrumentPCM instrument_pcm_data_1557 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_222_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_829_data;
struct InstrumentPCM instrument_pcm_data_1558 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_829_data,
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

extern struct SampleData sample_861_data;
struct InstrumentPCM instrument_pcm_data_1560 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_861_data,
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

extern struct SampleData sample_824_data;
struct InstrumentPCM instrument_pcm_data_1562 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_824_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_862_data;
struct InstrumentPCM instrument_pcm_data_1563 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_862_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_279_data;
struct InstrumentPCM instrument_pcm_data_1564 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_279_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00000000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_863_data;
struct InstrumentPCM instrument_pcm_data_1565 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_863_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_864_data;
struct InstrumentPCM instrument_pcm_data_1566 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_864_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_834_data;
struct InstrumentPCM instrument_pcm_data_1567 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_836_data;
struct InstrumentPCM instrument_pcm_data_1568 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_836_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_829_data;
struct InstrumentPCM instrument_pcm_data_1569 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_829_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_865_data;
struct InstrumentPCM instrument_pcm_data_1570 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_865_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_792_data;
struct InstrumentPCM instrument_pcm_data_1571 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_792_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_866_data;
struct InstrumentPCM instrument_pcm_data_1572 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_866_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_865_data;
struct InstrumentPCM instrument_pcm_data_1573 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_865_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_867_data;
struct InstrumentPCM instrument_pcm_data_1574 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_867_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_434_data;
struct InstrumentPCM instrument_pcm_data_1575 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_434_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern struct SampleData sample_346_data;
struct InstrumentPCM instrument_pcm_data_1576 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_346_data,
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

extern struct SampleData sample_868_data;
struct InstrumentPCM instrument_pcm_data_1580 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_868_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_869_data;
struct InstrumentPCM instrument_pcm_data_1581 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_869_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_431_data;
struct InstrumentPCM instrument_pcm_data_1582 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_431_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_030_data;
struct InstrumentPCM instrument_pcm_data_1583 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_870_data;
struct InstrumentPCM instrument_pcm_data_1584 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_870_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_792_data;
struct InstrumentPCM instrument_pcm_data_1585 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_792_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_865_data;
struct InstrumentPCM instrument_pcm_data_1586 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_865_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_871_data;
struct InstrumentPCM instrument_pcm_data_1587 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_871_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_872_data;
struct InstrumentPCM instrument_pcm_data_1588 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_872_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_873_data;
struct InstrumentPCM instrument_pcm_data_1589 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_873_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_856_data;
struct InstrumentPCM instrument_pcm_data_1590 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_856_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x005c1f07,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_874_data;
struct InstrumentPCM instrument_pcm_data_1591 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_874_data,
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

extern struct SampleData sample_875_data;
struct InstrumentPCM instrument_pcm_data_1593 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_875_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_876_data;
struct InstrumentPCM instrument_pcm_data_1594 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_876_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_877_data;
struct InstrumentPCM instrument_pcm_data_1595 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_877_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_791_data;
struct InstrumentPCM instrument_pcm_data_1596 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_878_data;
struct InstrumentPCM instrument_pcm_data_1597 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_878_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_879_data;
struct InstrumentPCM instrument_pcm_data_1598 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_879_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_791_data;
struct InstrumentPCM instrument_pcm_data_1599 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_791_data,
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

extern struct SampleData sample_880_data;
struct InstrumentPCM instrument_pcm_data_1601 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_880_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_881_data;
struct InstrumentPCM instrument_pcm_data_1602 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_881_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_863_data;
struct InstrumentPCM instrument_pcm_data_1603 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_863_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_030_data;
struct InstrumentPCM instrument_pcm_data_1604 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_430_data;
struct InstrumentPCM instrument_pcm_data_1605 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_430_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005745d1,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_842_data;
struct InstrumentPCM instrument_pcm_data_1606 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_842_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_882_data;
struct InstrumentPCM instrument_pcm_data_1607 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_882_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_883_data;
struct InstrumentPCM instrument_pcm_data_1608 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_883_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_884_data;
struct InstrumentPCM instrument_pcm_data_1609 = {
    {
        /* Type */ INSTRUMENT_PCM_UNPITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_884_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_214_data;
struct InstrumentPCM instrument_pcm_data_1610 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_214_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_data_1611 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_122_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_885_data;
struct InstrumentPCM instrument_pcm_data_1612 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_885_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_886_data;
struct InstrumentPCM instrument_pcm_data_1613 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_886_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_823_data;
struct InstrumentPCM instrument_pcm_data_1614 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_823_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_887_data;
struct InstrumentPCM instrument_pcm_data_1615 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_887_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_885_data;
struct InstrumentPCM instrument_pcm_data_1616 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_885_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_198_data;
struct InstrumentPCM instrument_pcm_data_1617 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_198_data,
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

extern struct SampleData sample_197_data;
struct InstrumentPCM instrument_pcm_data_1619 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_197_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_030_data;
struct InstrumentPCM instrument_pcm_data_1620 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_030_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x005745d1,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_888_data;
struct InstrumentPCM instrument_pcm_data_1621 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_888_data,
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

extern struct SampleData sample_086_data;
struct InstrumentPCM instrument_pcm_data_1624 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_086_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_796_data;
struct InstrumentPCM instrument_pcm_data_1625 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x46,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_796_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_889_data;
struct InstrumentPCM instrument_pcm_data_1626 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_889_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0016554d,
};

extern struct SampleData sample_433_data;
struct InstrumentPCM instrument_pcm_data_1627 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_433_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_819_data;
struct InstrumentPCM instrument_pcm_data_1628 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_819_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_890_data;
struct InstrumentPCM instrument_pcm_data_1629 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_890_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x0073745d,
    /* unk10  */ 0x0043e0f8,
    /* unk14  */ 0x001f2fd6,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_834_data;
struct InstrumentPCM instrument_pcm_data_1630 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_891_data;
struct InstrumentPCM instrument_pcm_data_1631 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_891_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_859_data;
struct InstrumentPCM instrument_pcm_data_1632 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_859_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_892_data;
struct InstrumentPCM instrument_pcm_data_1633 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_892_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x003a2e8b,
    /* unk14  */ 0x001d8ba2,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_874_data;
struct InstrumentPCM instrument_pcm_data_1634 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_874_data,
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

extern struct SampleData sample_892_data;
struct InstrumentPCM instrument_pcm_data_1638 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_892_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0066a052,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x001d8ba2,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0006aa9f,
};

extern struct SampleData sample_893_data;
struct InstrumentPCM instrument_pcm_data_1639 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_893_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_864_data;
struct InstrumentPCM instrument_pcm_data_1640 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_864_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_790_data;
struct InstrumentPCM instrument_pcm_data_1641 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_790_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00106a05,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0013e350,
};

extern struct SampleData sample_894_data;
struct InstrumentPCM instrument_pcm_data_1642 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_894_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_895_data;
struct InstrumentPCM instrument_pcm_data_1643 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_895_data,
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

extern struct SampleData sample_896_data;
struct InstrumentPCM instrument_pcm_data_1645 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_896_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_897_data;
struct InstrumentPCM instrument_pcm_data_1646 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_897_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_898_data;
struct InstrumentPCM instrument_pcm_data_1647 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_898_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_899_data;
struct InstrumentPCM instrument_pcm_data_1648 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_899_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_900_data;
struct InstrumentPCM instrument_pcm_data_1649 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_900_data,
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

extern struct SampleData sample_439_data;
struct InstrumentPCM instrument_pcm_data_1655 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_439_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_901_data;
struct InstrumentPCM instrument_pcm_data_1656 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_901_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0011952a,
};

extern struct SampleData sample_901_data;
struct InstrumentPCM instrument_pcm_data_1657 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_901_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_902_data;
struct InstrumentPCM instrument_pcm_data_1658 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_902_data,
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

extern struct SampleData sample_903_data;
struct InstrumentPCM instrument_pcm_data_1660 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_903_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00402433,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0000540a,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_904_data;
struct InstrumentPCM instrument_pcm_data_1661 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_904_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_905_data;
struct InstrumentPCM instrument_pcm_data_1662 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_905_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_906_data;
struct InstrumentPCM instrument_pcm_data_1663 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_906_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_907_data;
struct InstrumentPCM instrument_pcm_data_1664 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_907_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_908_data;
struct InstrumentPCM instrument_pcm_data_1665 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_908_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleData sample_909_data;
struct InstrumentPCM instrument_pcm_data_1666 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_909_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_910_data;
struct InstrumentPCM instrument_pcm_data_1667 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_910_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_911_data;
struct InstrumentPCM instrument_pcm_data_1668 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_911_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_912_data;
struct InstrumentPCM instrument_pcm_data_1669 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_912_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_913_data;
struct InstrumentPCM instrument_pcm_data_1670 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_913_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleData sample_914_data;
struct InstrumentPCM instrument_pcm_data_1671 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_914_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_915_data;
struct InstrumentPCM instrument_pcm_data_1672 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_915_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_916_data;
struct InstrumentPCM instrument_pcm_data_1673 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_916_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0000c000,
};

extern struct SampleData sample_917_data;
struct InstrumentPCM instrument_pcm_data_1674 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_917_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_918_data;
struct InstrumentPCM instrument_pcm_data_1675 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_918_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_919_data;
struct InstrumentPCM instrument_pcm_data_1676 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_919_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0001638c,
};

extern struct SampleData sample_919_data;
struct InstrumentPCM instrument_pcm_data_1677 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_919_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_920_data;
struct InstrumentPCM instrument_pcm_data_1678 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_920_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00031548,
};

extern struct SampleData sample_921_data;
struct InstrumentPCM instrument_pcm_data_1679 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_921_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_922_data;
struct InstrumentPCM instrument_pcm_data_1680 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_922_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_923_data;
struct InstrumentPCM instrument_pcm_data_1681 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_923_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_859_data;
struct InstrumentPCM instrument_pcm_data_1682 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_859_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x004d9364,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_924_data;
struct InstrumentPCM instrument_pcm_data_1683 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_924_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_925_data;
struct InstrumentPCM instrument_pcm_data_1684 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_925_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_926_data;
struct InstrumentPCM instrument_pcm_data_1685 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_926_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_927_data;
struct InstrumentPCM instrument_pcm_data_1686 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_927_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_928_data;
struct InstrumentPCM instrument_pcm_data_1687 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_928_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_929_data;
struct InstrumentPCM instrument_pcm_data_1688 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x38,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_929_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_930_data;
struct InstrumentPCM instrument_pcm_data_1689 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_930_data,
    /* unk8   */ 0x00000000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x001364d9,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_931_data;
struct InstrumentPCM instrument_pcm_data_1690 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_931_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x0018ea90,
};

extern struct SampleData sample_844_data;
struct InstrumentPCM instrument_pcm_data_1691 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_844_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_868_data;
struct InstrumentPCM instrument_pcm_data_1692 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_868_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_869_data;
struct InstrumentPCM instrument_pcm_data_1693 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_869_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_431_data;
struct InstrumentPCM instrument_pcm_data_1694 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_431_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_880_data;
struct InstrumentPCM instrument_pcm_data_1695 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_880_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_883_data;
struct InstrumentPCM instrument_pcm_data_1696 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_883_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_884_data;
struct InstrumentPCM instrument_pcm_data_1697 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_884_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_887_data;
struct InstrumentPCM instrument_pcm_data_1698 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_887_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_825_data;
struct InstrumentPCM instrument_pcm_data_1699 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_825_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_827_data;
struct InstrumentPCM instrument_pcm_data_1700 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_827_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_811_data;
struct InstrumentPCM instrument_pcm_data_1701 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_811_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_812_data;
struct InstrumentPCM instrument_pcm_data_1702 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_812_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x00133e0f,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x000690ce,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_813_data;
struct InstrumentPCM instrument_pcm_data_1703 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_813_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x0019a814,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x0004ec9b,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x00082378,
};

extern struct SampleData sample_834_data;
struct InstrumentPCM instrument_pcm_data_1704 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_834_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000f6a90,
};

extern struct SampleData sample_461_data;
struct InstrumentPCM instrument_pcm_data_1705 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_461_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_463_data;
struct InstrumentPCM instrument_pcm_data_1706 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_463_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_087_data;
struct InstrumentPCM instrument_pcm_data_1707 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_087_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x000b8000,
};

extern struct SampleData sample_468_data;
struct InstrumentPCM instrument_pcm_data_1708 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_468_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001e7fba,
};

extern struct SampleData sample_898_data;
struct InstrumentPCM instrument_pcm_data_1709 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_898_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_899_data;
struct InstrumentPCM instrument_pcm_data_1710 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_899_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_932_data;
struct InstrumentPCM instrument_pcm_data_1711 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_932_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_933_data;
struct InstrumentPCM instrument_pcm_data_1712 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_933_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_934_data;
struct InstrumentPCM instrument_pcm_data_1713 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_934_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_935_data;
struct InstrumentPCM instrument_pcm_data_1714 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_935_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_936_data;
struct InstrumentPCM instrument_pcm_data_1715 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_936_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_937_data;
struct InstrumentPCM instrument_pcm_data_1716 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_937_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_938_data;
struct InstrumentPCM instrument_pcm_data_1717 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_938_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_939_data;
struct InstrumentPCM instrument_pcm_data_1718 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_939_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_940_data;
struct InstrumentPCM instrument_pcm_data_1719 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_940_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_941_data;
struct InstrumentPCM instrument_pcm_data_1720 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_941_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_942_data;
struct InstrumentPCM instrument_pcm_data_1721 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_942_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_943_data;
struct InstrumentPCM instrument_pcm_data_1722 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_943_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_944_data;
struct InstrumentPCM instrument_pcm_data_1723 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_944_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_945_data;
struct InstrumentPCM instrument_pcm_data_1724 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_945_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_946_data;
struct InstrumentPCM instrument_pcm_data_1725 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_946_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_947_data;
struct InstrumentPCM instrument_pcm_data_1726 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_947_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_948_data;
struct InstrumentPCM instrument_pcm_data_1727 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_948_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_949_data;
struct InstrumentPCM instrument_pcm_data_1728 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_949_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_950_data;
struct InstrumentPCM instrument_pcm_data_1729 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_950_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_951_data;
struct InstrumentPCM instrument_pcm_data_1730 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_951_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_952_data;
struct InstrumentPCM instrument_pcm_data_1731 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_952_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_953_data;
struct InstrumentPCM instrument_pcm_data_1732 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_953_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_954_data;
struct InstrumentPCM instrument_pcm_data_1733 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_954_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_955_data;
struct InstrumentPCM instrument_pcm_data_1734 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_955_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_956_data;
struct InstrumentPCM instrument_pcm_data_1735 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_956_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_957_data;
struct InstrumentPCM instrument_pcm_data_1736 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_957_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_958_data;
struct InstrumentPCM instrument_pcm_data_1737 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_958_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_959_data;
struct InstrumentPCM instrument_pcm_data_1738 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_959_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_960_data;
struct InstrumentPCM instrument_pcm_data_1739 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_960_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_961_data;
struct InstrumentPCM instrument_pcm_data_1740 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_961_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};

extern struct SampleData sample_962_data;
struct InstrumentPCM instrument_pcm_data_1741 = {
    {
        /* Type */ INSTRUMENT_PCM_PITCHED,
        /* unk1 */ 0x3c,
        /* unk2 */ 0x7f,
    },
    /* Sample */ &sample_962_data,
    /* unk8   */ 0x007f0000,
    /* unkC   */ 0x007f0000,
    /* unk10  */ 0x00600000,
    /* unk14  */ 0x00208000,
    /* unk18  */ 0x00000000,
    /* unk1C  */ 0x001fc000,
};
