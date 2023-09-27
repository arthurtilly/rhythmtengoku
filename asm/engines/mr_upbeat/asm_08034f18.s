asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034f18 \n\
/* 08034f18 */ PUSH {R4-R7, LR} \n\
/* 08034f1a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08034f1c */ LDR R0, =gCurrentEngineData \n\
/* 08034f1e */ LDR R6, [R0] \n\
/* 08034f20 */ ADDS R4, R6, 0x0 @ Set R4 to R6 + 0x0 \n\
/* 08034f22 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08034f24 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08034f26 */ ADDS R0, 0x31 @ Add 0x31 to R0 \n\
/* 08034f28 */ LDRB R5, [R0] \n\
/* 08034f2a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08034f2c */ BNE branch_08034f56 \n\
/* 08034f2e */ LDR R0, =s_metro_hit_seqData \n\
/* 08034f30 */ BL play_sound \n\
/* 08034f34 */ STR R5, [R4, 0x14] \n\
/* 08034f36 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08034f38 */ BL ticks_to_frames \n\
/* 08034f3c */ STR R0, [R4, 0x18] \n\
/* 08034f3e */ LSRS R0, R0, 0x1 \n\
/* 08034f40 */ STR R0, [R4, 0x1C] \n\
/* 08034f42 */ LDR R1, [R4, 0x8] \n\
/* 08034f44 */ LDR R0, [R4, 0xC] \n\
/* 08034f46 */ STR R0, [R4, 0x8] \n\
/* 08034f48 */ STR R1, [R4, 0xC] \n\
/* 08034f4a */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08034f4c */ ADDS R2, 0x30 @ Add 0x30 to R2 \n\
/* 08034f4e */ LDRB R0, [R2] \n\
/* 08034f50 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034f52 */ EORS R0, R1 @ Set R0 to R0 ^ R1 \n\
/* 08034f54 */ STRB R0, [R2] \n\
 \n\
branch_08034f56: \n\
/* 08034f56 */ POP {R4-R7} \n\
/* 08034f58 */ POP {R0} \n\
/* 08034f5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
