asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011520 \n\
/* 08011520 */ PUSH {LR} \n\
/* 08011522 */ BL func_08008628 \n\
/* 08011526 */ BL func_08004058 \n\
/* 0801152a */ POP {R0} \n\
/* 0801152c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
