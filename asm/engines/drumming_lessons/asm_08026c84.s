asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_cue_hit \n\
/* 08026c84 */ PUSH {R4, LR} \n\
/* 08026c86 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08026c88 */ LDRB R0, [R4] \n\
/* 08026c8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026c8c */ BNE branch_08026c92 \n\
/* 08026c8e */ BL func_08026c3c \n\
 \n\
branch_08026c92: \n\
/* 08026c92 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08026c94 */ LSLS R2, R2, 0x1 \n\
/* 08026c96 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08026c98 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08026c9a */ BL func_08026b3c \n\
/* 08026c9e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08026ca0 */ LDRSB R0, [R4, R0] \n\
/* 08026ca2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026ca4 */ BLT branch_08026caa \n\
/* 08026ca6 */ BL func_080255f8 \n\
 \n\
branch_08026caa: \n\
/* 08026caa */ LDR R0, =D_030055d0 \n\
/* 08026cac */ LDR R0, [R0] \n\
/* 08026cae */ LDR R1, =0x0000181e \n\
/* 08026cb0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026cb2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026cb4 */ STRH R1, [R0] \n\
/* 08026cb6 */ POP {R4} \n\
/* 08026cb8 */ POP {R0} \n\
/* 08026cba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
