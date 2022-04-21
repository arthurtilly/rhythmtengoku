asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c4bc \n\
/* 0804c4bc */ PUSH {R4-R6, LR} \n\
/* 0804c4be */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804c4c0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0804c4c2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804c4c4 */ BEQ branch_0804c4f4 \n\
/* 0804c4c6 */ LDR R4, =D_030015a4 \n\
/* 0804c4c8 */ LDRH R0, [R4] \n\
/* 0804c4ca */ LDR R1, =0x000001ff \n\
/* 0804c4cc */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804c4ce */ BHI branch_0804c4f4 \n\
/* 0804c4d0 */ LDR R6, =D_030015a0 \n\
/* 0804c4d2 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_0804c4d4: \n\
/* 0804c4d4 */ LDRH R1, [R4] \n\
/* 0804c4d6 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0804c4d8 */ STRH R0, [R4] \n\
/* 0804c4da */ LSLS R1, R1, 0x10 \n\
/* 0804c4dc */ LSRS R1, R1, 0x10 \n\
/* 0804c4de */ LDR R0, [R6] \n\
/* 0804c4e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804c4e2 */ LDRB R1, [R3] \n\
/* 0804c4e4 */ STRB R1, [R0] \n\
/* 0804c4e6 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804c4e8 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0804c4ea */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804c4ec */ BEQ branch_0804c4f4 \n\
/* 0804c4ee */ LDRH R0, [R4] \n\
/* 0804c4f0 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0804c4f2 */ BLS branch_0804c4d4 \n\
 \n\
branch_0804c4f4: \n\
/* 0804c4f4 */ POP {R4-R6} \n\
/* 0804c4f6 */ POP {R0} \n\
/* 0804c4f8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
