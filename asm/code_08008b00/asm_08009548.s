asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009548 \n\
/* 08009548 */ PUSH {LR} \n\
/* 0800954a */ LDR R1, =0x0400010c @ !Hardware REG_TM3D \n\
/* 0800954c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800954e */ STR R0, [R1] \n\
/* 08009550 */ BL func_0804e8f8 \n\
/* 08009554 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009556 */ BL func_0804e914 \n\
/* 0800955a */ POP {R0} \n\
/* 0800955c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
