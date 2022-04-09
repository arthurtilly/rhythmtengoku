asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804510c \n\
/* 0804510c */ PUSH {LR} \n\
/* 0804510e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045110 */ BL func_0800c604 \n\
/* 08045114 */ BL func_08017578 \n\
/* 08045118 */ POP {R0} \n\
/* 0804511a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
