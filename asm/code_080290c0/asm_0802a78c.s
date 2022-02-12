asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a78c \n\
/* 0802a78c */ PUSH {R4-R7, LR} \n\
/* 0802a78e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802a790 */ PUSH {R7} \n\
/* 0802a792 */ SUB SP, 0xC \n\
/* 0802a794 */ LDR R7, =D_030055d0 \n\
/* 0802a796 */ LDR R1, [R7] \n\
/* 0802a798 */ LDR R2, =0x0000054c \n\
/* 0802a79a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802a79c */ LDR R2, [R0] \n\
/* 0802a79e */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 0802a7a0 */ BHI branch_0802a81a \n\
/* 0802a7a2 */ MOVS R3, 0xA9 @ Set R3 to 0xA9 \n\
/* 0802a7a4 */ LSLS R3, R3, 0x3 \n\
/* 0802a7a6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a7a8 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802a7aa */ LDR R0, [R0] \n\
/* 0802a7ac */ LSLS R4, R0, 0x1 \n\
/* 0802a7ae */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802a7b0 */ LSLS R4, R4, 0x2 \n\
/* 0802a7b2 */ MOVS R5, 0xF1 @ Set R5 to 0xF1 \n\
/* 0802a7b4 */ LSLS R5, R5, 0x2 \n\
/* 0802a7b6 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 0802a7b8 */ ADDS R4, R1, R4 @ Set R4 to R1 + R4 \n\
/* 0802a7ba */ LDR R5, =D_03005380 \n\
/* 0802a7bc */ LDR R0, [R5] \n\
/* 0802a7be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a7c0 */ LDRSH R1, [R4, R3] \n\
/* 0802a7c2 */ LDR R3, =D_089e2ee8 \n\
/* 0802a7c4 */ LSLS R2, R2, 0x2 \n\
/* 0802a7c6 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802a7c8 */ LDR R2, [R2] \n\
/* 0802a7ca */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a7cc */ STR R3, [SP] \n\
/* 0802a7ce */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802a7d0 */ STR R6, [SP, 0x4] \n\
/* 0802a7d2 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802a7d4 */ STR R3, [SP, 0x8] \n\
/* 0802a7d6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a7d8 */ BL func_0804d8f8 \n\
/* 0802a7dc */ LDR R0, [R5] \n\
/* 0802a7de */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802a7e0 */ LDRSH R1, [R4, R5] \n\
/* 0802a7e2 */ LDR R2, =(func_0802a730 + 1) \n\
/* 0802a7e4 */ LDR R3, =D_089e2ed4 \n\
/* 0802a7e6 */ MOV R12, R3 @ Set R12 to R3 \n\
/* 0802a7e8 */ LDR R3, [R7] \n\
/* 0802a7ea */ LDR R5, =0x0000054c \n\
/* 0802a7ec */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0802a7ee */ LDR R3, [R3] \n\
/* 0802a7f0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802a7f2 */ LSLS R3, R3, 0x2 \n\
/* 0802a7f4 */ ADD R3, R12 @ Add R12 to R3 \n\
/* 0802a7f6 */ LDR R3, [R3] \n\
/* 0802a7f8 */ BL func_0804daa8 \n\
/* 0802a7fc */ LDR R1, [R7] \n\
/* 0802a7fe */ ADDS R2, R1, R5 @ Set R2 to R1 + R5 \n\
/* 0802a800 */ LDR R0, [R2] \n\
/* 0802a802 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802a804 */ STRH R0, [R4, 0x2] \n\
/* 0802a806 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0802a808 */ LDR R0, [R1] \n\
/* 0802a80a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802a80c */ STR R0, [R1] \n\
/* 0802a80e */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 0802a810 */ BLS branch_0802a81a \n\
/* 0802a812 */ STR R6, [R1] \n\
/* 0802a814 */ LDR R0, [R2] \n\
/* 0802a816 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802a818 */ STR R0, [R2] \n\
 \n\
branch_0802a81a: \n\
/* 0802a81a */ ADD SP, 0xC \n\
/* 0802a81c */ POP {R3} \n\
/* 0802a81e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802a820 */ POP {R4-R7} \n\
/* 0802a822 */ POP {R0} \n\
/* 0802a824 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
