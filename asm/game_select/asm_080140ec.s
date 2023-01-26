asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080140ec \n\
/* 080140ec */ PUSH {LR} \n\
/* 080140ee */ BL func_0801401c \n\
/* 080140f2 */ POP {R0} \n\
/* 080140f4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
