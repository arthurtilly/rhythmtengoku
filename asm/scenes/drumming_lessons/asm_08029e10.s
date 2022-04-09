asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029e10 \n\
/* 08029e10 */ PUSH {R4-R7, LR} \n\
/* 08029e12 */ LDR R7, =D_030055d0 \n\
/* 08029e14 */ LDR R0, [R7] \n\
/* 08029e16 */ LDRB R0, [R0] \n\
/* 08029e18 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08029e1a */ BNE branch_08029e66 \n\
/* 08029e1c */ BL func_08018054 \n\
/* 08029e20 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08029e22 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08029e24 */ BLE branch_08029e28 \n\
/* 08029e26 */ SUBS R6, 0x1 @ Subtract 0x1 from R6 \n\
 \n\
branch_08029e28: \n\
/* 08029e28 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08029e2a */ BGE branch_08029e2e \n\
/* 08029e2c */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
 \n\
branch_08029e2e: \n\
/* 08029e2e */ ADDS R0, R6, 0x3 @ Set R0 to R6 + 0x3 \n\
/* 08029e30 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08029e32 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08029e34 */ BL func_080087d4 \n\
/* 08029e38 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08029e3a */ LDR R5, =D_03005380 \n\
/* 08029e3c */ LDR R0, [R5] \n\
/* 08029e3e */ LDR R1, [R7] \n\
/* 08029e40 */ LSLS R6, R6, 0x1 \n\
/* 08029e42 */ MOVS R4, 0xAD @ Set R4 to 0xAD \n\
/* 08029e44 */ LSLS R4, R4, 0x3 \n\
/* 08029e46 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08029e48 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08029e4a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029e4c */ LDRSH R1, [R1, R2] \n\
/* 08029e4e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029e50 */ BL func_0804cebc \n\
/* 08029e54 */ LDR R0, [R5] \n\
/* 08029e56 */ LDR R1, [R7] \n\
/* 08029e58 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08029e5a */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08029e5c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029e5e */ LDRSH R1, [R1, R2] \n\
/* 08029e60 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08029e62 */ BL func_0804d770 \n\
 \n\
branch_08029e66: \n\
/* 08029e66 */ POP {R4-R7} \n\
/* 08029e68 */ POP {R0} \n\
/* 08029e6a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
