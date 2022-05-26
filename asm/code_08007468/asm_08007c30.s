asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007c30 \n\
/* 08007c30 */ PUSH {R4, R5, LR} \n\
/* 08007c32 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007c34 */ LDR R1, [R4, 0xC] \n\
/* 08007c36 */ LDR R0, [R4, 0x8] \n\
/* 08007c38 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08007c3a */ LDRH R0, [R4, 0x2] \n\
/* 08007c3c */ LSRS R0, R0, 0x1 \n\
/* 08007c3e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08007c40 */ LDR R1, [R4] \n\
/* 08007c42 */ LSLS R1, R1, 0xF \n\
/* 08007c44 */ LSRS R1, R1, 0x11 \n\
/* 08007c46 */ BL fast_divsi3 \n\
/* 08007c4a */ LDR R1, [R4, 0x8] \n\
/* 08007c4c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007c4e */ LDRB R0, [R4] \n\
/* 08007c50 */ LSLS R0, R0, 0x1E \n\
/* 08007c52 */ LSRS R0, R0, 0x1E \n\
/* 08007c54 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007c56 */ BEQ branch_08007c6e \n\
/* 08007c58 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007c5a */ BGT branch_08007c62 \n\
/* 08007c5c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007c5e */ BEQ branch_08007c68 \n\
/* 08007c60 */ B branch_08007c78 \n\
 \n\
branch_08007c62: \n\
/* 08007c62 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007c64 */ BEQ branch_08007c74 \n\
/* 08007c66 */ B branch_08007c78 \n\
 \n\
branch_08007c68: \n\
/* 08007c68 */ LDR R0, [R4, 0x4] \n\
/* 08007c6a */ STRB R1, [R0] \n\
/* 08007c6c */ B branch_08007c78 \n\
 \n\
branch_08007c6e: \n\
/* 08007c6e */ LDR R0, [R4, 0x4] \n\
/* 08007c70 */ STRH R1, [R0] \n\
/* 08007c72 */ B branch_08007c78 \n\
 \n\
branch_08007c74: \n\
/* 08007c74 */ LDR R0, [R4, 0x4] \n\
/* 08007c76 */ STR R1, [R0] \n\
 \n\
branch_08007c78: \n\
/* 08007c78 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08007c7a */ LDRH R3, [R4, 0x2] \n\
/* 08007c7c */ LSRS R1, R3, 0x1 \n\
/* 08007c7e */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08007c80 */ LSLS R2, R1, 0x1 \n\
/* 08007c82 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007c84 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08007c86 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08007c88 */ STRH R0, [R4, 0x2] \n\
/* 08007c8a */ LDR R0, =0x7fff \n\
/* 08007c8c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08007c8e */ LDR R0, [R4] \n\
/* 08007c90 */ LSLS R0, R0, 0xF \n\
/* 08007c92 */ LSRS R0, R0, 0x11 \n\
/* 08007c94 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08007c96 */ BLS branch_08007c9a \n\
/* 08007c98 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08007c9a: \n\
/* 08007c9a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08007c9c */ POP {R4, R5} \n\
/* 08007c9e */ POP {R1} \n\
/* 08007ca0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
