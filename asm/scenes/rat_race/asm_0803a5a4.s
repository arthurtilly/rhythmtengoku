asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a5a4 \n\
/* 0803a5a4 */ PUSH {LR} \n\
/* 0803a5a6 */ LDR R0, =D_03005380 \n\
/* 0803a5a8 */ LDR R0, [R0] \n\
/* 0803a5aa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a5ac */ LDRSH R1, [R1, R2] \n\
/* 0803a5ae */ BL func_0804d504 \n\
/* 0803a5b2 */ POP {R0} \n\
/* 0803a5b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
