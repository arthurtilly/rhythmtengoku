asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043a20 \n\
/* 08043a20 */ PUSH {LR} \n\
/* 08043a22 */ LDR R0, [R1, 0x8] \n\
/* 08043a24 */ BL func_0800fc70 \n\
/* 08043a28 */ POP {R0} \n\
/* 08043a2a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
