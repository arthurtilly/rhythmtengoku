asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803541c \n\
/* 0803541c */ PUSH {LR} \n\
/* 0803541e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035420 */ BL func_0800c604 \n\
/* 08035424 */ BL func_08017578 \n\
/* 08035428 */ POP {R0} \n\
/* 0803542a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
