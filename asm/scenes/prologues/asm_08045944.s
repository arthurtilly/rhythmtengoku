asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045944 \n\
/* 08045944 */ PUSH {LR} \n\
/* 08045946 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045948 */ BL func_0800c604 \n\
/* 0804594c */ BL func_08017578 \n\
/* 08045950 */ POP {R0} \n\
/* 08045952 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
