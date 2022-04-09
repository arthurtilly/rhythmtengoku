asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035d1c \n\
/* 08035d1c */ PUSH {LR} \n\
/* 08035d1e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035d20 */ BL func_0800c604 \n\
/* 08035d24 */ BL func_08017578 \n\
/* 08035d28 */ POP {R0} \n\
/* 08035d2a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
