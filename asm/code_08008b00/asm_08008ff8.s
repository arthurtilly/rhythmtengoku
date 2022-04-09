asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008ff8 \n\
/* 08008ff8 */ PUSH {LR} \n\
/* 08008ffa */ SUB SP, 0x4 \n\
/* 08008ffc */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08008ffe */ LSLS R2, R2, 0x14 \n\
/* 08009000 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08009002 */ STRB R1, [R2] \n\
/* 08009004 */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
/* 08009006 */ STRB R1, [R2] \n\
/* 08009008 */ LSLS R0, R0, 0x5 \n\
/* 0800900a */ LDR R1, =D_0e000001 \n\
/* 0800900c */ STRB R0, [R1] \n\
/* 0800900e */ LSRS R0, R0, 0x8 \n\
/* 08009010 */ STRB R0, [R1] \n\
/* 08009012 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 08009014 */ STRB R0, [R2] \n\
/* 08009016 */ BL func_08008f1c \n\
/* 0800901a */ ADD SP, 0x4 \n\
/* 0800901c */ POP {R1} \n\
/* 0800901e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
