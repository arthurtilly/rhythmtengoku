struct MidiInfo {
    const u32 *romAddress;
    u32 unk4f1:5;
    u32 soundBank:10;
    u32 volume:7;
    u32 unk4f4:8;
    u32 unk4f5:2;
    u32 unk8;
    const u8 *midiName;
    u32 iramChnlIndex;
};

extern const u32 Lesson1_mid;
const struct MidiInfo Lesson1MidiInfo = {
    /* ROM Address */        &Lesson1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             120,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          Lesson1MidiName,
    /* IRAM Channel Index */ 1000,
};

extern const u32 Lesson2_mid;
const struct MidiInfo Lesson2MidiInfo = {
    /* ROM Address */        &Lesson2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             127,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          Lesson2MidiName,
    /* IRAM Channel Index */ 1001,
};

extern const u32 Lesson3_mid;
const struct MidiInfo Lesson3MidiInfo = {
    /* ROM Address */        &Lesson3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             115,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          Lesson3MidiName,
    /* IRAM Channel Index */ 1002,
};

extern const u32 L1_pat01_mid;
const struct MidiInfo L1_pat01MidiInfo = {
    /* ROM Address */        &L1_pat01_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat01MidiName,
    /* IRAM Channel Index */ 1003,
};

extern const u32 L1_pat02_mid;
const struct MidiInfo L1_pat02MidiInfo = {
    /* ROM Address */        &L1_pat02_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat02MidiName,
    /* IRAM Channel Index */ 1004,
};

extern const u32 L1_pat03_mid;
const struct MidiInfo L1_pat03MidiInfo = {
    /* ROM Address */        &L1_pat03_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat03MidiName,
    /* IRAM Channel Index */ 1005,
};

extern const u32 L1_pat04_mid;
const struct MidiInfo L1_pat04MidiInfo = {
    /* ROM Address */        &L1_pat04_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat04MidiName,
    /* IRAM Channel Index */ 1006,
};

extern const u32 L1_pat05_mid;
const struct MidiInfo L1_pat05MidiInfo = {
    /* ROM Address */        &L1_pat05_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat05MidiName,
    /* IRAM Channel Index */ 1007,
};

extern const u32 L1_pat06_mid;
const struct MidiInfo L1_pat06MidiInfo = {
    /* ROM Address */        &L1_pat06_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat06MidiName,
    /* IRAM Channel Index */ 1008,
};

extern const u32 L1_pat07_mid;
const struct MidiInfo L1_pat07MidiInfo = {
    /* ROM Address */        &L1_pat07_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat07MidiName,
    /* IRAM Channel Index */ 1009,
};

extern const u32 L1_pat08_mid;
const struct MidiInfo L1_pat08MidiInfo = {
    /* ROM Address */        &L1_pat08_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat08MidiName,
    /* IRAM Channel Index */ 1010,
};

extern const u32 L1_pat09_mid;
const struct MidiInfo L1_pat09MidiInfo = {
    /* ROM Address */        &L1_pat09_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat09MidiName,
    /* IRAM Channel Index */ 1011,
};

extern const u32 L1_pat10_mid;
const struct MidiInfo L1_pat10MidiInfo = {
    /* ROM Address */        &L1_pat10_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat10MidiName,
    /* IRAM Channel Index */ 1012,
};

extern const u32 L1_pat11_mid;
const struct MidiInfo L1_pat11MidiInfo = {
    /* ROM Address */        &L1_pat11_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat11MidiName,
    /* IRAM Channel Index */ 1013,
};

extern const u32 L1_pat12_mid;
const struct MidiInfo L1_pat12MidiInfo = {
    /* ROM Address */        &L1_pat12_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat12MidiName,
    /* IRAM Channel Index */ 1014,
};

extern const u32 L1_pat13_mid;
const struct MidiInfo L1_pat13MidiInfo = {
    /* ROM Address */        &L1_pat13_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat13MidiName,
    /* IRAM Channel Index */ 1015,
};

extern const u32 L1_pat14_mid;
const struct MidiInfo L1_pat14MidiInfo = {
    /* ROM Address */        &L1_pat14_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat14MidiName,
    /* IRAM Channel Index */ 1016,
};

extern const u32 L1_pat15_mid;
const struct MidiInfo L1_pat15MidiInfo = {
    /* ROM Address */        &L1_pat15_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat15MidiName,
    /* IRAM Channel Index */ 1017,
};

extern const u32 L1_pat16_mid;
const struct MidiInfo L1_pat16MidiInfo = {
    /* ROM Address */        &L1_pat16_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L1_pat16MidiName,
    /* IRAM Channel Index */ 1018,
};

extern const u32 L2_pat00_mid;
const struct MidiInfo L2_pat00MidiInfo = {
    /* ROM Address */        &L2_pat00_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat00MidiName,
    /* IRAM Channel Index */ 1019,
};

extern const u32 L2_pat01_mid;
const struct MidiInfo L2_pat01MidiInfo = {
    /* ROM Address */        &L2_pat01_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat01MidiName,
    /* IRAM Channel Index */ 1020,
};

extern const u32 L2_pat02_mid;
const struct MidiInfo L2_pat02MidiInfo = {
    /* ROM Address */        &L2_pat02_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat02MidiName,
    /* IRAM Channel Index */ 1021,
};

extern const u32 L2_pat03_mid;
const struct MidiInfo L2_pat03MidiInfo = {
    /* ROM Address */        &L2_pat03_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat03MidiName,
    /* IRAM Channel Index */ 1022,
};

extern const u32 L2_pat04_mid;
const struct MidiInfo L2_pat04MidiInfo = {
    /* ROM Address */        &L2_pat04_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat04MidiName,
    /* IRAM Channel Index */ 1023,
};

extern const u32 L2_pat05_mid;
const struct MidiInfo L2_pat05MidiInfo = {
    /* ROM Address */        &L2_pat05_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat05MidiName,
    /* IRAM Channel Index */ 1024,
};

extern const u32 L2_pat06_mid;
const struct MidiInfo L2_pat06MidiInfo = {
    /* ROM Address */        &L2_pat06_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat06MidiName,
    /* IRAM Channel Index */ 1025,
};

extern const u32 L2_pat07_mid;
const struct MidiInfo L2_pat07MidiInfo = {
    /* ROM Address */        &L2_pat07_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat07MidiName,
    /* IRAM Channel Index */ 1026,
};

extern const u32 L2_pat08_mid;
const struct MidiInfo L2_pat08MidiInfo = {
    /* ROM Address */        &L2_pat08_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat08MidiName,
    /* IRAM Channel Index */ 1027,
};

extern const u32 L2_pat09_mid;
const struct MidiInfo L2_pat09MidiInfo = {
    /* ROM Address */        &L2_pat09_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat09MidiName,
    /* IRAM Channel Index */ 1028,
};

extern const u32 L2_pat10_mid;
const struct MidiInfo L2_pat10MidiInfo = {
    /* ROM Address */        &L2_pat10_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat10MidiName,
    /* IRAM Channel Index */ 1029,
};

extern const u32 L2_pat11_mid;
const struct MidiInfo L2_pat11MidiInfo = {
    /* ROM Address */        &L2_pat11_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat11MidiName,
    /* IRAM Channel Index */ 1030,
};

extern const u32 L2_pat12_mid;
const struct MidiInfo L2_pat12MidiInfo = {
    /* ROM Address */        &L2_pat12_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat12MidiName,
    /* IRAM Channel Index */ 1031,
};

extern const u32 L2_pat13_mid;
const struct MidiInfo L2_pat13MidiInfo = {
    /* ROM Address */        &L2_pat13_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat13MidiName,
    /* IRAM Channel Index */ 1032,
};

extern const u32 L2_pat14_mid;
const struct MidiInfo L2_pat14MidiInfo = {
    /* ROM Address */        &L2_pat14_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat14MidiName,
    /* IRAM Channel Index */ 1033,
};

extern const u32 L2_pat15_mid;
const struct MidiInfo L2_pat15MidiInfo = {
    /* ROM Address */        &L2_pat15_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat15MidiName,
    /* IRAM Channel Index */ 1034,
};

extern const u32 L2_pat16_mid;
const struct MidiInfo L2_pat16MidiInfo = {
    /* ROM Address */        &L2_pat16_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L2_pat16MidiName,
    /* IRAM Channel Index */ 1035,
};

extern const u32 L3_intro_mid;
const struct MidiInfo L3_introMidiInfo = {
    /* ROM Address */        &L3_intro_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_introMidiName,
    /* IRAM Channel Index */ 1036,
};

extern const u32 L3_C32_mid;
const struct MidiInfo L3_C32MidiInfo = {
    /* ROM Address */        &L3_C32_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C32MidiName,
    /* IRAM Channel Index */ 1037,
};

extern const u32 L3_C32_no_swing_mid;
const struct MidiInfo L3_C32_no_swingMidiInfo = {
    /* ROM Address */        &L3_C32_no_swing_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C32_no_swingMidiName,
    /* IRAM Channel Index */ 1038,
};

extern const u32 L3_C33_mid;
const struct MidiInfo L3_C33MidiInfo = {
    /* ROM Address */        &L3_C33_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C33MidiName,
    /* IRAM Channel Index */ 1039,
};

extern const u32 L3_C34_mid;
const struct MidiInfo L3_C34MidiInfo = {
    /* ROM Address */        &L3_C34_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C34MidiName,
    /* IRAM Channel Index */ 1040,
};

extern const u32 L3_C35_mid;
const struct MidiInfo L3_C35MidiInfo = {
    /* ROM Address */        &L3_C35_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C35MidiName,
    /* IRAM Channel Index */ 1041,
};

extern const u32 L3_C36_mid;
const struct MidiInfo L3_C36MidiInfo = {
    /* ROM Address */        &L3_C36_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C36MidiName,
    /* IRAM Channel Index */ 1042,
};

extern const u32 L3_C37_mid;
const struct MidiInfo L3_C37MidiInfo = {
    /* ROM Address */        &L3_C37_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C37MidiName,
    /* IRAM Channel Index */ 1043,
};

extern const u32 L3_C38_mid;
const struct MidiInfo L3_C38MidiInfo = {
    /* ROM Address */        &L3_C38_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C38MidiName,
    /* IRAM Channel Index */ 1044,
};

extern const u32 L3_C39_mid;
const struct MidiInfo L3_C39MidiInfo = {
    /* ROM Address */        &L3_C39_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C39MidiName,
    /* IRAM Channel Index */ 1045,
};

extern const u32 L3_C40_mid;
const struct MidiInfo L3_C40MidiInfo = {
    /* ROM Address */        &L3_C40_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C40MidiName,
    /* IRAM Channel Index */ 1046,
};

extern const u32 L3_C41_end_mid;
const struct MidiInfo L3_C41_endMidiInfo = {
    /* ROM Address */        &L3_C41_end_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L3_C41_endMidiName,
    /* IRAM Channel Index */ 1047,
};

extern const u32 s_aimu_bgm_mid;
const struct MidiInfo s_aimu_bgmMidiInfo = {
    /* ROM Address */        &s_aimu_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         50,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_aimu_bgmMidiName,
    /* IRAM Channel Index */ 1048,
};

extern const u32 s_menu_bgm_mid;
const struct MidiInfo s_menu_bgmMidiInfo = {
    /* ROM Address */        &s_menu_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         51,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_bgmMidiName,
    /* IRAM Channel Index */ 1049,
};

extern const u32 s_shibafu1_bgm_mid;
const struct MidiInfo s_shibafu1_bgmMidiInfo = {
    /* ROM Address */        &s_shibafu1_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         52,
    /* Volume */             75,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shibafu1_bgmMidiName,
    /* IRAM Channel Index */ 1050,
};

extern const u32 s_shibafu2_bgm_mid;
const struct MidiInfo s_shibafu2_bgmMidiInfo = {
    /* ROM Address */        &s_shibafu2_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         53,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shibafu2_bgmMidiName,
    /* IRAM Channel Index */ 1051,
};

extern const u32 s_tebyoushi_bgm_mid;
const struct MidiInfo s_tebyoushi_bgmMidiInfo = {
    /* ROM Address */        &s_tebyoushi_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         54,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tebyoushi_bgmMidiName,
    /* IRAM Channel Index */ 1052,
};

extern const u32 s_tebyoushi_dexy_bgm_mid;
const struct MidiInfo s_tebyoushi_dexy_bgmMidiInfo = {
    /* ROM Address */        &s_tebyoushi_dexy_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         64,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tebyoushi_dexy_bgmMidiName,
    /* IRAM Channel Index */ 1053,
};

extern const u32 s_tapdance_bgm_mid;
const struct MidiInfo s_tapdance_bgmMidiInfo = {
    /* ROM Address */        &s_tapdance_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         55,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tapdance_bgmMidiName,
    /* IRAM Channel Index */ 1054,
};

extern const u32 s_tapdance_ska_bgm_mid;
const struct MidiInfo s_tapdance_ska_bgmMidiInfo = {
    /* ROM Address */        &s_tapdance_ska_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         65,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tapdance_ska_bgmMidiName,
    /* IRAM Channel Index */ 1055,
};

extern const u32 s_trex_bgm_mid;
const struct MidiInfo s_trex_bgmMidiInfo = {
    /* ROM Address */        &s_trex_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         56,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_trex_bgmMidiName,
    /* IRAM Channel Index */ 1056,
};

extern const u32 s_trexnew_bgm1_mid;
const struct MidiInfo s_trexnew_bgm1MidiInfo = {
    /* ROM Address */        &s_trexnew_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         67,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_trexnew_bgm1MidiName,
    /* IRAM Channel Index */ 1057,
};

extern const u32 s_trexnew_bgm2_mid;
const struct MidiInfo s_trexnew_bgm2MidiInfo = {
    /* ROM Address */        &s_trexnew_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         67,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_trexnew_bgm2MidiName,
    /* IRAM Channel Index */ 1058,
};

extern const u32 s_poly_bgm_mid;
const struct MidiInfo s_poly_bgmMidiInfo = {
    /* ROM Address */        &s_poly_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         57,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_poly_bgmMidiName,
    /* IRAM Channel Index */ 1059,
};

extern const u32 s_shuji_bgm1_mid;
const struct MidiInfo s_shuji_bgm1MidiInfo = {
    /* ROM Address */        &s_shuji_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         58,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shuji_bgm1MidiName,
    /* IRAM Channel Index */ 1060,
};

extern const u32 s_shuji_bgm2_mid;
const struct MidiInfo s_shuji_bgm2MidiInfo = {
    /* ROM Address */        &s_shuji_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         58,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shuji_bgm2MidiName,
    /* IRAM Channel Index */ 1061,
};

extern const u32 s_shuji_bgm3_mid;
const struct MidiInfo s_shuji_bgm3MidiInfo = {
    /* ROM Address */        &s_shuji_bgm3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         58,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shuji_bgm3MidiName,
    /* IRAM Channel Index */ 1062,
};

extern const u32 s_shuji_bgm_end_mid;
const struct MidiInfo s_shuji_bgm_endMidiInfo = {
    /* ROM Address */        &s_shuji_bgm_end_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         58,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shuji_bgm_endMidiName,
    /* IRAM Channel Index */ 1063,
};

extern const u32 s_puipui_bgm_mid;
const struct MidiInfo s_puipui_bgmMidiInfo = {
    /* ROM Address */        &s_puipui_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         59,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_puipui_bgmMidiName,
    /* IRAM Channel Index */ 1064,
};

extern const u32 s_puipui_intro_bgm_mid;
const struct MidiInfo s_puipui_intro_bgmMidiInfo = {
    /* ROM Address */        &s_puipui_intro_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         59,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_puipui_intro_bgmMidiName,
    /* IRAM Channel Index */ 1065,
};

extern const u32 s_naniwa_bgm_mid;
const struct MidiInfo s_naniwa_bgmMidiInfo = {
    /* ROM Address */        &s_naniwa_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         60,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_naniwa_bgmMidiName,
    /* IRAM Channel Index */ 1066,
};

extern const u32 s_emanikanto_bgm_mid;
const struct MidiInfo s_emanikanto_bgmMidiInfo = {
    /* ROM Address */        &s_emanikanto_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         61,
    /* Volume */             60,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_emanikanto_bgmMidiName,
    /* IRAM Channel Index */ 1067,
};

extern const u32 s_emanikanto_bgm_loop_mid;
const struct MidiInfo s_emanikanto_bgm_loopMidiInfo = {
    /* ROM Address */        &s_emanikanto_bgm_loop_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         61,
    /* Volume */             60,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_emanikanto_bgm_loopMidiName,
    /* IRAM Channel Index */ 1068,
};

extern const u32 s_manza_bgm_mid;
const struct MidiInfo s_manza_bgmMidiInfo = {
    /* ROM Address */        &s_manza_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         62,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_manza_bgmMidiName,
    /* IRAM Channel Index */ 1069,
};

extern const u32 s_hitmegeton1_bgm_mid;
const struct MidiInfo s_hitmegeton1_bgmMidiInfo = {
    /* ROM Address */        &s_hitmegeton1_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         63,
    /* Volume */             50,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_hitmegeton1_bgmMidiName,
    /* IRAM Channel Index */ 1070,
};

extern const u32 s_hitmegeton2_bgm_mid;
const struct MidiInfo s_hitmegeton2_bgmMidiInfo = {
    /* ROM Address */        &s_hitmegeton2_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         63,
    /* Volume */             50,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_hitmegeton2_bgmMidiName,
    /* IRAM Channel Index */ 1071,
};

extern const u32 s_bon_odori_bgm_mid;
const struct MidiInfo s_bon_odori_bgmMidiInfo = {
    /* ROM Address */        &s_bon_odori_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         70,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_bon_odori_bgmMidiName,
    /* IRAM Channel Index */ 1072,
};

extern const u32 s_bon_dance_bgm_mid;
const struct MidiInfo s_bon_dance_bgmMidiInfo = {
    /* ROM Address */        &s_bon_dance_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         71,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_bon_dance_bgmMidiName,
    /* IRAM Channel Index */ 1073,
};

extern const u32 s_4beat_bgm_mid;
const struct MidiInfo s_4beat_bgmMidiInfo = {
    /* ROM Address */        &s_4beat_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         68,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_4beat_bgmMidiName,
    /* IRAM Channel Index */ 1074,
};

extern const u32 s_toss_bgm_mid;
const struct MidiInfo s_toss_bgmMidiInfo = {
    /* ROM Address */        &s_toss_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         72,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_toss_bgmMidiName,
    /* IRAM Channel Index */ 1075,
};

extern const u32 s_toss_bgm_end_mid;
const struct MidiInfo s_toss_bgm_endMidiInfo = {
    /* ROM Address */        &s_toss_bgm_end_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         72,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_toss_bgm_endMidiName,
    /* IRAM Channel Index */ 1076,
};

extern const u32 s_toss_bgm_loop_mid;
const struct MidiInfo s_toss_bgm_loopMidiInfo = {
    /* ROM Address */        &s_toss_bgm_loop_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         72,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_toss_bgm_loopMidiName,
    /* IRAM Channel Index */ 1077,
};

extern const u32 s_title_bgm_mid;
const struct MidiInfo s_title_bgmMidiInfo = {
    /* ROM Address */        &s_title_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         73,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_title_bgmMidiName,
    /* IRAM Channel Index */ 1078,
};

extern const u32 s_koihoney_bgm_mid;
const struct MidiInfo s_koihoney_bgmMidiInfo = {
    /* ROM Address */        &s_koihoney_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         74,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_koihoney_bgmMidiName,
    /* IRAM Channel Index */ 1079,
};

extern const u32 s_wish_bgm_mid;
const struct MidiInfo s_wish_bgmMidiInfo = {
    /* ROM Address */        &s_wish_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         75,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_wish_bgmMidiName,
    /* IRAM Channel Index */ 1080,
};

extern const u32 L8_pat_intro_mid;
const struct MidiInfo L8_pat_introMidiInfo = {
    /* ROM Address */        &L8_pat_intro_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat_introMidiName,
    /* IRAM Channel Index */ 1081,
};

extern const u32 L8_pat01_mid;
const struct MidiInfo L8_pat01MidiInfo = {
    /* ROM Address */        &L8_pat01_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat01MidiName,
    /* IRAM Channel Index */ 1082,
};

extern const u32 L8_pat02_mid;
const struct MidiInfo L8_pat02MidiInfo = {
    /* ROM Address */        &L8_pat02_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat02MidiName,
    /* IRAM Channel Index */ 1083,
};

extern const u32 L8_pat03_mid;
const struct MidiInfo L8_pat03MidiInfo = {
    /* ROM Address */        &L8_pat03_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat03MidiName,
    /* IRAM Channel Index */ 1084,
};

extern const u32 L8_pat04_mid;
const struct MidiInfo L8_pat04MidiInfo = {
    /* ROM Address */        &L8_pat04_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat04MidiName,
    /* IRAM Channel Index */ 1085,
};

extern const u32 L8_pat05_mid;
const struct MidiInfo L8_pat05MidiInfo = {
    /* ROM Address */        &L8_pat05_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat05MidiName,
    /* IRAM Channel Index */ 1086,
};

extern const u32 L8_pat06_mid;
const struct MidiInfo L8_pat06MidiInfo = {
    /* ROM Address */        &L8_pat06_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat06MidiName,
    /* IRAM Channel Index */ 1087,
};

extern const u32 L8_pat07_mid;
const struct MidiInfo L8_pat07MidiInfo = {
    /* ROM Address */        &L8_pat07_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat07MidiName,
    /* IRAM Channel Index */ 1088,
};

extern const u32 L8_pat08_mid;
const struct MidiInfo L8_pat08MidiInfo = {
    /* ROM Address */        &L8_pat08_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat08MidiName,
    /* IRAM Channel Index */ 1089,
};

extern const u32 L8_pat09_mid;
const struct MidiInfo L8_pat09MidiInfo = {
    /* ROM Address */        &L8_pat09_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat09MidiName,
    /* IRAM Channel Index */ 1090,
};

extern const u32 L8_pat10_mid;
const struct MidiInfo L8_pat10MidiInfo = {
    /* ROM Address */        &L8_pat10_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat10MidiName,
    /* IRAM Channel Index */ 1091,
};

extern const u32 L8_pat11_mid;
const struct MidiInfo L8_pat11MidiInfo = {
    /* ROM Address */        &L8_pat11_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat11MidiName,
    /* IRAM Channel Index */ 1092,
};

extern const u32 L8_pat12_mid;
const struct MidiInfo L8_pat12MidiInfo = {
    /* ROM Address */        &L8_pat12_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat12MidiName,
    /* IRAM Channel Index */ 1093,
};

extern const u32 L8_pat_end_mid;
const struct MidiInfo L8_pat_endMidiInfo = {
    /* ROM Address */        &L8_pat_end_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat_endMidiName,
    /* IRAM Channel Index */ 1094,
};

extern const u32 L8_pat_honki_mid;
const struct MidiInfo L8_pat_honkiMidiInfo = {
    /* ROM Address */        &L8_pat_honki_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         77,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          L8_pat_honkiMidiName,
    /* IRAM Channel Index */ 1095,
};

extern const u32 s_menu_kettei0_mid;
const struct MidiInfo s_menu_kettei0MidiInfo = {
    /* ROM Address */        &s_menu_kettei0_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         23,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_kettei0MidiName,
    /* IRAM Channel Index */ 1199,
};

extern const u32 s_menu_kettei1_mid;
const struct MidiInfo s_menu_kettei1MidiInfo = {
    /* ROM Address */        &s_menu_kettei1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         54,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_kettei1MidiName,
    /* IRAM Channel Index */ 1200,
};

extern const u32 s_menu_kettei2_mid;
const struct MidiInfo s_menu_kettei2MidiInfo = {
    /* ROM Address */        &s_menu_kettei2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         30,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_kettei2MidiName,
    /* IRAM Channel Index */ 1201,
};

extern const u32 s_menu_kettei3_mid;
const struct MidiInfo s_menu_kettei3MidiInfo = {
    /* ROM Address */        &s_menu_kettei3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         54,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_kettei3MidiName,
    /* IRAM Channel Index */ 1202,
};

extern const u32 s_menu_cancel1_mid;
const struct MidiInfo s_menu_cancel1MidiInfo = {
    /* ROM Address */        &s_menu_cancel1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         23,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_cancel1MidiName,
    /* IRAM Channel Index */ 1203,
};

extern const u32 s_menu_cancel2_mid;
const struct MidiInfo s_menu_cancel2MidiInfo = {
    /* ROM Address */        &s_menu_cancel2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         22,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_cancel2MidiName,
    /* IRAM Channel Index */ 1204,
};

extern const u32 s_menu_cancel3_mid;
const struct MidiInfo s_menu_cancel3MidiInfo = {
    /* ROM Address */        &s_menu_cancel3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         23,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_cancel3MidiName,
    /* IRAM Channel Index */ 1205,
};

extern const u32 s_menu_cursor1_mid;
const struct MidiInfo s_menu_cursor1MidiInfo = {
    /* ROM Address */        &s_menu_cursor1_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         30,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_cursor1MidiName,
    /* IRAM Channel Index */ 1206,
};

extern const u32 s_menu_cursor2_mid;
const struct MidiInfo s_menu_cursor2MidiInfo = {
    /* ROM Address */        &s_menu_cursor2_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         23,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_cursor2MidiName,
    /* IRAM Channel Index */ 1207,
};

extern const u32 s_menu_error_mid;
const struct MidiInfo s_menu_errorMidiInfo = {
    /* ROM Address */        &s_menu_error_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         30,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_menu_errorMidiName,
    /* IRAM Channel Index */ 1208,
};

extern const u32 s_kansei_mid;
const struct MidiInfo s_kanseiMidiInfo = {
    /* ROM Address */        &s_kansei_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_kanseiMidiName,
    /* IRAM Channel Index */ 1230,
};

extern const u32 s_kansei_solo_mid;
const struct MidiInfo s_kansei_soloMidiInfo = {
    /* ROM Address */        &s_kansei_solo_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_kansei_soloMidiName,
    /* IRAM Channel Index */ 1231,
};

extern const u32 s_warai_mid;
const struct MidiInfo s_waraiMidiInfo = {
    /* ROM Address */        &s_warai_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_waraiMidiName,
    /* IRAM Channel Index */ 1232,
};

extern const u32 s_warai_little_mid;
const struct MidiInfo s_warai_littleMidiInfo = {
    /* ROM Address */        &s_warai_little_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_warai_littleMidiName,
    /* IRAM Channel Index */ 1233,
};

extern const u32 s_warai_solo_mid;
const struct MidiInfo s_warai_soloMidiInfo = {
    /* ROM Address */        &s_warai_solo_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_warai_soloMidiName,
    /* IRAM Channel Index */ 1234,
};

extern const u32 s_hakushu_solo_mid;
const struct MidiInfo s_hakushu_soloMidiInfo = {
    /* ROM Address */        &s_hakushu_solo_mid,
    /* unk4f1 */             0xa,
    /* Sound Bank */         28,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hakushu_soloMidiName,
    /* IRAM Channel Index */ 1235,
};

extern const u32 s_BD1_mid;
const struct MidiInfo s_BD1MidiInfo = {
    /* ROM Address */        &s_BD1_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             125,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD1MidiName,
    /* IRAM Channel Index */ 1240,
};

extern const u32 s_BD2_mid;
const struct MidiInfo s_BD2MidiInfo = {
    /* ROM Address */        &s_BD2_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             115,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD2MidiName,
    /* IRAM Channel Index */ 1241,
};

extern const u32 s_BD3_mid;
const struct MidiInfo s_BD3MidiInfo = {
    /* ROM Address */        &s_BD3_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD3MidiName,
    /* IRAM Channel Index */ 1242,
};

extern const u32 s_BD4_mid;
const struct MidiInfo s_BD4MidiInfo = {
    /* ROM Address */        &s_BD4_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD4MidiName,
    /* IRAM Channel Index */ 1243,
};

extern const u32 s_BD5_mid;
const struct MidiInfo s_BD5MidiInfo = {
    /* ROM Address */        &s_BD5_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD5MidiName,
    /* IRAM Channel Index */ 1244,
};

extern const u32 s_BD6_mid;
const struct MidiInfo s_BD6MidiInfo = {
    /* ROM Address */        &s_BD6_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD6MidiName,
    /* IRAM Channel Index */ 1245,
};

extern const u32 s_BD7_mid;
const struct MidiInfo s_BD7MidiInfo = {
    /* ROM Address */        &s_BD7_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD7MidiName,
    /* IRAM Channel Index */ 1246,
};

extern const u32 s_BD8_mid;
const struct MidiInfo s_BD8MidiInfo = {
    /* ROM Address */        &s_BD8_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD8MidiName,
    /* IRAM Channel Index */ 1247,
};

extern const u32 s_BD9_mid;
const struct MidiInfo s_BD9MidiInfo = {
    /* ROM Address */        &s_BD9_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         50,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_BD9MidiName,
    /* IRAM Channel Index */ 1248,
};

extern const u32 s_SD1_mid;
const struct MidiInfo s_SD1MidiInfo = {
    /* ROM Address */        &s_SD1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD1MidiName,
    /* IRAM Channel Index */ 1250,
};

extern const u32 s_SD2_mid;
const struct MidiInfo s_SD2MidiInfo = {
    /* ROM Address */        &s_SD2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD2MidiName,
    /* IRAM Channel Index */ 1251,
};

extern const u32 s_SD3_mid;
const struct MidiInfo s_SD3MidiInfo = {
    /* ROM Address */        &s_SD3_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD3MidiName,
    /* IRAM Channel Index */ 1252,
};

extern const u32 s_SD4_mid;
const struct MidiInfo s_SD4MidiInfo = {
    /* ROM Address */        &s_SD4_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD4MidiName,
    /* IRAM Channel Index */ 1253,
};

extern const u32 s_SD5_mid;
const struct MidiInfo s_SD5MidiInfo = {
    /* ROM Address */        &s_SD5_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD5MidiName,
    /* IRAM Channel Index */ 1254,
};

extern const u32 s_SD6_mid;
const struct MidiInfo s_SD6MidiInfo = {
    /* ROM Address */        &s_SD6_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD6MidiName,
    /* IRAM Channel Index */ 1255,
};

extern const u32 s_SD7_mid;
const struct MidiInfo s_SD7MidiInfo = {
    /* ROM Address */        &s_SD7_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD7MidiName,
    /* IRAM Channel Index */ 1256,
};

extern const u32 s_SD8_mid;
const struct MidiInfo s_SD8MidiInfo = {
    /* ROM Address */        &s_SD8_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             85,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD8MidiName,
    /* IRAM Channel Index */ 1257,
};

extern const u32 s_SD9_mid;
const struct MidiInfo s_SD9MidiInfo = {
    /* ROM Address */        &s_SD9_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_SD9MidiName,
    /* IRAM Channel Index */ 1258,
};

extern const u32 s_tom_H_mid;
const struct MidiInfo s_tom_HMidiInfo = {
    /* ROM Address */        &s_tom_H_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_tom_HMidiName,
    /* IRAM Channel Index */ 1260,
};

extern const u32 s_tom_M_mid;
const struct MidiInfo s_tom_MMidiInfo = {
    /* ROM Address */        &s_tom_M_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_tom_MMidiName,
    /* IRAM Channel Index */ 1261,
};

extern const u32 s_tom_L_mid;
const struct MidiInfo s_tom_LMidiInfo = {
    /* ROM Address */        &s_tom_L_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_tom_LMidiName,
    /* IRAM Channel Index */ 1262,
};

extern const u32 s_close_HH_mid;
const struct MidiInfo s_close_HHMidiInfo = {
    /* ROM Address */        &s_close_HH_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         30,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_close_HHMidiName,
    /* IRAM Channel Index */ 1270,
};

extern const u32 s_open_HH_mid;
const struct MidiInfo s_open_HHMidiInfo = {
    /* ROM Address */        &s_open_HH_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         30,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_open_HHMidiName,
    /* IRAM Channel Index */ 1271,
};

extern const u32 s_CC1_mid;
const struct MidiInfo s_CC1MidiInfo = {
    /* ROM Address */        &s_CC1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_CC1MidiName,
    /* IRAM Channel Index */ 1272,
};

extern const u32 s_CC2_mid;
const struct MidiInfo s_CC2MidiInfo = {
    /* ROM Address */        &s_CC2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_CC2MidiName,
    /* IRAM Channel Index */ 1273,
};

extern const u32 s_CC3_mid;
const struct MidiInfo s_CC3MidiInfo = {
    /* ROM Address */        &s_CC3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_CC3MidiName,
    /* IRAM Channel Index */ 1274,
};

extern const u32 s_CC4_mid;
const struct MidiInfo s_CC4MidiInfo = {
    /* ROM Address */        &s_CC4_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_CC4MidiName,
    /* IRAM Channel Index */ 1275,
};

extern const u32 s_RC_mid;
const struct MidiInfo s_RCMidiInfo = {
    /* ROM Address */        &s_RC_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_RCMidiName,
    /* IRAM Channel Index */ 1276,
};

extern const u32 s_HC_mid;
const struct MidiInfo s_HCMidiInfo = {
    /* ROM Address */        &s_HC_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         18,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_HCMidiName,
    /* IRAM Channel Index */ 1277,
};

extern const u32 s_CC5_mid;
const struct MidiInfo s_CC5MidiInfo = {
    /* ROM Address */        &s_CC5_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         18,
    /* Volume */             65,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_CC5MidiName,
    /* IRAM Channel Index */ 1278,
};

extern const u32 s_CC6_mid;
const struct MidiInfo s_CC6MidiInfo = {
    /* ROM Address */        &s_CC6_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_CC6MidiName,
    /* IRAM Channel Index */ 1279,
};

extern const u32 s_KN_mid;
const struct MidiInfo s_KNMidiInfo = {
    /* ROM Address */        &s_KN_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_KNMidiName,
    /* IRAM Channel Index */ 1280,
};

extern const u32 s_HG_mid;
const struct MidiInfo s_HGMidiInfo = {
    /* ROM Address */        &s_HG_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_HGMidiName,
    /* IRAM Channel Index */ 1281,
};

extern const u32 s_tran_jump_mid;
const struct MidiInfo s_tran_jumpMidiInfo = {
    /* ROM Address */        &s_tran_jump_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tran_jumpMidiName,
    /* IRAM Channel Index */ 1300,
};

extern const u32 s_tran_henge_mid;
const struct MidiInfo s_tran_hengeMidiInfo = {
    /* ROM Address */        &s_tran_henge_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tran_hengeMidiName,
    /* IRAM Channel Index */ 1301,
};

extern const u32 s_tran_seino_mid;
const struct MidiInfo s_tran_seinoMidiInfo = {
    /* ROM Address */        &s_tran_seino_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tran_seinoMidiName,
    /* IRAM Channel Index */ 1302,
};

extern const u32 s_tran_hensin_mid;
const struct MidiInfo s_tran_hensinMidiInfo = {
    /* ROM Address */        &s_tran_hensin_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tran_hensinMidiName,
    /* IRAM Channel Index */ 1303,
};

extern const u32 s_tran_jump_se_mid;
const struct MidiInfo s_tran_jump_seMidiInfo = {
    /* ROM Address */        &s_tran_jump_se_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         30,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tran_jump_seMidiName,
    /* IRAM Channel Index */ 1304,
};

extern const u32 s_toss_red_blue1_mid;
const struct MidiInfo s_toss_red_blue1MidiInfo = {
    /* ROM Address */        &s_toss_red_blue1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_blue1MidiName,
    /* IRAM Channel Index */ 1320,
};

extern const u32 s_toss_red_blue2_mid;
const struct MidiInfo s_toss_red_blue2MidiInfo = {
    /* ROM Address */        &s_toss_red_blue2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_blue2MidiName,
    /* IRAM Channel Index */ 1321,
};

extern const u32 s_toss_red_blue3_mid;
const struct MidiInfo s_toss_red_blue3MidiInfo = {
    /* ROM Address */        &s_toss_red_blue3_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_blue3MidiName,
    /* IRAM Channel Index */ 1322,
};

extern const u32 s_toss_red_yelw1_mid;
const struct MidiInfo s_toss_red_yelw1MidiInfo = {
    /* ROM Address */        &s_toss_red_yelw1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_yelw1MidiName,
    /* IRAM Channel Index */ 1323,
};

extern const u32 s_toss_red_yelw2_mid;
const struct MidiInfo s_toss_red_yelw2MidiInfo = {
    /* ROM Address */        &s_toss_red_yelw2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_yelw2MidiName,
    /* IRAM Channel Index */ 1324,
};

extern const u32 s_toss_red_yelw3_mid;
const struct MidiInfo s_toss_red_yelw3MidiInfo = {
    /* ROM Address */        &s_toss_red_yelw3_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_yelw3MidiName,
    /* IRAM Channel Index */ 1325,
};

extern const u32 s_toss_red_red_mid;
const struct MidiInfo s_toss_red_redMidiInfo = {
    /* ROM Address */        &s_toss_red_red_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_redMidiName,
    /* IRAM Channel Index */ 1329,
};

extern const u32 s_toss_red_before_mid;
const struct MidiInfo s_toss_red_beforeMidiInfo = {
    /* ROM Address */        &s_toss_red_before_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_beforeMidiName,
    /* IRAM Channel Index */ 1330,
};

extern const u32 s_toss_red_break_mid;
const struct MidiInfo s_toss_red_breakMidiInfo = {
    /* ROM Address */        &s_toss_red_break_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_red_breakMidiName,
    /* IRAM Channel Index */ 1331,
};

extern const u32 s_toss_blue_red1_mid;
const struct MidiInfo s_toss_blue_red1MidiInfo = {
    /* ROM Address */        &s_toss_blue_red1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_red1MidiName,
    /* IRAM Channel Index */ 1332,
};

extern const u32 s_toss_blue_red2_mid;
const struct MidiInfo s_toss_blue_red2MidiInfo = {
    /* ROM Address */        &s_toss_blue_red2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_red2MidiName,
    /* IRAM Channel Index */ 1333,
};

extern const u32 s_toss_blue_red3_mid;
const struct MidiInfo s_toss_blue_red3MidiInfo = {
    /* ROM Address */        &s_toss_blue_red3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_red3MidiName,
    /* IRAM Channel Index */ 1334,
};

extern const u32 s_toss_blue_yelw1_mid;
const struct MidiInfo s_toss_blue_yelw1MidiInfo = {
    /* ROM Address */        &s_toss_blue_yelw1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_yelw1MidiName,
    /* IRAM Channel Index */ 1335,
};

extern const u32 s_toss_blue_yelw2_mid;
const struct MidiInfo s_toss_blue_yelw2MidiInfo = {
    /* ROM Address */        &s_toss_blue_yelw2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_yelw2MidiName,
    /* IRAM Channel Index */ 1336,
};

extern const u32 s_toss_blue_yelw3_mid;
const struct MidiInfo s_toss_blue_yelw3MidiInfo = {
    /* ROM Address */        &s_toss_blue_yelw3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_yelw3MidiName,
    /* IRAM Channel Index */ 1337,
};

extern const u32 s_toss_blue_blue_mid;
const struct MidiInfo s_toss_blue_blueMidiInfo = {
    /* ROM Address */        &s_toss_blue_blue_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_blueMidiName,
    /* IRAM Channel Index */ 1341,
};

extern const u32 s_toss_blue_before_mid;
const struct MidiInfo s_toss_blue_beforeMidiInfo = {
    /* ROM Address */        &s_toss_blue_before_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_beforeMidiName,
    /* IRAM Channel Index */ 1342,
};

extern const u32 s_toss_blue_break_mid;
const struct MidiInfo s_toss_blue_breakMidiInfo = {
    /* ROM Address */        &s_toss_blue_break_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_blue_breakMidiName,
    /* IRAM Channel Index */ 1343,
};

extern const u32 s_toss_yelw_red1_mid;
const struct MidiInfo s_toss_yelw_red1MidiInfo = {
    /* ROM Address */        &s_toss_yelw_red1_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_red1MidiName,
    /* IRAM Channel Index */ 1344,
};

extern const u32 s_toss_yelw_red2_mid;
const struct MidiInfo s_toss_yelw_red2MidiInfo = {
    /* ROM Address */        &s_toss_yelw_red2_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_red2MidiName,
    /* IRAM Channel Index */ 1345,
};

extern const u32 s_toss_yelw_red3_mid;
const struct MidiInfo s_toss_yelw_red3MidiInfo = {
    /* ROM Address */        &s_toss_yelw_red3_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_red3MidiName,
    /* IRAM Channel Index */ 1346,
};

extern const u32 s_toss_yelw_blue1_mid;
const struct MidiInfo s_toss_yelw_blue1MidiInfo = {
    /* ROM Address */        &s_toss_yelw_blue1_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_blue1MidiName,
    /* IRAM Channel Index */ 1347,
};

extern const u32 s_toss_yelw_blue2_mid;
const struct MidiInfo s_toss_yelw_blue2MidiInfo = {
    /* ROM Address */        &s_toss_yelw_blue2_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_blue2MidiName,
    /* IRAM Channel Index */ 1348,
};

extern const u32 s_toss_yelw_blue3_mid;
const struct MidiInfo s_toss_yelw_blue3MidiInfo = {
    /* ROM Address */        &s_toss_yelw_blue3_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_blue3MidiName,
    /* IRAM Channel Index */ 1349,
};

extern const u32 s_toss_yelw_yelw_mid;
const struct MidiInfo s_toss_yelw_yelwMidiInfo = {
    /* ROM Address */        &s_toss_yelw_yelw_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_yelwMidiName,
    /* IRAM Channel Index */ 1353,
};

extern const u32 s_toss_yelw_before_mid;
const struct MidiInfo s_toss_yelw_beforeMidiInfo = {
    /* ROM Address */        &s_toss_yelw_before_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_beforeMidiName,
    /* IRAM Channel Index */ 1354,
};

extern const u32 s_toss_yelw_break_mid;
const struct MidiInfo s_toss_yelw_breakMidiInfo = {
    /* ROM Address */        &s_toss_yelw_break_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         26,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_yelw_breakMidiName,
    /* IRAM Channel Index */ 1355,
};

extern const u32 s_toss_ball_red_mid;
const struct MidiInfo s_toss_ball_redMidiInfo = {
    /* ROM Address */        &s_toss_ball_red_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_ball_redMidiName,
    /* IRAM Channel Index */ 1356,
};

extern const u32 s_toss_ball_blue_mid;
const struct MidiInfo s_toss_ball_blueMidiInfo = {
    /* ROM Address */        &s_toss_ball_blue_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_ball_blueMidiName,
    /* IRAM Channel Index */ 1357,
};

extern const u32 s_toss_ball_yelw_mid;
const struct MidiInfo s_toss_ball_yelwMidiInfo = {
    /* ROM Address */        &s_toss_ball_yelw_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_ball_yelwMidiName,
    /* IRAM Channel Index */ 1358,
};

extern const u32 s_toss_ball_haretu_mid;
const struct MidiInfo s_toss_ball_haretuMidiInfo = {
    /* ROM Address */        &s_toss_ball_haretu_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         26,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_toss_ball_haretuMidiName,
    /* IRAM Channel Index */ 1359,
};

extern const u32 s_shuji_ho_mid;
const struct MidiInfo s_shuji_hoMidiInfo = {
    /* ROM Address */        &s_shuji_ho_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         58,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shuji_hoMidiName,
    /* IRAM Channel Index */ 1376,
};

extern const u32 s_shuji_tame_mid;
const struct MidiInfo s_shuji_tameMidiInfo = {
    /* ROM Address */        &s_shuji_tame_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         58,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_shuji_tameMidiName,
    /* IRAM Channel Index */ 1377,
};

extern const u32 s_iai_yarare_mid;
const struct MidiInfo s_iai_yarareMidiInfo = {
    /* ROM Address */        &s_iai_yarare_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_yarareMidiName,
    /* IRAM Channel Index */ 1378,
};

extern const u32 s_iai_miss_mid;
const struct MidiInfo s_iai_missMidiInfo = {
    /* ROM Address */        &s_iai_miss_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         41,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_missMidiName,
    /* IRAM Channel Index */ 1379,
};

extern const u32 s_mario1_mid;
const struct MidiInfo s_mario1MidiInfo = {
    /* ROM Address */        &s_mario1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mario1MidiName,
    /* IRAM Channel Index */ 1380,
};

extern const u32 s_mario2_mid;
const struct MidiInfo s_mario2MidiInfo = {
    /* ROM Address */        &s_mario2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mario2MidiName,
    /* IRAM Channel Index */ 1381,
};

extern const u32 s_mario1_2_mid;
const struct MidiInfo s_mario1_2MidiInfo = {
    /* ROM Address */        &s_mario1_2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mario1_2MidiName,
    /* IRAM Channel Index */ 1382,
};

extern const u32 s_mario2_4_mid;
const struct MidiInfo s_mario2_4MidiInfo = {
    /* ROM Address */        &s_mario2_4_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mario2_4MidiName,
    /* IRAM Channel Index */ 1383,
};

extern const u32 s_mario_melo1_mid;
const struct MidiInfo s_mario_melo1MidiInfo = {
    /* ROM Address */        &s_mario_melo1_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         28,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mario_melo1MidiName,
    /* IRAM Channel Index */ 1384,
};

extern const u32 s_mario_melo2_mid;
const struct MidiInfo s_mario_melo2MidiInfo = {
    /* ROM Address */        &s_mario_melo2_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         28,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mario_melo2MidiName,
    /* IRAM Channel Index */ 1385,
};

extern const u32 s_sword_orya_mid;
const struct MidiInfo s_sword_oryaMidiInfo = {
    /* ROM Address */        &s_sword_orya_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_sword_oryaMidiName,
    /* IRAM Channel Index */ 1386,
};

extern const u32 s_furi_mid;
const struct MidiInfo s_furiMidiInfo = {
    /* ROM Address */        &s_furi_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_furiMidiName,
    /* IRAM Channel Index */ 1387,
};

extern const u32 s_sword_hi_mid;
const struct MidiInfo s_sword_hiMidiInfo = {
    /* ROM Address */        &s_sword_hi_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_sword_hiMidiName,
    /* IRAM Channel Index */ 1388,
};

extern const u32 s_sword_ho_mid;
const struct MidiInfo s_sword_hoMidiInfo = {
    /* ROM Address */        &s_sword_ho_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             105,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_sword_hoMidiName,
    /* IRAM Channel Index */ 1389,
};

extern const u32 s_iai_result_mid;
const struct MidiInfo s_iai_resultMidiInfo = {
    /* ROM Address */        &s_iai_result_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_resultMidiName,
    /* IRAM Channel Index */ 1390,
};

extern const u32 s_iai_bgm1_mid;
const struct MidiInfo s_iai_bgm1MidiInfo = {
    /* ROM Address */        &s_iai_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_bgm1MidiName,
    /* IRAM Channel Index */ 1391,
};

extern const u32 s_iai_bgm2_mid;
const struct MidiInfo s_iai_bgm2MidiInfo = {
    /* ROM Address */        &s_iai_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_bgm2MidiName,
    /* IRAM Channel Index */ 1392,
};

extern const u32 s_iai_bgm3_mid;
const struct MidiInfo s_iai_bgm3MidiInfo = {
    /* ROM Address */        &s_iai_bgm3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_bgm3MidiName,
    /* IRAM Channel Index */ 1393,
};

extern const u32 s_iai_frase1a_mid;
const struct MidiInfo s_iai_frase1aMidiInfo = {
    /* ROM Address */        &s_iai_frase1a_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_frase1aMidiName,
    /* IRAM Channel Index */ 1394,
};

extern const u32 s_iai_frase2a_mid;
const struct MidiInfo s_iai_frase2aMidiInfo = {
    /* ROM Address */        &s_iai_frase2a_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_frase2aMidiName,
    /* IRAM Channel Index */ 1395,
};

extern const u32 s_iai_frase3a_mid;
const struct MidiInfo s_iai_frase3aMidiInfo = {
    /* ROM Address */        &s_iai_frase3a_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_frase3aMidiName,
    /* IRAM Channel Index */ 1396,
};

extern const u32 s_iai_frase1b_mid;
const struct MidiInfo s_iai_frase1bMidiInfo = {
    /* ROM Address */        &s_iai_frase1b_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_frase1bMidiName,
    /* IRAM Channel Index */ 1397,
};

extern const u32 s_iai_frase2b_mid;
const struct MidiInfo s_iai_frase2bMidiInfo = {
    /* ROM Address */        &s_iai_frase2b_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_frase2bMidiName,
    /* IRAM Channel Index */ 1398,
};

extern const u32 s_iai_frase3b_mid;
const struct MidiInfo s_iai_frase3bMidiInfo = {
    /* ROM Address */        &s_iai_frase3b_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_frase3bMidiName,
    /* IRAM Channel Index */ 1399,
};

extern const u32 s_ninja_wind_mid;
const struct MidiInfo s_ninja_windMidiInfo = {
    /* ROM Address */        &s_ninja_wind_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         28,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_windMidiName,
    /* IRAM Channel Index */ 1400,
};

extern const u32 s_ninja_chakuti_mid;
const struct MidiInfo s_ninja_chakutiMidiInfo = {
    /* ROM Address */        &s_ninja_chakuti_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         19,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_chakutiMidiName,
    /* IRAM Channel Index */ 1401,
};

extern const u32 s_ninja_kamae_mid;
const struct MidiInfo s_ninja_kamaeMidiInfo = {
    /* ROM Address */        &s_ninja_kamae_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_kamaeMidiName,
    /* IRAM Channel Index */ 1402,
};

extern const u32 s_ninja_furu_mid;
const struct MidiInfo s_ninja_furuMidiInfo = {
    /* ROM Address */        &s_ninja_furu_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         19,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_furuMidiName,
    /* IRAM Channel Index */ 1403,
};

extern const u32 s_ninja_kin_mid;
const struct MidiInfo s_ninja_kinMidiInfo = {
    /* ROM Address */        &s_ninja_kin_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         28,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_kinMidiName,
    /* IRAM Channel Index */ 1404,
};

extern const u32 s_ninja_hit_mid;
const struct MidiInfo s_ninja_hitMidiInfo = {
    /* ROM Address */        &s_ninja_hit_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_hitMidiName,
    /* IRAM Channel Index */ 1405,
};

extern const u32 s_ninja_yumi_mid;
const struct MidiInfo s_ninja_yumiMidiInfo = {
    /* ROM Address */        &s_ninja_yumi_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_yumiMidiName,
    /* IRAM Channel Index */ 1406,
};

extern const u32 s_ninja_kabe_mid;
const struct MidiInfo s_ninja_kabeMidiInfo = {
    /* ROM Address */        &s_ninja_kabe_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         41,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_kabeMidiName,
    /* IRAM Channel Index */ 1407,
};

extern const u32 s_ninja_bgm1_mid;
const struct MidiInfo s_ninja_bgm1MidiInfo = {
    /* ROM Address */        &s_ninja_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_bgm1MidiName,
    /* IRAM Channel Index */ 1408,
};

extern const u32 s_ninja_bgm2_mid;
const struct MidiInfo s_ninja_bgm2MidiInfo = {
    /* ROM Address */        &s_ninja_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ninja_bgm2MidiName,
    /* IRAM Channel Index */ 1409,
};

extern const u32 s_rat_bgm1_mid;
const struct MidiInfo s_rat_bgm1MidiInfo = {
    /* ROM Address */        &s_rat_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_bgm1MidiName,
    /* IRAM Channel Index */ 1420,
};

extern const u32 s_rat_bgm2_mid;
const struct MidiInfo s_rat_bgm2MidiInfo = {
    /* ROM Address */        &s_rat_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_bgm2MidiName,
    /* IRAM Channel Index */ 1421,
};

extern const u32 s_rat_cat_mid;
const struct MidiInfo s_rat_catMidiInfo = {
    /* ROM Address */        &s_rat_cat_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_catMidiName,
    /* IRAM Channel Index */ 1422,
};

extern const u32 s_rat_crush_R_mid;
const struct MidiInfo s_rat_crush_RMidiInfo = {
    /* ROM Address */        &s_rat_crush_R_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_crush_RMidiName,
    /* IRAM Channel Index */ 1423,
};

extern const u32 s_rat_crush_L_mid;
const struct MidiInfo s_rat_crush_LMidiInfo = {
    /* ROM Address */        &s_rat_crush_L_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_crush_LMidiName,
    /* IRAM Channel Index */ 1424,
};

extern const u32 s_rat_signal_mid;
const struct MidiInfo s_rat_signalMidiInfo = {
    /* ROM Address */        &s_rat_signal_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_signalMidiName,
    /* IRAM Channel Index */ 1425,
};

extern const u32 s_rat_dash_mid;
const struct MidiInfo s_rat_dashMidiInfo = {
    /* ROM Address */        &s_rat_dash_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_dashMidiName,
    /* IRAM Channel Index */ 1426,
};

extern const u32 s_rat_stop_mid;
const struct MidiInfo s_rat_stopMidiInfo = {
    /* ROM Address */        &s_rat_stop_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_stopMidiName,
    /* IRAM Channel Index */ 1427,
};

extern const u32 s_tebyoushi_pati_mid;
const struct MidiInfo s_tebyoushi_patiMidiInfo = {
    /* ROM Address */        &s_tebyoushi_pati_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         24,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tebyoushi_patiMidiName,
    /* IRAM Channel Index */ 1440,
};

extern const u32 s_bon_dondon1_mid;
const struct MidiInfo s_bon_dondon1MidiInfo = {
    /* ROM Address */        &s_bon_dondon1_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         70,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_bon_dondon1MidiName,
    /* IRAM Channel Index */ 1450,
};

extern const u32 s_bon_dondon1_1_mid;
const struct MidiInfo s_bon_dondon1_1MidiInfo = {
    /* ROM Address */        &s_bon_dondon1_1_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         70,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_bon_dondon1_1MidiName,
    /* IRAM Channel Index */ 1451,
};

extern const u32 s_bon_dondon1_2_mid;
const struct MidiInfo s_bon_dondon1_2MidiInfo = {
    /* ROM Address */        &s_bon_dondon1_2_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         70,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_bon_dondon1_2MidiName,
    /* IRAM Channel Index */ 1452,
};

extern const u32 s_bon_dondon2_mid;
const struct MidiInfo s_bon_dondon2MidiInfo = {
    /* ROM Address */        &s_bon_dondon2_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         70,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_bon_dondon2MidiName,
    /* IRAM Channel Index */ 1453,
};

extern const u32 s_hanabi_hyu_mid;
const struct MidiInfo s_hanabi_hyuMidiInfo = {
    /* ROM Address */        &s_hanabi_hyu_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         24,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_hyuMidiName,
    /* IRAM Channel Index */ 1461,
};

extern const u32 s_hanabi_don_mid;
const struct MidiInfo s_hanabi_donMidiInfo = {
    /* ROM Address */        &s_hanabi_don_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         24,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_donMidiName,
    /* IRAM Channel Index */ 1462,
};

extern const u32 s_hanabi_pon_mid;
const struct MidiInfo s_hanabi_ponMidiInfo = {
    /* ROM Address */        &s_hanabi_pon_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         24,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_ponMidiName,
    /* IRAM Channel Index */ 1465,
};

extern const u32 s_hanabi_utiage_mid;
const struct MidiInfo s_hanabi_utiageMidiInfo = {
    /* ROM Address */        &s_hanabi_utiage_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         24,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_utiageMidiName,
    /* IRAM Channel Index */ 1466,
};

extern const u32 s_hanabi_utiage_v_mid;
const struct MidiInfo s_hanabi_utiage_vMidiInfo = {
    /* ROM Address */        &s_hanabi_utiage_v_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         24,
    /* Volume */             75,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_utiage_vMidiName,
    /* IRAM Channel Index */ 1467,
};

extern const u32 s_hanabi_bgm_mid;
const struct MidiInfo s_hanabi_bgmMidiInfo = {
    /* ROM Address */        &s_hanabi_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_hanabi_bgmMidiName,
    /* IRAM Channel Index */ 1468,
};

extern const u32 s_hanabi_1_mid;
const struct MidiInfo s_hanabi_1MidiInfo = {
    /* ROM Address */        &s_hanabi_1_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_1MidiName,
    /* IRAM Channel Index */ 1469,
};

extern const u32 s_hanabi_2_mid;
const struct MidiInfo s_hanabi_2MidiInfo = {
    /* ROM Address */        &s_hanabi_2_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_2MidiName,
    /* IRAM Channel Index */ 1470,
};

extern const u32 s_hanabi_3_mid;
const struct MidiInfo s_hanabi_3MidiInfo = {
    /* ROM Address */        &s_hanabi_3_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_3MidiName,
    /* IRAM Channel Index */ 1471,
};

extern const u32 s_hanabi_hai_mid;
const struct MidiInfo s_hanabi_haiMidiInfo = {
    /* ROM Address */        &s_hanabi_hai_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_haiMidiName,
    /* IRAM Channel Index */ 1472,
};

extern const u32 s_hanabi_ah_mid;
const struct MidiInfo s_hanabi_ahMidiInfo = {
    /* ROM Address */        &s_hanabi_ah_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_ahMidiName,
    /* IRAM Channel Index */ 1473,
};

extern const u32 s_hanabi_wish1_mid;
const struct MidiInfo s_hanabi_wish1MidiInfo = {
    /* ROM Address */        &s_hanabi_wish1_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_wish1MidiName,
    /* IRAM Channel Index */ 1474,
};

extern const u32 s_hanabi_wish2_mid;
const struct MidiInfo s_hanabi_wish2MidiInfo = {
    /* ROM Address */        &s_hanabi_wish2_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_wish2MidiName,
    /* IRAM Channel Index */ 1475,
};

extern const u32 s_hanabi_wish3_mid;
const struct MidiInfo s_hanabi_wish3MidiInfo = {
    /* ROM Address */        &s_hanabi_wish3_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_wish3MidiName,
    /* IRAM Channel Index */ 1476,
};

extern const u32 s_hanabi_wish4_mid;
const struct MidiInfo s_hanabi_wish4MidiInfo = {
    /* ROM Address */        &s_hanabi_wish4_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         24,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_hanabi_wish4MidiName,
    /* IRAM Channel Index */ 1477,
};

extern const u32 s_intro_stick_mid;
const struct MidiInfo s_intro_stickMidiInfo = {
    /* ROM Address */        &s_intro_stick_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_stickMidiName,
    /* IRAM Channel Index */ 1480,
};

extern const u32 s_intro_a_mid;
const struct MidiInfo s_intro_aMidiInfo = {
    /* ROM Address */        &s_intro_a_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             60,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_aMidiName,
    /* IRAM Channel Index */ 1481,
};

extern const u32 s_intro_one_mid;
const struct MidiInfo s_intro_oneMidiInfo = {
    /* ROM Address */        &s_intro_one_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             75,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_oneMidiName,
    /* IRAM Channel Index */ 1482,
};

extern const u32 s_intro_two_mid;
const struct MidiInfo s_intro_twoMidiInfo = {
    /* ROM Address */        &s_intro_two_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_twoMidiName,
    /* IRAM Channel Index */ 1483,
};

extern const u32 s_intro_three_mid;
const struct MidiInfo s_intro_threeMidiInfo = {
    /* ROM Address */        &s_intro_three_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_threeMidiName,
    /* IRAM Channel Index */ 1484,
};

extern const u32 s_intro_four_mid;
const struct MidiInfo s_intro_fourMidiInfo = {
    /* ROM Address */        &s_intro_four_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_fourMidiName,
    /* IRAM Channel Index */ 1485,
};

extern const u32 s_intro_uh_mid;
const struct MidiInfo s_intro_uhMidiInfo = {
    /* ROM Address */        &s_intro_uh_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_uhMidiName,
    /* IRAM Channel Index */ 1486,
};

extern const u32 s_intro_comeon_mid;
const struct MidiInfo s_intro_comeonMidiInfo = {
    /* ROM Address */        &s_intro_comeon_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         25,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_comeonMidiName,
    /* IRAM Channel Index */ 1487,
};

extern const u32 s_intro_pat1_mid;
const struct MidiInfo s_intro_pat1MidiInfo = {
    /* ROM Address */        &s_intro_pat1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_pat1MidiName,
    /* IRAM Channel Index */ 1488,
};

extern const u32 s_intro_pat2_mid;
const struct MidiInfo s_intro_pat2MidiInfo = {
    /* ROM Address */        &s_intro_pat2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_pat2MidiName,
    /* IRAM Channel Index */ 1489,
};

extern const u32 s_intro_pat3_mid;
const struct MidiInfo s_intro_pat3MidiInfo = {
    /* ROM Address */        &s_intro_pat3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_intro_pat3MidiName,
    /* IRAM Channel Index */ 1490,
};

extern const u32 s_ghost_walk_mid;
const struct MidiInfo s_ghost_walkMidiInfo = {
    /* ROM Address */        &s_ghost_walk_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_walkMidiName,
    /* IRAM Channel Index */ 1500,
};

extern const u32 s_ghost_just_hit_mid;
const struct MidiInfo s_ghost_just_hitMidiInfo = {
    /* ROM Address */        &s_ghost_just_hit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_just_hitMidiName,
    /* IRAM Channel Index */ 1501,
};

extern const u32 s_ghost_miss_hit_mid;
const struct MidiInfo s_ghost_miss_hitMidiInfo = {
    /* ROM Address */        &s_ghost_miss_hit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_miss_hitMidiName,
    /* IRAM Channel Index */ 1502,
};

extern const u32 s_ghost_dash_mid;
const struct MidiInfo s_ghost_dashMidiInfo = {
    /* ROM Address */        &s_ghost_dash_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_dashMidiName,
    /* IRAM Channel Index */ 1503,
};

extern const u32 s_ghost_warai_mid;
const struct MidiInfo s_ghost_waraiMidiInfo = {
    /* ROM Address */        &s_ghost_warai_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_waraiMidiName,
    /* IRAM Channel Index */ 1504,
};

extern const u32 s_ghost_gosha_mid;
const struct MidiInfo s_ghost_goshaMidiInfo = {
    /* ROM Address */        &s_ghost_gosha_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         50,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_goshaMidiName,
    /* IRAM Channel Index */ 1505,
};

extern const u32 s_ghost_rain_mid;
const struct MidiInfo s_ghost_rainMidiInfo = {
    /* ROM Address */        &s_ghost_rain_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         50,
    /* Volume */             30,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_ghost_rainMidiName,
    /* IRAM Channel Index */ 1506,
};

extern const u32 s_space_ikeo_turn_mid;
const struct MidiInfo s_space_ikeo_turnMidiInfo = {
    /* ROM Address */        &s_space_ikeo_turn_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             115,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_turnMidiName,
    /* IRAM Channel Index */ 1520,
};

extern const u32 s_space_ikeo_right_mid;
const struct MidiInfo s_space_ikeo_rightMidiInfo = {
    /* ROM Address */        &s_space_ikeo_right_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             115,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_rightMidiName,
    /* IRAM Channel Index */ 1521,
};

extern const u32 s_space_ikeo_lets_mid;
const struct MidiInfo s_space_ikeo_letsMidiInfo = {
    /* ROM Address */        &s_space_ikeo_lets_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_letsMidiName,
    /* IRAM Channel Index */ 1522,
};

extern const u32 s_space_ikeo_sit_mid;
const struct MidiInfo s_space_ikeo_sitMidiInfo = {
    /* ROM Address */        &s_space_ikeo_sit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_sitMidiName,
    /* IRAM Channel Index */ 1523,
};

extern const u32 s_space_ikeo_down_mid;
const struct MidiInfo s_space_ikeo_downMidiInfo = {
    /* ROM Address */        &s_space_ikeo_down_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_downMidiName,
    /* IRAM Channel Index */ 1524,
};

extern const u32 s_space_ikeo_pa_mid;
const struct MidiInfo s_space_ikeo_paMidiInfo = {
    /* ROM Address */        &s_space_ikeo_pa_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_paMidiName,
    /* IRAM Channel Index */ 1525,
};

extern const u32 s_space_ikeo_punch_mid;
const struct MidiInfo s_space_ikeo_punchMidiInfo = {
    /* ROM Address */        &s_space_ikeo_punch_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_punchMidiName,
    /* IRAM Channel Index */ 1526,
};

extern const u32 s_space_kou_turn_mid;
const struct MidiInfo s_space_kou_turnMidiInfo = {
    /* ROM Address */        &s_space_kou_turn_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_turnMidiName,
    /* IRAM Channel Index */ 1527,
};

extern const u32 s_space_kou_right_mid;
const struct MidiInfo s_space_kou_rightMidiInfo = {
    /* ROM Address */        &s_space_kou_right_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_rightMidiName,
    /* IRAM Channel Index */ 1528,
};

extern const u32 s_space_kou_lets_mid;
const struct MidiInfo s_space_kou_letsMidiInfo = {
    /* ROM Address */        &s_space_kou_lets_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_letsMidiName,
    /* IRAM Channel Index */ 1529,
};

extern const u32 s_space_kou_sit_mid;
const struct MidiInfo s_space_kou_sitMidiInfo = {
    /* ROM Address */        &s_space_kou_sit_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_sitMidiName,
    /* IRAM Channel Index */ 1530,
};

extern const u32 s_space_kou_down_mid;
const struct MidiInfo s_space_kou_downMidiInfo = {
    /* ROM Address */        &s_space_kou_down_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             127,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_downMidiName,
    /* IRAM Channel Index */ 1531,
};

extern const u32 s_space_kou_pa_mid;
const struct MidiInfo s_space_kou_paMidiInfo = {
    /* ROM Address */        &s_space_kou_pa_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_paMidiName,
    /* IRAM Channel Index */ 1532,
};

extern const u32 s_space_kou_punch_mid;
const struct MidiInfo s_space_kou_punchMidiInfo = {
    /* ROM Address */        &s_space_kou_punch_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_punchMidiName,
    /* IRAM Channel Index */ 1533,
};

extern const u32 s_space_miss_mid;
const struct MidiInfo s_space_missMidiInfo = {
    /* ROM Address */        &s_space_miss_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         50,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_missMidiName,
    /* IRAM Channel Index */ 1534,
};

extern const u32 s_space_ikeo_turn_swing_mid;
const struct MidiInfo s_space_ikeo_turn_swingMidiInfo = {
    /* ROM Address */        &s_space_ikeo_turn_swing_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             115,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_ikeo_turn_swingMidiName,
    /* IRAM Channel Index */ 1535,
};

extern const u32 s_space_kou_turn_swing_mid;
const struct MidiInfo s_space_kou_turn_swingMidiInfo = {
    /* ROM Address */        &s_space_kou_turn_swing_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         29,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_space_kou_turn_swingMidiName,
    /* IRAM Channel Index */ 1536,
};

extern const u32 s_guntai1_mid;
const struct MidiInfo s_guntai1MidiInfo = {
    /* ROM Address */        &s_guntai1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         21,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai1MidiName,
    /* IRAM Channel Index */ 1540,
};

extern const u32 s_guntai2_mid;
const struct MidiInfo s_guntai2MidiInfo = {
    /* ROM Address */        &s_guntai2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         21,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai2MidiName,
    /* IRAM Channel Index */ 1541,
};

extern const u32 s_guntai_foot1_mid;
const struct MidiInfo s_guntai_foot1MidiInfo = {
    /* ROM Address */        &s_guntai_foot1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         21,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_foot1MidiName,
    /* IRAM Channel Index */ 1542,
};

extern const u32 s_guntai_foot2_mid;
const struct MidiInfo s_guntai_foot2MidiInfo = {
    /* ROM Address */        &s_guntai_foot2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         21,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_foot2MidiName,
    /* IRAM Channel Index */ 1543,
};

extern const u32 s_guntai_v_zentai1_mid;
const struct MidiInfo s_guntai_v_zentai1MidiInfo = {
    /* ROM Address */        &s_guntai_v_zentai1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_zentai1MidiName,
    /* IRAM Channel Index */ 1544,
};

extern const u32 s_guntai_v_zentai2_mid;
const struct MidiInfo s_guntai_v_zentai2MidiInfo = {
    /* ROM Address */        &s_guntai_v_zentai2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_zentai2MidiName,
    /* IRAM Channel Index */ 1545,
};

extern const u32 s_guntai_v_susume_mid;
const struct MidiInfo s_guntai_v_susumeMidiInfo = {
    /* ROM Address */        &s_guntai_v_susume_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_susumeMidiName,
    /* IRAM Channel Index */ 1546,
};

extern const u32 s_guntai_v_tomare_mid;
const struct MidiInfo s_guntai_v_tomareMidiInfo = {
    /* ROM Address */        &s_guntai_v_tomare_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_tomareMidiName,
    /* IRAM Channel Index */ 1547,
};

extern const u32 s_guntai_v_migi_muke1_mid;
const struct MidiInfo s_guntai_v_migi_muke1MidiInfo = {
    /* ROM Address */        &s_guntai_v_migi_muke1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             105,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_migi_muke1MidiName,
    /* IRAM Channel Index */ 1548,
};

extern const u32 s_guntai_v_migi_muke2_mid;
const struct MidiInfo s_guntai_v_migi_muke2MidiInfo = {
    /* ROM Address */        &s_guntai_v_migi_muke2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_migi_muke2MidiName,
    /* IRAM Channel Index */ 1549,
};

extern const u32 s_guntai_v_hidari_muke1_mid;
const struct MidiInfo s_guntai_v_hidari_muke1MidiInfo = {
    /* ROM Address */        &s_guntai_v_hidari_muke1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_hidari_muke1MidiName,
    /* IRAM Channel Index */ 1550,
};

extern const u32 s_guntai_v_hidari_muke2_mid;
const struct MidiInfo s_guntai_v_hidari_muke2MidiInfo = {
    /* ROM Address */        &s_guntai_v_hidari_muke2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_hidari_muke2MidiName,
    /* IRAM Channel Index */ 1551,
};

extern const u32 s_guntai_v_migi_mid;
const struct MidiInfo s_guntai_v_migiMidiInfo = {
    /* ROM Address */        &s_guntai_v_migi_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_migiMidiName,
    /* IRAM Channel Index */ 1552,
};

extern const u32 s_guntai_v_hidari_mid;
const struct MidiInfo s_guntai_v_hidariMidiInfo = {
    /* ROM Address */        &s_guntai_v_hidari_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         21,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_hidariMidiName,
    /* IRAM Channel Index */ 1553,
};

extern const u32 s_guntai_v_yoh_mid;
const struct MidiInfo s_guntai_v_yohMidiInfo = {
    /* ROM Address */        &s_guntai_v_yoh_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         21,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_yohMidiName,
    /* IRAM Channel Index */ 1554,
};

extern const u32 s_guntai_v_es_mid;
const struct MidiInfo s_guntai_v_esMidiInfo = {
    /* ROM Address */        &s_guntai_v_es_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         21,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_esMidiName,
    /* IRAM Channel Index */ 1555,
};

extern const u32 s_guntai_v_ka_mid;
const struct MidiInfo s_guntai_v_kaMidiInfo = {
    /* ROM Address */        &s_guntai_v_ka_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         21,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_v_kaMidiName,
    /* IRAM Channel Index */ 1556,
};

extern const u32 s_guntai_ikari_mid;
const struct MidiInfo s_guntai_ikariMidiInfo = {
    /* ROM Address */        &s_guntai_ikari_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             50,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_guntai_ikariMidiName,
    /* IRAM Channel Index */ 1558,
};

extern const u32 s_block_gotin_mid;
const struct MidiInfo s_block_gotinMidiInfo = {
    /* ROM Address */        &s_block_gotin_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         22,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_block_gotinMidiName,
    /* IRAM Channel Index */ 1560,
};

extern const u32 s_block_hit_mid;
const struct MidiInfo s_block_hitMidiInfo = {
    /* ROM Address */        &s_block_hit_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         22,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_block_hitMidiName,
    /* IRAM Channel Index */ 1561,
};

extern const u32 s_block_walk_mid;
const struct MidiInfo s_block_walkMidiInfo = {
    /* ROM Address */        &s_block_walk_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         27,
    /* Volume */             30,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_block_walkMidiName,
    /* IRAM Channel Index */ 1562,
};

extern const u32 s_kawasemi_bgm_mid;
const struct MidiInfo s_kawasemi_bgmMidiInfo = {
    /* ROM Address */        &s_kawasemi_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         28,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_kawasemi_bgmMidiName,
    /* IRAM Channel Index */ 1565,
};

extern const u32 s_kawasemi_frase_mid;
const struct MidiInfo s_kawasemi_fraseMidiInfo = {
    /* ROM Address */        &s_kawasemi_frase_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         28,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_kawasemi_fraseMidiName,
    /* IRAM Channel Index */ 1566,
};

extern const u32 s_heat_v_jituhane_mid;
const struct MidiInfo s_heat_v_jituhaneMidiInfo = {
    /* ROM Address */        &s_heat_v_jituhane_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_jituhaneMidiName,
    /* IRAM Channel Index */ 1571,
};

extern const u32 s_heat_v_watasine_mid;
const struct MidiInfo s_heat_v_watasineMidiInfo = {
    /* ROM Address */        &s_heat_v_watasine_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_watasineMidiName,
    /* IRAM Channel Index */ 1572,
};

extern const u32 s_heat_v_watasitara_mid;
const struct MidiInfo s_heat_v_watasitaraMidiInfo = {
    /* ROM Address */        &s_heat_v_watasitara_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_watasitaraMidiName,
    /* IRAM Channel Index */ 1573,
};

extern const u32 s_heat_v_anataga_mid;
const struct MidiInfo s_heat_v_anatagaMidiInfo = {
    /* ROM Address */        &s_heat_v_anataga_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_anatagaMidiName,
    /* IRAM Channel Index */ 1574,
};

extern const u32 s_heat_v_anatatara_mid;
const struct MidiInfo s_heat_v_anatataraMidiInfo = {
    /* ROM Address */        &s_heat_v_anatatara_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             117,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_anatataraMidiName,
    /* IRAM Channel Index */ 1575,
};

extern const u32 s_heat_v_kimiga_mid;
const struct MidiInfo s_heat_v_kimigaMidiInfo = {
    /* ROM Address */        &s_heat_v_kimiga_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             117,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_kimigaMidiName,
    /* IRAM Channel Index */ 1576,
};

extern const u32 s_heat_v_doji_mid;
const struct MidiInfo s_heat_v_dojiMidiInfo = {
    /* ROM Address */        &s_heat_v_doji_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_dojiMidiName,
    /* IRAM Channel Index */ 1577,
};

extern const u32 s_heat_v_sugoi_mid;
const struct MidiInfo s_heat_v_sugoiMidiInfo = {
    /* ROM Address */        &s_heat_v_sugoi_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_sugoiMidiName,
    /* IRAM Channel Index */ 1578,
};

extern const u32 s_heat_v_koumietemo_mid;
const struct MidiInfo s_heat_v_koumietemoMidiInfo = {
    /* ROM Address */        &s_heat_v_koumietemo_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_koumietemoMidiName,
    /* IRAM Channel Index */ 1579,
};

extern const u32 s_heat_v_okubyo_mid;
const struct MidiInfo s_heat_v_okubyoMidiInfo = {
    /* ROM Address */        &s_heat_v_okubyo_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_okubyoMidiName,
    /* IRAM Channel Index */ 1580,
};

extern const u32 s_heat_v_majime_mid;
const struct MidiInfo s_heat_v_majimeMidiInfo = {
    /* ROM Address */        &s_heat_v_majime_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_majimeMidiName,
    /* IRAM Channel Index */ 1581,
};

extern const u32 s_heat_v_kouitta_mid;
const struct MidiInfo s_heat_v_kouittaMidiInfo = {
    /* ROM Address */        &s_heat_v_kouitta_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_kouittaMidiName,
    /* IRAM Channel Index */ 1582,
};

extern const u32 s_heat_v_demo_mid;
const struct MidiInfo s_heat_v_demoMidiInfo = {
    /* ROM Address */        &s_heat_v_demo_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_demoMidiName,
    /* IRAM Channel Index */ 1583,
};

extern const u32 s_heat_v_yappari_mid;
const struct MidiInfo s_heat_v_yappariMidiInfo = {
    /* ROM Address */        &s_heat_v_yappari_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_yappariMidiName,
    /* IRAM Channel Index */ 1584,
};

extern const u32 s_heat_v_dakedo_mid;
const struct MidiInfo s_heat_v_dakedoMidiInfo = {
    /* ROM Address */        &s_heat_v_dakedo_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_dakedoMidiName,
    /* IRAM Channel Index */ 1585,
};

extern const u32 s_heat_v_suki_mid;
const struct MidiInfo s_heat_v_sukiMidiInfo = {
    /* ROM Address */        &s_heat_v_suki_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_sukiMidiName,
    /* IRAM Channel Index */ 1586,
};

extern const u32 s_heat_v_kirai_mid;
const struct MidiInfo s_heat_v_kiraiMidiInfo = {
    /* ROM Address */        &s_heat_v_kirai_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_kiraiMidiName,
    /* IRAM Channel Index */ 1587,
};

extern const u32 s_heat_v_seki_mid;
const struct MidiInfo s_heat_v_sekiMidiInfo = {
    /* ROM Address */        &s_heat_v_seki_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         78,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_v_sekiMidiName,
    /* IRAM Channel Index */ 1588,
};

extern const u32 s_heat_machine_bgm_mid;
const struct MidiInfo s_heat_machine_bgmMidiInfo = {
    /* ROM Address */        &s_heat_machine_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         78,
    /* Volume */             40,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_heat_machine_bgmMidiName,
    /* IRAM Channel Index */ 1589,
};

extern const u32 s_metro_tin_mid;
const struct MidiInfo s_metro_tinMidiInfo = {
    /* ROM Address */        &s_metro_tin_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         28,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_metro_tinMidiName,
    /* IRAM Channel Index */ 1600,
};

extern const u32 s_metro_count1_mid;
const struct MidiInfo s_metro_count1MidiInfo = {
    /* ROM Address */        &s_metro_count1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         31,
    /* Volume */             25,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_metro_count1MidiName,
    /* IRAM Channel Index */ 1601,
};

extern const u32 s_metro_count2_mid;
const struct MidiInfo s_metro_count2MidiInfo = {
    /* ROM Address */        &s_metro_count2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         31,
    /* Volume */             25,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_metro_count2MidiName,
    /* IRAM Channel Index */ 1602,
};

extern const u32 s_metro_hato_mid;
const struct MidiInfo s_metro_hatoMidiInfo = {
    /* ROM Address */        &s_metro_hato_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         28,
    /* Volume */             40,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_metro_hatoMidiName,
    /* IRAM Channel Index */ 1603,
};

extern const u32 s_metro_hit_mid;
const struct MidiInfo s_metro_hitMidiInfo = {
    /* ROM Address */        &s_metro_hit_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         28,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_metro_hitMidiName,
    /* IRAM Channel Index */ 1604,
};

extern const u32 s_batter_hit_mid;
const struct MidiInfo s_batter_hitMidiInfo = {
    /* ROM Address */        &s_batter_hit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_batter_hitMidiName,
    /* IRAM Channel Index */ 1620,
};

extern const u32 s_batter_mit_mid;
const struct MidiInfo s_batter_mitMidiInfo = {
    /* ROM Address */        &s_batter_mit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         29,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_batter_mitMidiName,
    /* IRAM Channel Index */ 1621,
};

extern const u32 s_keytoy_count1_mid;
const struct MidiInfo s_keytoy_count1MidiInfo = {
    /* ROM Address */        &s_keytoy_count1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         31,
    /* Volume */             35,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_keytoy_count1MidiName,
    /* IRAM Channel Index */ 1630,
};

extern const u32 s_keytoy_count2_mid;
const struct MidiInfo s_keytoy_count2MidiInfo = {
    /* ROM Address */        &s_keytoy_count2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         31,
    /* Volume */             35,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_keytoy_count2MidiName,
    /* IRAM Channel Index */ 1631,
};

extern const u32 s_mitubati_mid;
const struct MidiInfo s_mitubatiMidiInfo = {
    /* ROM Address */        &s_mitubati_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_mitubatiMidiName,
    /* IRAM Channel Index */ 1640,
};

extern const u32 s_witch_candy_mid;
const struct MidiInfo s_witch_candyMidiInfo = {
    /* ROM Address */        &s_witch_candy_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         19,
    /* Volume */             75,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_witch_candyMidiName,
    /* IRAM Channel Index */ 1641,
};

extern const u32 s_witch_furu_mid;
const struct MidiInfo s_witch_furuMidiInfo = {
    /* ROM Address */        &s_witch_furu_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             40,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_witch_furuMidiName,
    /* IRAM Channel Index */ 1642,
};

extern const u32 s_witch_cake_mid;
const struct MidiInfo s_witch_cakeMidiInfo = {
    /* ROM Address */        &s_witch_cake_mid,
    /* unk4f1 */             0xb,
    /* Sound Bank */         19,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_witch_cakeMidiName,
    /* IRAM Channel Index */ 1643,
};

extern const u32 s_witch_donats_mid;
const struct MidiInfo s_witch_donatsMidiInfo = {
    /* ROM Address */        &s_witch_donats_mid,
    /* unk4f1 */             0xc,
    /* Sound Bank */         19,
    /* Volume */             50,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_witch_donatsMidiName,
    /* IRAM Channel Index */ 1644,
};

extern const u32 s_rabbit_jet_mid;
const struct MidiInfo s_rabbit_jetMidiInfo = {
    /* ROM Address */        &s_rabbit_jet_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         23,
    /* Volume */             30,
    /* unk4f4 */             0x7d,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_jetMidiName,
    /* IRAM Channel Index */ 1660,
};

extern const u32 s_rabbit_break2_mid;
const struct MidiInfo s_rabbit_break2MidiInfo = {
    /* ROM Address */        &s_rabbit_break2_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         23,
    /* Volume */             110,
    /* unk4f4 */             0x7d,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_break2MidiName,
    /* IRAM Channel Index */ 1661,
};

extern const u32 s_rabbit_c7_brass_mid;
const struct MidiInfo s_rabbit_c7_brassMidiInfo = {
    /* ROM Address */        &s_rabbit_c7_brass_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_c7_brassMidiName,
    /* IRAM Channel Index */ 1662,
};

extern const u32 s_rabbit_break_mid;
const struct MidiInfo s_rabbit_breakMidiInfo = {
    /* ROM Address */        &s_rabbit_break_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         23,
    /* Volume */             110,
    /* unk4f4 */             0x7d,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_breakMidiName,
    /* IRAM Channel Index */ 1663,
};

extern const u32 s_rabbit_HC_mid;
const struct MidiInfo s_rabbit_HCMidiInfo = {
    /* ROM Address */        &s_rabbit_HC_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         23,
    /* Volume */             120,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_HCMidiName,
    /* IRAM Channel Index */ 1664,
};

extern const u32 s_rabbit_bgm_mid;
const struct MidiInfo s_rabbit_bgmMidiInfo = {
    /* ROM Address */        &s_rabbit_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x46,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_bgmMidiName,
    /* IRAM Channel Index */ 1665,
};

extern const u32 s_rabbit_c7_mid;
const struct MidiInfo s_rabbit_c7MidiInfo = {
    /* ROM Address */        &s_rabbit_c7_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_c7MidiName,
    /* IRAM Channel Index */ 1666,
};

extern const u32 s_rabbit_f7_mid;
const struct MidiInfo s_rabbit_f7MidiInfo = {
    /* ROM Address */        &s_rabbit_f7_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_f7MidiName,
    /* IRAM Channel Index */ 1667,
};

extern const u32 s_rabbit_g7f7_1_mid;
const struct MidiInfo s_rabbit_g7f7_1MidiInfo = {
    /* ROM Address */        &s_rabbit_g7f7_1_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_g7f7_1MidiName,
    /* IRAM Channel Index */ 1668,
};

extern const u32 s_rabbit_g7f7_2_mid;
const struct MidiInfo s_rabbit_g7f7_2MidiInfo = {
    /* ROM Address */        &s_rabbit_g7f7_2_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_g7f7_2MidiName,
    /* IRAM Channel Index */ 1669,
};

extern const u32 s_rabbit_c7g7_mid;
const struct MidiInfo s_rabbit_c7g7MidiInfo = {
    /* ROM Address */        &s_rabbit_c7g7_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_c7g7MidiName,
    /* IRAM Channel Index */ 1670,
};

extern const u32 s_rabbit_fill_1_mid;
const struct MidiInfo s_rabbit_fill_1MidiInfo = {
    /* ROM Address */        &s_rabbit_fill_1_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         23,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_fill_1MidiName,
    /* IRAM Channel Index */ 1671,
};

extern const u32 s_rabbit_fill_2_mid;
const struct MidiInfo s_rabbit_fill_2MidiInfo = {
    /* ROM Address */        &s_rabbit_fill_2_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         23,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_fill_2MidiName,
    /* IRAM Channel Index */ 1672,
};

extern const u32 s_rabbit_fill_3_mid;
const struct MidiInfo s_rabbit_fill_3MidiInfo = {
    /* ROM Address */        &s_rabbit_fill_3_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         23,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_fill_3MidiName,
    /* IRAM Channel Index */ 1673,
};

extern const u32 s_rabbit_fill_4_mid;
const struct MidiInfo s_rabbit_fill_4MidiInfo = {
    /* ROM Address */        &s_rabbit_fill_4_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         23,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_fill_4MidiName,
    /* IRAM Channel Index */ 1674,
};

extern const u32 s_rabbit_atama_mid;
const struct MidiInfo s_rabbit_atamaMidiInfo = {
    /* ROM Address */        &s_rabbit_atama_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         23,
    /* Volume */             127,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_atamaMidiName,
    /* IRAM Channel Index */ 1675,
};

extern const u32 s_rabbit_moon_mid;
const struct MidiInfo s_rabbit_moonMidiInfo = {
    /* ROM Address */        &s_rabbit_moon_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         27,
    /* Volume */             127,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_moonMidiName,
    /* IRAM Channel Index */ 1676,
};

extern const u32 s_tap_monky1_mid;
const struct MidiInfo s_tap_monky1MidiInfo = {
    /* ROM Address */        &s_tap_monky1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         22,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_monky1MidiName,
    /* IRAM Channel Index */ 1680,
};

extern const u32 s_tap_monky2_mid;
const struct MidiInfo s_tap_monky2MidiInfo = {
    /* ROM Address */        &s_tap_monky2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         22,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_monky2MidiName,
    /* IRAM Channel Index */ 1681,
};

extern const u32 s_tap_monky3_1_mid;
const struct MidiInfo s_tap_monky3_1MidiInfo = {
    /* ROM Address */        &s_tap_monky3_1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         22,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_monky3_1MidiName,
    /* IRAM Channel Index */ 1682,
};

extern const u32 s_tap_monky3_2_mid;
const struct MidiInfo s_tap_monky3_2MidiInfo = {
    /* ROM Address */        &s_tap_monky3_2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         22,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_monky3_2MidiName,
    /* IRAM Channel Index */ 1683,
};

extern const u32 s_tap_monky4_mid;
const struct MidiInfo s_tap_monky4MidiInfo = {
    /* ROM Address */        &s_tap_monky4_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         22,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_monky4MidiName,
    /* IRAM Channel Index */ 1684,
};

extern const u32 s_tap_kick_monky_mid;
const struct MidiInfo s_tap_kick_monkyMidiInfo = {
    /* ROM Address */        &s_tap_kick_monky_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         19,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_kick_monkyMidiName,
    /* IRAM Channel Index */ 1685,
};

extern const u32 s_tap_kick_lady_mid;
const struct MidiInfo s_tap_kick_ladyMidiInfo = {
    /* ROM Address */        &s_tap_kick_lady_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_tap_kick_ladyMidiName,
    /* IRAM Channel Index */ 1686,
};

extern const u32 s_uma_walk1_mid;
const struct MidiInfo s_uma_walk1MidiInfo = {
    /* ROM Address */        &s_uma_walk1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk1MidiName,
    /* IRAM Channel Index */ 1700,
};

extern const u32 s_uma_walk2_mid;
const struct MidiInfo s_uma_walk2MidiInfo = {
    /* ROM Address */        &s_uma_walk2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk2MidiName,
    /* IRAM Channel Index */ 1701,
};

extern const u32 s_uma_walk3_mid;
const struct MidiInfo s_uma_walk3MidiInfo = {
    /* ROM Address */        &s_uma_walk3_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk3MidiName,
    /* IRAM Channel Index */ 1702,
};

extern const u32 s_uma_walk4_mid;
const struct MidiInfo s_uma_walk4MidiInfo = {
    /* ROM Address */        &s_uma_walk4_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk4MidiName,
    /* IRAM Channel Index */ 1703,
};

extern const u32 s_uma_trot1_mid;
const struct MidiInfo s_uma_trot1MidiInfo = {
    /* ROM Address */        &s_uma_trot1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_trot1MidiName,
    /* IRAM Channel Index */ 1704,
};

extern const u32 s_uma_trot2_mid;
const struct MidiInfo s_uma_trot2MidiInfo = {
    /* ROM Address */        &s_uma_trot2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_trot2MidiName,
    /* IRAM Channel Index */ 1705,
};

extern const u32 s_uma_canter1_mid;
const struct MidiInfo s_uma_canter1MidiInfo = {
    /* ROM Address */        &s_uma_canter1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_canter1MidiName,
    /* IRAM Channel Index */ 1706,
};

extern const u32 s_uma_canter2_mid;
const struct MidiInfo s_uma_canter2MidiInfo = {
    /* ROM Address */        &s_uma_canter2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_canter2MidiName,
    /* IRAM Channel Index */ 1707,
};

extern const u32 s_uma_canter3_mid;
const struct MidiInfo s_uma_canter3MidiInfo = {
    /* ROM Address */        &s_uma_canter3_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_canter3MidiName,
    /* IRAM Channel Index */ 1708,
};

extern const u32 s_uma_galop1_mid;
const struct MidiInfo s_uma_galop1MidiInfo = {
    /* ROM Address */        &s_uma_galop1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop1MidiName,
    /* IRAM Channel Index */ 1709,
};

extern const u32 s_uma_galop2_mid;
const struct MidiInfo s_uma_galop2MidiInfo = {
    /* ROM Address */        &s_uma_galop2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop2MidiName,
    /* IRAM Channel Index */ 1710,
};

extern const u32 s_uma_galop3_mid;
const struct MidiInfo s_uma_galop3MidiInfo = {
    /* ROM Address */        &s_uma_galop3_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop3MidiName,
    /* IRAM Channel Index */ 1711,
};

extern const u32 s_uma_galop4_mid;
const struct MidiInfo s_uma_galop4MidiInfo = {
    /* ROM Address */        &s_uma_galop4_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop4MidiName,
    /* IRAM Channel Index */ 1712,
};

extern const u32 s_uma_hihin_mid;
const struct MidiInfo s_uma_hihinMidiInfo = {
    /* ROM Address */        &s_uma_hihin_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         20,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_hihinMidiName,
    /* IRAM Channel Index */ 1713,
};

extern const u32 s_uma_bulu_mid;
const struct MidiInfo s_uma_buluMidiInfo = {
    /* ROM Address */        &s_uma_bulu_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         20,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_buluMidiName,
    /* IRAM Channel Index */ 1714,
};

extern const u32 s_uma_hi_muti_mid;
const struct MidiInfo s_uma_hi_mutiMidiInfo = {
    /* ROM Address */        &s_uma_hi_muti_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         20,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_hi_mutiMidiName,
    /* IRAM Channel Index */ 1715,
};

extern const u32 s_uma_ng_mid;
const struct MidiInfo s_uma_ngMidiInfo = {
    /* ROM Address */        &s_uma_ng_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         20,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_ngMidiName,
    /* IRAM Channel Index */ 1716,
};

extern const u32 s_uma_walk1_t_mid;
const struct MidiInfo s_uma_walk1_tMidiInfo = {
    /* ROM Address */        &s_uma_walk1_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk1_tMidiName,
    /* IRAM Channel Index */ 1717,
};

extern const u32 s_uma_walk2_t_mid;
const struct MidiInfo s_uma_walk2_tMidiInfo = {
    /* ROM Address */        &s_uma_walk2_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk2_tMidiName,
    /* IRAM Channel Index */ 1718,
};

extern const u32 s_uma_walk3_t_mid;
const struct MidiInfo s_uma_walk3_tMidiInfo = {
    /* ROM Address */        &s_uma_walk3_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk3_tMidiName,
    /* IRAM Channel Index */ 1719,
};

extern const u32 s_uma_walk4_t_mid;
const struct MidiInfo s_uma_walk4_tMidiInfo = {
    /* ROM Address */        &s_uma_walk4_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_walk4_tMidiName,
    /* IRAM Channel Index */ 1720,
};

extern const u32 s_uma_trot1_t_mid;
const struct MidiInfo s_uma_trot1_tMidiInfo = {
    /* ROM Address */        &s_uma_trot1_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_trot1_tMidiName,
    /* IRAM Channel Index */ 1721,
};

extern const u32 s_uma_trot2_t_mid;
const struct MidiInfo s_uma_trot2_tMidiInfo = {
    /* ROM Address */        &s_uma_trot2_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_trot2_tMidiName,
    /* IRAM Channel Index */ 1722,
};

extern const u32 s_uma_canter1_t_mid;
const struct MidiInfo s_uma_canter1_tMidiInfo = {
    /* ROM Address */        &s_uma_canter1_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_canter1_tMidiName,
    /* IRAM Channel Index */ 1723,
};

extern const u32 s_uma_canter2_t_mid;
const struct MidiInfo s_uma_canter2_tMidiInfo = {
    /* ROM Address */        &s_uma_canter2_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_canter2_tMidiName,
    /* IRAM Channel Index */ 1724,
};

extern const u32 s_uma_canter3_t_mid;
const struct MidiInfo s_uma_canter3_tMidiInfo = {
    /* ROM Address */        &s_uma_canter3_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             64,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_canter3_tMidiName,
    /* IRAM Channel Index */ 1725,
};

extern const u32 s_uma_galop1_t_mid;
const struct MidiInfo s_uma_galop1_tMidiInfo = {
    /* ROM Address */        &s_uma_galop1_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop1_tMidiName,
    /* IRAM Channel Index */ 1726,
};

extern const u32 s_uma_galop2_t_mid;
const struct MidiInfo s_uma_galop2_tMidiInfo = {
    /* ROM Address */        &s_uma_galop2_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop2_tMidiName,
    /* IRAM Channel Index */ 1727,
};

extern const u32 s_uma_galop3_t_mid;
const struct MidiInfo s_uma_galop3_tMidiInfo = {
    /* ROM Address */        &s_uma_galop3_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop3_tMidiName,
    /* IRAM Channel Index */ 1728,
};

extern const u32 s_uma_galop4_t_mid;
const struct MidiInfo s_uma_galop4_tMidiInfo = {
    /* ROM Address */        &s_uma_galop4_t_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         20,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_galop4_tMidiName,
    /* IRAM Channel Index */ 1729,
};

extern const u32 s_uma_bgm1_mid;
const struct MidiInfo s_uma_bgm1MidiInfo = {
    /* ROM Address */        &s_uma_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         20,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_bgm1MidiName,
    /* IRAM Channel Index */ 1730,
};

extern const u32 s_uma_bgm2_mid;
const struct MidiInfo s_uma_bgm2MidiInfo = {
    /* ROM Address */        &s_uma_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         20,
    /* Volume */             95,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_bgm2MidiName,
    /* IRAM Channel Index */ 1731,
};

extern const u32 s_uma_bgm3_mid;
const struct MidiInfo s_uma_bgm3MidiInfo = {
    /* ROM Address */        &s_uma_bgm3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         20,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_bgm3MidiName,
    /* IRAM Channel Index */ 1732,
};

extern const u32 s_uma_bgm4_mid;
const struct MidiInfo s_uma_bgm4MidiInfo = {
    /* ROM Address */        &s_uma_bgm4_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         20,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uma_bgm4MidiName,
    /* IRAM Channel Index */ 1733,
};

extern const u32 s_karate_bgm_mid;
const struct MidiInfo s_karate_bgmMidiInfo = {
    /* ROM Address */        &s_karate_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         18,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_karate_bgmMidiName,
    /* IRAM Channel Index */ 1735,
};

extern const u32 s_karate_fan_mid;
const struct MidiInfo s_karate_fanMidiInfo = {
    /* ROM Address */        &s_karate_fan_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         18,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_karate_fanMidiName,
    /* IRAM Channel Index */ 1736,
};

extern const u32 s_datumo_nuki_mid;
const struct MidiInfo s_datumo_nukiMidiInfo = {
    /* ROM Address */        &s_datumo_nuki_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             115,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_datumo_nukiMidiName,
    /* IRAM Channel Index */ 1737,
};

extern const u32 s_datumo_kegire_mid;
const struct MidiInfo s_datumo_kegireMidiInfo = {
    /* ROM Address */        &s_datumo_kegire_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_datumo_kegireMidiName,
    /* IRAM Channel Index */ 1738,
};

extern const u32 s_datumo_bgm_mid;
const struct MidiInfo s_datumo_bgmMidiInfo = {
    /* ROM Address */        &s_datumo_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         27,
    /* Volume */             127,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_datumo_bgmMidiName,
    /* IRAM Channel Index */ 1739,
};

extern const u32 s_rap_bgm_renshu_mid;
const struct MidiInfo s_rap_bgm_renshuMidiInfo = {
    /* ROM Address */        &s_rap_bgm_renshu_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         32,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_bgm_renshuMidiName,
    /* IRAM Channel Index */ 1749,
};

extern const u32 s_rap_bgm_mid;
const struct MidiInfo s_rap_bgmMidiInfo = {
    /* ROM Address */        &s_rap_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         32,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_bgmMidiName,
    /* IRAM Channel Index */ 1750,
};

extern const u32 s_rap_jazz_bgm_mid;
const struct MidiInfo s_rap_jazz_bgmMidiInfo = {
    /* ROM Address */        &s_rap_jazz_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         32,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_jazz_bgmMidiName,
    /* IRAM Channel Index */ 1751,
};

extern const u32 s_rap_15ji_desuka_mid;
const struct MidiInfo s_rap_15ji_desukaMidiInfo = {
    /* ROM Address */        &s_rap_15ji_desuka_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_15ji_desukaMidiName,
    /* IRAM Channel Index */ 1752,
};

extern const u32 s_rap_oyatu_desuka_mid;
const struct MidiInfo s_rap_oyatu_desukaMidiInfo = {
    /* ROM Address */        &s_rap_oyatu_desuka_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_oyatu_desukaMidiName,
    /* IRAM Channel Index */ 1753,
};

extern const u32 s_rap_honto_desuka_mid;
const struct MidiInfo s_rap_honto_desukaMidiInfo = {
    /* ROM Address */        &s_rap_honto_desuka_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_honto_desukaMidiName,
    /* IRAM Channel Index */ 1754,
};

extern const u32 s_rap_wakari_desuka_mid;
const struct MidiInfo s_rap_wakari_desukaMidiInfo = {
    /* ROM Address */        &s_rap_wakari_desuka_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_wakari_desukaMidiName,
    /* IRAM Channel Index */ 1755,
};

extern const u32 s_rap_oisi_kamone_mid;
const struct MidiInfo s_rap_oisi_kamoneMidiInfo = {
    /* ROM Address */        &s_rap_oisi_kamone_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_oisi_kamoneMidiName,
    /* IRAM Channel Index */ 1756,
};

extern const u32 s_rap_herusi_kamone_mid;
const struct MidiInfo s_rap_herusi_kamoneMidiInfo = {
    /* ROM Address */        &s_rap_herusi_kamone_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_herusi_kamoneMidiName,
    /* IRAM Channel Index */ 1757,
};

extern const u32 s_rap_orenosei_kamone_mid;
const struct MidiInfo s_rap_orenosei_kamoneMidiInfo = {
    /* ROM Address */        &s_rap_orenosei_kamone_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_orenosei_kamoneMidiName,
    /* IRAM Channel Index */ 1758,
};

extern const u32 s_rap_soremoso_kamone_mid;
const struct MidiInfo s_rap_soremoso_kamoneMidiInfo = {
    /* ROM Address */        &s_rap_soremoso_kamone_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_soremoso_kamoneMidiName,
    /* IRAM Channel Index */ 1759,
};

extern const u32 s_rap_tanosi_kamone_mid;
const struct MidiInfo s_rap_tanosi_kamoneMidiInfo = {
    /* ROM Address */        &s_rap_tanosi_kamone_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_tanosi_kamoneMidiName,
    /* IRAM Channel Index */ 1760,
};

extern const u32 s_rap_oyatuha_saiko_mid;
const struct MidiInfo s_rap_oyatuha_saikoMidiInfo = {
    /* ROM Address */        &s_rap_oyatuha_saiko_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_oyatuha_saikoMidiName,
    /* IRAM Channel Index */ 1761,
};

extern const u32 s_rap_kibunha_saiko_mid;
const struct MidiInfo s_rap_kibunha_saikoMidiInfo = {
    /* ROM Address */        &s_rap_kibunha_saiko_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_kibunha_saikoMidiName,
    /* IRAM Channel Index */ 1762,
};

extern const u32 s_rap_orette_saiko_mid;
const struct MidiInfo s_rap_orette_saikoMidiInfo = {
    /* ROM Address */        &s_rap_orette_saiko_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_orette_saikoMidiName,
    /* IRAM Channel Index */ 1763,
};

extern const u32 s_rap_kimitte_saiko_mid;
const struct MidiInfo s_rap_kimitte_saikoMidiInfo = {
    /* ROM Address */        &s_rap_kimitte_saiko_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_kimitte_saikoMidiName,
    /* IRAM Channel Index */ 1764,
};

extern const u32 s_rap_oyatuga_naiyo_mid;
const struct MidiInfo s_rap_oyatuga_naiyoMidiInfo = {
    /* ROM Address */        &s_rap_oyatuga_naiyo_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_oyatuga_naiyoMidiName,
    /* IRAM Channel Index */ 1765,
};

extern const u32 s_rap_oresira_naiyo_mid;
const struct MidiInfo s_rap_oresira_naiyoMidiInfo = {
    /* ROM Address */        &s_rap_oresira_naiyo_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         32,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_oresira_naiyoMidiName,
    /* IRAM Channel Index */ 1766,
};

extern const u32 s_rap_un_mid;
const struct MidiInfo s_rap_unMidiInfo = {
    /* ROM Address */        &s_rap_un_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         32,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_unMidiName,
    /* IRAM Channel Index */ 1767,
};

extern const u32 s_rap_uun_mid;
const struct MidiInfo s_rap_uunMidiInfo = {
    /* ROM Address */        &s_rap_uun_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         32,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_uunMidiName,
    /* IRAM Channel Index */ 1768,
};

extern const u32 s_rap_yeah_mid;
const struct MidiInfo s_rap_yeahMidiInfo = {
    /* ROM Address */        &s_rap_yeah_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         32,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_yeahMidiName,
    /* IRAM Channel Index */ 1769,
};

extern const u32 s_sindan_manzai_mid;
const struct MidiInfo s_sindan_manzaiMidiInfo = {
    /* ROM Address */        &s_sindan_manzai_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         78,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_sindan_manzaiMidiName,
    /* IRAM Channel Index */ 1770,
};

extern const u32 s_sindan_mail_mid;
const struct MidiInfo s_sindan_mailMidiInfo = {
    /* ROM Address */        &s_sindan_mail_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         78,
    /* Volume */             40,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_sindan_mailMidiName,
    /* IRAM Channel Index */ 1771,
};

extern const u32 s_esa_pengin1_1_mid;
const struct MidiInfo s_esa_pengin1_1MidiInfo = {
    /* ROM Address */        &s_esa_pengin1_1_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin1_1MidiName,
    /* IRAM Channel Index */ 1780,
};

extern const u32 s_esa_pengin1_2_mid;
const struct MidiInfo s_esa_pengin1_2MidiInfo = {
    /* ROM Address */        &s_esa_pengin1_2_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin1_2MidiName,
    /* IRAM Channel Index */ 1781,
};

extern const u32 s_esa_pengin1_3_mid;
const struct MidiInfo s_esa_pengin1_3MidiInfo = {
    /* ROM Address */        &s_esa_pengin1_3_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin1_3MidiName,
    /* IRAM Channel Index */ 1782,
};

extern const u32 s_esa_pengin2_1_mid;
const struct MidiInfo s_esa_pengin2_1MidiInfo = {
    /* ROM Address */        &s_esa_pengin2_1_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin2_1MidiName,
    /* IRAM Channel Index */ 1783,
};

extern const u32 s_esa_pengin2_2_mid;
const struct MidiInfo s_esa_pengin2_2MidiInfo = {
    /* ROM Address */        &s_esa_pengin2_2_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin2_2MidiName,
    /* IRAM Channel Index */ 1784,
};

extern const u32 s_esa_pengin2_3_mid;
const struct MidiInfo s_esa_pengin2_3MidiInfo = {
    /* ROM Address */        &s_esa_pengin2_3_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin2_3MidiName,
    /* IRAM Channel Index */ 1785,
};

extern const u32 s_esa_pengin3_1_mid;
const struct MidiInfo s_esa_pengin3_1MidiInfo = {
    /* ROM Address */        &s_esa_pengin3_1_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin3_1MidiName,
    /* IRAM Channel Index */ 1786,
};

extern const u32 s_esa_pengin3_2_mid;
const struct MidiInfo s_esa_pengin3_2MidiInfo = {
    /* ROM Address */        &s_esa_pengin3_2_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin3_2MidiName,
    /* IRAM Channel Index */ 1787,
};

extern const u32 s_esa_pengin3_3_mid;
const struct MidiInfo s_esa_pengin3_3MidiInfo = {
    /* ROM Address */        &s_esa_pengin3_3_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_pengin3_3MidiName,
    /* IRAM Channel Index */ 1788,
};

extern const u32 s_esa_catch_mid;
const struct MidiInfo s_esa_catchMidiInfo = {
    /* ROM Address */        &s_esa_catch_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         24,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_esa_catchMidiName,
    /* IRAM Channel Index */ 1789,
};

extern const u32 s_quiz_bgm_mid;
const struct MidiInfo s_quiz_bgmMidiInfo = {
    /* ROM Address */        &s_quiz_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         55,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_quiz_bgmMidiName,
    /* IRAM Channel Index */ 1790,
};

extern const u32 s_quiz_fan_good_mid;
const struct MidiInfo s_quiz_fan_goodMidiInfo = {
    /* ROM Address */        &s_quiz_fan_good_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         52,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_quiz_fan_goodMidiName,
    /* IRAM Channel Index */ 1791,
};

extern const u32 s_quiz_fan_bad_mid;
const struct MidiInfo s_quiz_fan_badMidiInfo = {
    /* ROM Address */        &s_quiz_fan_bad_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         57,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_quiz_fan_badMidiName,
    /* IRAM Channel Index */ 1792,
};

extern const u32 s_virus_fork_mid;
const struct MidiInfo s_virus_forkMidiInfo = {
    /* ROM Address */        &s_virus_fork_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         19,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_virus_forkMidiName,
    /* IRAM Channel Index */ 1793,
};

extern const u32 s_virus_dash_mid;
const struct MidiInfo s_virus_dashMidiInfo = {
    /* ROM Address */        &s_virus_dash_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_virus_dashMidiName,
    /* IRAM Channel Index */ 1794,
};

extern const u32 s_virus_miss_mid;
const struct MidiInfo s_virus_missMidiInfo = {
    /* ROM Address */        &s_virus_miss_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         29,
    /* Volume */             60,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_virus_missMidiName,
    /* IRAM Channel Index */ 1795,
};

extern const u32 s_virus_hit_mid;
const struct MidiInfo s_virus_hitMidiInfo = {
    /* ROM Address */        &s_virus_hit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_virus_hitMidiName,
    /* IRAM Channel Index */ 1796,
};

extern const u32 s_virus_osii_mid;
const struct MidiInfo s_virus_osiiMidiInfo = {
    /* ROM Address */        &s_virus_osii_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_virus_osiiMidiName,
    /* IRAM Channel Index */ 1797,
};

extern const u32 s_check_result_bgm_mid;
const struct MidiInfo s_check_result_bgmMidiInfo = {
    /* ROM Address */        &s_check_result_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         18,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_check_result_bgmMidiName,
    /* IRAM Channel Index */ 1798,
};

extern const u32 s_lesson_sel_bgm_mid;
const struct MidiInfo s_lesson_sel_bgmMidiInfo = {
    /* ROM Address */        &s_lesson_sel_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         78,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_lesson_sel_bgmMidiName,
    /* IRAM Channel Index */ 1799,
};

extern const u32 s_toys_bgm_mid;
const struct MidiInfo s_toys_bgmMidiInfo = {
    /* ROM Address */        &s_toys_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         78,
    /* Volume */             75,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_toys_bgmMidiName,
    /* IRAM Channel Index */ 1800,
};

extern const u32 s_rap_machine_bgm_mid;
const struct MidiInfo s_rap_machine_bgmMidiInfo = {
    /* ROM Address */        &s_rap_machine_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rap_machine_bgmMidiName,
    /* IRAM Channel Index */ 1801,
};

extern const u32 s_mini_game_bgm_mid;
const struct MidiInfo s_mini_game_bgmMidiInfo = {
    /* ROM Address */        &s_mini_game_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         31,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_mini_game_bgmMidiName,
    /* IRAM Channel Index */ 1802,
};

extern const u32 s_remix_all_bgm_mid;
const struct MidiInfo s_remix_all_bgmMidiInfo = {
    /* ROM Address */        &s_remix_all_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         76,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_remix_all_bgmMidiName,
    /* IRAM Channel Index */ 1803,
};

extern const u32 s_sindan_sea_mid;
const struct MidiInfo s_sindan_seaMidiInfo = {
    /* ROM Address */        &s_sindan_sea_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         61,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_sindan_seaMidiName,
    /* IRAM Channel Index */ 1804,
};

extern const u32 s_drum_lesson_bgm_mid;
const struct MidiInfo s_drum_lesson_bgmMidiInfo = {
    /* ROM Address */        &s_drum_lesson_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         76,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_drum_lesson_bgmMidiName,
    /* IRAM Channel Index */ 1805,
};

extern const u32 s_counseling_bgm_mid;
const struct MidiInfo s_counseling_bgmMidiInfo = {
    /* ROM Address */        &s_counseling_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         67,
    /* Volume */             110,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_counseling_bgmMidiName,
    /* IRAM Channel Index */ 1806,
};

extern const u32 s_gameover_fan_mid;
const struct MidiInfo s_gameover_fanMidiInfo = {
    /* ROM Address */        &s_gameover_fan_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         55,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_gameover_fanMidiName,
    /* IRAM Channel Index */ 1807,
};

extern const u32 s_studio_bgm_mid;
const struct MidiInfo s_studio_bgmMidiInfo = {
    /* ROM Address */        &s_studio_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         28,
    /* Volume */             20,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_studio_bgmMidiName,
    /* IRAM Channel Index */ 1808,
};

extern const u32 s_nyuka_fan_mid;
const struct MidiInfo s_nyuka_fanMidiInfo = {
    /* ROM Address */        &s_nyuka_fan_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_nyuka_fanMidiName,
    /* IRAM Channel Index */ 1809,
};

extern const u32 s_siryo_bgm_mid;
const struct MidiInfo s_siryo_bgmMidiInfo = {
    /* ROM Address */        &s_siryo_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         27,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_siryo_bgmMidiName,
    /* IRAM Channel Index */ 1810,
};

extern const u32 s_dr_sam_bgm_mid;
const struct MidiInfo s_dr_sam_bgmMidiInfo = {
    /* ROM Address */        &s_dr_sam_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         27,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_dr_sam_bgmMidiName,
    /* IRAM Channel Index */ 1811,
};

extern const u32 s_renshu_bgm1_mid;
const struct MidiInfo s_renshu_bgm1MidiInfo = {
    /* ROM Address */        &s_renshu_bgm1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         59,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_renshu_bgm1MidiName,
    /* IRAM Channel Index */ 1812,
};

extern const u32 s_renshu_bgm2_mid;
const struct MidiInfo s_renshu_bgm2MidiInfo = {
    /* ROM Address */        &s_renshu_bgm2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         59,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_renshu_bgm2MidiName,
    /* IRAM Channel Index */ 1813,
};

extern const u32 s_renshu_bgm3_mid;
const struct MidiInfo s_renshu_bgm3MidiInfo = {
    /* ROM Address */        &s_renshu_bgm3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         59,
    /* Volume */             70,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_renshu_bgm3MidiName,
    /* IRAM Channel Index */ 1814,
};

extern const u32 s_kekka_bgm_good_mid;
const struct MidiInfo s_kekka_bgm_goodMidiInfo = {
    /* ROM Address */        &s_kekka_bgm_good_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         27,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_kekka_bgm_goodMidiName,
    /* IRAM Channel Index */ 1815,
};

extern const u32 s_kekka_bgm_common_mid;
const struct MidiInfo s_kekka_bgm_commonMidiInfo = {
    /* ROM Address */        &s_kekka_bgm_common_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         64,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_kekka_bgm_commonMidiName,
    /* IRAM Channel Index */ 1816,
};

extern const u32 s_kekka_bgm_bad_mid;
const struct MidiInfo s_kekka_bgm_badMidiInfo = {
    /* ROM Address */        &s_kekka_bgm_bad_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         21,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_kekka_bgm_badMidiName,
    /* IRAM Channel Index */ 1817,
};

extern const u32 s_epilogue_fan1_mid;
const struct MidiInfo s_epilogue_fan1MidiInfo = {
    /* ROM Address */        &s_epilogue_fan1_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         59,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_epilogue_fan1MidiName,
    /* IRAM Channel Index */ 1818,
};

extern const u32 s_epilogue_fan2_mid;
const struct MidiInfo s_epilogue_fan2MidiInfo = {
    /* ROM Address */        &s_epilogue_fan2_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         59,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_epilogue_fan2MidiName,
    /* IRAM Channel Index */ 1819,
};

extern const u32 s_perfect_fan_mid;
const struct MidiInfo s_perfect_fanMidiInfo = {
    /* ROM Address */        &s_perfect_fan_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_perfect_fanMidiName,
    /* IRAM Channel Index */ 1820,
};

extern const u32 s_poly_rakka_mid;
const struct MidiInfo s_poly_rakkaMidiInfo = {
    /* ROM Address */        &s_poly_rakka_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         41,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_poly_rakkaMidiName,
    /* IRAM Channel Index */ 1821,
};

extern const u32 s_poly_shototu_mid;
const struct MidiInfo s_poly_shototuMidiInfo = {
    /* ROM Address */        &s_poly_shototu_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         41,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_poly_shototuMidiName,
    /* IRAM Channel Index */ 1822,
};

extern const u32 s_block2_block_mid;
const struct MidiInfo s_block2_blockMidiInfo = {
    /* ROM Address */        &s_block2_block_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_block2_blockMidiName,
    /* IRAM Channel Index */ 1825,
};

extern const u32 s_block2_fast_mid;
const struct MidiInfo s_block2_fastMidiInfo = {
    /* ROM Address */        &s_block2_fast_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_block2_fastMidiName,
    /* IRAM Channel Index */ 1826,
};

extern const u32 s_uki_water1_mid;
const struct MidiInfo s_uki_water1MidiInfo = {
    /* ROM Address */        &s_uki_water1_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         27,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uki_water1MidiName,
    /* IRAM Channel Index */ 1830,
};

extern const u32 s_uki_water2_mid;
const struct MidiInfo s_uki_water2MidiInfo = {
    /* ROM Address */        &s_uki_water2_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         27,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uki_water2MidiName,
    /* IRAM Channel Index */ 1831,
};

extern const u32 s_uki_water3_mid;
const struct MidiInfo s_uki_water3MidiInfo = {
    /* ROM Address */        &s_uki_water3_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         34,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_uki_water3MidiName,
    /* IRAM Channel Index */ 1832,
};

extern const u32 s_kuma_hit_mid;
const struct MidiInfo s_kuma_hitMidiInfo = {
    /* ROM Address */        &s_kuma_hit_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         50,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_kuma_hitMidiName,
    /* IRAM Channel Index */ 1840,
};

extern const u32 s_kuma_miss_mid;
const struct MidiInfo s_kuma_missMidiInfo = {
    /* ROM Address */        &s_kuma_miss_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_kuma_missMidiName,
    /* IRAM Channel Index */ 1841,
};

extern const u32 s_kuma_sakana_mid;
const struct MidiInfo s_kuma_sakanaMidiInfo = {
    /* ROM Address */        &s_kuma_sakana_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_kuma_sakanaMidiName,
    /* IRAM Channel Index */ 1842,
};

extern const u32 s_yuri_naki_mid;
const struct MidiInfo s_yuri_nakiMidiInfo = {
    /* ROM Address */        &s_yuri_naki_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_yuri_nakiMidiName,
    /* IRAM Channel Index */ 1843,
};

extern const u32 s_yuri_yurasi_mid;
const struct MidiInfo s_yuri_yurasiMidiInfo = {
    /* ROM Address */        &s_yuri_yurasi_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         22,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_yuri_yurasiMidiName,
    /* IRAM Channel Index */ 1844,
};

extern const u32 s_4beat_open_mid;
const struct MidiInfo s_4beat_openMidiInfo = {
    /* ROM Address */        &s_4beat_open_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         41,
    /* Volume */             50,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_4beat_openMidiName,
    /* IRAM Channel Index */ 1845,
};

extern const u32 s_4beat_jiban_mid;
const struct MidiInfo s_4beat_jibanMidiInfo = {
    /* ROM Address */        &s_4beat_jiban_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             50,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_4beat_jibanMidiName,
    /* IRAM Channel Index */ 1846,
};

extern const u32 s_rythm_bat_miss_mid;
const struct MidiInfo s_rythm_bat_missMidiInfo = {
    /* ROM Address */        &s_rythm_bat_miss_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         31,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rythm_bat_missMidiName,
    /* IRAM Channel Index */ 1850,
};

extern const u32 s_dontan_count_mid;
const struct MidiInfo s_dontan_countMidiInfo = {
    /* ROM Address */        &s_dontan_count_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         27,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_dontan_countMidiName,
    /* IRAM Channel Index */ 1855,
};

extern const u32 s_dontan_water_mid;
const struct MidiInfo s_dontan_waterMidiInfo = {
    /* ROM Address */        &s_dontan_water_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         27,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_dontan_waterMidiName,
    /* IRAM Channel Index */ 1856,
};

extern const u32 s_change_a_mid;
const struct MidiInfo s_change_aMidiInfo = {
    /* ROM Address */        &s_change_a_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_change_aMidiName,
    /* IRAM Channel Index */ 1860,
};

extern const u32 s_change_b_mid;
const struct MidiInfo s_change_bMidiInfo = {
    /* ROM Address */        &s_change_b_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_change_bMidiName,
    /* IRAM Channel Index */ 1861,
};

extern const u32 s_change_ball_mid;
const struct MidiInfo s_change_ballMidiInfo = {
    /* ROM Address */        &s_change_ball_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         41,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_change_ballMidiName,
    /* IRAM Channel Index */ 1862,
};

extern const u32 s_change_hit_a_mid;
const struct MidiInfo s_change_hit_aMidiInfo = {
    /* ROM Address */        &s_change_hit_a_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         41,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_change_hit_aMidiName,
    /* IRAM Channel Index */ 1863,
};

extern const u32 s_change_hit_b_mid;
const struct MidiInfo s_change_hit_bMidiInfo = {
    /* ROM Address */        &s_change_hit_b_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         41,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_change_hit_bMidiName,
    /* IRAM Channel Index */ 1864,
};

extern const u32 s_change_goal_mid;
const struct MidiInfo s_change_goalMidiInfo = {
    /* ROM Address */        &s_change_goal_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         27,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_change_goalMidiName,
    /* IRAM Channel Index */ 1865,
};

extern const u32 s_check_machine_mid;
const struct MidiInfo s_check_machineMidiInfo = {
    /* ROM Address */        &s_check_machine_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         31,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x50,
    /* Midi Name */          s_check_machineMidiName,
    /* IRAM Channel Index */ 1866,
};

extern const u32 s_check_trick1_mid;
const struct MidiInfo s_check_trick1MidiInfo = {
    /* ROM Address */        &s_check_trick1_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         50,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_check_trick1MidiName,
    /* IRAM Channel Index */ 1867,
};

extern const u32 s_check_trick2_mid;
const struct MidiInfo s_check_trick2MidiInfo = {
    /* ROM Address */        &s_check_trick2_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         50,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_check_trick2MidiName,
    /* IRAM Channel Index */ 1868,
};

extern const u32 s_check_trick3_mid;
const struct MidiInfo s_check_trick3MidiInfo = {
    /* ROM Address */        &s_check_trick3_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         50,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_check_trick3MidiName,
    /* IRAM Channel Index */ 1869,
};

extern const u32 s_menu_se1_mid;
const struct MidiInfo s_menu_se1MidiInfo = {
    /* ROM Address */        &s_menu_se1_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se1MidiName,
    /* IRAM Channel Index */ 1870,
};

extern const u32 s_menu_se2_mid;
const struct MidiInfo s_menu_se2MidiInfo = {
    /* ROM Address */        &s_menu_se2_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se2MidiName,
    /* IRAM Channel Index */ 1871,
};

extern const u32 s_menu_se3_mid;
const struct MidiInfo s_menu_se3MidiInfo = {
    /* ROM Address */        &s_menu_se3_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se3MidiName,
    /* IRAM Channel Index */ 1872,
};

extern const u32 s_menu_se5_mid;
const struct MidiInfo s_menu_se5MidiInfo = {
    /* ROM Address */        &s_menu_se5_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se5MidiName,
    /* IRAM Channel Index */ 1874,
};

extern const u32 s_menu_se6_mid;
const struct MidiInfo s_menu_se6MidiInfo = {
    /* ROM Address */        &s_menu_se6_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se6MidiName,
    /* IRAM Channel Index */ 1875,
};

extern const u32 s_menu_se7_mid;
const struct MidiInfo s_menu_se7MidiInfo = {
    /* ROM Address */        &s_menu_se7_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         51,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se7MidiName,
    /* IRAM Channel Index */ 1876,
};

extern const u32 s_menu_se8_mid;
const struct MidiInfo s_menu_se8MidiInfo = {
    /* ROM Address */        &s_menu_se8_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se8MidiName,
    /* IRAM Channel Index */ 1877,
};

extern const u32 s_menu_se9_mid;
const struct MidiInfo s_menu_se9MidiInfo = {
    /* ROM Address */        &s_menu_se9_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se9MidiName,
    /* IRAM Channel Index */ 1878,
};

extern const u32 s_menu_se10_mid;
const struct MidiInfo s_menu_se10MidiInfo = {
    /* ROM Address */        &s_menu_se10_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         41,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se10MidiName,
    /* IRAM Channel Index */ 1879,
};

extern const u32 s_menu_se11_mid;
const struct MidiInfo s_menu_se11MidiInfo = {
    /* ROM Address */        &s_menu_se11_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se11MidiName,
    /* IRAM Channel Index */ 1880,
};

extern const u32 s_menu_se12_mid;
const struct MidiInfo s_menu_se12MidiInfo = {
    /* ROM Address */        &s_menu_se12_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se12MidiName,
    /* IRAM Channel Index */ 1881,
};

extern const u32 s_menu_se13_mid;
const struct MidiInfo s_menu_se13MidiInfo = {
    /* ROM Address */        &s_menu_se13_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se13MidiName,
    /* IRAM Channel Index */ 1882,
};

extern const u32 s_menu_se14_mid;
const struct MidiInfo s_menu_se14MidiInfo = {
    /* ROM Address */        &s_menu_se14_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se14MidiName,
    /* IRAM Channel Index */ 1883,
};

extern const u32 s_menu_se15_mid;
const struct MidiInfo s_menu_se15MidiInfo = {
    /* ROM Address */        &s_menu_se15_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         41,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se15MidiName,
    /* IRAM Channel Index */ 1884,
};

extern const u32 s_menu_se16_mid;
const struct MidiInfo s_menu_se16MidiInfo = {
    /* ROM Address */        &s_menu_se16_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se16MidiName,
    /* IRAM Channel Index */ 1885,
};

extern const u32 s_menu_se17_mid;
const struct MidiInfo s_menu_se17MidiInfo = {
    /* ROM Address */        &s_menu_se17_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se17MidiName,
    /* IRAM Channel Index */ 1886,
};

extern const u32 s_menu_woodblock_mid;
const struct MidiInfo s_menu_woodblockMidiInfo = {
    /* ROM Address */        &s_menu_woodblock_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         27,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_woodblockMidiName,
    /* IRAM Channel Index */ 1887,
};

extern const u32 s_menu_se19_mid;
const struct MidiInfo s_menu_se19MidiInfo = {
    /* ROM Address */        &s_menu_se19_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se19MidiName,
    /* IRAM Channel Index */ 1888,
};

extern const u32 s_menu_se20_mid;
const struct MidiInfo s_menu_se20MidiInfo = {
    /* ROM Address */        &s_menu_se20_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         27,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se20MidiName,
    /* IRAM Channel Index */ 1889,
};

extern const u32 s_menu_se22_mid;
const struct MidiInfo s_menu_se22MidiInfo = {
    /* ROM Address */        &s_menu_se22_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se22MidiName,
    /* IRAM Channel Index */ 1892,
};

extern const u32 s_menu_se23_mid;
const struct MidiInfo s_menu_se23MidiInfo = {
    /* ROM Address */        &s_menu_se23_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se23MidiName,
    /* IRAM Channel Index */ 1893,
};

extern const u32 s_menu_se24_mid;
const struct MidiInfo s_menu_se24MidiInfo = {
    /* ROM Address */        &s_menu_se24_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se24MidiName,
    /* IRAM Channel Index */ 1894,
};

extern const u32 s_menu_se25_mid;
const struct MidiInfo s_menu_se25MidiInfo = {
    /* ROM Address */        &s_menu_se25_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         31,
    /* Volume */             110,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_menu_se25MidiName,
    /* IRAM Channel Index */ 1895,
};

extern const u32 s_jingle_rat_mid;
const struct MidiInfo s_jingle_ratMidiInfo = {
    /* ROM Address */        &s_jingle_rat_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_ratMidiName,
    /* IRAM Channel Index */ 1900,
};

extern const u32 s_jingle_march_mid;
const struct MidiInfo s_jingle_marchMidiInfo = {
    /* ROM Address */        &s_jingle_march_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         21,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_marchMidiName,
    /* IRAM Channel Index */ 1901,
};

extern const u32 s_jingle_iai_mid;
const struct MidiInfo s_jingle_iaiMidiInfo = {
    /* ROM Address */        &s_jingle_iai_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_iaiMidiName,
    /* IRAM Channel Index */ 1902,
};

extern const u32 s_jingle_ghost_mid;
const struct MidiInfo s_jingle_ghostMidiInfo = {
    /* ROM Address */        &s_jingle_ghost_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         50,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_ghostMidiName,
    /* IRAM Channel Index */ 1903,
};

extern const u32 s_jingle_poli_mid;
const struct MidiInfo s_jingle_poliMidiInfo = {
    /* ROM Address */        &s_jingle_poli_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_poliMidiName,
    /* IRAM Channel Index */ 1904,
};

extern const u32 s_jingle_handclap_mid;
const struct MidiInfo s_jingle_handclapMidiInfo = {
    /* ROM Address */        &s_jingle_handclap_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         54,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_handclapMidiName,
    /* IRAM Channel Index */ 1905,
};

extern const u32 s_jingle_tap_mid;
const struct MidiInfo s_jingle_tapMidiInfo = {
    /* ROM Address */        &s_jingle_tap_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         55,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_tapMidiName,
    /* IRAM Channel Index */ 1906,
};

extern const u32 s_jingle_baseball_mid;
const struct MidiInfo s_jingle_baseballMidiInfo = {
    /* ROM Address */        &s_jingle_baseball_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         33,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_baseballMidiName,
    /* IRAM Channel Index */ 1907,
};

extern const u32 s_jingle_toss_mid;
const struct MidiInfo s_jingle_tossMidiInfo = {
    /* ROM Address */        &s_jingle_toss_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         64,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_tossMidiName,
    /* IRAM Channel Index */ 1908,
};

extern const u32 s_jingle_karate_mid;
const struct MidiInfo s_jingle_karateMidiInfo = {
    /* ROM Address */        &s_jingle_karate_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         56,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_karateMidiName,
    /* IRAM Channel Index */ 1909,
};

extern const u32 s_jingle_witch_mid;
const struct MidiInfo s_jingle_witchMidiInfo = {
    /* ROM Address */        &s_jingle_witch_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             75,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_witchMidiName,
    /* IRAM Channel Index */ 1910,
};

extern const u32 s_jingle_datumo_mid;
const struct MidiInfo s_jingle_datumoMidiInfo = {
    /* ROM Address */        &s_jingle_datumo_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         27,
    /* Volume */             75,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_datumoMidiName,
    /* IRAM Channel Index */ 1911,
};

extern const u32 s_jingle_quiz_mid;
const struct MidiInfo s_jingle_quizMidiInfo = {
    /* ROM Address */        &s_jingle_quiz_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         55,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_quizMidiName,
    /* IRAM Channel Index */ 1912,
};

extern const u32 s_jingle_bon_mid;
const struct MidiInfo s_jingle_bonMidiInfo = {
    /* ROM Address */        &s_jingle_bon_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         70,
    /* Volume */             90,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_bonMidiName,
    /* IRAM Channel Index */ 1913,
};

extern const u32 s_jingle_rap_mid;
const struct MidiInfo s_jingle_rapMidiInfo = {
    /* ROM Address */        &s_jingle_rap_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         32,
    /* Volume */             85,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_rapMidiName,
    /* IRAM Channel Index */ 1914,
};

extern const u32 s_jingle_remix_mid;
const struct MidiInfo s_jingle_remixMidiInfo = {
    /* ROM Address */        &s_jingle_remix_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         30,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_remixMidiName,
    /* IRAM Channel Index */ 1915,
};

extern const u32 s_fanfare_drum1_mid;
const struct MidiInfo s_fanfare_drum1MidiInfo = {
    /* ROM Address */        &s_fanfare_drum1_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         52,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_fanfare_drum1MidiName,
    /* IRAM Channel Index */ 1916,
};

extern const u32 s_fanfare_drum2_mid;
const struct MidiInfo s_fanfare_drum2MidiInfo = {
    /* ROM Address */        &s_fanfare_drum2_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_fanfare_drum2MidiName,
    /* IRAM Channel Index */ 1917,
};

extern const u32 s_fanfare_drum3_mid;
const struct MidiInfo s_fanfare_drum3MidiInfo = {
    /* ROM Address */        &s_fanfare_drum3_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             80,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_fanfare_drum3MidiName,
    /* IRAM Channel Index */ 1918,
};

extern const u32 s_jingle_hi_level_mid;
const struct MidiInfo s_jingle_hi_levelMidiInfo = {
    /* ROM Address */        &s_jingle_hi_level_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         27,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_jingle_hi_levelMidiName,
    /* IRAM Channel Index */ 1919,
};

extern const u32 s_ending_bgm_mid;
const struct MidiInfo s_ending_bgmMidiInfo = {
    /* ROM Address */        &s_ending_bgm_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         69,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_ending_bgmMidiName,
    /* IRAM Channel Index */ 1920,
};

extern const u32 s_iai_bgm_studio_mid;
const struct MidiInfo s_iai_bgm_studioMidiInfo = {
    /* ROM Address */        &s_iai_bgm_studio_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         19,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_iai_bgm_studioMidiName,
    /* IRAM Channel Index */ 1921,
};

extern const u32 s_rabbit_bgm_studio_mid;
const struct MidiInfo s_rabbit_bgm_studioMidiInfo = {
    /* ROM Address */        &s_rabbit_bgm_studio_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             90,
    /* unk4f4 */             0x46,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_rabbit_bgm_studioMidiName,
    /* IRAM Channel Index */ 1922,
};

extern const u32 s_rat_bgm_studio_mid;
const struct MidiInfo s_rat_bgm_studioMidiInfo = {
    /* ROM Address */        &s_rat_bgm_studio_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         23,
    /* Volume */             100,
    /* unk4f4 */             0x32,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_rat_bgm_studioMidiName,
    /* IRAM Channel Index */ 1923,
};

extern const u32 s_f_dummy_mid;
const struct MidiInfo s_f_dummyMidiInfo = {
    /* ROM Address */        &s_f_dummy_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_dummyMidiName,
    /* IRAM Channel Index */ 448,
};

extern const u32 s_f_dummy_vol0_mid;
const struct MidiInfo s_f_dummy_vol0MidiInfo = {
    /* ROM Address */        &s_f_dummy_vol0_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             0,
    /* unk4f4 */             0x0,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_dummy_vol0MidiName,
    /* IRAM Channel Index */ 449,
};

extern const u32 s_f_result_bad_mid;
const struct MidiInfo s_f_result_badMidiInfo = {
    /* ROM Address */        &s_f_result_bad_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x6e,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_result_badMidiName,
    /* IRAM Channel Index */ 450,
};

extern const u32 s_f_result_normal_mid;
const struct MidiInfo s_f_result_normalMidiInfo = {
    /* ROM Address */        &s_f_result_normal_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             75,
    /* unk4f4 */             0x6e,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_result_normalMidiName,
    /* IRAM Channel Index */ 451,
};

extern const u32 s_f_result_mes_step1_mid;
const struct MidiInfo s_f_result_mes_step1MidiInfo = {
    /* ROM Address */        &s_f_result_mes_step1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             65,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_result_mes_step1MidiName,
    /* IRAM Channel Index */ 452,
};

extern const u32 s_f_result_mes_step2_mid;
const struct MidiInfo s_f_result_mes_step2MidiInfo = {
    /* ROM Address */        &s_f_result_mes_step2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             80,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_result_mes_step2MidiName,
    /* IRAM Channel Index */ 453,
};

extern const u32 s_f_nyuuka_mid;
const struct MidiInfo s_f_nyuukaMidiInfo = {
    /* ROM Address */        &s_f_nyuuka_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_nyuukaMidiName,
    /* IRAM Channel Index */ 454,
};

extern const u32 s_f_campaign_notice_mid;
const struct MidiInfo s_f_campaign_noticeMidiInfo = {
    /* ROM Address */        &s_f_campaign_notice_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_campaign_noticeMidiName,
    /* IRAM Channel Index */ 455,
};

extern const u32 s_f_open_game_mid;
const struct MidiInfo s_f_open_gameMidiInfo = {
    /* ROM Address */        &s_f_open_game_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             50,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_open_gameMidiName,
    /* IRAM Channel Index */ 456,
};

extern const u32 s_f_clear_game_mid;
const struct MidiInfo s_f_clear_gameMidiInfo = {
    /* ROM Address */        &s_f_clear_game_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x6e,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_clear_gameMidiName,
    /* IRAM Channel Index */ 457,
};

extern const u32 s_f_get_medal_mid;
const struct MidiInfo s_f_get_medalMidiInfo = {
    /* ROM Address */        &s_f_get_medal_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x73,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_get_medalMidiName,
    /* IRAM Channel Index */ 458,
};

extern const u32 s_f_point_roll_mid;
const struct MidiInfo s_f_point_rollMidiInfo = {
    /* ROM Address */        &s_f_point_roll_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         105,
    /* Volume */             60,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_point_rollMidiName,
    /* IRAM Channel Index */ 459,
};

extern const u32 s_f_point_stop_mid;
const struct MidiInfo s_f_point_stopMidiInfo = {
    /* ROM Address */        &s_f_point_stop_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_point_stopMidiName,
    /* IRAM Channel Index */ 460,
};

extern const u32 s_f_appear_game_mid;
const struct MidiInfo s_f_appear_gameMidiInfo = {
    /* ROM Address */        &s_f_appear_game_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             80,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_appear_gameMidiName,
    /* IRAM Channel Index */ 461,
};

extern const u32 s_f_fail_perfect_mid;
const struct MidiInfo s_f_fail_perfectMidiInfo = {
    /* ROM Address */        &s_f_fail_perfect_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         105,
    /* Volume */             80,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_fail_perfectMidiName,
    /* IRAM Channel Index */ 462,
};

extern const u32 s_f_result_mes_add_mid;
const struct MidiInfo s_f_result_mes_addMidiInfo = {
    /* ROM Address */        &s_f_result_mes_add_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_result_mes_addMidiName,
    /* IRAM Channel Index */ 463,
};

extern const u32 s_f_send_mes_mid;
const struct MidiInfo s_f_send_mesMidiInfo = {
    /* ROM Address */        &s_f_send_mes_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             80,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_send_mesMidiName,
    /* IRAM Channel Index */ 464,
};

extern const u32 s_f_pause_on_mid;
const struct MidiInfo s_f_pause_onMidiInfo = {
    /* ROM Address */        &s_f_pause_on_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_pause_onMidiName,
    /* IRAM Channel Index */ 465,
};

extern const u32 s_f_pause_cursor_mid;
const struct MidiInfo s_f_pause_cursorMidiInfo = {
    /* ROM Address */        &s_f_pause_cursor_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_pause_cursorMidiName,
    /* IRAM Channel Index */ 466,
};

extern const u32 s_f_pause_continue_mid;
const struct MidiInfo s_f_pause_continueMidiInfo = {
    /* ROM Address */        &s_f_pause_continue_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_pause_continueMidiName,
    /* IRAM Channel Index */ 467,
};

extern const u32 s_f_pause_quit_mid;
const struct MidiInfo s_f_pause_quitMidiInfo = {
    /* ROM Address */        &s_f_pause_quit_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_pause_quitMidiName,
    /* IRAM Channel Index */ 468,
};

extern const u32 s_f_scratch_mid;
const struct MidiInfo s_f_scratchMidiInfo = {
    /* ROM Address */        &s_f_scratch_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             80,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_scratchMidiName,
    /* IRAM Channel Index */ 469,
};

extern const u32 s_f_env_train_mid;
const struct MidiInfo s_f_env_trainMidiInfo = {
    /* ROM Address */        &s_f_env_train_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_env_trainMidiName,
    /* IRAM Channel Index */ 470,
};

extern const u32 s_f_env_cherry_mid;
const struct MidiInfo s_f_env_cherryMidiInfo = {
    /* ROM Address */        &s_f_env_cherry_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_env_cherryMidiName,
    /* IRAM Channel Index */ 471,
};

extern const u32 s_f_env_haiku_mid;
const struct MidiInfo s_f_env_haikuMidiInfo = {
    /* ROM Address */        &s_f_env_haiku_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             75,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_env_haikuMidiName,
    /* IRAM Channel Index */ 472,
};

extern const u32 s_f_env_class_room_mid;
const struct MidiInfo s_f_env_class_roomMidiInfo = {
    /* ROM Address */        &s_f_env_class_room_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_env_class_roomMidiName,
    /* IRAM Channel Index */ 473,
};

extern const u32 s_f_env_paper_mid;
const struct MidiInfo s_f_env_paperMidiInfo = {
    /* ROM Address */        &s_f_env_paper_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_env_paperMidiName,
    /* IRAM Channel Index */ 474,
};

extern const u32 s_f_env_paper_rev_mid;
const struct MidiInfo s_f_env_paper_revMidiInfo = {
    /* ROM Address */        &s_f_env_paper_rev_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_env_paper_revMidiName,
    /* IRAM Channel Index */ 475,
};

extern const u32 s_f_cafe_send_mes_mid;
const struct MidiInfo s_f_cafe_send_mesMidiInfo = {
    /* ROM Address */        &s_f_cafe_send_mes_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_cafe_send_mesMidiName,
    /* IRAM Channel Index */ 476,
};

extern const u32 s_f_drum_BD_1_mid;
const struct MidiInfo s_f_drum_BD_1MidiInfo = {
    /* ROM Address */        &s_f_drum_BD_1_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         5,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drum_BD_1MidiName,
    /* IRAM Channel Index */ 492,
};

extern const u32 s_f_drum_SD_1_mid;
const struct MidiInfo s_f_drum_SD_1MidiInfo = {
    /* ROM Address */        &s_f_drum_SD_1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         5,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drum_SD_1MidiName,
    /* IRAM Channel Index */ 493,
};

extern const u32 s_f_drum_SD_Rim_Open_mid;
const struct MidiInfo s_f_drum_SD_Rim_OpenMidiInfo = {
    /* ROM Address */        &s_f_drum_SD_Rim_Open_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         5,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drum_SD_Rim_OpenMidiName,
    /* IRAM Channel Index */ 494,
};

extern const u32 s_f_drum_Sym_Crash_mid;
const struct MidiInfo s_f_drum_Sym_CrashMidiInfo = {
    /* ROM Address */        &s_f_drum_Sym_Crash_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         5,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drum_Sym_CrashMidiName,
    /* IRAM Channel Index */ 495,
};

extern const u32 s_f_test_drum_BD_A_mid;
const struct MidiInfo s_f_test_drum_BD_AMidiInfo = {
    /* ROM Address */        &s_f_test_drum_BD_A_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         17,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_test_drum_BD_AMidiName,
    /* IRAM Channel Index */ 496,
};

extern const u32 s_f_test_drum_BD_B_mid;
const struct MidiInfo s_f_test_drum_BD_BMidiInfo = {
    /* ROM Address */        &s_f_test_drum_BD_B_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         17,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_test_drum_BD_BMidiName,
    /* IRAM Channel Index */ 497,
};

extern const u32 s_f_test_drum_SD_A_mid;
const struct MidiInfo s_f_test_drum_SD_AMidiInfo = {
    /* ROM Address */        &s_f_test_drum_SD_A_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         17,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_test_drum_SD_AMidiName,
    /* IRAM Channel Index */ 498,
};

extern const u32 s_f_test_drum_SD_B_mid;
const struct MidiInfo s_f_test_drum_SD_BMidiInfo = {
    /* ROM Address */        &s_f_test_drum_SD_B_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         17,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_test_drum_SD_BMidiName,
    /* IRAM Channel Index */ 499,
};

extern const u32 s_f_toss_miss1_mid;
const struct MidiInfo s_f_toss_miss1MidiInfo = {
    /* ROM Address */        &s_f_toss_miss1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_toss_miss1MidiName,
    /* IRAM Channel Index */ 500,
};

extern const u32 s_f_toss_miss2_mid;
const struct MidiInfo s_f_toss_miss2MidiInfo = {
    /* ROM Address */        &s_f_toss_miss2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_toss_miss2MidiName,
    /* IRAM Channel Index */ 501,
};

extern const u32 s_f_toss_miss3_mid;
const struct MidiInfo s_f_toss_miss3MidiInfo = {
    /* ROM Address */        &s_f_toss_miss3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_toss_miss3MidiName,
    /* IRAM Channel Index */ 502,
};

extern const u32 s_f_toss_ball_mid;
const struct MidiInfo s_f_toss_ballMidiInfo = {
    /* ROM Address */        &s_f_toss_ball_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_toss_ballMidiName,
    /* IRAM Channel Index */ 503,
};

extern const u32 s_f_toss_swing_mid;
const struct MidiInfo s_f_toss_swingMidiInfo = {
    /* ROM Address */        &s_f_toss_swing_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_toss_swingMidiName,
    /* IRAM Channel Index */ 504,
};

extern const u32 s_f_shuji_v_nuaa_mid;
const struct MidiInfo s_f_shuji_v_nuaaMidiInfo = {
    /* ROM Address */        &s_f_shuji_v_nuaa_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         101,
    /* Volume */             75,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_nuaaMidiName,
    /* IRAM Channel Index */ 510,
};

extern const u32 s_f_shuji_v_unuu_mid;
const struct MidiInfo s_f_shuji_v_unuuMidiInfo = {
    /* ROM Address */        &s_f_shuji_v_unuu_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         101,
    /* Volume */             75,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_unuuMidiName,
    /* IRAM Channel Index */ 511,
};

extern const u32 s_f_shuji_v_ouch_mid;
const struct MidiInfo s_f_shuji_v_ouchMidiInfo = {
    /* ROM Address */        &s_f_shuji_v_ouch_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         101,
    /* Volume */             75,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_ouchMidiName,
    /* IRAM Channel Index */ 512,
};

extern const u32 s_f_shuji_swing1_mid;
const struct MidiInfo s_f_shuji_swing1MidiInfo = {
    /* ROM Address */        &s_f_shuji_swing1_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_swing1MidiName,
    /* IRAM Channel Index */ 513,
};

extern const u32 s_f_shuji_swing2_mid;
const struct MidiInfo s_f_shuji_swing2MidiInfo = {
    /* ROM Address */        &s_f_shuji_swing2_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_swing2MidiName,
    /* IRAM Channel Index */ 514,
};

extern const u32 s_f_shuji_start_mid;
const struct MidiInfo s_f_shuji_startMidiInfo = {
    /* ROM Address */        &s_f_shuji_start_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x5b,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_startMidiName,
    /* IRAM Channel Index */ 515,
};

extern const u32 s_f_shuji_v_ha1_mid;
const struct MidiInfo s_f_shuji_v_ha1MidiInfo = {
    /* ROM Address */        &s_f_shuji_v_ha1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_ha1MidiName,
    /* IRAM Channel Index */ 516,
};

extern const u32 s_f_shuji_v_ha2_mid;
const struct MidiInfo s_f_shuji_v_ha2MidiInfo = {
    /* ROM Address */        &s_f_shuji_v_ha2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             65,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_ha2MidiName,
    /* IRAM Channel Index */ 517,
};

extern const u32 s_f_shuji_v_ha3_mid;
const struct MidiInfo s_f_shuji_v_ha3MidiInfo = {
    /* ROM Address */        &s_f_shuji_v_ha3_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_ha3MidiName,
    /* IRAM Channel Index */ 518,
};

extern const u32 s_f_shuji_v_funuue_mid;
const struct MidiInfo s_f_shuji_v_funuueMidiInfo = {
    /* ROM Address */        &s_f_shuji_v_funuue_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         101,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_funuueMidiName,
    /* IRAM Channel Index */ 519,
};

extern const u32 s_f_shuji_v_nuahaha_mid;
const struct MidiInfo s_f_shuji_v_nuahahaMidiInfo = {
    /* ROM Address */        &s_f_shuji_v_nuahaha_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         101,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_shuji_v_nuahahaMidiName,
    /* IRAM Channel Index */ 505,
};

extern const u32 s_f_rat_goal_mid;
const struct MidiInfo s_f_rat_goalMidiInfo = {
    /* ROM Address */        &s_f_rat_goal_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         102,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rat_goalMidiName,
    /* IRAM Channel Index */ 520,
};

extern const u32 s_f_rat_error_mid;
const struct MidiInfo s_f_rat_errorMidiInfo = {
    /* ROM Address */        &s_f_rat_error_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         102,
    /* Volume */             70,
    /* unk4f4 */             0x65,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rat_errorMidiName,
    /* IRAM Channel Index */ 521,
};

extern const u32 s_f_rat_slip_mid;
const struct MidiInfo s_f_rat_slipMidiInfo = {
    /* ROM Address */        &s_f_rat_slip_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         102,
    /* Volume */             100,
    /* unk4f4 */             0x46,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rat_slipMidiName,
    /* IRAM Channel Index */ 522,
};

extern const u32 s_f_hanabi_v_tamaya_mid;
const struct MidiInfo s_f_hanabi_v_tamayaMidiInfo = {
    /* ROM Address */        &s_f_hanabi_v_tamaya_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         103,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hanabi_v_tamayaMidiName,
    /* IRAM Channel Index */ 525,
};

extern const u32 s_f_hanabi_v_nuei_mid;
const struct MidiInfo s_f_hanabi_v_nueiMidiInfo = {
    /* ROM Address */        &s_f_hanabi_v_nuei_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         103,
    /* Volume */             105,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hanabi_v_nueiMidiName,
    /* IRAM Channel Index */ 527,
};

extern const u32 s_f_hanabi_kansei_mid;
const struct MidiInfo s_f_hanabi_kanseiMidiInfo = {
    /* ROM Address */        &s_f_hanabi_kansei_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         103,
    /* Volume */             115,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hanabi_kanseiMidiName,
    /* IRAM Channel Index */ 528,
};

extern const u32 s_f_iai_cut_mid;
const struct MidiInfo s_f_iai_cutMidiInfo = {
    /* ROM Address */        &s_f_iai_cut_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         104,
    /* Volume */             110,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_iai_cutMidiName,
    /* IRAM Channel Index */ 530,
};

extern const u32 s_f_iai_cut2_mid;
const struct MidiInfo s_f_iai_cut2MidiInfo = {
    /* ROM Address */        &s_f_iai_cut2_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         104,
    /* Volume */             115,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_iai_cut2MidiName,
    /* IRAM Channel Index */ 531,
};

extern const u32 s_f_iai_title_mid;
const struct MidiInfo s_f_iai_titleMidiInfo = {
    /* ROM Address */        &s_f_iai_title_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         104,
    /* Volume */             115,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_iai_titleMidiName,
    /* IRAM Channel Index */ 532,
};

extern const u32 s_f_virus_in_mid;
const struct MidiInfo s_f_virus_inMidiInfo = {
    /* ROM Address */        &s_f_virus_in_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         104,
    /* Volume */             50,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_virus_inMidiName,
    /* IRAM Channel Index */ 535,
};

extern const u32 s_f_virus_uhihi_mid;
const struct MidiInfo s_f_virus_uhihiMidiInfo = {
    /* ROM Address */        &s_f_virus_uhihi_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         104,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_virus_uhihiMidiName,
    /* IRAM Channel Index */ 536,
};

extern const u32 s_f_virus_hit_mid;
const struct MidiInfo s_f_virus_hitMidiInfo = {
    /* ROM Address */        &s_f_virus_hit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         104,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_virus_hitMidiName,
    /* IRAM Channel Index */ 537,
};

extern const u32 s_f_virus_osii_mid;
const struct MidiInfo s_f_virus_osiiMidiInfo = {
    /* ROM Address */        &s_f_virus_osii_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         104,
    /* Volume */             110,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_virus_osiiMidiName,
    /* IRAM Channel Index */ 538,
};

extern const u32 s_f_virus_face_fadeout_mid;
const struct MidiInfo s_f_virus_face_fadeoutMidiInfo = {
    /* ROM Address */        &s_f_virus_face_fadeout_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         104,
    /* Volume */             70,
    /* unk4f4 */             0x55,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_virus_face_fadeoutMidiName,
    /* IRAM Channel Index */ 539,
};

extern const u32 s_f_virus_note_land_mid;
const struct MidiInfo s_f_virus_note_landMidiInfo = {
    /* ROM Address */        &s_f_virus_note_land_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         104,
    /* Volume */             100,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_virus_note_landMidiName,
    /* IRAM Channel Index */ 534,
};

extern const u32 s_f_hair_kegire_mid;
const struct MidiInfo s_f_hair_kegireMidiInfo = {
    /* ROM Address */        &s_f_hair_kegire_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x55,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hair_kegireMidiName,
    /* IRAM Channel Index */ 540,
};

extern const u32 s_f_hair_next_mid;
const struct MidiInfo s_f_hair_nextMidiInfo = {
    /* ROM Address */        &s_f_hair_next_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         100,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hair_nextMidiName,
    /* IRAM Channel Index */ 541,
};

extern const u32 s_f_hair_nuki_long_mid;
const struct MidiInfo s_f_hair_nuki_longMidiInfo = {
    /* ROM Address */        &s_f_hair_nuki_long_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hair_nuki_longMidiName,
    /* IRAM Channel Index */ 542,
};

extern const u32 s_f_hair_tuneru_mid;
const struct MidiInfo s_f_hair_tuneruMidiInfo = {
    /* ROM Address */        &s_f_hair_tuneru_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hair_tuneruMidiName,
    /* IRAM Channel Index */ 543,
};

extern const u32 s_f_hair_appear_long_mid;
const struct MidiInfo s_f_hair_appear_longMidiInfo = {
    /* ROM Address */        &s_f_hair_appear_long_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_hair_appear_longMidiName,
    /* IRAM Channel Index */ 544,
};

extern const u32 s_f_poly_blast_mid;
const struct MidiInfo s_f_poly_blastMidiInfo = {
    /* ROM Address */        &s_f_poly_blast_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             120,
    /* unk4f4 */             0x6e,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_blastMidiName,
    /* IRAM Channel Index */ 545,
};

extern const u32 s_f_poly_withdraw_mid;
const struct MidiInfo s_f_poly_withdrawMidiInfo = {
    /* ROM Address */        &s_f_poly_withdraw_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_withdrawMidiName,
    /* IRAM Channel Index */ 546,
};

extern const u32 s_f_poly_close_mid;
const struct MidiInfo s_f_poly_closeMidiInfo = {
    /* ROM Address */        &s_f_poly_close_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_closeMidiName,
    /* IRAM Channel Index */ 547,
};

extern const u32 s_f_poly_appear_upside_mid;
const struct MidiInfo s_f_poly_appear_upsideMidiInfo = {
    /* ROM Address */        &s_f_poly_appear_upside_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_appear_upsideMidiName,
    /* IRAM Channel Index */ 548,
};

extern const u32 s_f_poly_appear_downside_mid;
const struct MidiInfo s_f_poly_appear_downsideMidiInfo = {
    /* ROM Address */        &s_f_poly_appear_downside_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_appear_downsideMidiName,
    /* IRAM Channel Index */ 549,
};

extern const u32 s_f_poly_open_upside_mid;
const struct MidiInfo s_f_poly_open_upsideMidiInfo = {
    /* ROM Address */        &s_f_poly_open_upside_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_open_upsideMidiName,
    /* IRAM Channel Index */ 550,
};

extern const u32 s_f_poly_open_downside_mid;
const struct MidiInfo s_f_poly_open_downsideMidiInfo = {
    /* ROM Address */        &s_f_poly_open_downside_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_poly_open_downsideMidiName,
    /* IRAM Channel Index */ 551,
};

extern const u32 s_f_boxing_punch_mid;
const struct MidiInfo s_f_boxing_punchMidiInfo = {
    /* ROM Address */        &s_f_boxing_punch_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_punchMidiName,
    /* IRAM Channel Index */ 555,
};

extern const u32 s_f_boxing_just_hati_mid;
const struct MidiInfo s_f_boxing_just_hatiMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_hati_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_hatiMidiName,
    /* IRAM Channel Index */ 556,
};

extern const u32 s_f_boxing_just_hati_nc_mid;
const struct MidiInfo s_f_boxing_just_hati_ncMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_hati_nc_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_hati_ncMidiName,
    /* IRAM Channel Index */ 557,
};

extern const u32 s_f_boxing_just_light_mid;
const struct MidiInfo s_f_boxing_just_lightMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_light_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_lightMidiName,
    /* IRAM Channel Index */ 558,
};

extern const u32 s_f_boxing_just_light_nc_mid;
const struct MidiInfo s_f_boxing_just_light_ncMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_light_nc_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_light_ncMidiName,
    /* IRAM Channel Index */ 559,
};

extern const u32 s_f_boxing_just_ball_mid;
const struct MidiInfo s_f_boxing_just_ballMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_ball_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_ballMidiName,
    /* IRAM Channel Index */ 560,
};

extern const u32 s_f_boxing_just_ball_nc_mid;
const struct MidiInfo s_f_boxing_just_ball_ncMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_ball_nc_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_ball_ncMidiName,
    /* IRAM Channel Index */ 561,
};

extern const u32 s_f_boxing_just_rock_mid;
const struct MidiInfo s_f_boxing_just_rockMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_rock_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_rockMidiName,
    /* IRAM Channel Index */ 562,
};

extern const u32 s_f_boxing_just_rock_nc_mid;
const struct MidiInfo s_f_boxing_just_rock_ncMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_rock_nc_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_rock_ncMidiName,
    /* IRAM Channel Index */ 563,
};

extern const u32 s_f_boxing_just_bomb_mid;
const struct MidiInfo s_f_boxing_just_bombMidiInfo = {
    /* ROM Address */        &s_f_boxing_just_bomb_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             120,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_just_bombMidiName,
    /* IRAM Channel Index */ 564,
};

extern const u32 s_f_boxing_normal_mid;
const struct MidiInfo s_f_boxing_normalMidiInfo = {
    /* ROM Address */        &s_f_boxing_normal_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             95,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_normalMidiName,
    /* IRAM Channel Index */ 565,
};

extern const u32 s_f_boxing_land_mid;
const struct MidiInfo s_f_boxing_landMidiInfo = {
    /* ROM Address */        &s_f_boxing_land_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_landMidiName,
    /* IRAM Channel Index */ 566,
};

extern const u32 s_f_boxing_fly_nml_mid;
const struct MidiInfo s_f_boxing_fly_nmlMidiInfo = {
    /* ROM Address */        &s_f_boxing_fly_nml_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_fly_nmlMidiName,
    /* IRAM Channel Index */ 567,
};

extern const u32 s_f_boxing_v_nua_mid;
const struct MidiInfo s_f_boxing_v_nuaMidiInfo = {
    /* ROM Address */        &s_f_boxing_v_nua_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             45,
    /* unk4f4 */             0x52,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_v_nuaMidiName,
    /* IRAM Channel Index */ 568,
};

extern const u32 s_f_boxing_hard_mid;
const struct MidiInfo s_f_boxing_hardMidiInfo = {
    /* ROM Address */        &s_f_boxing_hard_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_hardMidiName,
    /* IRAM Channel Index */ 569,
};

extern const u32 s_f_boxing_score_reset_mid;
const struct MidiInfo s_f_boxing_score_resetMidiInfo = {
    /* ROM Address */        &s_f_boxing_score_reset_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             75,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_score_resetMidiName,
    /* IRAM Channel Index */ 570,
};

extern const u32 s_f_boxing_score_up_mid;
const struct MidiInfo s_f_boxing_score_upMidiInfo = {
    /* ROM Address */        &s_f_boxing_score_up_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             75,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_score_upMidiName,
    /* IRAM Channel Index */ 571,
};

extern const u32 s_f_boxing_score_down_mid;
const struct MidiInfo s_f_boxing_score_downMidiInfo = {
    /* ROM Address */        &s_f_boxing_score_down_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             70,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_score_downMidiName,
    /* IRAM Channel Index */ 572,
};

extern const u32 s_f_boxing_kansei_mid;
const struct MidiInfo s_f_boxing_kanseiMidiInfo = {
    /* ROM Address */        &s_f_boxing_kansei_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_kanseiMidiName,
    /* IRAM Channel Index */ 573,
};

extern const u32 s_f_boxing_v_fresh_mid;
const struct MidiInfo s_f_boxing_v_freshMidiInfo = {
    /* ROM Address */        &s_f_boxing_v_fresh_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             0,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_v_freshMidiName,
    /* IRAM Channel Index */ 574,
};

extern const u32 s_f_boxing_title_hit_mid;
const struct MidiInfo s_f_boxing_title_hitMidiInfo = {
    /* ROM Address */        &s_f_boxing_title_hit_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_title_hitMidiName,
    /* IRAM Channel Index */ 575,
};

extern const u32 s_f_boxing_honki_mid;
const struct MidiInfo s_f_boxing_honkiMidiInfo = {
    /* ROM Address */        &s_f_boxing_honki_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_honkiMidiName,
    /* IRAM Channel Index */ 576,
};

extern const u32 s_f_boxing_fly_ext_mid;
const struct MidiInfo s_f_boxing_fly_extMidiInfo = {
    /* ROM Address */        &s_f_boxing_fly_ext_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_boxing_fly_extMidiName,
    /* IRAM Channel Index */ 579,
};

extern const u32 s_f_quiz_hit_ply_mid;
const struct MidiInfo s_f_quiz_hit_plyMidiInfo = {
    /* ROM Address */        &s_f_quiz_hit_ply_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_hit_plyMidiName,
    /* IRAM Channel Index */ 580,
};

extern const u32 s_f_quiz_hit_com_mid;
const struct MidiInfo s_f_quiz_hit_comMidiInfo = {
    /* ROM Address */        &s_f_quiz_hit_com_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_hit_comMidiName,
    /* IRAM Channel Index */ 581,
};

extern const u32 s_f_quiz_blast_ply_mid;
const struct MidiInfo s_f_quiz_blast_plyMidiInfo = {
    /* ROM Address */        &s_f_quiz_blast_ply_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_blast_plyMidiName,
    /* IRAM Channel Index */ 582,
};

extern const u32 s_f_quiz_blast_com_mid;
const struct MidiInfo s_f_quiz_blast_comMidiInfo = {
    /* ROM Address */        &s_f_quiz_blast_com_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_blast_comMidiName,
    /* IRAM Channel Index */ 583,
};

extern const u32 s_f_quiz_blast_plate_mid;
const struct MidiInfo s_f_quiz_blast_plateMidiInfo = {
    /* ROM Address */        &s_f_quiz_blast_plate_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_blast_plateMidiName,
    /* IRAM Channel Index */ 584,
};

extern const u32 s_f_quiz_miss_mid;
const struct MidiInfo s_f_quiz_missMidiInfo = {
    /* ROM Address */        &s_f_quiz_miss_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x6e,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_missMidiName,
    /* IRAM Channel Index */ 585,
};

extern const u32 s_f_quiz_stop_mid;
const struct MidiInfo s_f_quiz_stopMidiInfo = {
    /* ROM Address */        &s_f_quiz_stop_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_stopMidiName,
    /* IRAM Channel Index */ 586,
};

extern const u32 s_f_quiz_answer_mid;
const struct MidiInfo s_f_quiz_answerMidiInfo = {
    /* ROM Address */        &s_f_quiz_answer_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_answerMidiName,
    /* IRAM Channel Index */ 587,
};

extern const u32 s_f_quiz_ok_mid;
const struct MidiInfo s_f_quiz_okMidiInfo = {
    /* ROM Address */        &s_f_quiz_ok_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_quiz_okMidiName,
    /* IRAM Channel Index */ 588,
};

extern const u32 s_f_ninja_kabe_mid;
const struct MidiInfo s_f_ninja_kabeMidiInfo = {
    /* ROM Address */        &s_f_ninja_kabe_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_ninja_kabeMidiName,
    /* IRAM Channel Index */ 590,
};

extern const u32 s_f_ninja_demo_mid;
const struct MidiInfo s_f_ninja_demoMidiInfo = {
    /* ROM Address */        &s_f_ninja_demo_mid,
    /* unk4f1 */             0x0,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x0,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_ninja_demoMidiName,
    /* IRAM Channel Index */ 591,
};

extern const u32 s_f_ninja_v_nanu_mid;
const struct MidiInfo s_f_ninja_v_nanuMidiInfo = {
    /* ROM Address */        &s_f_ninja_v_nanu_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_ninja_v_nanuMidiName,
    /* IRAM Channel Index */ 592,
};

extern const u32 s_f_rapW_v_YoOyatuDesuka_mid;
const struct MidiInfo s_f_rapW_v_YoOyatuDesukaMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_YoOyatuDesuka_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_YoOyatuDesukaMidiName,
    /* IRAM Channel Index */ 600,
};

extern const u32 s_f_rapW_v_Yo10JiDesuka_mid;
const struct MidiInfo s_f_rapW_v_Yo10JiDesukaMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_Yo10JiDesuka_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_Yo10JiDesukaMidiName,
    /* IRAM Channel Index */ 601,
};

extern const u32 s_f_rapW_v_Naishodesuka_mid;
const struct MidiInfo s_f_rapW_v_NaishodesukaMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_Naishodesuka_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_NaishodesukaMidiName,
    /* IRAM Channel Index */ 602,
};

extern const u32 s_f_rapW_v_KarenoOyatudane_mid;
const struct MidiInfo s_f_rapW_v_KarenoOyatudaneMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_KarenoOyatudane_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             95,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_KarenoOyatudaneMidiName,
    /* IRAM Channel Index */ 603,
};

extern const u32 s_f_rapW_v_TabeteIikamone_mid;
const struct MidiInfo s_f_rapW_v_TabeteIikamoneMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_TabeteIikamone_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             95,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_TabeteIikamoneMidiName,
    /* IRAM Channel Index */ 605,
};

extern const u32 s_f_rapW_v_AketeIikamone_mid;
const struct MidiInfo s_f_rapW_v_AketeIikamoneMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_AketeIikamone_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             95,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_AketeIikamoneMidiName,
    /* IRAM Channel Index */ 606,
};

extern const u32 s_f_rapW_v_OyatuwaSaiko_mid;
const struct MidiInfo s_f_rapW_v_OyatuwaSaikoMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_OyatuwaSaiko_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_OyatuwaSaikoMidiName,
    /* IRAM Channel Index */ 607,
};

extern const u32 s_f_rapW_v_KibunnwaSaiko_mid;
const struct MidiInfo s_f_rapW_v_KibunnwaSaikoMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_KibunnwaSaiko_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_KibunnwaSaikoMidiName,
    /* IRAM Channel Index */ 608,
};

extern const u32 s_f_rapW_v_AmakuteSaiko_mid;
const struct MidiInfo s_f_rapW_v_AmakuteSaikoMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_AmakuteSaiko_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_AmakuteSaikoMidiName,
    /* IRAM Channel Index */ 609,
};

extern const u32 s_f_rapW_v_BetubaraSaiko_mid;
const struct MidiInfo s_f_rapW_v_BetubaraSaikoMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_BetubaraSaiko_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_BetubaraSaikoMidiName,
    /* IRAM Channel Index */ 610,
};

extern const u32 s_f_rapW_v_KareniwaNaisho_mid;
const struct MidiInfo s_f_rapW_v_KareniwaNaishoMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_KareniwaNaisho_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_KareniwaNaishoMidiName,
    /* IRAM Channel Index */ 611,
};

extern const u32 s_f_rapW_v_DarenimoNaisho_mid;
const struct MidiInfo s_f_rapW_v_DarenimoNaishoMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_DarenimoNaisho_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_DarenimoNaishoMidiName,
    /* IRAM Channel Index */ 612,
};

extern const u32 s_f_rapW_v_Yeah_mid;
const struct MidiInfo s_f_rapW_v_YeahMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_Yeah_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             78,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_YeahMidiName,
    /* IRAM Channel Index */ 613,
};

extern const u32 s_f_rapW_v_Un_mid;
const struct MidiInfo s_f_rapW_v_UnMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_Un_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         100,
    /* Volume */             78,
    /* unk4f4 */             0x69,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_UnMidiName,
    /* IRAM Channel Index */ 614,
};

extern const u32 s_f_rapW_v_Uun_mid;
const struct MidiInfo s_f_rapW_v_UunMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_Uun_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         100,
    /* Volume */             78,
    /* unk4f4 */             0x69,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_UunMidiName,
    /* IRAM Channel Index */ 615,
};

extern const u32 s_f_rapW_v_CheckIt_mid;
const struct MidiInfo s_f_rapW_v_CheckItMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_CheckIt_mid,
    /* unk4f1 */             0x1,
    /* Sound Bank */         100,
    /* Volume */             46,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_CheckItMidiName,
    /* IRAM Channel Index */ 616,
};

extern const u32 s_f_rapW_v_OyatuwaSaiko_d_mid;
const struct MidiInfo s_f_rapW_v_OyatuwaSaiko_dMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_OyatuwaSaiko_d_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_OyatuwaSaiko_dMidiName,
    /* IRAM Channel Index */ 617,
};

extern const u32 s_f_rapW_v_KibunnwaSaiko_d_mid;
const struct MidiInfo s_f_rapW_v_KibunnwaSaiko_dMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_KibunnwaSaiko_d_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_KibunnwaSaiko_dMidiName,
    /* IRAM Channel Index */ 618,
};

extern const u32 s_f_rapW_v_AmakuteSaiko_d_mid;
const struct MidiInfo s_f_rapW_v_AmakuteSaiko_dMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_AmakuteSaiko_d_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_AmakuteSaiko_dMidiName,
    /* IRAM Channel Index */ 619,
};

extern const u32 s_f_rapW_v_BetubaraSaiko_d_mid;
const struct MidiInfo s_f_rapW_v_BetubaraSaiko_dMidiInfo = {
    /* ROM Address */        &s_f_rapW_v_BetubaraSaiko_d_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             103,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rapW_v_BetubaraSaiko_dMidiName,
    /* IRAM Channel Index */ 620,
};

extern const u32 s_f_batter_ball_land_mid;
const struct MidiInfo s_f_batter_ball_landMidiInfo = {
    /* ROM Address */        &s_f_batter_ball_land_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             70,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_batter_ball_landMidiName,
    /* IRAM Channel Index */ 623,
};

extern const u32 s_f_batter_ball_high_mid;
const struct MidiInfo s_f_batter_ball_highMidiInfo = {
    /* ROM Address */        &s_f_batter_ball_high_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             90,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_batter_ball_highMidiName,
    /* IRAM Channel Index */ 624,
};

extern const u32 s_f_handclap_pi_G4_mid;
const struct MidiInfo s_f_handclap_pi_G4MidiInfo = {
    /* ROM Address */        &s_f_handclap_pi_G4_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             55,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_handclap_pi_G4MidiName,
    /* IRAM Channel Index */ 625,
};

extern const u32 s_f_handclap_pi_E5_mid;
const struct MidiInfo s_f_handclap_pi_E5MidiInfo = {
    /* ROM Address */        &s_f_handclap_pi_E5_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             50,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_handclap_pi_E5MidiName,
    /* IRAM Channel Index */ 626,
};

extern const u32 s_f_handclap_ready_mid;
const struct MidiInfo s_f_handclap_readyMidiInfo = {
    /* ROM Address */        &s_f_handclap_ready_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             100,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_handclap_readyMidiName,
    /* IRAM Channel Index */ 627,
};

extern const u32 s_f_aim_just_hit_mid;
const struct MidiInfo s_f_aim_just_hitMidiInfo = {
    /* ROM Address */        &s_f_aim_just_hit_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             120,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_aim_just_hitMidiName,
    /* IRAM Channel Index */ 629,
};

extern const u32 s_f_aim_just_hit_voice_mid;
const struct MidiInfo s_f_aim_just_hit_voiceMidiInfo = {
    /* ROM Address */        &s_f_aim_just_hit_voice_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             40,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_aim_just_hit_voiceMidiName,
    /* IRAM Channel Index */ 630,
};

extern const u32 s_f_space_hit_mid;
const struct MidiInfo s_f_space_hitMidiInfo = {
    /* ROM Address */        &s_f_space_hit_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         100,
    /* Volume */             60,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_space_hitMidiName,
    /* IRAM Channel Index */ 640,
};

extern const u32 s_f_space_dancer_mid;
const struct MidiInfo s_f_space_dancerMidiInfo = {
    /* ROM Address */        &s_f_space_dancer_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             120,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_space_dancerMidiName,
    /* IRAM Channel Index */ 641,
};

extern const u32 s_f_space_dancer_swing_mid;
const struct MidiInfo s_f_space_dancer_swingMidiInfo = {
    /* ROM Address */        &s_f_space_dancer_swing_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_space_dancer_swingMidiName,
    /* IRAM Channel Index */ 642,
};

extern const u32 s_f_space_dancer_sit_mid;
const struct MidiInfo s_f_space_dancer_sitMidiInfo = {
    /* ROM Address */        &s_f_space_dancer_sit_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_space_dancer_sitMidiName,
    /* IRAM Channel Index */ 643,
};

extern const u32 s_f_space_dancer_pa_mid;
const struct MidiInfo s_f_space_dancer_paMidiInfo = {
    /* ROM Address */        &s_f_space_dancer_pa_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_space_dancer_paMidiName,
    /* IRAM Channel Index */ 644,
};

extern const u32 s_f_esa_jump_mid;
const struct MidiInfo s_f_esa_jumpMidiInfo = {
    /* ROM Address */        &s_f_esa_jump_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_esa_jumpMidiName,
    /* IRAM Channel Index */ 645,
};

extern const u32 s_f_esa_splash_penguin_mid;
const struct MidiInfo s_f_esa_splash_penguinMidiInfo = {
    /* ROM Address */        &s_f_esa_splash_penguin_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             127,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_esa_splash_penguinMidiName,
    /* IRAM Channel Index */ 646,
};

extern const u32 s_f_esa_splash_ball_mid;
const struct MidiInfo s_f_esa_splash_ballMidiInfo = {
    /* ROM Address */        &s_f_esa_splash_ball_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             110,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_esa_splash_ballMidiName,
    /* IRAM Channel Index */ 647,
};

extern const u32 s_f_rabbit_ready_mid;
const struct MidiInfo s_f_rabbit_readyMidiInfo = {
    /* ROM Address */        &s_f_rabbit_ready_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         100,
    /* Volume */             80,
    /* unk4f4 */             0x5b,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rabbit_readyMidiName,
    /* IRAM Channel Index */ 650,
};

extern const u32 s_f_rabbit_miss_mid;
const struct MidiInfo s_f_rabbit_missMidiInfo = {
    /* ROM Address */        &s_f_rabbit_miss_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         100,
    /* Volume */             50,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_rabbit_missMidiName,
    /* IRAM Channel Index */ 651,
};

extern const u32 s_f_even_splash_mid;
const struct MidiInfo s_f_even_splashMidiInfo = {
    /* ROM Address */        &s_f_even_splash_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         100,
    /* Volume */             65,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_even_splashMidiName,
    /* IRAM Channel Index */ 655,
};

extern const u32 s_f_even_road_mid;
const struct MidiInfo s_f_even_roadMidiInfo = {
    /* ROM Address */        &s_f_even_road_mid,
    /* unk4f1 */             0x2,
    /* Sound Bank */         100,
    /* Volume */             65,
    /* unk4f4 */             0x50,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_even_roadMidiName,
    /* IRAM Channel Index */ 656,
};

extern const u32 s_f_drumdr_miss_mid;
const struct MidiInfo s_f_drumdr_missMidiInfo = {
    /* ROM Address */        &s_f_drumdr_miss_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_drumdr_missMidiName,
    /* IRAM Channel Index */ 660,
};

extern const u32 s_f_drumdr_ok_mid;
const struct MidiInfo s_f_drumdr_okMidiInfo = {
    /* ROM Address */        &s_f_drumdr_ok_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             80,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0x40,
    /* Midi Name */          s_f_drumdr_okMidiName,
    /* IRAM Channel Index */ 661,
};

extern const u32 s_f_machine_click_mid;
const struct MidiInfo s_f_machine_clickMidiInfo = {
    /* ROM Address */        &s_f_machine_click_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         101,
    /* Volume */             40,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_machine_clickMidiName,
    /* IRAM Channel Index */ 665,
};

extern const u32 s_f_tap_miss1_mid;
const struct MidiInfo s_f_tap_miss1MidiInfo = {
    /* ROM Address */        &s_f_tap_miss1_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         101,
    /* Volume */             70,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_tap_miss1MidiName,
    /* IRAM Channel Index */ 670,
};

extern const u32 s_f_tap_miss2_mid;
const struct MidiInfo s_f_tap_miss2MidiInfo = {
    /* ROM Address */        &s_f_tap_miss2_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         101,
    /* Volume */             70,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_tap_miss2MidiName,
    /* IRAM Channel Index */ 671,
};

extern const u32 s_f_tap_jump_ready_mid;
const struct MidiInfo s_f_tap_jump_readyMidiInfo = {
    /* ROM Address */        &s_f_tap_jump_ready_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         101,
    /* Volume */             0,
    /* unk4f4 */             0x0,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_tap_jump_readyMidiName,
    /* IRAM Channel Index */ 672,
};

extern const u32 s_f_tap_tap_mid;
const struct MidiInfo s_f_tap_tapMidiInfo = {
    /* ROM Address */        &s_f_tap_tap_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         101,
    /* Volume */             100,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_tap_tapMidiName,
    /* IRAM Channel Index */ 673,
};

extern const u32 s_f_tap_pig1_mid;
const struct MidiInfo s_f_tap_pig1MidiInfo = {
    /* ROM Address */        &s_f_tap_pig1_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_tap_pig1MidiName,
    /* IRAM Channel Index */ 674,
};

extern const u32 s_f_tap_pig2_mid;
const struct MidiInfo s_f_tap_pig2MidiInfo = {
    /* ROM Address */        &s_f_tap_pig2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             70,
    /* unk4f4 */             0x5a,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_tap_pig2MidiName,
    /* IRAM Channel Index */ 675,
};

extern const u32 s_f_conveyer_hit_mid;
const struct MidiInfo s_f_conveyer_hitMidiInfo = {
    /* ROM Address */        &s_f_conveyer_hit_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         101,
    /* Volume */             100,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_conveyer_hitMidiName,
    /* IRAM Channel Index */ 679,
};

extern const u32 s_f_lesson_s_mid;
const struct MidiInfo s_f_lesson_sMidiInfo = {
    /* ROM Address */        &s_f_lesson_s_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             120,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_lesson_sMidiName,
    /* IRAM Channel Index */ 680,
};

extern const u32 s_f_lesson_a_mid;
const struct MidiInfo s_f_lesson_aMidiInfo = {
    /* ROM Address */        &s_f_lesson_a_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             110,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_lesson_aMidiName,
    /* IRAM Channel Index */ 681,
};

extern const u32 s_f_lesson_b_mid;
const struct MidiInfo s_f_lesson_bMidiInfo = {
    /* ROM Address */        &s_f_lesson_b_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             110,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_lesson_bMidiName,
    /* IRAM Channel Index */ 682,
};

extern const u32 s_f_lesson_c_mid;
const struct MidiInfo s_f_lesson_cMidiInfo = {
    /* ROM Address */        &s_f_lesson_c_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             80,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_lesson_cMidiName,
    /* IRAM Channel Index */ 683,
};

extern const u32 s_f_base_1note_mid;
const struct MidiInfo s_f_base_1noteMidiInfo = {
    /* ROM Address */        &s_f_base_1note_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_base_1noteMidiName,
    /* IRAM Channel Index */ 685,
};

extern const u32 s_f_drumtech_miss_mid;
const struct MidiInfo s_f_drumtech_missMidiInfo = {
    /* ROM Address */        &s_f_drumtech_miss_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         105,
    /* Volume */             50,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drumtech_missMidiName,
    /* IRAM Channel Index */ 686,
};

extern const u32 s_f_drumtech_fall_mid;
const struct MidiInfo s_f_drumtech_fallMidiInfo = {
    /* ROM Address */        &s_f_drumtech_fall_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         105,
    /* Volume */             70,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drumtech_fallMidiName,
    /* IRAM Channel Index */ 687,
};

extern const u32 s_f_drumtech_damage_mid;
const struct MidiInfo s_f_drumtech_damageMidiInfo = {
    /* ROM Address */        &s_f_drumtech_damage_mid,
    /* unk4f1 */             0x9,
    /* Sound Bank */         105,
    /* Volume */             108,
    /* unk4f4 */             0x78,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_drumtech_damageMidiName,
    /* IRAM Channel Index */ 688,
};

extern const u32 s_f_neko1_mid;
const struct MidiInfo s_f_neko1MidiInfo = {
    /* ROM Address */        &s_f_neko1_mid,
    /* unk4f1 */             0x3,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_neko1MidiName,
    /* IRAM Channel Index */ 695,
};

extern const u32 s_f_neko2_mid;
const struct MidiInfo s_f_neko2MidiInfo = {
    /* ROM Address */        &s_f_neko2_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_neko2MidiName,
    /* IRAM Channel Index */ 696,
};

extern const u32 s_f_neko3_mid;
const struct MidiInfo s_f_neko3MidiInfo = {
    /* ROM Address */        &s_f_neko3_mid,
    /* unk4f1 */             0x5,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_neko3MidiName,
    /* IRAM Channel Index */ 697,
};

extern const u32 s_f_neko4_mid;
const struct MidiInfo s_f_neko4MidiInfo = {
    /* ROM Address */        &s_f_neko4_mid,
    /* unk4f1 */             0x6,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_neko4MidiName,
    /* IRAM Channel Index */ 698,
};

extern const u32 s_f_neko5_mid;
const struct MidiInfo s_f_neko5MidiInfo = {
    /* ROM Address */        &s_f_neko5_mid,
    /* unk4f1 */             0x7,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_neko5MidiName,
    /* IRAM Channel Index */ 699,
};

extern const u32 s_f_neko6_mid;
const struct MidiInfo s_f_neko6MidiInfo = {
    /* ROM Address */        &s_f_neko6_mid,
    /* unk4f1 */             0x8,
    /* Sound Bank */         105,
    /* Volume */             55,
    /* unk4f4 */             0x64,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_neko6MidiName,
    /* IRAM Channel Index */ 700,
};

extern const u32 s_f_marcher2_v_zentai_mid;
const struct MidiInfo s_f_marcher2_v_zentaiMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_zentai_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_zentaiMidiName,
    /* IRAM Channel Index */ 701,
};

extern const u32 s_f_marcher2_v_susume_mid;
const struct MidiInfo s_f_marcher2_v_susumeMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_susume_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             85,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_susumeMidiName,
    /* IRAM Channel Index */ 702,
};

extern const u32 s_f_marcher2_v_tomare_mid;
const struct MidiInfo s_f_marcher2_v_tomareMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_tomare_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_tomareMidiName,
    /* IRAM Channel Index */ 703,
};

extern const u32 s_f_marcher2_v_migimukeL_mid;
const struct MidiInfo s_f_marcher2_v_migimukeLMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_migimukeL_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_migimukeLMidiName,
    /* IRAM Channel Index */ 704,
};

extern const u32 s_f_marcher2_v_migimukeS_mid;
const struct MidiInfo s_f_marcher2_v_migimukeSMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_migimukeS_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_migimukeSMidiName,
    /* IRAM Channel Index */ 705,
};

extern const u32 s_f_marcher2_v_migi_mid;
const struct MidiInfo s_f_marcher2_v_migiMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_migi_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_migiMidiName,
    /* IRAM Channel Index */ 706,
};

extern const u32 s_f_marcher2_v_hidarimukeL_mid;
const struct MidiInfo s_f_marcher2_v_hidarimukeLMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_hidarimukeL_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_hidarimukeLMidiName,
    /* IRAM Channel Index */ 707,
};

extern const u32 s_f_marcher2_v_hidarimukeS_mid;
const struct MidiInfo s_f_marcher2_v_hidarimukeSMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_hidarimukeS_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_hidarimukeSMidiName,
    /* IRAM Channel Index */ 708,
};

extern const u32 s_f_marcher2_v_hidari_mid;
const struct MidiInfo s_f_marcher2_v_hidariMidiInfo = {
    /* ROM Address */        &s_f_marcher2_v_hidari_mid,
    /* unk4f1 */             0x4,
    /* Sound Bank */         101,
    /* Volume */             90,
    /* unk4f4 */             0x7f,
    /* unk4f5 */             0x0,
    /* unk8 */               0xff,
    /* Midi Name */          s_f_marcher2_v_hidariMidiName,
    /* IRAM Channel Index */ 709,
};
