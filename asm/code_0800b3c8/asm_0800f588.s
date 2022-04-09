asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f588 \n\
/* 0800f588 */ PUSH {R4-R7, LR} \n\
/* 0800f58a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800f58c */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0800f58e */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800f590 */ ADDS R5, 0x7B @ Add 0x7B to R5 \n\
/* 0800f592 */ LSLS R0, R1, 0x1 \n\
/* 0800f594 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0800f596 */ LSLS R0, R0, 0x4 \n\
/* 0800f598 */ LDR R2, [R3, 0x50] \n\
/* 0800f59a */ ADDS R7, R2, R0 @ Set R7 to R2 + R0 \n\
/* 0800f59c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f59e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800f5a0 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 0800f5a2 */ LDRB R6, [R0] \n\
/* 0800f5a4 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 0800f5a6 */ BGE branch_0800f5da \n\
/* 0800f5a8 */ LDRB R0, [R5] \n\
/* 0800f5aa */ LSLS R1, R0, 0x1 \n\
/* 0800f5ac */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800f5ae */ LSLS R1, R1, 0x4 \n\
/* 0800f5b0 */ ADDS R1, R2, R1 @ Set R1 to R2 + R1 \n\
/* 0800f5b2 */ LDR R0, [R1, 0x10] \n\
/* 0800f5b4 */ LDR R1, [R7, 0x10] \n\
/* 0800f5b6 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0800f5b8 */ BGT branch_0800f5da \n\
/* 0800f5ba */ ADDS R7, R6, 0x0 @ Set R7 to R6 + 0x0 \n\
/* 0800f5bc */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800f5be */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
 \n\
branch_0800f5c0: \n\
/* 0800f5c0 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800f5c2 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f5c4 */ CMP R4, R7 @ Check R4 - R7 \n\
/* 0800f5c6 */ BGE branch_0800f5da \n\
/* 0800f5c8 */ LDRB R0, [R2] \n\
/* 0800f5ca */ LSLS R1, R0, 0x1 \n\
/* 0800f5cc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800f5ce */ LSLS R1, R1, 0x4 \n\
/* 0800f5d0 */ LDR R0, [R3, 0x50] \n\
/* 0800f5d2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f5d4 */ LDR R0, [R0, 0x10] \n\
/* 0800f5d6 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0800f5d8 */ BLE branch_0800f5c0 \n\
 \n\
branch_0800f5da: \n\
/* 0800f5da */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800f5dc */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 0800f5de */ LDRB R1, [R0] \n\
/* 0800f5e0 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800f5e2 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 0800f5e4 */ BGE branch_0800f60e \n\
/* 0800f5e6 */ SUBS R2, R1, 0x2 @ Set R2 to R1 - 0x2 \n\
/* 0800f5e8 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0800f5ea */ ADDS R6, 0x7A @ Add 0x7A to R6 \n\
/* 0800f5ec */ ADDS R3, R5, R4 @ Set R3 to R5 + R4 \n\
/* 0800f5ee */ CMP R2, R4 @ Check R2 - R4 \n\
/* 0800f5f0 */ BLT branch_0800f5fe \n\
 \n\
branch_0800f5f2: \n\
/* 0800f5f2 */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 0800f5f4 */ LDRB R0, [R1] \n\
/* 0800f5f6 */ STRB R0, [R1, 0x1] \n\
/* 0800f5f8 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0800f5fa */ CMP R2, R4 @ Check R2 - R4 \n\
/* 0800f5fc */ BGE branch_0800f5f2 \n\
 \n\
branch_0800f5fe: \n\
/* 0800f5fe */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0800f600 */ STRB R0, [R3] \n\
/* 0800f602 */ LDRB R0, [R6] \n\
/* 0800f604 */ LDRB R7, [R7] \n\
/* 0800f606 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 0800f608 */ BCS branch_0800f60e \n\
/* 0800f60a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800f60c */ STRB R0, [R6] \n\
 \n\
branch_0800f60e: \n\
/* 0800f60e */ POP {R4-R7} \n\
/* 0800f610 */ POP {R0} \n\
/* 0800f612 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
