asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008ab8 \n\
/* 08008ab8 */ PUSH {R4-R7, LR} \n\
/* 08008aba */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08008abc */ PUSH {R7} \n\
/* 08008abe */ SUB SP, 0x1C \n\
/* 08008ac0 */ LDR R4, [SP, 0x34] \n\
/* 08008ac2 */ LDR R5, [SP, 0x38] \n\
/* 08008ac4 */ STR R5, [SP, 0x4] \n\
/* 08008ac6 */ LDR R7, [SP, 0x3C] \n\
/* 08008ac8 */ STR R7, [SP, 0x8] \n\
/* 08008aca */ LDR R5, [SP, 0x40] \n\
/* 08008acc */ LDR R6, [SP, 0x44] \n\
/* 08008ace */ LDR R7, [SP, 0x48] \n\
/* 08008ad0 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 08008ad2 */ LSLS R4, R4, 0x10 \n\
/* 08008ad4 */ LSRS R4, R4, 0x10 \n\
/* 08008ad6 */ STR R4, [SP] \n\
/* 08008ad8 */ LSLS R5, R5, 0x10 \n\
/* 08008ada */ ASRS R5, R5, 0x10 \n\
/* 08008adc */ STR R5, [SP, 0xC] \n\
/* 08008ade */ LSLS R6, R6, 0x10 \n\
/* 08008ae0 */ ASRS R6, R6, 0x10 \n\
/* 08008ae2 */ STR R6, [SP, 0x10] \n\
/* 08008ae4 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08008ae6 */ LSLS R4, R4, 0x10 \n\
/* 08008ae8 */ ASRS R4, R4, 0x10 \n\
/* 08008aea */ STR R4, [SP, 0x14] \n\
/* 08008aec */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08008aee */ STR R4, [SP, 0x18] \n\
/* 08008af0 */ BL func_080089c0 \n\
/* 08008af4 */ ADD SP, 0x1C \n\
/* 08008af6 */ POP {R3} \n\
/* 08008af8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008afa */ POP {R4-R7} \n\
/* 08008afc */ POP {R0} \n\
/* 08008afe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
