asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e750 \n\
/* 0802e750 */ PUSH {R4-R7, LR} \n\
/* 0802e752 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802e754 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802e756 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802e758 */ PUSH {R5-R7} \n\
/* 0802e75a */ SUB SP, 0x14 \n\
/* 0802e75c */ LDR R1, =D_030055d0 \n\
/* 0802e75e */ LDR R0, [R1] \n\
/* 0802e760 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802e762 */ ADDS R5, 0x74 @ Add 0x74 to R5 \n\
/* 0802e764 */ LDRB R0, [R0] \n\
/* 0802e766 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802e768 */ BL __umodsi3 \n\
/* 0802e76c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e76e */ LSLS R4, R4, 0x18 \n\
/* 0802e770 */ LDR R2, =D_03005380 \n\
/* 0802e772 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802e774 */ LDR R0, [R2] \n\
/* 0802e776 */ LDR R1, =D_089e3d98 \n\
/* 0802e778 */ LSRS R4, R4, 0x16 \n\
/* 0802e77a */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 0802e77c */ LDR R1, [R4] \n\
/* 0802e77e */ MOVS R7, 0x10 @ Set R7 to 0x10 \n\
/* 0802e780 */ STR R7, [SP] \n\
/* 0802e782 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0802e784 */ LSLS R3, R3, 0x7 \n\
/* 0802e786 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0802e788 */ STR R3, [SP, 0x4] \n\
/* 0802e78a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802e78c */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802e78e */ STR R2, [SP, 0x8] \n\
/* 0802e790 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802e792 */ STR R6, [SP, 0xC] \n\
/* 0802e794 */ STR R6, [SP, 0x10] \n\
/* 0802e796 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e798 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802e79a */ BL func_0804d160 \n\
/* 0802e79e */ STRH R0, [R5] \n\
/* 0802e7a0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802e7a2 */ LDR R0, [R1] \n\
/* 0802e7a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e7a6 */ LDRSH R1, [R5, R2] \n\
/* 0802e7a8 */ LDR R3, =D_030055d0 \n\
/* 0802e7aa */ LDR R2, [R3] \n\
/* 0802e7ac */ ADDS R2, 0x8E @ Add 0x8E to R2 \n\
/* 0802e7ae */ LDR R3, =D_03004b22 \n\
/* 0802e7b0 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802e7b2 */ BL func_0804db44 \n\
/* 0802e7b6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802e7b8 */ LDR R0, [R1] \n\
/* 0802e7ba */ LDR R1, [R4] \n\
/* 0802e7bc */ STR R7, [SP] \n\
/* 0802e7be */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0802e7c0 */ STR R2, [SP, 0x4] \n\
/* 0802e7c2 */ STR R6, [SP, 0x8] \n\
/* 0802e7c4 */ STR R6, [SP, 0xC] \n\
/* 0802e7c6 */ STR R6, [SP, 0x10] \n\
/* 0802e7c8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e7ca */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0802e7cc */ BL func_0804d160 \n\
/* 0802e7d0 */ STRH R0, [R5, 0x2] \n\
/* 0802e7d2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802e7d4 */ LDR R0, [R3] \n\
/* 0802e7d6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802e7d8 */ LDRSH R1, [R5, R2] \n\
/* 0802e7da */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0802e7dc */ LSLS R2, R2, 0x1 \n\
/* 0802e7de */ BL func_0804d614 \n\
/* 0802e7e2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802e7e4 */ LDR R0, [R3] \n\
/* 0802e7e6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802e7e8 */ LDRSH R1, [R5, R2] \n\
/* 0802e7ea */ LDR R3, =D_030055d0 \n\
/* 0802e7ec */ LDR R2, [R3] \n\
/* 0802e7ee */ ADDS R2, 0x8E @ Add 0x8E to R2 \n\
/* 0802e7f0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802e7f2 */ BL func_0804db44 \n\
/* 0802e7f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e7f8 */ STRB R0, [R5, 0x10] \n\
/* 0802e7fa */ LDR R1, =D_030055d0 \n\
/* 0802e7fc */ LDR R0, [R1] \n\
/* 0802e7fe */ ADDS R0, 0x8E @ Add 0x8E to R0 \n\
/* 0802e800 */ STRH R6, [R0] \n\
/* 0802e802 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e804 */ STRB R2, [R5, 0x6] \n\
/* 0802e806 */ ADD SP, 0x14 \n\
/* 0802e808 */ POP {R3-R5} \n\
/* 0802e80a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802e80c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802e80e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802e810 */ POP {R4-R7} \n\
/* 0802e812 */ POP {R0} \n\
/* 0802e814 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
