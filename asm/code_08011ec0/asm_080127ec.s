asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080127ec \n\
/* 080127ec */ PUSH {LR} \n\
/* 080127ee */ BL func_08008628 \n\
/* 080127f2 */ BL func_08004058 \n\
/* 080127f6 */ POP {R0} \n\
/* 080127f8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
