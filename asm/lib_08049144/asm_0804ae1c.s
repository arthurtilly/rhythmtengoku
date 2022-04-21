asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ae1c \n\
/* 0804ae1c */ PUSH {R4-R6, LR} \n\
/* 0804ae1e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804ae20 */ LDR R5, [SP, 0x10] \n\
/* 0804ae22 */ LDR R6, [SP, 0x14] \n\
/* 0804ae24 */ LSLS R3, R3, 0x18 \n\
/* 0804ae26 */ LSRS R3, R3, 0x18 \n\
/* 0804ae28 */ LSLS R5, R5, 0x18 \n\
/* 0804ae2a */ LSRS R5, R5, 0x18 \n\
/* 0804ae2c */ LSLS R6, R6, 0x18 \n\
/* 0804ae2e */ LSRS R6, R6, 0x18 \n\
/* 0804ae30 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804ae32 */ STRB R0, [R4, 0x6] \n\
/* 0804ae34 */ STRB R0, [R4, 0x7] \n\
/* 0804ae36 */ STR R0, [R4, 0x8] \n\
/* 0804ae38 */ STRB R1, [R4] \n\
/* 0804ae3a */ STRB R2, [R4, 0x1] \n\
/* 0804ae3c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804ae3e */ LSLS R0, R0, 0x9 \n\
/* 0804ae40 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804ae42 */ BL __divsi3 \n\
/* 0804ae46 */ STRH R0, [R4, 0x2] \n\
/* 0804ae48 */ STRB R5, [R4, 0x4] \n\
/* 0804ae4a */ STRB R6, [R4, 0x5] \n\
/* 0804ae4c */ POP {R4-R6} \n\
/* 0804ae4e */ POP {R0} \n\
/* 0804ae50 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
