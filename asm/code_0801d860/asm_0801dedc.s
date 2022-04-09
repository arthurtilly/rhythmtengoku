asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dedc \n\
/* 0801dedc */ PUSH {LR} \n\
/* 0801dede */ BL func_08000224 \n\
/* 0801dee2 */ LDR R0, =D_08935fb0 \n\
/* 0801dee4 */ LDR R0, [R0] \n\
/* 0801dee6 */ BL func_08000584 \n\
/* 0801deea */ POP {R0} \n\
/* 0801deec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
