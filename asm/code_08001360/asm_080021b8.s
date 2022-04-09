asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080021b8 \n\
/* 080021b8 */ PUSH {R4-R7, LR} \n\
/* 080021ba */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080021bc */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080021be */ PUSH {R6, R7} \n\
/* 080021c0 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080021c2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080021c4 */ BLT branch_08002214 \n\
/* 080021c6 */ LDR R4, =D_03000138 \n\
/* 080021c8 */ LSLS R5, R7, 0x3 \n\
/* 080021ca */ ADDS R0, R5, R4 @ Set R0 to R5 + R4 \n\
/* 080021cc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080021ce */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080021d0 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080021d2 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080021d4 */ LSLS R1, R1, 0x1 \n\
/* 080021d6 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080021d8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080021da */ STRH R1, [R0] \n\
/* 080021dc */ LSLS R1, R7, 0x2 \n\
/* 080021de */ ADDS R3, R1, 0x1 @ Set R3 to R1 + 0x1 \n\
/* 080021e0 */ LSLS R3, R3, 0x1 \n\
/* 080021e2 */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 080021e4 */ STRH R6, [R0] \n\
/* 080021e6 */ ADDS R2, R1, 0x2 @ Set R2 to R1 + 0x2 \n\
/* 080021e8 */ LSLS R2, R2, 0x1 \n\
/* 080021ea */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 080021ec */ STRH R6, [R0] \n\
/* 080021ee */ ADDS R1, 0x3 @ Add 0x3 to R1 \n\
/* 080021f0 */ LSLS R1, R1, 0x1 \n\
/* 080021f2 */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 080021f4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080021f6 */ STRH R0, [R4] \n\
/* 080021f8 */ LDR R0, =D_03000238 \n\
/* 080021fa */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080021fc */ MOV R4, R8 @ Set R4 to R8 \n\
/* 080021fe */ STRH R4, [R5] \n\
/* 08002200 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08002202 */ STRH R6, [R3] \n\
/* 08002204 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08002206 */ STRH R6, [R2] \n\
/* 08002208 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800220a */ STRH R4, [R1] \n\
/* 0800220c */ LDR R0, =D_03000340 \n\
/* 0800220e */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 08002210 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08002212 */ STRB R1, [R0] \n\
 \n\
branch_08002214: \n\
/* 08002214 */ POP {R3, R4} \n\
/* 08002216 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08002218 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800221a */ POP {R4-R7} \n\
/* 0800221c */ POP {R0} \n\
/* 0800221e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
