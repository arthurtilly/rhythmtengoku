asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e2a8 \n\
/* 0800e2a8 */ PUSH {R4-R6, LR} \n\
/* 0800e2aa */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800e2ac */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800e2ae */ PUSH {R5, R6} \n\
/* 0800e2b0 */ SUB SP, 0xC \n\
/* 0800e2b2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e2b4 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800e2b6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e2b8 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800e2ba */ LSLS R6, R6, 0x10 \n\
/* 0800e2bc */ LSRS R6, R6, 0x10 \n\
/* 0800e2be */ LSLS R4, R4, 0x10 \n\
/* 0800e2c0 */ LSRS R4, R4, 0x10 \n\
/* 0800e2c2 */ LSLS R5, R5, 0x10 \n\
/* 0800e2c4 */ LSRS R5, R5, 0x10 \n\
/* 0800e2c6 */ LSLS R0, R0, 0x10 \n\
/* 0800e2c8 */ ASRS R0, R0, 0x10 \n\
/* 0800e2ca */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e2cc */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0800e2ce */ ADD R2, SP @ Add SP to R2 \n\
/* 0800e2d0 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800e2d2 */ ADD R1, SP, 0x8 \n\
/* 0800e2d4 */ BL func_0800742c \n\
/* 0800e2d8 */ ADD R0, SP, 0x8 \n\
/* 0800e2da */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e2dc */ LDRSH R1, [R0, R3] \n\
/* 0800e2de */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800e2e0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e2e2 */ LDRSH R2, [R0, R3] \n\
/* 0800e2e4 */ LSLS R6, R6, 0x10 \n\
/* 0800e2e6 */ ASRS R6, R6, 0x10 \n\
/* 0800e2e8 */ LSLS R4, R4, 0x10 \n\
/* 0800e2ea */ ASRS R4, R4, 0x10 \n\
/* 0800e2ec */ STR R4, [SP] \n\
/* 0800e2ee */ LSLS R5, R5, 0x10 \n\
/* 0800e2f0 */ ASRS R5, R5, 0x10 \n\
/* 0800e2f2 */ STR R5, [SP, 0x4] \n\
/* 0800e2f4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e2f6 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800e2f8 */ BL func_0800e25c \n\
/* 0800e2fc */ ADD SP, 0xC \n\
/* 0800e2fe */ POP {R3, R4} \n\
/* 0800e300 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e302 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e304 */ POP {R4-R6} \n\
/* 0800e306 */ POP {R1} \n\
/* 0800e308 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
