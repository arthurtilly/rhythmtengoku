extern const struct SequenceData s_rap_un_seqData;
extern const struct SequenceData s_rap_uun_seqData;
extern const struct SequenceData s_rap_yeah_seqData;
extern const struct SequenceData s_rap_oyatuha_saiko_seqData;
extern const struct SequenceData s_rap_15ji_desuka_seqData;
extern const struct SequenceData s_rap_oisi_kamone_seqData;
extern const struct SequenceData s_rap_kibunha_saiko_seqData;
extern const struct SequenceData s_rap_oyatu_desuka_seqData;
extern const struct SequenceData s_rap_herusi_kamone_seqData;
extern const struct SequenceData s_rap_orette_saiko_seqData;
extern const struct SequenceData s_rap_wakari_desuka_seqData;
extern const struct SequenceData s_rap_tanosi_kamone_seqData;
extern const struct SequenceData s_rap_kimitte_saiko_seqData;
extern const struct SequenceData s_rap_15ji_desuka_seqData;
extern const struct SequenceData s_rap_soremoso_kamone_seqData;


// [D_089e98a4] Rap Machine SFX Table 1
const struct SequenceData *const rap_machine_sfx_table1[] = {
    /* A */ &s_rap_un_seqData,
    /* B */ &s_rap_uun_seqData,
    /* U */ &s_rap_oyatuha_saiko_seqData,
    /* D */ &s_rap_yeah_seqData,
    /* L */ &s_rap_15ji_desuka_seqData,
    /* R */ &s_rap_oisi_kamone_seqData
};

// [D_089e98bc] Rap Machine SFX Table 2
const struct SequenceData *const rap_machine_sfx_table2[] = {
    /* A */ &s_rap_un_seqData,
    /* B */ &s_rap_uun_seqData,
    /* U */ &s_rap_kibunha_saiko_seqData,
    /* D */ &s_rap_yeah_seqData,
    /* L */ &s_rap_oyatu_desuka_seqData,
    /* R */ &s_rap_herusi_kamone_seqData
};

// [D_089e98d4] Rap Machine SFX Table 3
const struct SequenceData *const rap_machine_sfx_table3[] = {
    /* A */ &s_rap_un_seqData,
    /* B */ &s_rap_uun_seqData,
    /* U */ &s_rap_orette_saiko_seqData,
    /* D */ &s_rap_yeah_seqData,
    /* L */ &s_rap_wakari_desuka_seqData,
    /* R */ &s_rap_tanosi_kamone_seqData
};

// [D_089e98ec] Rap Machine SFX Table 4
const struct SequenceData *const rap_machine_sfx_table4[] = {
    /* A */ &s_rap_un_seqData,
    /* B */ &s_rap_uun_seqData,
    /* U */ &s_rap_kimitte_saiko_seqData,
    /* D */ &s_rap_yeah_seqData,
    /* L */ &s_rap_15ji_desuka_seqData,
    /* R */ &s_rap_soremoso_kamone_seqData
};

// [D_089e9904] Rap Machine SFX Table Pool
const struct SequenceData *const *const rap_machine_sfx_pool[] = {
    /* 0x00 */ rap_machine_sfx_table1,
    /* 0x01 */ rap_machine_sfx_table2,
    /* 0x02 */ rap_machine_sfx_table3,
    /* 0x03 */ rap_machine_sfx_table4
};

// [D_089e9914] Rap Machine Demo BPM
const u16 rap_machine_demo_bpm = 180;

// [D_089e9918] Rap Machine Demo Script
const struct RhythmToyDemo rap_machine_demo_seq[] = {
    /* 0x00 */ { RHYTHM_TOY_DEMO_PRESS_DOWN, 0x180 },
    /* 0x01 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x90 },
    /* 0x02 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x03 */ { RHYTHM_TOY_DEMO_REST, 0xC0 },
    /* 0x04 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x90 },
    /* 0x05 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x06 */ { RHYTHM_TOY_DEMO_REST, 0xC0 },
    /* 0x07 */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x08 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x09 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x0A */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x0B */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x0C */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x0D */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x0E */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x0F */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x10 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x11 */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x12 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x13 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x14 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x15 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x16 */ { RHYTHM_TOY_DEMO_PRESS_UP, 0x60 },
    /* 0x17 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x18 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x18 },
    /* 0x19 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x1A */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x1B */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x1C */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x1D */ { RHYTHM_TOY_DEMO_PRESS_A, 0x08 },
    /* 0x1E */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x1F */ { RHYTHM_TOY_DEMO_PRESS_B, 0x18 },
    /* 0x20 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x21 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x22 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x23 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x24 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x25 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x26 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x27 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x08 },
    /* 0x28 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x29 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x18 },
    /* 0x2A */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x2B */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x2C */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x2D */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x2E */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x2F */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x30 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x31 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x08 },
    /* 0x32 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x33 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x18 },
    /* 0x34 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x35 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x36 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x37 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x38 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x90 },
    /* 0x39 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x3A */ { RHYTHM_TOY_DEMO_REST, 0xC0 },
    /* 0x3B */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x90 },
    /* 0x3C */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x3D */ { RHYTHM_TOY_DEMO_REST, 0xC0 },
    /* 0x3E */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x90 },
    /* 0x3F */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x40 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x41 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x42 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x43 */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x44 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x45 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x46 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x47 */ { RHYTHM_TOY_DEMO_PRESS_UP, 0x60 },
    /* 0x48 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x49 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x4A */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x4B */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x4C */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x4D */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x4E */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x4F */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x50 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x51 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x52 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x53 */ { RHYTHM_TOY_DEMO_PRESS_UP, 0x60 },
    /* 0x54 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x55 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x56 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x57 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x58 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x59 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x5A */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x5B */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x5C */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x5D */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x5E */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x5F */ { RHYTHM_TOY_DEMO_PRESS_UP, 0x60 },
    /* 0x60 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x61 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x62 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x63 */ { RHYTHM_TOY_DEMO_PRESS_A, 0x30 },
    /* 0x64 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x65 */ { RHYTHM_TOY_DEMO_PRESS_LEFT, 0x08 },
    /* 0x66 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x67 */ { RHYTHM_TOY_DEMO_PRESS_RIGHT, 0x60 },
    /* 0x68 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x69 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x08 },
    /* 0x6A */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x6B */ { RHYTHM_TOY_DEMO_PRESS_UP, 0x60 },
    /* 0x6C */ { RHYTHM_TOY_DEMO_PRESS_A, 0x18 },
    /* 0x6D */ { RHYTHM_TOY_DEMO_PRESS_B, 0x18 },
    /* 0x6E */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x6F */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x70 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x71 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x72 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x73 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x74 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x75 */ { RHYTHM_TOY_DEMO_REST, 0x30 },
    /* 0x76 */ { RHYTHM_TOY_DEMO_REST, 0x18 },
    /* 0x77 */ { RHYTHM_TOY_DEMO_REST, 0x10 },
    /* 0x78 */ { RHYTHM_TOY_DEMO_PRESS_DOWN, 0x08 },
    /* 0x79 */ { RHYTHM_TOY_DEMO_PRESS_B, 0x30 },
    /* STOP */ END_OF_RHYTHM_TOY_DEMO
};
