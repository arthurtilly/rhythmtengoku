asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007b80 \n\
/* 08007b80 */ PUSH {R4, LR} \n\
/* 08007b82 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007b84 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08007b86 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08007b88 */ LSLS R0, R0, 0x18 \n\
/* 08007b8a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08007b8c */ BGE branch_08007b92 \n\
/* 08007b8e */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08007b90 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_08007b92: \n\
/* 08007b92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007b94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007b96 */ BEQ branch_08007b9e \n\
/* 08007b98 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08007b9a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007b9c */ EORS R4, R0 @ Set R4 to R4 ^ R0 \n\
 \n\
branch_08007b9e: \n\
/* 08007b9e */ LDR R0, =D_03004af8 \n\
/* 08007ba0 */ LDR R2, [R0] \n\
/* 08007ba2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08007ba4 */ BL _call_via_r2 \n\
/* 08007ba8 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08007baa */ BEQ branch_08007bae \n\
/* 08007bac */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08007bae: \n\
/* 08007bae */ POP {R4} \n\
/* 08007bb0 */ POP {R1} \n\
/* 08007bb2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
