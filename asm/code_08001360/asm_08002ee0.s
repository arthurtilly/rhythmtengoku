asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002ee0 \n\
/* 08002ee0 */ PUSH {LR} \n\
/* 08002ee2 */ SUB SP, 0xC \n\
/* 08002ee4 */ LSLS R0, R0, 0x10 \n\
/* 08002ee6 */ LSRS R0, R0, 0x10 \n\
/* 08002ee8 */ STR R1, [SP, 0x4] \n\
/* 08002eea */ STR R2, [SP, 0x8] \n\
/* 08002eec */ LDR R1, =D_089363fc \n\
/* 08002eee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08002ef0 */ STR R2, [SP] \n\
/* 08002ef2 */ ADD R2, SP, 0x4 \n\
/* 08002ef4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08002ef6 */ BL func_08005b20 \n\
/* 08002efa */ ADD SP, 0xC \n\
/* 08002efc */ POP {R1} \n\
/* 08002efe */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
