asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080340b8 \n\
/* 080340b8 */ PUSH {LR} \n\
/* 080340ba */ BL func_08033f08 \n\
/* 080340be */ BL func_080340a4 \n\
/* 080340c2 */ BL func_0800bc40 \n\
/* 080340c6 */ POP {R0} \n\
/* 080340c8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
