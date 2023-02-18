extern const struct SequenceData *confession_machine_sfx_pool_a[];
extern const struct SequenceData *confession_machine_sfx_pool_b[];
extern const struct SequenceData *confession_machine_sfx_pool_up[];
extern const struct SequenceData *confession_machine_sfx_pool_down[];
extern const struct SequenceData *confession_machine_sfx_pool_left[];
extern const struct SequenceData *confession_machine_sfx_pool_right[];


// [D_089e9b04] Confession Machine SFX Pool Table
const struct SequenceData **confession_machine_sfx_table[] = {
    /* A */ confession_machine_sfx_pool_a,
    /* B */ confession_machine_sfx_pool_b,
    /* U */ confession_machine_sfx_pool_up,
    /* D */ confession_machine_sfx_pool_down,
    /* L */ confession_machine_sfx_pool_left,
    /* R */ confession_machine_sfx_pool_right
};

// [D_089e9b1c] Confession Machine Demo BPM
u16 confession_machine_demo_bpm = 130;

// [D_089e9b20] Confession Machine Demo Script (Unused)
struct RhythmToysDemo confession_machine_demo_seq[] = {
    /* 0x00 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* 0x01 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* 0x02 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x8E },
    /* 0x03 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x18 },
    /* 0x04 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x19 },
    /* 0x05 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x60 },
    /* 0x06 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* 0x07 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x8E },
    /* 0x08 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x18 },
    /* 0x09 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x19 },
    /* 0x0A */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x60 },
    /* 0x0B */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* 0x0C */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x8E },
    /* 0x0D */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x18 },
    /* 0x0E */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x19 },
    /* 0x0F */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x60 },
    /* 0x10 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* 0x11 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* 0x12 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x13 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x14 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x15 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x16 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x2F },
    /* 0x17 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x9C },
    /* 0x18 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x19 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x16 },
    /* 0x1A */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x86 },
    /* 0x1B */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x1C */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x16 },
    /* 0x1D */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x86 },
    /* 0x1E */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x1F */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x16 },
    /* 0x20 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x26 },
    /* 0x21 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x22 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x16 },
    /* 0x23 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x26 },
    /* 0x24 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x25 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x24 },
    /* 0x26 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x0C },
    /* 0x27 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x24 },
    /* 0x28 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x0C },
    /* 0x29 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x24 },
    /* 0x2A */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x03 },
    /* 0x2B */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x03 },
    /* 0x2C */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x03 },
    /* 0x2D */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x03 },
    /* 0x2E */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x0C },
    /* 0x2F */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x23 },
    /* 0x30 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x8E },
    /* 0x31 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x18 },
    /* 0x32 */ { RHYTHM_TOYS_DEMO_PRESS_DOWN, 0x19 },
    /* 0x33 */ { RHYTHM_TOYS_DEMO_PRESS_B, 0x60 },
    /* 0x34 */ { RHYTHM_TOYS_DEMO_PRESS_A, 0x5F },
    /* STOP */ END_OF_RHYTHM_TOYS_DEMO
};
