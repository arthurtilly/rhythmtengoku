asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080112e8 \n\
/* 080112e8 */ PUSH {LR} \n\
/* 080112ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080112ec */ BL func_0800e030 \n\
/* 080112f0 */ POP {R0} \n\
/* 080112f2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
