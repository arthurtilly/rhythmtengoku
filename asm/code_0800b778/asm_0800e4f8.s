asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e4f8 \n\
/* 0800e4f8 */ PUSH {R4-R7, LR} \n\
/* 0800e4fa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800e4fc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800e4fe */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800e500 */ PUSH {R5-R7} \n\
/* 0800e502 */ SUB SP, 0x18 \n\
/* 0800e504 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800e506 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e508 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0800e50a */ LDR R6, [SP, 0x38] \n\
/* 0800e50c */ LDR R0, [SP, 0x3C] \n\
/* 0800e50e */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800e510 */ LSLS R1, R1, 0x18 \n\
/* 0800e512 */ LSRS R7, R1, 0x18 \n\
/* 0800e514 */ LSLS R4, R4, 0x10 \n\
/* 0800e516 */ LSRS R4, R4, 0x10 \n\
/* 0800e518 */ LSLS R5, R5, 0x10 \n\
/* 0800e51a */ LSRS R5, R5, 0x10 \n\
/* 0800e51c */ LSLS R6, R6, 0x10 \n\
/* 0800e51e */ LSRS R6, R6, 0x10 \n\
/* 0800e520 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0800e522 */ LSLS R1, R1, 0x10 \n\
/* 0800e524 */ LSRS R1, R1, 0x10 \n\
/* 0800e526 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0800e528 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800e52a */ LSLS R0, R0, 0x10 \n\
/* 0800e52c */ ASRS R0, R0, 0x10 \n\
/* 0800e52e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0800e530 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0800e532 */ ADD R1, SP @ Add SP to R1 \n\
/* 0800e534 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800e536 */ ADD R1, SP, 0x14 \n\
/* 0800e538 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800e53a */ BL func_0800742c \n\
/* 0800e53e */ ADD R0, SP, 0x14 \n\
/* 0800e540 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800e542 */ LDRSH R2, [R0, R1] \n\
/* 0800e544 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e546 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800e548 */ LDRSH R3, [R0, R1] \n\
/* 0800e54a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e54c */ STR R0, [SP] \n\
/* 0800e54e */ LSLS R4, R4, 0x10 \n\
/* 0800e550 */ ASRS R4, R4, 0x10 \n\
/* 0800e552 */ STR R4, [SP, 0x4] \n\
/* 0800e554 */ LSLS R5, R5, 0x10 \n\
/* 0800e556 */ ASRS R5, R5, 0x10 \n\
/* 0800e558 */ STR R5, [SP, 0x8] \n\
/* 0800e55a */ LSLS R6, R6, 0x10 \n\
/* 0800e55c */ ASRS R6, R6, 0x10 \n\
/* 0800e55e */ STR R6, [SP, 0xC] \n\
/* 0800e560 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800e562 */ STR R0, [SP, 0x10] \n\
/* 0800e564 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800e566 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800e568 */ BL func_0800e490 \n\
/* 0800e56c */ ADD SP, 0x18 \n\
/* 0800e56e */ POP {R3-R5} \n\
/* 0800e570 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e572 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e574 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800e576 */ POP {R4-R7} \n\
/* 0800e578 */ POP {R1} \n\
/* 0800e57a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
