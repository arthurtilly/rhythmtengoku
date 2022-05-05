asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a3a0 \n\
/* 0804a3a0 */ PUSH {R4-R7, LR} \n\
/* 0804a3a2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804a3a4 */ LSLS R1, R1, 0x18 \n\
/* 0804a3a6 */ LSRS R5, R1, 0x18 \n\
/* 0804a3a8 */ LDR R1, =D_030064bc \n\
/* 0804a3aa */ LDR R2, [R1] \n\
/* 0804a3ac */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804a3ae */ LDR R0, =D_03005b8c \n\
/* 0804a3b0 */ LDRH R0, [R0] \n\
/* 0804a3b2 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804a3b4 */ BGE branch_0804a3f0 \n\
/* 0804a3b6 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0804a3b8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_0804a3ba: \n\
/* 0804a3ba */ LDRB R1, [R2] \n\
/* 0804a3bc */ LSLS R0, R1, 0x1F \n\
/* 0804a3be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a3c0 */ BEQ branch_0804a3e8 \n\
/* 0804a3c2 */ LDR R0, [R2, 0xC] \n\
/* 0804a3c4 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0804a3c6 */ BNE branch_0804a3e8 \n\
/* 0804a3c8 */ LSRS R0, R1, 0x1 \n\
/* 0804a3ca */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0804a3cc */ BNE branch_0804a3e8 \n\
/* 0804a3ce */ LSLS R0, R3, 0x5 \n\
/* 0804a3d0 */ LDR R1, [R7] \n\
/* 0804a3d2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804a3d4 */ LDRB R0, [R1, 0x1C] \n\
/* 0804a3d6 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0804a3d8 */ BEQ branch_0804a3e8 \n\
/* 0804a3da */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804a3dc */ B branch_0804a3f4 \n\
\n\
.ltorg \n\
 \n\
branch_0804a3e8: \n\
/* 0804a3e8 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804a3ea */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 0804a3ec */ CMP R3, R4 @ Check R3 - R4 \n\
/* 0804a3ee */ BLT branch_0804a3ba \n\
 \n\
branch_0804a3f0: \n\
/* 0804a3f0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a3f2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804a3f4: \n\
/* 0804a3f4 */ POP {R4-R7} \n\
/* 0804a3f6 */ POP {R1} \n\
/* 0804a3f8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
