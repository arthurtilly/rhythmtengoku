asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e30c \n\
/* 0800e30c */ PUSH {R4-R7, LR} \n\
/* 0800e30e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800e310 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800e312 */ PUSH {R6, R7} \n\
/* 0800e314 */ SUB SP, 0x14 \n\
/* 0800e316 */ LDR R5, [SP, 0x30] \n\
/* 0800e318 */ LDR R6, [SP, 0x34] \n\
/* 0800e31a */ LDR R4, [SP, 0x38] \n\
/* 0800e31c */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0800e31e */ LSLS R1, R1, 0x10 \n\
/* 0800e320 */ LSRS R1, R1, 0x10 \n\
/* 0800e322 */ ADD R4, SP, 0x4 \n\
/* 0800e324 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e326 */ MOV R9, R7 @ Set R9 to R7 \n\
/* 0800e328 */ STRH R0, [R4] \n\
/* 0800e32a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800e32c */ STRH R1, [R0, 0x2] \n\
/* 0800e32e */ STRH R2, [R0, 0x4] \n\
/* 0800e330 */ STRH R3, [R0, 0x6] \n\
/* 0800e332 */ STRH R5, [R0, 0x8] \n\
/* 0800e334 */ STRH R6, [R0, 0xA] \n\
/* 0800e336 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800e338 */ STRH R1, [R0, 0xC] \n\
/* 0800e33a */ BL func_0800c3b8 \n\
/* 0800e33e */ LSLS R0, R0, 0x10 \n\
/* 0800e340 */ LSRS R0, R0, 0x10 \n\
/* 0800e342 */ LDR R1, =D_08936bc4 \n\
/* 0800e344 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800e346 */ STR R2, [SP] \n\
/* 0800e348 */ ADD R2, SP, 0x4 \n\
/* 0800e34a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e34c */ BL func_08005b20 \n\
/* 0800e350 */ ADD SP, 0x14 \n\
/* 0800e352 */ POP {R3, R4} \n\
/* 0800e354 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e356 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e358 */ POP {R4-R7} \n\
/* 0800e35a */ POP {R1} \n\
/* 0800e35c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
