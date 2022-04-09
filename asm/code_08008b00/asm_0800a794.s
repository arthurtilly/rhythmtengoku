asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a794 \n\
/* 0800a794 */ PUSH {R4-R7, LR} \n\
/* 0800a796 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800a798 */ PUSH {R7} \n\
/* 0800a79a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800a79c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800a79e */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0800a7a0 */ LDRSH R0, [R5, R2] \n\
/* 0800a7a2 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0800a7a4 */ BCS branch_0800a7ec \n\
/* 0800a7a6 */ LDR R0, =D_03005380 \n\
/* 0800a7a8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800a7aa */ LSLS R7, R1, 0x10 \n\
 \n\
branch_0800a7ac: \n\
/* 0800a7ac */ LDR R0, [R5, 0x10] \n\
/* 0800a7ae */ LSLS R4, R6, 0x1 \n\
/* 0800a7b0 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 0800a7b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a7b4 */ LDRSH R0, [R1, R2] \n\
/* 0800a7b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a7b8 */ BLT branch_0800a7c8 \n\
/* 0800a7ba */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800a7bc */ LDR R0, [R2] \n\
/* 0800a7be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a7c0 */ LDRSH R1, [R1, R2] \n\
/* 0800a7c2 */ LSRS R2, R7, 0x10 \n\
/* 0800a7c4 */ BL func_0804d770 \n\
 \n\
branch_0800a7c8: \n\
/* 0800a7c8 */ LDR R0, [R5, 0x20] \n\
/* 0800a7ca */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 0800a7cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a7ce */ LDRSH R0, [R1, R2] \n\
/* 0800a7d0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a7d2 */ BLT branch_0800a7e2 \n\
/* 0800a7d4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800a7d6 */ LDR R0, [R2] \n\
/* 0800a7d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a7da */ LDRSH R1, [R1, R2] \n\
/* 0800a7dc */ LSRS R2, R7, 0x10 \n\
/* 0800a7de */ BL func_0804d770 \n\
 \n\
branch_0800a7e2: \n\
/* 0800a7e2 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800a7e4 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800a7e6 */ LDRSH R0, [R5, R1] \n\
/* 0800a7e8 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0800a7ea */ BCC branch_0800a7ac \n\
 \n\
branch_0800a7ec: \n\
/* 0800a7ec */ POP {R3} \n\
/* 0800a7ee */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800a7f0 */ POP {R4-R7} \n\
/* 0800a7f2 */ POP {R0} \n\
/* 0800a7f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
