asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012084 \n\
/* 08012084 */ PUSH {LR} \n\
/* 08012086 */ BL func_08011fa8 \n\
/* 0801208a */ POP {R0} \n\
/* 0801208c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
