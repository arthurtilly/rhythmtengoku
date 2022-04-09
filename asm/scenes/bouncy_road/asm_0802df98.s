asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802df98 \n\
/* 0802df98 */ PUSH {LR} \n\
/* 0802df9a */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0802df9c */ BL func_0802df44 \n\
/* 0802dfa0 */ POP {R0} \n\
/* 0802dfa2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
