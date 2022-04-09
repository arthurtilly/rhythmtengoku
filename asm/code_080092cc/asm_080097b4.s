asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080097b4 \n\
/* 080097b4 */ PUSH {LR} \n\
/* 080097b6 */ LDR R0, =D_03001210 \n\
/* 080097b8 */ LDR R1, [R0] \n\
/* 080097ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080097bc */ STR R0, [R1] \n\
/* 080097be */ BL func_08009814 \n\
/* 080097c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080097c4 */ BL func_0800982c \n\
/* 080097c8 */ POP {R0} \n\
/* 080097ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
