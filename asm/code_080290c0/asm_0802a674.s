asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a674 \n\
/* 0802a674 */ PUSH {R4-R7, LR} \n\
/* 0802a676 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802a678 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802a67a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802a67c */ PUSH {R5-R7} \n\
/* 0802a67e */ LDR R3, =D_030055d0 \n\
/* 0802a680 */ LDR R2, [R3] \n\
/* 0802a682 */ MOVS R1, 0xEE @ Set R1 to 0xEE \n\
/* 0802a684 */ LSLS R1, R1, 0x2 \n\
/* 0802a686 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802a688 */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 0802a68a */ LDRSH R0, [R0, R7] \n\
/* 0802a68c */ LSRS R1, R0, 0x1F \n\
/* 0802a68e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a690 */ ASRS R0, R0, 0x1 \n\
/* 0802a692 */ LDR R1, =0x00000544 \n\
/* 0802a694 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802a696 */ STRH R0, [R2] \n\
/* 0802a698 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 0802a69a */ NEGS R7, R7 @ Set R7 to -R7 \n\
/* 0802a69c */ MOV R9, R7 @ Set R9 to R7 \n\
/* 0802a69e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802a6a0 */ LDRSH R0, [R2, R1] \n\
/* 0802a6a2 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802a6a4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802a6a6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a6a8 */ LDR R6, =0xfffff800 \n\
/* 0802a6aa */ MOVS R4, 0xF1 @ Set R4 to 0xF1 \n\
/* 0802a6ac */ LSLS R4, R4, 0x2 \n\
 \n\
branch_0802a6ae: \n\
/* 0802a6ae */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802a6b0 */ LDR R0, [R2] \n\
/* 0802a6b2 */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0802a6b4 */ LDR R0, [R3, 0x4] \n\
/* 0802a6b6 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 0802a6b8 */ STR R0, [R3, 0x4] \n\
/* 0802a6ba */ CMP R0, R6 @ Check R0 - R6 \n\
/* 0802a6bc */ BGE branch_0802a6c6 \n\
/* 0802a6be */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 0802a6c0 */ LSLS R7, R7, 0x9 \n\
/* 0802a6c2 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802a6c4 */ STR R0, [R3, 0x4] \n\
 \n\
branch_0802a6c6: \n\
/* 0802a6c6 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0802a6c8 */ LSLS R0, R1, 0x8 \n\
/* 0802a6ca */ LDR R1, [R3, 0x8] \n\
/* 0802a6cc */ SUBS R2, R1, R0 @ Set R2 to R1 - R0 \n\
/* 0802a6ce */ CMP R2, R6 @ Check R2 - R6 \n\
/* 0802a6d0 */ BGE branch_0802a6da \n\
/* 0802a6d2 */ MOVS R7, 0xB0 @ Set R7 to 0xB0 \n\
/* 0802a6d4 */ LSLS R7, R7, 0x8 \n\
/* 0802a6d6 */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 0802a6d8 */ STR R0, [R3, 0x8] \n\
 \n\
branch_0802a6da: \n\
/* 0802a6da */ LDR R0, =0x0000afff \n\
/* 0802a6dc */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0802a6de */ BLE branch_0802a6e8 \n\
/* 0802a6e0 */ LDR R0, [R3, 0x8] \n\
/* 0802a6e2 */ LDR R1, =0xffff5000 \n\
/* 0802a6e4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a6e6 */ STR R0, [R3, 0x8] \n\
 \n\
branch_0802a6e8: \n\
/* 0802a6e8 */ LDR R0, =D_03005380 \n\
/* 0802a6ea */ LDR R0, [R0] \n\
/* 0802a6ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a6ee */ LDRSH R1, [R3, R2] \n\
/* 0802a6f0 */ LDR R2, [R3, 0x4] \n\
/* 0802a6f2 */ LSLS R2, R2, 0x8 \n\
/* 0802a6f4 */ ASRS R2, R2, 0x10 \n\
/* 0802a6f6 */ LDR R3, [R3, 0x8] \n\
/* 0802a6f8 */ LSLS R3, R3, 0x8 \n\
/* 0802a6fa */ ASRS R3, R3, 0x10 \n\
/* 0802a6fc */ BL func_0804d5d4 \n\
/* 0802a700 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 0802a702 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802a704 */ CMP R5, 0x1F @ Compare R5 and 0x1F \n\
/* 0802a706 */ BLS branch_0802a6ae \n\
/* 0802a708 */ POP {R3-R5} \n\
/* 0802a70a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a70c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802a70e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802a710 */ POP {R4-R7} \n\
/* 0802a712 */ POP {R1} \n\
/* 0802a714 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
