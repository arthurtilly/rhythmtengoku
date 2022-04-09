asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c128 \n\
/* 0800c128 */ PUSH {LR} \n\
/* 0800c12a */ LSLS R0, R0, 0x10 \n\
/* 0800c12c */ LSRS R0, R0, 0x10 \n\
/* 0800c12e */ BL func_0800c0d8 \n\
/* 0800c132 */ POP {R0} \n\
/* 0800c134 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
