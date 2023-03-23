asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e364 \n\
/* 0800e364 */ PUSH {R4-R6, LR} \n\
/* 0800e366 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0800e368 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0800e36a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800e36c */ PUSH {R4-R6} \n\
/* 0800e36e */ SUB SP, 0x10 \n\
/* 0800e370 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800e372 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800e374 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e376 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800e378 */ LDR R6, [SP, 0x2C] \n\
/* 0800e37a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e37c */ LSLS R0, R0, 0x10 \n\
/* 0800e37e */ LSRS R0, R0, 0x10 \n\
/* 0800e380 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e382 */ LSLS R4, R4, 0x10 \n\
/* 0800e384 */ LSRS R4, R4, 0x10 \n\
/* 0800e386 */ LSLS R5, R5, 0x10 \n\
/* 0800e388 */ LSRS R5, R5, 0x10 \n\
/* 0800e38a */ LSLS R6, R6, 0x10 \n\
/* 0800e38c */ LSRS R6, R6, 0x10 \n\
/* 0800e38e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800e390 */ LSLS R2, R2, 0x10 \n\
/* 0800e392 */ ASRS R2, R2, 0x10 \n\
/* 0800e394 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0800e396 */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 0800e398 */ ADD R3, SP @ Add SP to R3 \n\
/* 0800e39a */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0800e39c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800e39e */ ADD R1, SP, 0xC \n\
/* 0800e3a0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800e3a2 */ BL get_sprite_xy \n\
/* 0800e3a6 */ ADD R0, SP, 0xC \n\
/* 0800e3a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e3aa */ LDRSH R1, [R0, R2] \n\
/* 0800e3ac */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800e3ae */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e3b0 */ LDRSH R2, [R3, R0] \n\
/* 0800e3b2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800e3b4 */ LSLS R3, R3, 0x10 \n\
/* 0800e3b6 */ ASRS R3, R3, 0x10 \n\
/* 0800e3b8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e3ba */ LSLS R4, R4, 0x10 \n\
/* 0800e3bc */ ASRS R4, R4, 0x10 \n\
/* 0800e3be */ STR R4, [SP] \n\
/* 0800e3c0 */ LSLS R5, R5, 0x10 \n\
/* 0800e3c2 */ ASRS R5, R5, 0x10 \n\
/* 0800e3c4 */ STR R5, [SP, 0x4] \n\
/* 0800e3c6 */ LSLS R6, R6, 0x10 \n\
/* 0800e3c8 */ ASRS R6, R6, 0x10 \n\
/* 0800e3ca */ STR R6, [SP, 0x8] \n\
/* 0800e3cc */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800e3ce */ BL func_0800e30c \n\
/* 0800e3d2 */ ADD SP, 0x10 \n\
/* 0800e3d4 */ POP {R3-R5} \n\
/* 0800e3d6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e3d8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e3da */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800e3dc */ POP {R4-R6} \n\
/* 0800e3de */ POP {R1} \n\
/* 0800e3e0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
