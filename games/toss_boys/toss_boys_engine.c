#include "engines/toss_boys.h"


  /* TOSS BOYS - GAME ENGINE DATA */


extern const struct Animation anim_toss_boys_beat_r[];
extern const struct Animation anim_toss_remix5_beat_r[];
extern const struct Animation anim_toss_boys_2_beat_r[];
extern const struct Animation anim_toss_boys_beat_b[];
extern const struct Animation anim_toss_remix5_beat_b[];
extern const struct Animation anim_toss_boys_2_beat_b[];
extern const struct Animation anim_toss_boys_beat_y[];
extern const struct Animation anim_toss_remix5_beat_y[];
extern const struct Animation anim_toss_boys_2_beat_y[];
extern const struct Animation anim_toss_boys_pass_r[];
extern const struct Animation anim_toss_remix5_pass_r[];
extern const struct Animation anim_toss_boys_2_pass_r[];
extern const struct Animation anim_toss_boys_pass_b[];
extern const struct Animation anim_toss_remix5_pass_b[];
extern const struct Animation anim_toss_boys_2_pass_b[];
extern const struct Animation anim_toss_boys_pass_y[];
extern const struct Animation anim_toss_remix5_pass_y[];
extern const struct Animation anim_toss_boys_2_pass_y[];
extern const struct Animation anim_toss_boys_dispenser_close[];
extern const struct Animation anim_toss_remix5_dispenser_close[];
extern const struct Animation anim_toss_boys_2_dispenser_close[];
extern const struct Animation anim_toss_boys_ball1[];
extern const struct Animation anim_toss_remix5_ball1[];
extern const struct Animation anim_toss_boys_2_ball1[];
extern const struct Animation anim_toss_boys_ball3[];
extern const struct Animation anim_toss_remix5_ball3[];
extern const struct Animation anim_toss_boys_2_ball3[];
extern const struct Animation anim_toss_boys_ball2[];
extern const struct Animation anim_toss_remix5_ball2[];
extern const struct Animation anim_toss_boys_2_ball2[];
extern const struct Animation anim_toss_boys_ball_wobble[];
extern const struct Animation anim_toss_remix5_ball_wobble[];
extern const struct Animation anim_toss_boys_2_ball_wobble[];
extern const struct Animation anim_toss_boys_miss_r[];
extern const struct Animation anim_toss_remix5_miss_r[];
extern const struct Animation anim_toss_boys_2_miss_r[];
extern const struct Animation anim_toss_boys_miss_b[];
extern const struct Animation anim_toss_remix5_miss_b[];
extern const struct Animation anim_toss_boys_2_miss_b[];
extern const struct Animation anim_toss_boys_miss_y[];
extern const struct Animation anim_toss_remix5_miss_y[];
extern const struct Animation anim_toss_boys_2_miss_y[];
extern const struct Animation anim_toss_boys_super_pass_r[];
extern const struct Animation anim_toss_remix5_super_pass_r[];
extern const struct Animation anim_toss_boys_2_super_pass_r[];
extern const struct Animation anim_toss_boys_super_pass_b[];
extern const struct Animation anim_toss_remix5_super_pass_b[];
extern const struct Animation anim_toss_boys_2_super_pass_b[];
extern const struct Animation anim_toss_boys_super_pass_y[];
extern const struct Animation anim_toss_remix5_super_pass_y[];
extern const struct Animation anim_toss_boys_2_super_pass_y[];
extern const struct Animation anim_toss_boys_pop_effect[];
extern const struct Animation anim_toss_remix5_pop_effect[];
extern const struct Animation anim_toss_boys_2_pop_effect[];
extern const struct Animation anim_toss_boys_super_beat_r[];
extern const struct Animation anim_toss_remix5_super_beat_r[];
extern const struct Animation anim_toss_boys_2_super_beat_r[];
extern const struct Animation anim_toss_boys_super_beat_b[];
extern const struct Animation anim_toss_remix5_super_beat_b[];
extern const struct Animation anim_toss_boys_2_super_beat_b[];
extern const struct Animation anim_toss_boys_super_beat_y[];
extern const struct Animation anim_toss_remix5_super_beat_y[];
extern const struct Animation anim_toss_boys_2_super_beat_y[];
extern const struct Animation anim_toss_boys_catch_r[];
extern const struct Animation anim_toss_remix5_catch_r[];
extern const struct Animation anim_toss_boys_2_catch_r[];
extern const struct Animation anim_toss_boys_catch_b[];
extern const struct Animation anim_toss_remix5_catch_b[];
extern const struct Animation anim_toss_boys_2_catch_b[];
extern const struct Animation anim_toss_boys_catch_y[];
extern const struct Animation anim_toss_remix5_catch_y[];
extern const struct Animation anim_toss_boys_2_catch_y[];
extern const struct Animation anim_toss_boys_ready_r[];
extern const struct Animation anim_toss_remix5_ready_r[];
extern const struct Animation anim_toss_boys_2_ready_r[];
extern const struct Animation anim_toss_boys_ready_b[];
extern const struct Animation anim_toss_remix5_ready_b[];
extern const struct Animation anim_toss_boys_2_ready_b[];
extern const struct Animation anim_toss_boys_ready_y[];
extern const struct Animation anim_toss_remix5_ready_y[];
extern const struct Animation anim_toss_boys_2_ready_y[];
extern const struct Animation anim_toss_boys_pop_r[];
extern const struct Animation anim_toss_remix5_pop_r[];
extern const struct Animation anim_toss_boys_2_pop_r[];
extern const struct Animation anim_toss_boys_pop_b[];
extern const struct Animation anim_toss_remix5_pop_b[];
extern const struct Animation anim_toss_boys_2_pop_b[];
extern const struct Animation anim_toss_boys_pop_y[];
extern const struct Animation anim_toss_remix5_pop_y[];
extern const struct Animation anim_toss_boys_2_pop_y[];
extern const struct Animation anim_toss_boys_barely_r[];
extern const struct Animation anim_toss_remix5_barely_r[];
extern const struct Animation anim_toss_boys_2_barely_r[];
extern const struct Animation anim_toss_boys_barely_b[];
extern const struct Animation anim_toss_remix5_barely_b[];
extern const struct Animation anim_toss_boys_2_barely_b[];
extern const struct Animation anim_toss_boys_barely_y[];
extern const struct Animation anim_toss_remix5_barely_y[];
extern const struct Animation anim_toss_boys_2_barely_y[];
extern const struct Animation anim_toss_boys_arrow_r[];
extern const struct Animation anim_toss_remix5_arrow_r[];
extern const struct Animation anim_toss_boys_2_arrow_r[];
extern const struct Animation anim_toss_boys_arrow_b[];
extern const struct Animation anim_toss_remix5_arrow_b[];
extern const struct Animation anim_toss_boys_2_arrow_b[];
extern const struct Animation anim_toss_boys_arrow_y[];
extern const struct Animation anim_toss_remix5_arrow_y[];
extern const struct Animation anim_toss_boys_2_arrow_y[];

extern const struct SequenceData s_toss_red_blue1_seqData;
extern const struct SequenceData s_toss_red_blue2_seqData;
extern const struct SequenceData s_toss_red_blue3_seqData;
extern const struct SequenceData s_toss_red_yelw1_seqData;
extern const struct SequenceData s_toss_red_yelw2_seqData;
extern const struct SequenceData s_toss_red_yelw3_seqData;
extern const struct SequenceData s_toss_red_red_seqData;
extern const struct SequenceData s_toss_blue_red1_seqData;
extern const struct SequenceData s_toss_blue_red2_seqData;
extern const struct SequenceData s_toss_blue_red3_seqData;
extern const struct SequenceData s_toss_blue_yelw1_seqData;
extern const struct SequenceData s_toss_blue_yelw2_seqData;
extern const struct SequenceData s_toss_blue_yelw3_seqData;
extern const struct SequenceData s_toss_blue_blue_seqData;
extern const struct SequenceData s_toss_yelw_red1_seqData;
extern const struct SequenceData s_toss_yelw_red2_seqData;
extern const struct SequenceData s_toss_yelw_red3_seqData;
extern const struct SequenceData s_toss_yelw_blue1_seqData;
extern const struct SequenceData s_toss_yelw_blue2_seqData;
extern const struct SequenceData s_toss_yelw_blue3_seqData;
extern const struct SequenceData s_toss_yelw_yelw_seqData;
extern const struct SequenceData s_toss_red_before_seqData;
extern const struct SequenceData s_toss_blue_before_seqData;
extern const struct SequenceData s_toss_yelw_before_seqData;
extern const struct SequenceData s_toss_red_break_seqData;
extern const struct SequenceData s_toss_blue_break_seqData;
extern const struct SequenceData s_toss_yelw_break_seqData;
extern const struct SequenceData s_toss_ball_red_seqData;
extern const struct SequenceData s_toss_ball_blue_seqData;
extern const struct SequenceData s_toss_ball_yelw_seqData;
extern const struct SequenceData s_toss_ball_haretu_seqData;
extern const struct SequenceData s_f_toss_miss1_seqData;
extern const struct SequenceData s_f_toss_miss2_seqData;
extern const struct SequenceData s_f_toss_miss3_seqData;

extern const struct CompressedGraphics D_08cf961c;
extern const struct CompressedGraphics D_08cfa60c;
extern const struct CompressedGraphics D_08cf8918;
extern const struct CompressedGraphics D_08cf97d0;
extern const struct CompressedGraphics D_08cf86dc;
extern const struct CompressedGraphics D_08cff0bc;
extern const struct CompressedGraphics D_08d00158;
extern const struct CompressedGraphics D_08cfe3b8;
extern const struct CompressedGraphics D_08cff31c;
extern const struct CompressedGraphics D_08cfdcc4;
extern const struct CompressedGraphics D_08cf961c;
extern const struct CompressedGraphics D_08cfa60c;
extern const struct CompressedGraphics D_08cfa810;
extern const struct CompressedGraphics D_08cfcb9c;
extern const struct CompressedGraphics D_08cfc9e8;

extern const Palette toss_boys_bg_pal[];
extern const Palette toss_boys_obj_pal[];
extern const Palette toss_boys_2_bg_pal[];
extern const Palette toss_boys_2_obj_pal[];
extern const Palette toss_boys_remix5_bg_pal[];
extern const Palette toss_boys_remix5_obj_pal[];


  //  //  //  ANIMATION DATA  //  //  //


// [D_089e8150] All Animations
const struct Animation *const toss_boys_anim[][3] = {
    /* 0x00 */ { anim_toss_boys_beat_r, anim_toss_remix5_beat_r, anim_toss_boys_2_beat_r },
    /* 0x01 */ { anim_toss_boys_beat_b, anim_toss_remix5_beat_b, anim_toss_boys_2_beat_b },
    /* 0x02 */ { anim_toss_boys_beat_y, anim_toss_remix5_beat_y, anim_toss_boys_2_beat_y },
    /* 0x03 */ { anim_toss_boys_pass_r, anim_toss_remix5_pass_r, anim_toss_boys_2_pass_r },
    /* 0x04 */ { anim_toss_boys_pass_b, anim_toss_remix5_pass_b, anim_toss_boys_2_pass_b },
    /* 0x05 */ { anim_toss_boys_pass_y, anim_toss_remix5_pass_y, anim_toss_boys_2_pass_y },
    /* 0x06 */ { anim_toss_boys_dispenser_close, anim_toss_remix5_dispenser_close, anim_toss_boys_2_dispenser_close },
    /* 0x07 */ { anim_toss_boys_ball1, anim_toss_remix5_ball1, anim_toss_boys_2_ball1 },
    /* 0x08 */ { anim_toss_boys_ball3, anim_toss_remix5_ball3, anim_toss_boys_2_ball3 },
    /* 0x09 */ { anim_toss_boys_ball2, anim_toss_remix5_ball2, anim_toss_boys_2_ball2 },
    /* 0x0A */ { anim_toss_boys_ball_wobble, anim_toss_remix5_ball_wobble, anim_toss_boys_2_ball_wobble },
    /* 0x0B */ { anim_toss_boys_miss_r, anim_toss_remix5_miss_r, anim_toss_boys_2_miss_r },
    /* 0x0C */ { anim_toss_boys_miss_b, anim_toss_remix5_miss_b, anim_toss_boys_2_miss_b },
    /* 0x0D */ { anim_toss_boys_miss_y, anim_toss_remix5_miss_y, anim_toss_boys_2_miss_y },
    /* 0x0E */ { anim_toss_boys_super_pass_r, anim_toss_remix5_super_pass_r, anim_toss_boys_2_super_pass_r },
    /* 0x0F */ { anim_toss_boys_super_pass_b, anim_toss_remix5_super_pass_b, anim_toss_boys_2_super_pass_b },
    /* 0x10 */ { anim_toss_boys_super_pass_y, anim_toss_remix5_super_pass_y, anim_toss_boys_2_super_pass_y },
    /* 0x11 */ { anim_toss_boys_pop_effect, anim_toss_remix5_pop_effect, anim_toss_boys_2_pop_effect },
    /* 0x12 */ { anim_toss_boys_super_beat_r, anim_toss_remix5_super_beat_r, anim_toss_boys_2_super_beat_r },
    /* 0x13 */ { anim_toss_boys_super_beat_b, anim_toss_remix5_super_beat_b, anim_toss_boys_2_super_beat_b },
    /* 0x14 */ { anim_toss_boys_super_beat_y, anim_toss_remix5_super_beat_y, anim_toss_boys_2_super_beat_y },
    /* 0x15 */ { anim_toss_boys_catch_r, anim_toss_remix5_catch_r, anim_toss_boys_2_catch_r },
    /* 0x16 */ { anim_toss_boys_catch_b, anim_toss_remix5_catch_b, anim_toss_boys_2_catch_b },
    /* 0x17 */ { anim_toss_boys_catch_y, anim_toss_remix5_catch_y, anim_toss_boys_2_catch_y },
    /* 0x18 */ { anim_toss_boys_ready_r, anim_toss_remix5_ready_r, anim_toss_boys_2_ready_r },
    /* 0x19 */ { anim_toss_boys_ready_b, anim_toss_remix5_ready_b, anim_toss_boys_2_ready_b },
    /* 0x1A */ { anim_toss_boys_ready_y, anim_toss_remix5_ready_y, anim_toss_boys_2_ready_y },
    /* 0x1B */ { anim_toss_boys_pop_r, anim_toss_remix5_pop_r, anim_toss_boys_2_pop_r },
    /* 0x1C */ { anim_toss_boys_pop_b, anim_toss_remix5_pop_b, anim_toss_boys_2_pop_b },
    /* 0x1D */ { anim_toss_boys_pop_y, anim_toss_remix5_pop_y, anim_toss_boys_2_pop_y },
    /* 0x1E */ { anim_toss_boys_barely_r, anim_toss_remix5_barely_r, anim_toss_boys_2_barely_r },
    /* 0x1F */ { anim_toss_boys_barely_b, anim_toss_remix5_barely_b, anim_toss_boys_2_barely_b },
    /* 0x20 */ { anim_toss_boys_barely_y, anim_toss_remix5_barely_y, anim_toss_boys_2_barely_y },
    /* 0x21 */ { anim_toss_boys_arrow_r, anim_toss_remix5_arrow_r, anim_toss_boys_2_arrow_r },
    /* 0x22 */ { anim_toss_boys_arrow_b, anim_toss_remix5_arrow_b, anim_toss_boys_2_arrow_b },
    /* 0x23 */ { anim_toss_boys_arrow_y, anim_toss_remix5_arrow_y, anim_toss_boys_2_arrow_y }
};

// [D_089e8300] Animation Table
const struct Animation *const *const toss_boys_anim_table[] = {
    /* 0x00 */ toss_boys_anim[0],
    /* 0x01 */ toss_boys_anim[1],
    /* 0x02 */ toss_boys_anim[2],
    /* 0x03 */ toss_boys_anim[3],
    /* 0x04 */ toss_boys_anim[4],
    /* 0x05 */ toss_boys_anim[5],
    /* 0x06 */ toss_boys_anim[6],
    /* 0x07 */ toss_boys_anim[7],
    /* 0x08 */ toss_boys_anim[8],
    /* 0x09 */ toss_boys_anim[9],
    /* 0x0A */ toss_boys_anim[10],
    /* 0x0B */ toss_boys_anim[11],
    /* 0x0C */ toss_boys_anim[12],
    /* 0x0D */ toss_boys_anim[13],
    /* 0x0E */ toss_boys_anim[14],
    /* 0x0F */ toss_boys_anim[15],
    /* 0x10 */ toss_boys_anim[16],
    /* 0x11 */ toss_boys_anim[17],
    /* 0x12 */ toss_boys_anim[18],
    /* 0x13 */ toss_boys_anim[19],
    /* 0x14 */ toss_boys_anim[20],
    /* 0x15 */ toss_boys_anim[21],
    /* 0x16 */ toss_boys_anim[22],
    /* 0x17 */ toss_boys_anim[23],
    /* 0x18 */ toss_boys_anim[24],
    /* 0x19 */ toss_boys_anim[25],
    /* 0x1A */ toss_boys_anim[26],
    /* 0x1B */ toss_boys_anim[27],
    /* 0x1C */ toss_boys_anim[28],
    /* 0x1D */ toss_boys_anim[29],
    /* 0x1E */ toss_boys_anim[30],
    /* 0x1F */ toss_boys_anim[31],
    /* 0x20 */ toss_boys_anim[32],
    /* 0x21 */ toss_boys_anim[33],
    /* 0x22 */ toss_boys_anim[34],
    /* 0x23 */ toss_boys_anim[35]
};


  //  //  //  DRUMTECH DATA  //  //  //


// [D_089e8390] DrumTech Instrument Bank
const struct DrumTechInstrument toss_boys_drumtech_bank[] = {
    /* Drum 000 */ {
        /* SoundPlayer  */ -1,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.0),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ NULL
    },
    /* Drum 001 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_blue1_seqData
    },
    /* Drum 002 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_blue2_seqData
    },
    /* Drum 003 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_blue3_seqData
    },
    /* Drum 004 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_yelw1_seqData
    },
    /* Drum 005 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_yelw2_seqData
    },
    /* Drum 006 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_yelw3_seqData
    },
    /* Drum 007 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_red_seqData
    },
    /* Drum 008 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_red_seqData
    },
    /* Drum 009 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_red_seqData
    },
    /* Drum 0010 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_red1_seqData
    },
    /* Drum 011 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_red2_seqData
    },
    /* Drum 012 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_red3_seqData
    },
    /* Drum 013 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_yelw1_seqData
    },
    /* Drum 014 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_yelw2_seqData
    },
    /* Drum 015 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_yelw3_seqData
    },
    /* Drum 016 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_blue_seqData
    },
    /* Drum 017 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_blue_seqData
    },
    /* Drum 018 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_blue_seqData
    },
    /* Drum 019 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_red1_seqData
    },
    /* Drum 020 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_red2_seqData
    },
    /* Drum 021 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_red3_seqData
    },
    /* Drum 022 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_blue1_seqData
    },
    /* Drum 023 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_blue2_seqData
    },
    /* Drum 024 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_blue3_seqData
    },
    /* Drum 025 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_yelw_seqData
    },
    /* Drum 026 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_yelw_seqData
    },
    /* Drum 027 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.5),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_yelw_seqData
    },
    /* Drum 028 */ {
        /* SoundPlayer  */ SFX_PLAYER_1,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.25),
        /* Base Pitch   */ INT_TO_FIXED(2.0),
        /* Sound Effect */ &s_toss_red_before_seqData
    },
    /* Drum 029 */ {
        /* SoundPlayer  */ SFX_PLAYER_1,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.25),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_before_seqData
    },
    /* Drum 030 */ {
        /* SoundPlayer  */ SFX_PLAYER_1,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.25),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_before_seqData
    },
    /* Drum 031 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.0),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_red_break_seqData
    },
    /* Drum 032 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.0),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_blue_break_seqData
    },
    /* Drum 033 */ {
        /* SoundPlayer  */ SFX_PLAYER_2,
        /* Duration     */ 0,
        /* Base Volume  */ INT_TO_FIXED(1.0),
        /* Base Pitch   */ INT_TO_FIXED(0.0),
        /* Sound Effect */ &s_toss_yelw_break_seqData
    }
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e8528] Buffered Textures List
const struct CompressedGraphics *const toss_boys_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e852c] Graphics Table (Toss Boys)
const struct GraphicsTable gfx_table_toss_boys[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cf961c,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cfa60c,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08cf8918,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cf97d0,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cf86dc,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ toss_boys_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ toss_boys_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e858c] Graphics Table (Remix 5)
const struct GraphicsTable gfx_table_toss_boys_remix5[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cf961c,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cfa60c,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08cfa810,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cfcb9c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cfc9e8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ toss_boys_remix5_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ toss_boys_remix5_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e85ec] Graphics Table (Toss Boys 2)
const struct GraphicsTable gfx_table_toss_boys_2[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cff0bc,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d00158,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08cfe3b8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cff31c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cfdcc4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ toss_boys_2_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ toss_boys_2_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e864c] Graphics Table Index
const struct GraphicsTable *const toss_boys_gfx_tables[] = {
    /* 0x00 */ gfx_table_toss_boys,
    /* 0x01 */ gfx_table_toss_boys_remix5,
    /* 0x02 */ gfx_table_toss_boys_2
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e8658] Button Masks
const u16 toss_boys_button_masks[] = {
    /* R */ A_BUTTON,
    /* B */ B_BUTTON,
    /* Y */ DPAD_ALL
};

// [D_089e8660] Animations
const struct Animation *const D_089e8660[][3] = {
    /* PASS */ {
        /* R */ NULL,
        /* B */ NULL,
        /* Y */ NULL
    },
    /* SUPER PASS */ {
        /* R */ NULL,
        /* B */ NULL,
        /* Y */ NULL
    },
    /* CATCH */ {
        /* R */ NULL,
        /* B */ NULL,
        /* Y */ NULL
    },
    /* POP */ {
        /* R */ NULL,
        /* B */ NULL,
        /* Y */ NULL
    }
};

// [D_089e8690] Playback Param. 1 (for above)
const s8 D_089e8690[][3] = {
    /* PASS */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* SUPER PASS */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* CATCH */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* POP */ {
        /* R */ 1,
        /* B */ 1,
        /* Y */ 1
    }
};

// [D_089e869c] ?
const struct Vector2 D_089e869c[] = {
    /* R */ { 185,  91 },
    /* B */ { 161, 116 },
    /* Y */ {  58, 100 }
};

// [D_089e86a8] ?
const struct Vector2 D_089e86a8[] = {
    /* 0x00 */ { 185, 67 },
    /* 0x01 */ { 161, 84 },
    /* 0x02 */ {  58, 68 },
    /* 0x03 */ { 120, 98 }
};

// [D_089e86b8] Start Indicator Arrow Animation IDs
const u8 toss_boys_arrow_anim_ids[] = {
    /* R */ TOSS_BOYS_ANIM_ARROW_RED,
    /* B */ TOSS_BOYS_ANIM_ARROW_BLUE,
    /* Y */ TOSS_BOYS_ANIM_ARROW_YELLOW
};

// [D_089e86bc] ?
const s16 D_089e86bc[][4] = {
    /* 0x00 */ { 0x04, -0x08, -0x20, -0x10 },
    /* 0x01 */ { 0x08,  0x04, -0x20, -0x10 },
    /* 0x02 */ { 0x20,  0x20,  0x04,  0x10 },
    /* 0x03 */ { 0x10,  0x10, -0x10,  0x04 }
};

// [D_089e86dc] Ball Toss SFX
const struct SequenceData *const toss_boys_ball_bounce_sfx[] = {
    /* R */ &s_toss_ball_red_seqData,
    /* B */ &s_toss_ball_blue_seqData,
    /* Y */ &s_toss_ball_yelw_seqData
};

// [D_089e86e8] Ball Pop SFX
const struct SequenceData *const toss_boys_ball_pop_sfx[] = {
    /* R */ &s_toss_ball_haretu_seqData,
    /* B */ &s_toss_ball_haretu_seqData,
    /* Y */ &s_toss_ball_haretu_seqData
};

// [D_089e86f4] Miss Animation IDs
const s8 toss_boys_miss_anim_ids[] = {
    /* R */ TOSS_BOYS_ANIM_MISS_RED,
    /* B */ TOSS_BOYS_ANIM_MISS_BLUE,
    /* Y */ TOSS_BOYS_ANIM_MISS_YELLOW
};

// [D_089e86f8] Ball Miss SFX
const struct SequenceData *const toss_boys_ball_miss_sfx[] = {
    /* R */ &s_f_toss_miss1_seqData,
    /* B */ &s_f_toss_miss2_seqData,
    /* Y */ &s_f_toss_miss3_seqData
};

// [D_089e8704] ?
const u8 D_089e8704[][4] = {
    /* 0x00 */ { 0x10, 0x10, 0x18, 0x10 },
    /* 0x01 */ { 0x10, 0x10, 0x18, 0x10 },
    /* 0x02 */ { 0x18, 0x18, 0x10, 0x10 },
    /* 0x03 */ { 0x00, 0x00, 0x00, 0x00 }
};


  //  //  //  CUE DATA  //  //  //


// [D_089e8714] Cue 00 (Aka-chan - Toss)
const struct CueDefinition toss_boys_cue_toss_r = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x00,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8754] Cue 01 (Ao-kun - Toss)
const struct CueDefinition toss_boys_cue_toss_b = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x01,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8794] Cue 02 (Kii-yan - Toss)
const struct CueDefinition toss_boys_cue_toss_y = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x02,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e87d4] Cue 04 (Aka-chan - Catch)
const struct CueDefinition toss_boys_cue_catch_r = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x10,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8814] Cue 05 (Ao-kun - Catch)
const struct CueDefinition toss_boys_cue_catch_b = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x11,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8854] Cue 06 (Kii-yan - Catch)
const struct CueDefinition toss_boys_cue_catch_y = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x12,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8894] Cue 08 (Aka-chan - Pop)
const struct CueDefinition toss_boys_cue_pop_r = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x03, 0x03,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x20,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e88d4] Cue 09 (Ao-kun - Pop)
const struct CueDefinition toss_boys_cue_pop_b = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x03, 0x03,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x21,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8914] Cue 0A (Kii-yan - Pop)
const struct CueDefinition toss_boys_cue_pop_y = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x03, 0x03,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ toss_boys_cue_spawn,
    /* Spawn Parameter */ 0x22,
    /* Func. Update    */ toss_boys_cue_update,
    /* Func. Despawn   */ toss_boys_cue_despawn,
    /* Func. Hit       */ toss_boys_cue_hit,
    /* Func. Barely    */ toss_boys_cue_barely,
    /* Func. Miss      */ toss_boys_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8954] Cue Definition Index
const struct CueDefinition *const toss_boys_cue_index[] = {
    /* 0x00 */ &toss_boys_cue_toss_r,
    /* 0x01 */ &toss_boys_cue_toss_b,
    /* 0x02 */ &toss_boys_cue_toss_y,
    /* 0x03 */ NULL,
    /* 0x04 */ &toss_boys_cue_catch_r,
    /* 0x05 */ &toss_boys_cue_catch_b,
    /* 0x06 */ &toss_boys_cue_catch_y,
    /* 0x07 */ NULL,
    /* 0x08 */ &toss_boys_cue_pop_r,
    /* 0x09 */ &toss_boys_cue_pop_b,
    /* 0x0A */ &toss_boys_cue_pop_y,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};

// [D_089e8988] Hit Animation IDs
const s8 toss_boys_hit_anim_ids[][3] = {
    /* PASS */ {
        /* R */ TOSS_BOYS_ANIM_PASS_RED,
        /* B */ TOSS_BOYS_ANIM_PASS_BLUE,
        /* Y */ TOSS_BOYS_ANIM_PASS_YELLOW
    },
    /* SUPER PASS */ {
        /* R */ TOSS_BOYS_ANIM_SUPER_PASS_RED,
        /* B */ TOSS_BOYS_ANIM_SUPER_PASS_BLUE,
        /* Y */ TOSS_BOYS_ANIM_SUPER_PASS_YELLOW
    },
    /* CATCH */ {
        /* R */ TOSS_BOYS_ANIM_CATCH_RED,
        /* B */ TOSS_BOYS_ANIM_CATCH_BLUE,
        /* Y */ TOSS_BOYS_ANIM_CATCH_YELLOW
    },
    /* POP */ {
        /* R */ TOSS_BOYS_ANIM_POP_RED,
        /* B */ TOSS_BOYS_ANIM_POP_BLUE,
        /* Y */ TOSS_BOYS_ANIM_POP_YELLOW
    }
};

// [D_089e8994] Barely Animation IDs
const s8 toss_boys_barely_anim_ids[][3] = {
    /* PASS */ {
        /* R */ TOSS_BOYS_ANIM_BARELY_RED,
        /* B */ TOSS_BOYS_ANIM_BARELY_BLUE,
        /* Y */ TOSS_BOYS_ANIM_BARELY_YELLOW
    },
    /* SUPER PASS */ {
        /* R */ TOSS_BOYS_ANIM_BARELY_RED,
        /* B */ TOSS_BOYS_ANIM_BARELY_BLUE,
        /* Y */ TOSS_BOYS_ANIM_BARELY_YELLOW
    },
    /* CATCH */ {
        /* R */ TOSS_BOYS_ANIM_CATCH_RED,
        /* B */ TOSS_BOYS_ANIM_CATCH_BLUE,
        /* Y */ TOSS_BOYS_ANIM_CATCH_YELLOW
    },
    /* POP */ {
        /* R */ TOSS_BOYS_ANIM_POP_RED,
        /* B */ TOSS_BOYS_ANIM_POP_BLUE,
        /* Y */ TOSS_BOYS_ANIM_POP_YELLOW
    }
};

// [D_089e89a0] "Prepare to Pop" Animation IDs
const s8 toss_boys_ready_anim_ids[][3] = {
    /* PASS */ {
        /* R */ -1,
        /* B */ -1,
        /* Y */ -1
    },
    /* SUPER PASS */ {
        /* R */ -1,
        /* B */ -1,
        /* Y */ -1
    },
    /* CATCH */ {
        /* R */ -1,
        /* B */ -1,
        /* Y */ -1
    },
    /* POP */ {
        /* R */ TOSS_BOYS_ANIM_READY_RED,
        /* B */ TOSS_BOYS_ANIM_READY_BLUE,
        /* Y */ TOSS_BOYS_ANIM_READY_YELLOW
    }
};

// [D_089e89ac] Playback Param. 1 (for above)
const s8 toss_boys_ready_anim_playback[][3] = {
    /* PASS */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* SUPER PASS */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* CATCH */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* POP */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    }
};

// [D_089e89b8] Beat Animation IDs
const s8 toss_boys_beat_anim_ids[][3] = {
    /* PASS */ {
        /* R */ TOSS_BOYS_ANIM_BEAT_RED,
        /* B */ TOSS_BOYS_ANIM_BEAT_BLUE,
        /* Y */ TOSS_BOYS_ANIM_BEAT_YELLOW
    },
    /* SUPER PASS */ {
        /* R */ TOSS_BOYS_ANIM_SUPER_BEAT_RED,
        /* B */ TOSS_BOYS_ANIM_SUPER_BEAT_BLUE,
        /* Y */ TOSS_BOYS_ANIM_SUPER_BEAT_YELLOW
    },
    /* CATCH */ {
        /* R */ -1,
        /* B */ -1,
        /* Y */ -1
    },
    /* POP */ {
        /* R */ TOSS_BOYS_ANIM_READY_RED,
        /* B */ TOSS_BOYS_ANIM_READY_BLUE,
        /* Y */ TOSS_BOYS_ANIM_READY_YELLOW
    }
};

// [D_089e89c4] Playback Param. 1 (for above)
const s8 toss_boys_beat_anim_playback[][3] = {
    /* PASS */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* SUPER PASS */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* CATCH */ {
        /* R */ 0,
        /* B */ 0,
        /* Y */ 0
    },
    /* POP */ {
        /* R */ 1,
        /* B */ 1,
        /* Y */ 1
    }
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e89d0] Common Events
const EngineEvent toss_boys_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) toss_boys_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) toss_boys_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) toss_boys_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e89e0] Engine Events
const EngineEvent toss_boys_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_0803f1bc,
    /* 0x01 */ (EngineEvent) func_0803f390,
    /* 0x02 */ (EngineEvent) func_0803f3b0,
    /* 0x03 */ (EngineEvent) func_0803e9b0,
    /* 0x04 */ (EngineEvent) func_0803ea08,
    /* 0x05 */ (EngineEvent) func_0803fb00,
    /* 0x06 */ (EngineEvent) func_0803f0b8,
    /* 0x07 */ (EngineEvent) func_0803f12c,
    /* 0x08 */ (EngineEvent) func_0803e884,
    /* 0x09 */ (EngineEvent) toss_boys_engine_event_stub
};

// [D_089e8a08] Toss Boys Game Engine
const struct GameEngine toss_boys_engine = {
    /* Size in Memory */ 0x3a4,
    /* Start Engine   */ toss_boys_engine_start,
    /* Update Engine  */ toss_boys_engine_update,
    /* Stop Engine    */ toss_boys_engine_stop,
    /* Cue Index      */ toss_boys_cue_index,
    /* Common Events  */ toss_boys_common_events,
    /* Engine Events  */ toss_boys_engine_events,
    /* Input Event    */ toss_boys_input_event
};
