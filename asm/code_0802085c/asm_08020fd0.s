asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020fd0 \n\
/* 08020fd0 */ PUSH {LR} \n\
/* 08020fd2 */ LDRB R0, [R1] \n\
/* 08020fd4 */ BL func_080207ec \n\
/* 08020fd8 */ LDR R0, =D_08a9bb68 \n\
/* 08020fda */ BL func_08002634 \n\
/* 08020fde */ POP {R0} \n\
/* 08020fe0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
