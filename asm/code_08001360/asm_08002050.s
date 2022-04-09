asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002050 \n\
/* 08002050 */ PUSH {R4-R7, LR} \n\
/* 08002052 */ SUB SP, 0x14 \n\
/* 08002054 */ LDR R6, [SP, 0x28] \n\
/* 08002056 */ LDR R7, [SP, 0x2C] \n\
/* 08002058 */ LSLS R0, R0, 0x10 \n\
/* 0800205a */ LSRS R0, R0, 0x10 \n\
/* 0800205c */ LSLS R2, R2, 0x18 \n\
/* 0800205e */ LSRS R2, R2, 0x18 \n\
/* 08002060 */ ADD R4, SP, 0x4 \n\
/* 08002062 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08002064 */ STRB R1, [R4] \n\
/* 08002066 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08002068 */ STRB R2, [R1, 0x1] \n\
/* 0800206a */ STR R3, [SP, 0x8] \n\
/* 0800206c */ STR R6, [SP, 0xC] \n\
/* 0800206e */ STR R7, [SP, 0x10] \n\
/* 08002070 */ LDR R1, =D_089363ec \n\
/* 08002072 */ STR R5, [SP] \n\
/* 08002074 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08002076 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08002078 */ BL func_08005b20 \n\
/* 0800207c */ ADD SP, 0x14 \n\
/* 0800207e */ POP {R4-R7} \n\
/* 08002080 */ POP {R1} \n\
/* 08002082 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
