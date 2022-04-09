asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f2a0 \n\
/* 0802f2a0 */ PUSH {R4-R7, LR} \n\
/* 0802f2a2 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802f2a4 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802f2a6 */ PUSH {R6, R7} \n\
/* 0802f2a8 */ SUB SP, 0x8 \n\
/* 0802f2aa */ LDR R0, =D_030055d0 \n\
/* 0802f2ac */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802f2ae */ LDR R4, [R0] \n\
/* 0802f2b0 */ ADDS R7, R4, 0x4 @ Set R7 to R4 + 0x4 \n\
/* 0802f2b2 */ MOVS R2, 0x74 @ Set R2 to 0x74 \n\
/* 0802f2b4 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802f2b6 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802f2b8 */ LDR R0, [R1, 0x4] \n\
/* 0802f2ba */ LDR R1, =D_088e88f8 \n\
/* 0802f2bc */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 0802f2be */ STR R6, [SP] \n\
/* 0802f2c0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802f2c2 */ STR R5, [SP, 0x4] \n\
/* 0802f2c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f2c6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802f2c8 */ BL func_08010064 \n\
/* 0802f2cc */ LDR R0, [R4, 0x4] \n\
/* 0802f2ce */ LDR R1, =D_088e8848 \n\
/* 0802f2d0 */ STR R6, [SP] \n\
/* 0802f2d2 */ STR R5, [SP, 0x4] \n\
/* 0802f2d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f2d6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802f2d8 */ BL func_08010064 \n\
/* 0802f2dc */ LDRB R0, [R7, 0x5] \n\
/* 0802f2de */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f2e0 */ BEQ branch_0802f2e8 \n\
/* 0802f2e2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f2e4 */ BL func_0802ea74 \n\
 \n\
branch_0802f2e8: \n\
/* 0802f2e8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802f2ea */ STRB R0, [R7, 0x5] \n\
/* 0802f2ec */ LDR R0, =D_03005380 \n\
/* 0802f2ee */ LDR R0, [R0] \n\
/* 0802f2f0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802f2f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f2f4 */ LDRSH R1, [R3, R2] \n\
/* 0802f2f6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802f2f8 */ BL func_0804cebc \n\
/* 0802f2fc */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802f2fe */ LDR R1, [R3] \n\
/* 0802f300 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0802f302 */ ADDS R2, 0x88 @ Add 0x88 to R2 \n\
/* 0802f304 */ LDRH R0, [R2] \n\
/* 0802f306 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f308 */ STRH R0, [R2] \n\
/* 0802f30a */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 0802f30c */ LDRH R0, [R1] \n\
/* 0802f30e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802f310 */ STRH R0, [R1] \n\
/* 0802f312 */ ADD SP, 0x8 \n\
/* 0802f314 */ POP {R3, R4} \n\
/* 0802f316 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802f318 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802f31a */ POP {R4-R7} \n\
/* 0802f31c */ POP {R0} \n\
/* 0802f31e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
