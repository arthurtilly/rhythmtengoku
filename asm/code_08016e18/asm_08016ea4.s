asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016ea4 \n\
/* 08016ea4 */ PUSH {LR} \n\
/* 08016ea6 */ LDR R1, =D_089cfda0 \n\
/* 08016ea8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016eaa */ BL func_080087b4 \n\
/* 08016eae */ LDR R1, =func_0800bd04 \n\
/* 08016eb0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016eb2 */ BL func_08005d38 \n\
/* 08016eb6 */ POP {R0} \n\
/* 08016eb8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
