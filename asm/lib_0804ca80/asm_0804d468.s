asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d468 \n\
/* 0804d468 */ PUSH {R4-R7, LR} \n\
/* 0804d46a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0804d46c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804d46e */ PUSH {R6, R7} \n\
/* 0804d470 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804d472 */ LSLS R2, R2, 0x10 \n\
/* 0804d474 */ LSRS R4, R2, 0x10 \n\
/* 0804d476 */ LDR R2, =D_03004428 \n\
/* 0804d478 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804d47a */ STRB R0, [R2] \n\
/* 0804d47c */ LSLS R1, R1, 0x10 \n\
/* 0804d47e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804d480 */ ASRS R5, R1, 0x10 \n\
/* 0804d482 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d484 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804d486 */ BL func_0804cc68 \n\
/* 0804d48a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d48c */ BNE branch_0804d4f2 \n\
/* 0804d48e */ LSLS R0, R4, 0x10 \n\
/* 0804d490 */ ASRS R6, R0, 0x10 \n\
/* 0804d492 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d494 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804d496 */ BL func_0804cc68 \n\
/* 0804d49a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d49c */ BNE branch_0804d4f2 \n\
/* 0804d49e */ LDR R0, [R7, 0x8] \n\
/* 0804d4a0 */ LSLS R4, R5, 0x4 \n\
/* 0804d4a2 */ SUBS R4, R4, R5 @ Set R4 to R4 - R5 \n\
/* 0804d4a4 */ LSLS R4, R4, 0x2 \n\
/* 0804d4a6 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804d4a8 */ LDRH R0, [R0, 0x2A] \n\
/* 0804d4aa */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804d4ac */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d4ae */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804d4b0 */ BL func_0804d05c \n\
/* 0804d4b4 */ LDR R1, [R7, 0x8] \n\
/* 0804d4b6 */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 0804d4b8 */ LSLS R0, R6, 0x4 \n\
/* 0804d4ba */ SUBS R0, R0, R6 @ Set R0 to R0 - R6 \n\
/* 0804d4bc */ LSLS R0, R0, 0x2 \n\
/* 0804d4be */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d4c0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804d4c2 */ MOV R4, R8 @ Set R4 to R8 \n\
 \n\
branch_0804d4c4: \n\
/* 0804d4c4 */ LDRB R0, [R1] \n\
/* 0804d4c6 */ STRB R0, [R2] \n\
/* 0804d4c8 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0804d4ca */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804d4cc */ LSLS R0, R3, 0x10 \n\
/* 0804d4ce */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0804d4d0 */ LSLS R3, R3, 0x9 \n\
/* 0804d4d2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804d4d4 */ LSRS R3, R0, 0x10 \n\
/* 0804d4d6 */ CMP R3, 0x3B @ Compare R3 and 0x3B \n\
/* 0804d4d8 */ BLS branch_0804d4c4 \n\
/* 0804d4da */ ASRS R4, R4, 0x10 \n\
/* 0804d4dc */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d4de */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d4e0 */ BL func_0804cf38 \n\
/* 0804d4e4 */ LDR R1, [R7, 0x8] \n\
/* 0804d4e6 */ LSLS R0, R4, 0x4 \n\
/* 0804d4e8 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d4ea */ LSLS R0, R0, 0x2 \n\
/* 0804d4ec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804d4ee */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804d4f0 */ STRH R1, [R0, 0x2A] \n\
 \n\
branch_0804d4f2: \n\
/* 0804d4f2 */ POP {R3, R4} \n\
/* 0804d4f4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d4f6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d4f8 */ POP {R4-R7} \n\
/* 0804d4fa */ POP {R0} \n\
/* 0804d4fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
