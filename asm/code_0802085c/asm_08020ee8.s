asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020ee8 \n\
/* 08020ee8 */ PUSH {R4-R6, LR} \n\
/* 08020eea */ LDR R5, =D_030055d0 \n\
/* 08020eec */ LDR R1, [R5] \n\
/* 08020eee */ MOVS R2, 0x86 @ Set R2 to 0x86 \n\
/* 08020ef0 */ LSLS R2, R2, 0x4 \n\
/* 08020ef2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08020ef4 */ LDRH R6, [R0] \n\
/* 08020ef6 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08020ef8 */ BEQ branch_08020f14 \n\
/* 08020efa */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 08020efc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08020efe */ STRB R0, [R1] \n\
/* 08020f00 */ LDR R0, [R5] \n\
/* 08020f02 */ ADDS R0, 0x55 @ Add 0x55 to R0 \n\
/* 08020f04 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08020f06 */ STRB R1, [R0] \n\
/* 08020f08 */ BL func_0800bc40 \n\
/* 08020f0c */ B branch_08020f40 \n\
\n\
.ltorg \n\
 \n\
branch_08020f14: \n\
/* 08020f14 */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 08020f16 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08020f18 */ STRB R0, [R1] \n\
/* 08020f1a */ LDR R4, [R5] \n\
/* 08020f1c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08020f1e */ BL func_08001980 \n\
/* 08020f22 */ LSLS R0, R0, 0x10 \n\
/* 08020f24 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08020f26 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020f28 */ BEQ branch_08020f2c \n\
/* 08020f2a */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
 \n\
branch_08020f2c: \n\
/* 08020f2c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020f2e */ ADDS R0, 0x55 @ Add 0x55 to R0 \n\
/* 08020f30 */ STRB R1, [R0] \n\
/* 08020f32 */ LDR R0, [R5] \n\
/* 08020f34 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020f36 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 08020f38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020f3a */ STRH R6, [R1] \n\
/* 08020f3c */ ADDS R0, 0x42 @ Add 0x42 to R0 \n\
/* 08020f3e */ STRB R2, [R0] \n\
 \n\
branch_08020f40: \n\
/* 08020f40 */ POP {R4-R6} \n\
/* 08020f42 */ POP {R0} \n\
/* 08020f44 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
