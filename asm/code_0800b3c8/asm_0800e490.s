asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e490 \n\
/* 0800e490 */ PUSH {R4-R7, LR} \n\
/* 0800e492 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800e494 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800e496 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800e498 */ PUSH {R5-R7} \n\
/* 0800e49a */ SUB SP, 0x18 \n\
/* 0800e49c */ LDR R5, [SP, 0x38] \n\
/* 0800e49e */ LDR R6, [SP, 0x3C] \n\
/* 0800e4a0 */ LDR R4, [SP, 0x40] \n\
/* 0800e4a2 */ MOV R8, R4 @ Set R8 to R4 \n\
/* 0800e4a4 */ LDR R4, [SP, 0x44] \n\
/* 0800e4a6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e4a8 */ LDR R4, [SP, 0x48] \n\
/* 0800e4aa */ MOV R10, R4 @ Set R10 to R4 \n\
/* 0800e4ac */ LSLS R1, R1, 0x18 \n\
/* 0800e4ae */ LSRS R1, R1, 0x18 \n\
/* 0800e4b0 */ ADD R4, SP, 0x4 \n\
/* 0800e4b2 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e4b4 */ STRH R0, [R4] \n\
/* 0800e4b6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800e4b8 */ STRB R1, [R0, 0x2] \n\
/* 0800e4ba */ STRH R2, [R0, 0x4] \n\
/* 0800e4bc */ STRH R3, [R0, 0x6] \n\
/* 0800e4be */ STRH R5, [R0, 0x8] \n\
/* 0800e4c0 */ STRH R6, [R0, 0xA] \n\
/* 0800e4c2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800e4c4 */ STRH R1, [R0, 0xC] \n\
/* 0800e4c6 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 0800e4c8 */ STRH R4, [R0, 0xE] \n\
/* 0800e4ca */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800e4cc */ STRH R1, [R0, 0x10] \n\
/* 0800e4ce */ BL func_0800c3b8 \n\
/* 0800e4d2 */ LSLS R0, R0, 0x10 \n\
/* 0800e4d4 */ LSRS R0, R0, 0x10 \n\
/* 0800e4d6 */ LDR R1, =D_08936be4 \n\
/* 0800e4d8 */ STR R7, [SP] \n\
/* 0800e4da */ ADD R2, SP, 0x4 \n\
/* 0800e4dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e4de */ BL func_08005b20 \n\
/* 0800e4e2 */ ADD SP, 0x18 \n\
/* 0800e4e4 */ POP {R3-R5} \n\
/* 0800e4e6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e4e8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e4ea */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800e4ec */ POP {R4-R7} \n\
/* 0800e4ee */ POP {R1} \n\
/* 0800e4f0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
