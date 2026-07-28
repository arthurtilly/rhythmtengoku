asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080400d0 \n\
/* 080400d0 */ PUSH {R4-R6, LR} \n\
/* 080400d2 */ SUB SP, 0xC \n\
/* 080400d4 */ LSLS R0, R0, 0x18 \n\
/* 080400d6 */ LSRS R4, R0, 0x18 \n\
/* 080400d8 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 080400da */ BLS branch_080400f8 \n\
/* 080400dc */ SUBS R0, R4, 0x2 @ Set R0 to R4 - 0x2 \n\
/* 080400de */ LSLS R0, R0, 0x18 \n\
/* 080400e0 */ LSRS R4, R0, 0x18 \n\
/* 080400e2 */ LDR R2, =gCurrentEngineData \n\
/* 080400e4 */ LDR R1, [R2] \n\
/* 080400e6 */ LSLS R0, R4, 0x2 \n\
/* 080400e8 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080400ea */ LSLS R0, R0, 0x2 \n\
/* 080400ec */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080400ee */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080400f0 */ B branch_08040106 \n\
\n\
.ltorg \n\
 \n\
branch_080400f8: \n\
/* 080400f8 */ LDR R2, =gCurrentEngineData \n\
/* 080400fa */ LDR R1, [R2] \n\
/* 080400fc */ LSLS R0, R4, 0x2 \n\
/* 080400fe */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08040100 */ LSLS R0, R0, 0x2 \n\
/* 08040102 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08040104 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08040106: \n\
/* 08040106 */ STRB R0, [R1, 0x6] \n\
/* 08040108 */ LDR R1, [R2] \n\
/* 0804010a */ LSLS R3, R4, 0x2 \n\
/* 0804010c */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0804010e */ LSLS R3, R3, 0x2 \n\
/* 08040110 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08040112 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08040114 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08040116 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08040118 */ STR R5, [R0] \n\
/* 0804011a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0804011c */ STRB R4, [R1, 0x14] \n\
/* 0804011e */ LDR R0, =gSpriteHandler \n\
/* 08040120 */ LDR R0, [R0] \n\
/* 08040122 */ LDR R2, [R2] \n\
/* 08040124 */ ADDS R3, R2, R3 @ Set R3 to R2 + R3 \n\
/* 08040126 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 08040128 */ LDRSH R1, [R3, R4] \n\
/* 0804012a */ LDR R6, =tram_pauline_anim_table \n\
/* 0804012c */ LDRB R4, [R2] \n\
/* 0804012e */ LSLS R2, R4, 0x1 \n\
/* 08040130 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08040132 */ LSLS R2, R2, 0x3 \n\
/* 08040134 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08040136 */ LDRB R3, [R3, 0x15] \n\
/* 08040138 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0804013a */ LSLS R2, R2, 0x2 \n\
/* 0804013c */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0804013e */ LDR R2, [R2] \n\
/* 08040140 */ STR R5, [SP] \n\
/* 08040142 */ STR R5, [SP, 0x4] \n\
/* 08040144 */ STR R5, [SP, 0x8] \n\
/* 08040146 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08040148 */ BL sprite_set_anim \n\
/* 0804014c */ LDR R1, =s_tran_jump_se_seqData \n\
/* 0804014e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08040150 */ BL play_sound_in_player \n\
/* 08040154 */ ADD SP, 0xC \n\
/* 08040156 */ POP {R4-R6} \n\
/* 08040158 */ POP {R0} \n\
/* 0804015a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
