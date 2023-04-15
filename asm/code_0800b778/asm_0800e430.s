asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e430 \n\
/* 0800e430 */ PUSH {R4-R6, LR} \n\
/* 0800e432 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800e434 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800e436 */ PUSH {R5, R6} \n\
/* 0800e438 */ SUB SP, 0xC \n\
/* 0800e43a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e43c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800e43e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e440 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0800e442 */ LSLS R5, R5, 0x10 \n\
/* 0800e444 */ LSRS R5, R5, 0x10 \n\
/* 0800e446 */ LSLS R4, R4, 0x10 \n\
/* 0800e448 */ LSRS R4, R4, 0x10 \n\
/* 0800e44a */ LSLS R6, R6, 0x10 \n\
/* 0800e44c */ LSRS R6, R6, 0x10 \n\
/* 0800e44e */ LSLS R0, R0, 0x10 \n\
/* 0800e450 */ ASRS R0, R0, 0x10 \n\
/* 0800e452 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e454 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0800e456 */ ADD R2, SP @ Add SP to R2 \n\
/* 0800e458 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800e45a */ ADD R1, SP, 0x8 \n\
/* 0800e45c */ BL get_sprite_xy \n\
/* 0800e460 */ ADD R0, SP, 0x8 \n\
/* 0800e462 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e464 */ LDRSH R1, [R0, R3] \n\
/* 0800e466 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800e468 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e46a */ LDRSH R2, [R0, R3] \n\
/* 0800e46c */ LSLS R5, R5, 0x10 \n\
/* 0800e46e */ ASRS R5, R5, 0x10 \n\
/* 0800e470 */ LSLS R4, R4, 0x10 \n\
/* 0800e472 */ ASRS R4, R4, 0x10 \n\
/* 0800e474 */ STR R4, [SP] \n\
/* 0800e476 */ STR R6, [SP, 0x4] \n\
/* 0800e478 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e47a */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800e47c */ BL func_0800e3e4 \n\
/* 0800e480 */ ADD SP, 0xC \n\
/* 0800e482 */ POP {R3, R4} \n\
/* 0800e484 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e486 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800e488 */ POP {R4-R6} \n\
/* 0800e48a */ POP {R1} \n\
/* 0800e48c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
