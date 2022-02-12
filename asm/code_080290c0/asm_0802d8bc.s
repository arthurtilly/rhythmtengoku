asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802d8bc \n\
/* 0802d8bc */ PUSH {R4-R7, LR} \n\
/* 0802d8be */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802d8c0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802d8c2 */ LDR R7, =D_030055d0 \n\
 \n\
branch_0802d8c4: \n\
/* 0802d8c4 */ LDR R3, [R7] \n\
/* 0802d8c6 */ LSLS R1, R5, 0x4 \n\
/* 0802d8c8 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0802d8ca */ LSLS R2, R2, 0x1 \n\
/* 0802d8cc */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d8ce */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0802d8d0 */ LDR R4, [R2] \n\
/* 0802d8d2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802d8d4 */ BNE branch_0802d90c \n\
/* 0802d8d6 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802d8d8 */ STR R0, [R2] \n\
/* 0802d8da */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802d8dc */ LSLS R2, R2, 0x1 \n\
/* 0802d8de */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d8e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d8e2 */ STR R6, [R0] \n\
/* 0802d8e4 */ SUBS R2, 0x4 @ Subtract 0x4 from R2 \n\
/* 0802d8e6 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d8e8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d8ea */ STR R4, [R0] \n\
/* 0802d8ec */ LDR R0, =D_03005380 \n\
/* 0802d8ee */ LDR R0, [R0] \n\
/* 0802d8f0 */ ADDS R1, R3, R1 @ Set R1 to R3 + R1 \n\
/* 0802d8f2 */ SUBS R2, 0x8 @ Subtract 0x8 from R2 \n\
/* 0802d8f4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d8f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d8f8 */ LDRSH R1, [R1, R2] \n\
/* 0802d8fa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802d8fc */ BL func_0804d770 \n\
/* 0802d900 */ B branch_0802d912 \n\
\n\
.ltorg \n\
 \n\
branch_0802d90c: \n\
/* 0802d90c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802d90e */ CMP R5, 0x7 @ Compare R5 and 0x7 \n\
/* 0802d910 */ BLE branch_0802d8c4 \n\
 \n\
branch_0802d912: \n\
/* 0802d912 */ POP {R4-R7} \n\
/* 0802d914 */ POP {R0} \n\
/* 0802d916 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
