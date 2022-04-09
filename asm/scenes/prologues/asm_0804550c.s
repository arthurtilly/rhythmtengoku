asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804550c \n\
/* 0804550c */ PUSH {LR} \n\
/* 0804550e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045510 */ BL func_0800c604 \n\
/* 08045514 */ BL func_08017578 \n\
/* 08045518 */ POP {R0} \n\
/* 0804551a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
