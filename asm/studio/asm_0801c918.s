asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c918 \n\
/* 0801c918 */ PUSH {LR} \n\
/* 0801c91a */ BL func_08008628 \n\
/* 0801c91e */ BL func_08004058 \n\
/* 0801c922 */ BL func_0801c530 \n\
/* 0801c926 */ BL func_0800c484 \n\
/* 0801c92a */ POP {R0} \n\
/* 0801c92c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
