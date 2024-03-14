asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_cue_miss \n\
/* 0803f7cc */ PUSH {R4-R7, LR} \n\
/* 0803f7ce */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803f7d0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803f7d2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803f7d4 */ PUSH {R5-R7} \n\
/* 0803f7d6 */ SUB SP, 0x14 \n\
/* 0803f7d8 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0803f7da */ LDR R5, =gCurrentEngineData \n\
/* 0803f7dc */ LDR R1, [R5] \n\
/* 0803f7de */ LDR R2, =0x396 \n\
/* 0803f7e0 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803f7e2 */ LDRH R6, [R0] \n\
/* 0803f7e4 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0803f7e6 */ BEQ branch_0803f7f8 \n\
/* 0803f7e8 */ BL gameplay_ignore_this_cue_result \n\
/* 0803f7ec */ B branch_0803f964 \n\
\n\
.ltorg \n\
 \n\
branch_0803f7f8: \n\
/* 0803f7f8 */ MOVS R3, 0xDF @ Set R3 to 0xDF \n\
/* 0803f7fa */ LSLS R3, R3, 0x2 \n\
/* 0803f7fc */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803f7fe */ LDRB R0, [R0] \n\
/* 0803f800 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f802 */ BNE branch_0803f82c \n\
/* 0803f804 */ BL gameplay_ignore_this_cue_result \n\
/* 0803f808 */ LDRB R0, [R7, 0xB] \n\
/* 0803f80a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f80c */ BNE branch_0803f810 \n\
/* 0803f80e */ B branch_0803f964 \n\
 \n\
branch_0803f810: \n\
/* 0803f810 */ BL gameplay_ignore_this_cue_result \n\
/* 0803f814 */ LDRB R3, [R7, 0x7] \n\
/* 0803f816 */ LDRH R0, [R7, 0x4] \n\
/* 0803f818 */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0803f81a */ CMP R0, 0x30 @ Compare R0 and 0x30 \n\
/* 0803f81c */ BNE branch_0803f820 \n\
/* 0803f81e */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
 \n\
branch_0803f820: \n\
/* 0803f820 */ LDRH R2, [R7, 0x4] \n\
/* 0803f822 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803f824 */ MOVS R3, 0x5 @ Set R3 to 0x5 \n\
/* 0803f826 */ BL func_0803f1f4 \n\
/* 0803f82a */ B branch_0803f964 \n\
 \n\
branch_0803f82c: \n\
/* 0803f82c */ LDR R1, =D_089e8704 \n\
/* 0803f82e */ LDRB R0, [R7, 0x6] \n\
/* 0803f830 */ LSLS R0, R0, 0x2 \n\
/* 0803f832 */ LDRB R4, [R7, 0x7] \n\
/* 0803f834 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803f836 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f838 */ LDRB R0, [R0] \n\
/* 0803f83a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f83c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803f83e */ STRH R0, [R7, 0x2] \n\
/* 0803f840 */ LDRH R1, [R7, 0x2] \n\
/* 0803f842 */ LDRH R0, [R7, 0x4] \n\
/* 0803f844 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0803f846 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803f848 */ BL __divsi3 \n\
/* 0803f84c */ STRH R0, [R7, 0x2] \n\
/* 0803f84e */ LDR R1, =toss_boys_miss_anim_ids \n\
/* 0803f850 */ LDRB R0, [R7] \n\
/* 0803f852 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f854 */ LDRB R0, [R0] \n\
/* 0803f856 */ BL toss_boys_get_anim \n\
/* 0803f85a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803f85c */ LDR R3, =gSpriteHandler \n\
/* 0803f85e */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0803f860 */ LDR R0, [R3] \n\
/* 0803f862 */ LDR R3, [R5] \n\
/* 0803f864 */ LDRB R1, [R7] \n\
/* 0803f866 */ LSLS R1, R1, 0x1 \n\
/* 0803f868 */ MOVS R4, 0xD5 @ Set R4 to 0xD5 \n\
/* 0803f86a */ LSLS R4, R4, 0x2 \n\
/* 0803f86c */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0803f86e */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 0803f870 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803f872 */ LDRSH R1, [R3, R4] \n\
/* 0803f874 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803f876 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803f878 */ STR R3, [SP] \n\
/* 0803f87a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803f87c */ STR R3, [SP, 0x4] \n\
/* 0803f87e */ STR R6, [SP, 0x8] \n\
/* 0803f880 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f882 */ BL sprite_set_anim \n\
/* 0803f886 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803f888 */ BL ticks_to_frames \n\
/* 0803f88c */ LDR R1, [R5] \n\
/* 0803f88e */ LDR R4, =0x35a \n\
/* 0803f890 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803f892 */ LDRB R2, [R7] \n\
/* 0803f894 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803f896 */ STRB R0, [R1] \n\
/* 0803f898 */ LDR R0, [R5] \n\
/* 0803f89a */ LDR R3, =0x35d \n\
/* 0803f89c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803f89e */ LDRB R4, [R7] \n\
/* 0803f8a0 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803f8a2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803f8a4 */ STRB R1, [R0] \n\
/* 0803f8a6 */ LDRB R4, [R7] \n\
/* 0803f8a8 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803f8aa */ BL ticks_to_frames \n\
/* 0803f8ae */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f8b0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f8b2 */ BL func_0803ee58 \n\
/* 0803f8b6 */ LDR R1, =toss_boys_ball_miss_sfx \n\
/* 0803f8b8 */ LDRB R0, [R7] \n\
/* 0803f8ba */ LSLS R0, R0, 0x2 \n\
/* 0803f8bc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f8be */ LDR R0, [R0] \n\
/* 0803f8c0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803f8c2 */ LSLS R1, R1, 0x1 \n\
/* 0803f8c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f8c6 */ BL play_sound_w_pitch_volume \n\
/* 0803f8ca */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803f8cc */ BL toss_boys_get_anim \n\
/* 0803f8d0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803f8d2 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803f8d4 */ LDR R0, [R3] \n\
/* 0803f8d6 */ LDR R1, [R5] \n\
/* 0803f8d8 */ LDR R4, =0x366 \n\
/* 0803f8da */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803f8dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f8de */ LDRSH R1, [R1, R3] \n\
/* 0803f8e0 */ STR R6, [SP] \n\
/* 0803f8e2 */ STR R6, [SP, 0x4] \n\
/* 0803f8e4 */ STR R6, [SP, 0x8] \n\
/* 0803f8e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f8e8 */ BL sprite_set_anim \n\
/* 0803f8ec */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0803f8ee */ LDR R0, [R1] \n\
/* 0803f8f0 */ LDR R1, [R5] \n\
/* 0803f8f2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803f8f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f8f6 */ LDRSH R1, [R1, R2] \n\
/* 0803f8f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f8fa */ BL sprite_set_visible \n\
/* 0803f8fe */ LDR R0, [R5] \n\
/* 0803f900 */ LDR R3, =0x36e \n\
/* 0803f902 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803f904 */ STRH R6, [R0] \n\
/* 0803f906 */ LDRB R4, [R7] \n\
/* 0803f908 */ LSLS R4, R4, 0x2 \n\
/* 0803f90a */ LDR R0, =D_089e86a8 \n\
/* 0803f90c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803f90e */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0803f910 */ BL toss_boys_get_anim \n\
/* 0803f914 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f916 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803f918 */ LDR R0, [R2] \n\
/* 0803f91a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f91c */ LDRSH R3, [R4, R2] \n\
/* 0803f91e */ LDRH R2, [R4, 0x2] \n\
/* 0803f920 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0803f922 */ LSLS R2, R2, 0x10 \n\
/* 0803f924 */ ASRS R2, R2, 0x10 \n\
/* 0803f926 */ STR R2, [SP] \n\
/* 0803f928 */ MOVS R2, 0x84 @ Set R2 to 0x84 \n\
/* 0803f92a */ LSLS R2, R2, 0x7 \n\
/* 0803f92c */ STR R2, [SP, 0x4] \n\
/* 0803f92e */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0803f930 */ STR R4, [SP, 0x8] \n\
/* 0803f932 */ STR R6, [SP, 0xC] \n\
/* 0803f934 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0803f936 */ STR R2, [SP, 0x10] \n\
/* 0803f938 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f93a */ BL sprite_create \n\
/* 0803f93e */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803f940 */ BL ticks_to_frames \n\
/* 0803f944 */ LDR R2, [R5] \n\
/* 0803f946 */ LDR R3, =0x396 \n\
/* 0803f948 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803f94a */ STRH R0, [R1] \n\
/* 0803f94c */ LDR R4, =0x392 \n\
/* 0803f94e */ ADDS R1, R2, R4 @ Set R1 to R2 + R4 \n\
/* 0803f950 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0803f952 */ LSLS R0, R0, 0x4 \n\
/* 0803f954 */ STRH R0, [R1] \n\
/* 0803f956 */ MOVS R0, 0xDF @ Set R0 to 0xDF \n\
/* 0803f958 */ LSLS R0, R0, 0x2 \n\
/* 0803f95a */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803f95c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803f95e */ STRB R1, [R2] \n\
/* 0803f960 */ BL beatscript_enable_loops \n\
 \n\
branch_0803f964: \n\
/* 0803f964 */ ADD SP, 0x14 \n\
/* 0803f966 */ POP {R3-R5} \n\
/* 0803f968 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803f96a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803f96c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803f96e */ POP {R4-R7} \n\
/* 0803f970 */ POP {R0} \n\
/* 0803f972 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
