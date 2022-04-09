asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e694 \n\
/* 0800e694 */ PUSH {R4-R7, LR} \n\
/* 0800e696 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800e698 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800e69a */ PUSH {R6, R7} \n\
/* 0800e69c */ SUB SP, 0x14 \n\
/* 0800e69e */ LDR R5, [SP, 0x30] \n\
/* 0800e6a0 */ LDR R6, [SP, 0x34] \n\
/* 0800e6a2 */ LDR R4, [SP, 0x38] \n\
/* 0800e6a4 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0800e6a6 */ LSLS R1, R1, 0x10 \n\
/* 0800e6a8 */ LSRS R1, R1, 0x10 \n\
/* 0800e6aa */ ADD R4, SP, 0x4 \n\
/* 0800e6ac */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e6ae */ MOV R9, R7 @ Set R9 to R7 \n\
/* 0800e6b0 */ STRH R0, [R4] \n\
/* 0800e6b2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800e6b4 */ STRH R1, [R0, 0x2] \n\
/* 0800e6b6 */ STRH R2, [R0, 0x4] \n\
/* 0800e6b8 */ STRH R3, [R0, 0x6] \n\
/* 0800e6ba */ STRH R5, [R0, 0x8] \n\
/* 0800e6bc */ STRH R6, [R0, 0xA] \n\
/* 0800e6be */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800e6c0 */ STRH R1, [R0, 0xC] \n\
/* 0800e6c2 */ BL func_0800c3b8 \n\
/* 0800e6c6 */ LSLS R0, R0, 0x10 \n\
/* 0800e6c8 */ LSRS R0, R0, 0x10 \n\
/* 0800e6ca */ LDR R1, =D_08936c04 \n\
/* 0800e6cc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800e6ce */ STR R2, [SP] \n\
/* 0800e6d0 */ ADD R2, SP, 0x4 \n\
/* 0800e6d2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e6d4 */ BL func_08005b20 \n\
/* 0800e6d8 */ ADD SP, 0x14 \n\
/* 0800e6da */ POP {R3, R4} \n\
/* 0800e6dc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e6de */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e6e0 */ POP {R4-R7} \n\
/* 0800e6e2 */ POP {R1} \n\
/* 0800e6e4 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
