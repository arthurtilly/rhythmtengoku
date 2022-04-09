asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803492c \n\
/* 0803492c */ PUSH {LR} \n\
/* 0803492e */ BL func_080348a8 \n\
/* 08034932 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08034934 */ BL func_080346e0 \n\
/* 08034938 */ POP {R0} \n\
/* 0803493a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
