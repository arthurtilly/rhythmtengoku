asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008938 \n\
/* 08008938 */ PUSH {R4-R7, LR} \n\
/* 0800893a */ SUB SP, 0x14 \n\
/* 0800893c */ LDR R7, [SP, 0x28] \n\
/* 0800893e */ LDR R4, [SP, 0x2C] \n\
/* 08008940 */ LDR R5, [SP, 0x30] \n\
/* 08008942 */ LDR R6, [SP, 0x34] \n\
/* 08008944 */ LSLS R4, R4, 0x18 \n\
/* 08008946 */ LSRS R4, R4, 0x18 \n\
/* 08008948 */ STR R7, [SP] \n\
/* 0800894a */ STR R4, [SP, 0x4] \n\
/* 0800894c */ LSLS R5, R5, 0x10 \n\
/* 0800894e */ ASRS R5, R5, 0x10 \n\
/* 08008950 */ STR R5, [SP, 0x8] \n\
/* 08008952 */ LSLS R6, R6, 0x10 \n\
/* 08008954 */ ASRS R6, R6, 0x10 \n\
/* 08008956 */ STR R6, [SP, 0xC] \n\
/* 08008958 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800895a */ STR R4, [SP, 0x10] \n\
/* 0800895c */ BL func_080087e8 \n\
/* 08008960 */ ADD SP, 0x14 \n\
/* 08008962 */ POP {R4-R7} \n\
/* 08008964 */ POP {R0} \n\
/* 08008966 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
