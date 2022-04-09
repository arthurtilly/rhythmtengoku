asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045bec \n\
/* 08045bec */ PUSH {LR} \n\
/* 08045bee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045bf0 */ BL func_0800c604 \n\
/* 08045bf4 */ BL func_08017578 \n\
/* 08045bf8 */ POP {R0} \n\
/* 08045bfa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
