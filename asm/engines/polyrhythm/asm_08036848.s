asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036848 \n\
/* 08036848 */ PUSH {R4-R7, LR} \n\
/* 0803684a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803684c */ PUSH {R7} \n\
/* 0803684e */ SUB SP, 0x4 \n\
/* 08036850 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08036852 */ LDR R4, [R6, 0x14] \n\
/* 08036854 */ LDR R0, =gSpriteHandler \n\
/* 08036856 */ LDR R0, [R0] \n\
/* 08036858 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803685a */ LDRSH R1, [R6, R2] \n\
/* 0803685c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0803685e */ BL sprite_get_data \n\
/* 08036862 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08036864 */ LDRB R0, [R6, 0x1] \n\
/* 08036866 */ LSLS R0, R0, 0x1F \n\
/* 08036868 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803686a */ BNE branch_0803687c \n\
/* 0803686c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803686e */ BL func_08036604 \n\
/* 08036872 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08036874 */ B branch_0803687e \n\
\n\
.ltorg \n\
 \n\
branch_0803687c: \n\
/* 0803687c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_0803687e: \n\
/* 0803687e */ STR R1, [R6, 0x14] \n\
/* 08036880 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08036882 */ BL func_080365c8 \n\
/* 08036886 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08036888 */ LDR R1, [R6, 0x14] \n\
/* 0803688a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803688c */ BL func_0803661c \n\
/* 08036890 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08036892 */ LDR R0, [R6, 0x10] \n\
/* 08036894 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08036896 */ BGE branch_080368ce \n\
/* 08036898 */ STR R4, [R6, 0x14] \n\
/* 0803689a */ MOV R8, R7 @ Set R8 to R7 \n\
/* 0803689c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803689e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080368a0 */ BL func_080365c8 \n\
/* 080368a4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080368a6 */ LDRB R0, [R6, 0x1] \n\
/* 080368a8 */ LSLS R0, R0, 0x1F \n\
/* 080368aa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080368ac */ BNE branch_080368b4 \n\
/* 080368ae */ LDR R0, =s_poly_shototu_seqData \n\
/* 080368b0 */ BL play_sound \n\
 \n\
branch_080368b4: \n\
/* 080368b4 */ LDRB R0, [R6, 0x1] \n\
/* 080368b6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080368b8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080368ba */ STRB R0, [R6, 0x1] \n\
/* 080368bc */ LDR R0, =gSpriteHandler \n\
/* 080368be */ LDR R0, [R0] \n\
/* 080368c0 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 080368c2 */ LDRSH R1, [R6, R7] \n\
/* 080368c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080368c6 */ STR R2, [SP] \n\
/* 080368c8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080368ca */ BL sprite_set_playback \n\
 \n\
branch_080368ce: \n\
/* 080368ce */ LDR R0, [R6, 0x2C] \n\
/* 080368d0 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 080368d2 */ STR R0, [R6, 0x2C] \n\
/* 080368d4 */ BL get_beatscript_tempo \n\
/* 080368d8 */ LDR R1, [R6, 0x2C] \n\
/* 080368da */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 080368dc */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 080368de */ BL __divsi3 \n\
/* 080368e2 */ LDR R1, [R6, 0x28] \n\
/* 080368e4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080368e6 */ STR R1, [R6, 0x28] \n\
/* 080368e8 */ ASRS R1, R1, 0x8 \n\
/* 080368ea */ STR R1, [R6, 0x10] \n\
/* 080368ec */ CMP R1, R5 @ Check R1 - R5 \n\
/* 080368ee */ BGE branch_080368fc \n\
/* 080368f0 */ STR R5, [R6, 0x10] \n\
/* 080368f2 */ LDRB R1, [R6] \n\
/* 080368f4 */ MOVS R0, 0x71 @ Set R0 to 0x71 \n\
/* 080368f6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080368f8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080368fa */ STRB R0, [R6] \n\
 \n\
branch_080368fc: \n\
/* 080368fc */ LDR R0, [R6, 0x14] \n\
/* 080368fe */ STR R0, [R6, 0x8] \n\
/* 08036900 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08036902 */ LSRS R1, R0, 0x1F \n\
/* 08036904 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08036906 */ ASRS R0, R0, 0x1 \n\
/* 08036908 */ LDR R1, [R6, 0x10] \n\
/* 0803690a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803690c */ STR R0, [R6, 0xC] \n\
/* 0803690e */ LDRB R0, [R6] \n\
/* 08036910 */ LSRS R0, R0, 0x7 \n\
/* 08036912 */ BL polyrhythm_get_lane_start_x \n\
/* 08036916 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08036918 */ LDR R0, [R6, 0x8] \n\
/* 0803691a */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803691c */ LDRB R0, [R6] \n\
/* 0803691e */ LSRS R0, R0, 0x7 \n\
/* 08036920 */ BL polyrhythm_get_lane_start_y \n\
/* 08036924 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08036926 */ LDR R0, [R6, 0xC] \n\
/* 08036928 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0803692a */ LDR R5, =gSpriteHandler \n\
/* 0803692c */ LDR R0, [R5] \n\
/* 0803692e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036930 */ LDRSH R1, [R6, R2] \n\
/* 08036932 */ LSLS R4, R4, 0x10 \n\
/* 08036934 */ ASRS R4, R4, 0x10 \n\
/* 08036936 */ LSLS R3, R3, 0x10 \n\
/* 08036938 */ ASRS R3, R3, 0x10 \n\
/* 0803693a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803693c */ LSLS R2, R7, 0x10 \n\
/* 0803693e */ LSRS R2, R2, 0x10 \n\
/* 08036940 */ STR R2, [SP] \n\
/* 08036942 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08036944 */ BL sprite_set_x_y_z \n\
/* 08036948 */ LDR R0, [R5] \n\
/* 0803694a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803694c */ LDRSH R1, [R6, R2] \n\
/* 0803694e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08036950 */ BL sprite_set_visible \n\
/* 08036954 */ LDR R0, [R6, 0x30] \n\
/* 08036956 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08036958 */ STR R0, [R6, 0x30] \n\
/* 0803695a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803695c */ BL ticks_to_frames \n\
/* 08036960 */ LDR R1, [R6, 0x34] \n\
/* 08036962 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08036964 */ LDR R0, [R6, 0x30] \n\
/* 08036966 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08036968 */ BLE branch_08036974 \n\
/* 0803696a */ LDRB R1, [R6] \n\
/* 0803696c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803696e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08036970 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036972 */ STRB R0, [R6] \n\
 \n\
branch_08036974: \n\
/* 08036974 */ ADD SP, 0x4 \n\
/* 08036976 */ POP {R3} \n\
/* 08036978 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803697a */ POP {R4-R7} \n\
/* 0803697c */ POP {R0} \n\
/* 0803697e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
