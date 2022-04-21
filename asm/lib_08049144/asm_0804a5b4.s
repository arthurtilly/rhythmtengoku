asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a5b4 \n\
/* 0804a5b4 */ PUSH {R4-R7, LR} \n\
/* 0804a5b6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804a5b8 */ PUSH {R7} \n\
/* 0804a5ba */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804a5bc */ LSLS R2, R2, 0x18 \n\
/* 0804a5be */ LSRS R5, R2, 0x18 \n\
/* 0804a5c0 */ LSLS R7, R1, 0x5 \n\
/* 0804a5c2 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
/* 0804a5c4 */ LDR R0, =D_030064bc \n\
/* 0804a5c6 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0804a5c8: \n\
/* 0804a5c8 */ LDR R0, [R6, 0x18] \n\
/* 0804a5ca */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0804a5cc */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804a5ce */ BL func_0804a3a0 \n\
/* 0804a5d2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804a5d4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a5d6 */ BLT branch_0804a5ec \n\
/* 0804a5d8 */ LSLS R0, R2, 0x5 \n\
/* 0804a5da */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804a5dc */ LDR R1, [R2] \n\
/* 0804a5de */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804a5e0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804a5e2 */ STRB R0, [R1, 0x1C] \n\
/* 0804a5e4 */ B branch_0804a5c8 \n\
\n\
.ltorg \n\
 \n\
branch_0804a5ec: \n\
/* 0804a5ec */ LDR R4, =D_030056a0 \n\
/* 0804a5ee */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804a5f0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804a5f2 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_0804a5f4: \n\
/* 0804a5f4 */ LDRB R3, [R4] \n\
/* 0804a5f6 */ LSLS R0, R3, 0x1F \n\
/* 0804a5f8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a5fa */ BEQ branch_0804a610 \n\
/* 0804a5fc */ LDR R0, [R6, 0x18] \n\
/* 0804a5fe */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0804a600 */ LDR R1, [R4, 0xC] \n\
/* 0804a602 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804a604 */ BNE branch_0804a610 \n\
/* 0804a606 */ LSRS R0, R3, 0x1 \n\
/* 0804a608 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0804a60a */ BNE branch_0804a610 \n\
/* 0804a60c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804a60e */ STRB R0, [R4, 0x1C] \n\
 \n\
branch_0804a610: \n\
/* 0804a610 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0804a612 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 0804a614 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a616 */ BGE branch_0804a5f4 \n\
/* 0804a618 */ POP {R3} \n\
/* 0804a61a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804a61c */ POP {R4-R7} \n\
/* 0804a61e */ POP {R0} \n\
/* 0804a620 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
