asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045cf0 \n\
/* 08045cf0 */ PUSH {LR} \n\
/* 08045cf2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045cf4 */ BL func_0800c604 \n\
/* 08045cf8 */ BL func_08017578 \n\
/* 08045cfc */ POP {R0} \n\
/* 08045cfe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
