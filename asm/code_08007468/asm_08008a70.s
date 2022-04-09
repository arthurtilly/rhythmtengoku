asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008a70 \n\
/* 08008a70 */ PUSH {R4-R7, LR} \n\
/* 08008a72 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08008a74 */ PUSH {R7} \n\
/* 08008a76 */ SUB SP, 0x1C \n\
/* 08008a78 */ LDR R4, [SP, 0x34] \n\
/* 08008a7a */ LDR R5, [SP, 0x38] \n\
/* 08008a7c */ STR R5, [SP, 0x4] \n\
/* 08008a7e */ LDR R7, [SP, 0x3C] \n\
/* 08008a80 */ STR R7, [SP, 0x8] \n\
/* 08008a82 */ LDR R5, [SP, 0x40] \n\
/* 08008a84 */ LDR R6, [SP, 0x44] \n\
/* 08008a86 */ LDR R7, [SP, 0x48] \n\
/* 08008a88 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 08008a8a */ LSLS R4, R4, 0x10 \n\
/* 08008a8c */ LSRS R4, R4, 0x10 \n\
/* 08008a8e */ STR R4, [SP] \n\
/* 08008a90 */ LSLS R5, R5, 0x10 \n\
/* 08008a92 */ ASRS R5, R5, 0x10 \n\
/* 08008a94 */ STR R5, [SP, 0xC] \n\
/* 08008a96 */ LSLS R6, R6, 0x10 \n\
/* 08008a98 */ ASRS R6, R6, 0x10 \n\
/* 08008a9a */ STR R6, [SP, 0x10] \n\
/* 08008a9c */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08008a9e */ LSLS R4, R4, 0x10 \n\
/* 08008aa0 */ ASRS R4, R4, 0x10 \n\
/* 08008aa2 */ STR R4, [SP, 0x14] \n\
/* 08008aa4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08008aa6 */ STR R4, [SP, 0x18] \n\
/* 08008aa8 */ BL func_080089c0 \n\
/* 08008aac */ ADD SP, 0x1C \n\
/* 08008aae */ POP {R3} \n\
/* 08008ab0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008ab2 */ POP {R4-R7} \n\
/* 08008ab4 */ POP {R0} \n\
/* 08008ab6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
