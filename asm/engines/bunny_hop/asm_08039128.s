asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039128 \n\
/* 08039128 */ PUSH {R4-R7, LR} \n\
/* 0803912a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803912c */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0803912e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08039130 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08039132 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08039134 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08039136 */ BEQ branch_0803915c \n\
/* 08039138 */ LSLS R5, R4, 0x2 \n\
/* 0803913a */ NEGS R0, R5 @ Set R0 to -R5 \n\
/* 0803913c */ MULS R0, R7 @ Multiply R0 by R7 \n\
/* 0803913e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08039140 */ BL __divsi3 \n\
/* 08039144 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08039146 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08039148 */ BL __divsi3 \n\
/* 0803914c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803914e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08039150 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08039152 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08039154 */ BL __divsi3 \n\
/* 08039158 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0803915a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0803915c: \n\
/* 0803915c */ POP {R4-R7} \n\
/* 0803915e */ POP {R1} \n\
/* 08039160 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
