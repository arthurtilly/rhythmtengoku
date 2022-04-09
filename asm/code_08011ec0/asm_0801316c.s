asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801316c \n\
/* 0801316c */ PUSH {LR} \n\
/* 0801316e */ BL func_08013100 \n\
/* 08013172 */ BL func_08013130 \n\
/* 08013176 */ POP {R1} \n\
/* 08013178 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
