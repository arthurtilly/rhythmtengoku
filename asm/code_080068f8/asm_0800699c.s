asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800699c \n\
/* 0800699c */ PUSH {R4, R5, LR} \n\
/* 0800699e */ SUB SP, 0x10 \n\
/* 080069a0 */ LDR R5, [R0, 0x4] \n\
/* 080069a2 */ LDR R4, [R0, 0x18] \n\
/* 080069a4 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 080069a6 */ LDRSH R1, [R0, R2] \n\
/* 080069a8 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 080069aa */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 080069ac */ LDRSH R2, [R0, R3] \n\
/* 080069ae */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 080069b0 */ LDRB R3, [R4] \n\
/* 080069b2 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 080069b4 */ LDRB R4, [R4, 0x1] \n\
/* 080069b6 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080069b8 */ STR R4, [SP] \n\
/* 080069ba */ LDR R0, [R0, 0x8] \n\
/* 080069bc */ STR R0, [SP, 0x4] \n\
/* 080069be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080069c0 */ STR R0, [SP, 0x8] \n\
/* 080069c2 */ STR R0, [SP, 0xC] \n\
/* 080069c4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080069c6 */ BL func_0800620c \n\
/* 080069ca */ ADD SP, 0x10 \n\
/* 080069cc */ POP {R4, R5} \n\
/* 080069ce */ POP {R0} \n\
/* 080069d0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
