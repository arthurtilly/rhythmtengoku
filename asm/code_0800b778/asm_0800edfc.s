asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800edfc \n\
/* 0800edfc */ PUSH {LR} \n\
/* 0800edfe */ SUB SP, 0x4 \n\
/* 0800ee00 */ LDR R1, =(D_03004b10 + 0x54) \n\
/* 0800ee02 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800ee04 */ LSLS R2, R2, 0x2 \n\
/* 0800ee06 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0800ee08 */ LSLS R3, R3, 0x1 \n\
/* 0800ee0a */ STR R3, [SP] \n\
/* 0800ee0c */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0800ee0e */ BL dma3_set \n\
/* 0800ee12 */ ADD SP, 0x4 \n\
/* 0800ee14 */ POP {R0} \n\
/* 0800ee16 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
