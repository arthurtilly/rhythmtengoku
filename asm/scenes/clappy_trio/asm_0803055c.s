asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803055c \n\
/* 0803055c */ PUSH {LR} \n\
/* 0803055e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030560 */ BL func_0800c604 \n\
/* 08030564 */ BL func_0800c3b8 \n\
/* 08030568 */ LSLS R0, R0, 0x10 \n\
/* 0803056a */ LSRS R0, R0, 0x10 \n\
/* 0803056c */ LDR R1, =D_089e4580 \n\
/* 0803056e */ BL func_080087b4 \n\
/* 08030572 */ LDR R1, =func_0803051c \n\
/* 08030574 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030576 */ BL func_08005d38 \n\
/* 0803057a */ POP {R0} \n\
/* 0803057c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
