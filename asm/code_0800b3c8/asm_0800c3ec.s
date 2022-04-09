asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c3ec \n\
/* 0800c3ec */ PUSH {LR} \n\
/* 0800c3ee */ BL func_0800c3e8 \n\
/* 0800c3f2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800c3f4 */ BL func_0800c3e8 \n\
/* 0800c3f8 */ POP {R0} \n\
/* 0800c3fa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
