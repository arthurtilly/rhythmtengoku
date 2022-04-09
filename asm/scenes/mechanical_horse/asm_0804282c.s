asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804282c \n\
/* 0804282c */ PUSH {LR} \n\
/* 0804282e */ BL func_08018068 \n\
/* 08042832 */ BL func_08042020 \n\
/* 08042836 */ POP {R0} \n\
/* 08042838 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
