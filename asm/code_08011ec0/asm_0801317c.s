asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801317c \n\
/* 0801317c */ PUSH {LR} \n\
/* 0801317e */ BL func_08013100 \n\
/* 08013182 */ BL func_0801314c \n\
/* 08013186 */ POP {R1} \n\
/* 08013188 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
