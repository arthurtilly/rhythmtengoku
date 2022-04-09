asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080061a4 \n\
/* 080061a4 */ PUSH {R4-R7, LR} \n\
/* 080061a6 */ SUB SP, 0x4 \n\
/* 080061a8 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080061aa */ LDR R7, [SP, 0x18] \n\
/* 080061ac */ LDR R5, [SP, 0x1C] \n\
/* 080061ae */ LDRH R4, [R0, 0x4] \n\
/* 080061b0 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 080061b2 */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 080061b4 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 080061b6 */ LSLS R2, R2, 0x1 \n\
/* 080061b8 */ LDR R1, [R0] \n\
/* 080061ba */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080061bc */ STR R5, [SP] \n\
/* 080061be */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080061c0 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080061c2 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 080061c4 */ BL func_0800536c \n\
/* 080061c8 */ ADD SP, 0x4 \n\
/* 080061ca */ POP {R4-R7} \n\
/* 080061cc */ POP {R0} \n\
/* 080061ce */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
