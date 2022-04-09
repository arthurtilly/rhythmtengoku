asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008054 \n\
/* 08008054 */ PUSH {R4, LR} \n\
/* 08008056 */ SUB SP, 0xC \n\
/* 08008058 */ LSLS R0, R0, 0x10 \n\
/* 0800805a */ LSRS R0, R0, 0x10 \n\
/* 0800805c */ LSLS R1, R1, 0x10 \n\
/* 0800805e */ LSLS R2, R2, 0x10 \n\
/* 08008060 */ LDR R4, =0xffff \n\
/* 08008062 */ LSRS R1, R1, 0x10 \n\
/* 08008064 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08008066 */ STR R1, [SP, 0x4] \n\
/* 08008068 */ LSLS R3, R3, 0x10 \n\
/* 0800806a */ LDR R1, [SP, 0x8] \n\
/* 0800806c */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0800806e */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 08008070 */ STR R1, [SP, 0x8] \n\
/* 08008072 */ LDR R1, =D_08936c54 \n\
/* 08008074 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008076 */ STR R2, [SP] \n\
/* 08008078 */ ADD R2, SP, 0x4 \n\
/* 0800807a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800807c */ BL func_08005b20 \n\
/* 08008080 */ ADD SP, 0xC \n\
/* 08008082 */ POP {R4} \n\
/* 08008084 */ POP {R1} \n\
/* 08008086 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
