asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026a50 \n\
/* 08026a50 */ PUSH {R4-R6, LR} \n\
/* 08026a52 */ LDR R6, =D_030055d0 \n\
/* 08026a54 */ LDR R0, [R6] \n\
/* 08026a56 */ LDRB R0, [R0] \n\
/* 08026a58 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08026a5a */ BNE branch_08026a94 \n\
/* 08026a5c */ BL func_0800c1a8 \n\
/* 08026a60 */ LSLS R0, R0, 0x8 \n\
/* 08026a62 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 08026a64 */ BL __udivsi3 \n\
/* 08026a68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08026a6a */ LDR R5, =D_03005380 \n\
/* 08026a6c */ LDR R0, [R5] \n\
/* 08026a6e */ LDR R1, [R6] \n\
/* 08026a70 */ LDR R2, =0x00000376 \n\
/* 08026a72 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08026a74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026a76 */ LDRSH R1, [R1, R2] \n\
/* 08026a78 */ LSLS R4, R4, 0x10 \n\
/* 08026a7a */ LSRS R4, R4, 0x10 \n\
/* 08026a7c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08026a7e */ BL func_0804dcb8 \n\
/* 08026a82 */ LDR R0, [R5] \n\
/* 08026a84 */ LDR R1, [R6] \n\
/* 08026a86 */ LDR R2, =0x0000038a \n\
/* 08026a88 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08026a8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026a8c */ LDRSH R1, [R1, R2] \n\
/* 08026a8e */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08026a90 */ BL func_0804dcb8 \n\
 \n\
branch_08026a94: \n\
/* 08026a94 */ POP {R4-R6} \n\
/* 08026a96 */ POP {R0} \n\
/* 08026a98 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
