asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047060 \n\
/* 08047060 */ PUSH {LR} \n\
/* 08047062 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047064 */ BL func_0800c604 \n\
/* 08047068 */ BL func_08017578 \n\
/* 0804706c */ POP {R0} \n\
/* 0804706e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
