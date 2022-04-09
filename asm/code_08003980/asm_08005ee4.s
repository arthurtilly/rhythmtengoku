asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005ee4 \n\
/* 08005ee4 */ PUSH {LR} \n\
/* 08005ee6 */ SUB SP, 0x8 \n\
/* 08005ee8 */ LSLS R1, R1, 0x10 \n\
/* 08005eea */ LSRS R1, R1, 0x10 \n\
/* 08005eec */ LDRH R3, [R0, 0x4] \n\
/* 08005eee */ LDRH R2, [R0, 0x6] \n\
/* 08005ef0 */ STR R2, [SP] \n\
/* 08005ef2 */ STR R1, [SP, 0x4] \n\
/* 08005ef4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005ef6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08005ef8 */ BL func_08005f34 \n\
/* 08005efc */ ADD SP, 0x8 \n\
/* 08005efe */ POP {R0} \n\
/* 08005f00 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
