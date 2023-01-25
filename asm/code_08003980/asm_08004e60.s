asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004e60 \n\
/* 08004e60 */ PUSH {LR} \n\
/* 08004e62 */ SUB SP, 0x14 \n\
/* 08004e64 */ LSLS R0, R0, 0x10 \n\
/* 08004e66 */ LSRS R0, R0, 0x10 \n\
/* 08004e68 */ STR R1, [SP, 0x4] \n\
/* 08004e6a */ STR R2, [SP, 0x8] \n\
/* 08004e6c */ STR R3, [SP, 0xC] \n\
/* 08004e6e */ LDR R1, =D_08936b54 \n\
/* 08004e70 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004e72 */ STR R2, [SP] \n\
/* 08004e74 */ ADD R2, SP, 0x4 \n\
/* 08004e76 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004e78 */ BL start_new_task \n\
/* 08004e7c */ ADD SP, 0x14 \n\
/* 08004e7e */ POP {R1} \n\
/* 08004e80 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
