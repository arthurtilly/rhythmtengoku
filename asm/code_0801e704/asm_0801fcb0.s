asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801fcb0 \n\
/* 0801fcb0 */ PUSH {R4-R6, LR} \n\
/* 0801fcb2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0801fcb4: \n\
/* 0801fcb4 */ LDR R0, =D_030055d0 \n\
/* 0801fcb6 */ LDR R2, [R0] \n\
/* 0801fcb8 */ LSLS R1, R6, 0x1 \n\
/* 0801fcba */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801fcbc */ ADDS R0, 0x66 @ Add 0x66 to R0 \n\
/* 0801fcbe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801fcc0 */ LDRH R5, [R0] \n\
/* 0801fcc2 */ LSLS R4, R6, 0x3 \n\
/* 0801fcc4 */ ADDS R4, 0x98 @ Add 0x98 to R4 \n\
/* 0801fcc6 */ ADDS R4, R2, R4 @ Set R4 to R2 + R4 \n\
/* 0801fcc8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801fcca */ LDRSH R1, [R4, R0] \n\
/* 0801fccc */ LDR R0, [R2, 0x4] \n\
/* 0801fcce */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0801fcd0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801fcd2 */ LSLS R0, R0, 0x9 \n\
/* 0801fcd4 */ BL func_08007b80 \n\
/* 0801fcd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fcda */ LDRSH R1, [R4, R2] \n\
/* 0801fcdc */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801fcde */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0801fce0 */ ASRS R2, R2, 0x8 \n\
/* 0801fce2 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801fce4 */ LDRSH R1, [R4, R3] \n\
/* 0801fce6 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0801fce8 */ MULS R3, R0 @ Multiply R3 by R0 \n\
/* 0801fcea */ ASRS R3, R3, 0x8 \n\
/* 0801fcec */ LDR R0, =D_03005380 \n\
/* 0801fcee */ LDR R0, [R0] \n\
/* 0801fcf0 */ LSLS R5, R5, 0x10 \n\
/* 0801fcf2 */ ASRS R5, R5, 0x10 \n\
/* 0801fcf4 */ ADDS R2, 0x78 @ Add 0x78 to R2 \n\
/* 0801fcf6 */ LSLS R2, R2, 0x10 \n\
/* 0801fcf8 */ ASRS R2, R2, 0x10 \n\
/* 0801fcfa */ ADDS R3, 0x50 @ Add 0x50 to R3 \n\
/* 0801fcfc */ LSLS R3, R3, 0x10 \n\
/* 0801fcfe */ ASRS R3, R3, 0x10 \n\
/* 0801fd00 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801fd02 */ BL func_0804d5d4 \n\
/* 0801fd06 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0801fd08 */ CMP R6, 0x17 @ Compare R6 and 0x17 \n\
/* 0801fd0a */ BLS branch_0801fcb4 \n\
/* 0801fd0c */ POP {R4-R6} \n\
/* 0801fd0e */ POP {R0} \n\
/* 0801fd10 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
