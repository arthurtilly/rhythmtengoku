asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011a18 \n\
/* 08011a18 */ PUSH {R4, R5, LR} \n\
/* 08011a1a */ SUB SP, 0x4 \n\
/* 08011a1c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08011a1e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011a20 */ STRB R0, [R1] \n\
/* 08011a22 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011a24 */ ADDS R5, R1, 0x1 @ Set R5 to R1 + 0x1 \n\
/* 08011a26 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08011a28 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08011a2a */ ADDS R2, 0xC @ Add 0xC to R2 \n\
 \n\
branch_08011a2c: \n\
/* 08011a2c */ ADDS R0, R5, R3 @ Set R0 to R5 + R3 \n\
/* 08011a2e */ STRB R4, [R0] \n\
/* 08011a30 */ STRH R4, [R2] \n\
/* 08011a32 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08011a34 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08011a36 */ CMP R3, 0x9 @ Compare R3 and 0x9 \n\
/* 08011a38 */ BLS branch_08011a2c \n\
/* 08011a3a */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08011a3c */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08011a3e */ LSLS R2, R2, 0x6 \n\
/* 08011a40 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08011a42 */ LSLS R0, R0, 0x2 \n\
/* 08011a44 */ STR R0, [SP] \n\
/* 08011a46 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011a48 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08011a4a */ BL func_080018e0 \n\
/* 08011a4e */ ADD SP, 0x4 \n\
/* 08011a50 */ POP {R4, R5} \n\
/* 08011a52 */ POP {R0} \n\
/* 08011a54 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
