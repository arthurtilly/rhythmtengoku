asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026c3c \n\
/* 08026c3c */ PUSH {R4-R6, LR} \n\
/* 08026c3e */ LDR R0, =gCurrentEngineData \n\
/* 08026c40 */ LDR R0, [R0] \n\
/* 08026c42 */ MOVS R1, 0xE7 @ Set R1 to 0xE7 \n\
/* 08026c44 */ LSLS R1, R1, 0x2 \n\
/* 08026c46 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026c48 */ LDR R6, [R0] \n\
/* 08026c4a */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08026c4c */ BEQ branch_08026c7a \n\
/* 08026c4e */ BL gameplay_get_last_hit_offset \n\
/* 08026c52 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08026c54 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08026c56 */ BL beats_to_ticks \n\
/* 08026c5a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08026c5c */ BL get_beatscript_tempo \n\
/* 08026c60 */ SUBS R4, R5, R4 @ Set R4 to R5 - R4 \n\
/* 08026c62 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08026c64 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08026c66 */ BL __divsi3 \n\
/* 08026c6a */ SUBS R1, R6, 0x5 @ Set R1 to R6 - 0x5 \n\
/* 08026c6c */ ADDS R2, R6, 0x5 @ Set R2 to R6 + 0x5 \n\
/* 08026c6e */ BL clamp_int32 \n\
/* 08026c72 */ LSLS R0, R0, 0x10 \n\
/* 08026c74 */ LSRS R0, R0, 0x10 \n\
/* 08026c76 */ BL set_beatscript_tempo \n\
 \n\
branch_08026c7a: \n\
/* 08026c7a */ POP {R4-R6} \n\
/* 08026c7c */ POP {R0} \n\
/* 08026c7e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
