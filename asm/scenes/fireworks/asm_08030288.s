asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030288 \n\
/* 08030288 */ PUSH {LR} \n\
/* 0803028a */ BL func_0800bc40 \n\
/* 0803028e */ POP {R0} \n\
/* 08030290 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
