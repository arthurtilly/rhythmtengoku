asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080251f0 \n\
/* 080251f0 */ PUSH {LR} \n\
/* 080251f2 */ BL beatscript_enable_loops \n\
/* 080251f6 */ POP {R0} \n\
/* 080251f8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
