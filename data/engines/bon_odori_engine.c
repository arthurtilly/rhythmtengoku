#include "engines/bon_odori.h"


  /* THE BON ODORI - GAME ENGINE DATA */


extern const struct Animation bon_odori_anim_donpan1_beat[];
extern const struct Animation D_088a7140[];
extern const struct Animation bon_odori_anim_donpan2_beat[];
extern const struct Animation D_088a7218[];
extern const struct Animation bon_odori_anim_donpan3_beat[];
extern const struct Animation D_088a7398[];
extern const struct Animation bon_odori_anim_player_beat[];
extern const struct Animation D_088a72d8[];
extern const struct Animation bon_odori_anim_donpan1_clap1[];
extern const struct Animation D_088a7198[];
extern const struct Animation bon_odori_anim_donpan2_clap1[];
extern const struct Animation D_088a7258[];
extern const struct Animation bon_odori_anim_donpan3_clap1[];
extern const struct Animation D_088a73d8[];
extern const struct Animation bon_odori_anim_player_clap1[];
extern const struct Animation D_088a7318[];
extern const struct Animation bon_odori_anim_donpan1_clap2[];
extern const struct Animation D_088a71e0[];
extern const struct Animation bon_odori_anim_donpan2_clap2[];
extern const struct Animation D_088a72a0[];
extern const struct Animation bon_odori_anim_donpan3_clap2[];
extern const struct Animation D_088a7420[];
extern const struct Animation bon_odori_anim_player_clap2[];
extern const struct Animation D_088a7360[];
extern const struct Animation bon_odori_anim_donpan1_bow[];
extern const struct Animation D_088a74e0[];
extern const struct Animation bon_odori_anim_donpan2_bow[];
extern const struct Animation D_088a7508[];
extern const struct Animation bon_odori_anim_donpan3_bow[];
extern const struct Animation D_088a7558[];
extern const struct Animation bon_odori_anim_player_bow[];
extern const struct Animation D_088a7530[];
extern const struct Animation bon_odori_anim_donpan1_glare[];
extern const struct Animation D_088a75c0[];
extern const struct Animation bon_odori_anim_donpan2_glare[];
extern const struct Animation D_088a7580[];
extern const struct Animation bon_odori_anim_donpan3_glare[];
extern const struct Animation D_088a7600[];
extern const struct Animation bon_odori_anim_donpan1_happy1[];
extern const struct Animation D_088a7678[];
extern const struct Animation bon_odori_anim_donpan2_happy1[];
extern const struct Animation D_088a76b8[];
extern const struct Animation bon_odori_anim_donpan3_happy1[];
extern const struct Animation D_088a7738[];
extern const struct Animation bon_odori_anim_player_happy1[];
extern const struct Animation D_088a76f8[];
extern const struct Animation bon_odori_anim_donpan1_happy2[];
extern const struct Animation D_088a7778[];
extern const struct Animation bon_odori_anim_donpan2_happy2[];
extern const struct Animation D_088a77b8[];
extern const struct Animation bon_odori_anim_donpan3_happy2[];
extern const struct Animation D_088a7838[];
extern const struct Animation bon_odori_anim_player_happy2[];
extern const struct Animation D_088a77f8[];
extern const struct Animation bon_odori_anim_donpan1_spin[];
extern const struct Animation D_088a7878[];
extern const struct Animation bon_odori_anim_donpan2_spin[];
extern const struct Animation D_088a78d8[];
extern const struct Animation bon_odori_anim_donpan3_spin[];
extern const struct Animation D_088a7938[];
extern const struct Animation bon_odori_anim_player_spin[];
extern const struct Animation D_088a7998[];
extern const struct Animation bon_odori_anim_yagura_beat[];
extern const struct Animation D_088a7640[];
extern const struct Animation bon_odori_anim_yagura_speak[];
extern const struct Animation D_088a7660[];
extern const struct Animation bon_odori_anim_yagura_frown[];
extern const struct Animation D_088a79f8[];


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089deb28] All Animations
const struct Animation *const bon_odori_anim[][2] = {
    { bon_odori_anim_donpan1_beat, D_088a7140 },
    { bon_odori_anim_donpan2_beat, D_088a7218 },
    { bon_odori_anim_donpan3_beat, D_088a7398 },
    { bon_odori_anim_player_beat, D_088a72d8 },
    { bon_odori_anim_donpan1_clap1, D_088a7198 },
    { bon_odori_anim_donpan2_clap1, D_088a7258 },
    { bon_odori_anim_donpan3_clap1, D_088a73d8 },
    { bon_odori_anim_player_clap1, D_088a7318 },
    { bon_odori_anim_donpan1_clap2, D_088a71e0 },
    { bon_odori_anim_donpan2_clap2, D_088a72a0 },
    { bon_odori_anim_donpan3_clap2, D_088a7420 },
    { bon_odori_anim_player_clap2, D_088a7360 },
    { bon_odori_anim_donpan1_bow, D_088a74e0 },
    { bon_odori_anim_donpan2_bow, D_088a7508 },
    { bon_odori_anim_donpan3_bow, D_088a7558 },
    { bon_odori_anim_player_bow, D_088a7530 },
    { bon_odori_anim_donpan1_glare, D_088a75c0 },
    { bon_odori_anim_donpan2_glare, D_088a7580 },
    { bon_odori_anim_donpan3_glare, D_088a7600 },
    { bon_odori_anim_donpan1_happy1, D_088a7678 },
    { bon_odori_anim_donpan2_happy1, D_088a76b8 },
    { bon_odori_anim_donpan3_happy1, D_088a7738 },
    { bon_odori_anim_player_happy1, D_088a76f8 },
    { bon_odori_anim_donpan1_happy2, D_088a7778 },
    { bon_odori_anim_donpan2_happy2, D_088a77b8 },
    { bon_odori_anim_donpan3_happy2, D_088a7838 },
    { bon_odori_anim_player_happy2, D_088a77f8 },
    { bon_odori_anim_donpan1_spin, D_088a7878 },
    { bon_odori_anim_donpan2_spin, D_088a78d8 },
    { bon_odori_anim_donpan3_spin, D_088a7938 },
    { bon_odori_anim_player_spin, D_088a7998 },
    { bon_odori_anim_yagura_beat, D_088a7640 },
    { bon_odori_anim_yagura_speak, D_088a7660 },
    { bon_odori_anim_yagura_frown, D_088a79f8 }
};

// [D_089dec38] Animation Table
const struct Animation *const *const bon_odori_anim_table[] = {
    bon_odori_anim[0],
    bon_odori_anim[1],
    bon_odori_anim[2],
    bon_odori_anim[3],
    bon_odori_anim[4],
    bon_odori_anim[5],
    bon_odori_anim[6],
    bon_odori_anim[7],
    bon_odori_anim[8],
    bon_odori_anim[9],
    bon_odori_anim[10],
    bon_odori_anim[11],
    bon_odori_anim[12],
    bon_odori_anim[13],
    bon_odori_anim[14],
    bon_odori_anim[15],
    bon_odori_anim[16],
    bon_odori_anim[17],
    bon_odori_anim[18],
    bon_odori_anim[19],
    bon_odori_anim[20],
    bon_odori_anim[21],
    bon_odori_anim[22],
    bon_odori_anim[23],
    bon_odori_anim[24],
    bon_odori_anim[25],
    bon_odori_anim[26],
    bon_odori_anim[27],
    bon_odori_anim[28],
    bon_odori_anim[29],
    bon_odori_anim[30],
    bon_odori_anim[31],
    bon_odori_anim[32],
    bon_odori_anim[33]
};

// [D_089decc0]
const u8 bon_odori_donpan_anim_map[][4] = {
    /* Beat   */ {  0,  1,  2,  3 },
    /* Clap2  */ {  8,  9, 10, 11 },
    /* Clap1  */ {  4,  5,  6,  7 },
    /* Bow    */ { 12, 13, 14, 15 },
    /* Glare  */ { 16, 17, 18,  0 },
    /* Happy1 */ { 19, 20, 21, 22 },
    /* Happy2 */ { 23, 24, 25, 26 },
    /* Spin   */ { 27, 28, 29, 30 }
};

// [D_089dece0]
const u8 *const bon_odori_donpan_anim_id_table[] = {
    /* Beat   */ bon_odori_donpan_anim_map[0],
    /* Clap2  */ bon_odori_donpan_anim_map[1],
    /* Clap1  */ bon_odori_donpan_anim_map[2],
    /* Bow    */ bon_odori_donpan_anim_map[3],
    /* Glare  */ bon_odori_donpan_anim_map[4],
    /* Happy1 */ bon_odori_donpan_anim_map[5],
    /* Happy2 */ bon_odori_donpan_anim_map[6],
    /* Spin   */ bon_odori_donpan_anim_map[7],
};

// [D_089ded00]
const u16 bon_odori_anim_durations[] = {
    /* Beat   */ 0x00,
    /* Clap2  */ 0x2C,
    /* Clap1  */ 0x14,
    /* Bow    */ 0x2C,
    /* Glare  */ 0x00,
    /* Happy1 */ 0x00,
    /* Happy2 */ 0x00,
    /* Spin   */ 0x0C
};

// [D_089ded10] Buffered Textures List
const struct CompressedGraphics *const bon_odori_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
