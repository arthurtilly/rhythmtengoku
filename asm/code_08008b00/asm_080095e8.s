asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080095e8 \n\
/* 080095e8 */ LDR R1, =D_03005370 \n\
/* 080095ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080095ec */ STRH R2, [R1] \n\
/* 080095ee */ LDR R1, =D_03004af4 \n\
/* 080095f0 */ STRH R2, [R1] \n\
/* 080095f2 */ LDR R1, =D_030046b0 \n\
/* 080095f4 */ STRH R0, [R1] \n\
/* 080095f6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
