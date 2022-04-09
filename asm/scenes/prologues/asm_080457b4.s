asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080457b4 \n\
/* 080457b4 */ PUSH {LR} \n\
/* 080457b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080457b8 */ BL func_0800c604 \n\
/* 080457bc */ BL func_08017578 \n\
/* 080457c0 */ POP {R0} \n\
/* 080457c2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
