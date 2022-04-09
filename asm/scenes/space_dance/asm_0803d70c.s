asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d70c \n\
/* 0803d70c */ PUSH {LR} \n\
/* 0803d70e */ BL func_0803d5f4 \n\
/* 0803d712 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d714 */ BL func_0803d670 \n\
/* 0803d718 */ POP {R0} \n\
/* 0803d71a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
