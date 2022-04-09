asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045a90 \n\
/* 08045a90 */ PUSH {LR} \n\
/* 08045a92 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045a94 */ BL func_0800c604 \n\
/* 08045a98 */ BL func_08017578 \n\
/* 08045a9c */ POP {R0} \n\
/* 08045a9e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
