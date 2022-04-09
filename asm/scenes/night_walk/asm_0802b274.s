asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b274 \n\
/* 0802b274 */ PUSH {LR} \n\
/* 0802b276 */ BL func_0802ab34 \n\
/* 0802b27a */ BL func_0802a500 \n\
/* 0802b27e */ BL func_0802a954 \n\
/* 0802b282 */ POP {R0} \n\
/* 0802b284 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
