asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803fc94 \n\
/* 0803fc94 */ PUSH {LR} \n\
/* 0803fc96 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fc98 */ BL func_0800c604 \n\
/* 0803fc9c */ BL func_08017578 \n\
/* 0803fca0 */ POP {R0} \n\
/* 0803fca2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
