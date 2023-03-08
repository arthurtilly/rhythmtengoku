asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start verify_sram_fast_rom \n\
/* 0804c920 */ PUSH {R4, R5, LR} \n\
/* 0804c922 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804c924 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0804c926 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0804c928 */ LDR R2, =0x04000204 @ !Hardware REG_WAITCNT \n\
/* 0804c92a */ LDRH R0, [R2] \n\
/* 0804c92c */ LDR R1, =0x0000fffc \n\
/* 0804c92e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804c930 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804c932 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804c934 */ STRH R0, [R2] \n\
/* 0804c936 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0804c938 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804c93a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804c93c */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804c93e */ BEQ branch_0804c962 \n\
/* 0804c940 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_0804c942: \n\
/* 0804c942 */ LDRB R1, [R4] \n\
/* 0804c944 */ LDRB R0, [R5] \n\
/* 0804c946 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804c948 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c94a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804c94c */ BEQ branch_0804c95c \n\
/* 0804c94e */ SUBS R0, R4, 0x1 @ Set R0 to R4 - 0x1 \n\
/* 0804c950 */ B branch_0804c964 \n\
\n\
.ltorg \n\
 \n\
branch_0804c95c: \n\
/* 0804c95c */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0804c95e */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804c960 */ BNE branch_0804c942 \n\
 \n\
branch_0804c962: \n\
/* 0804c962 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804c964: \n\
/* 0804c964 */ POP {R4, R5} \n\
/* 0804c966 */ POP {R1} \n\
/* 0804c968 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
