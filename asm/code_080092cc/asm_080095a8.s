asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080095a8 \n\
/* 080095a8 */ PUSH {LR} \n\
/* 080095aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080095ac */ BL func_0804e8f8 \n\
/* 080095b0 */ LDR R1, =D_030011a4 \n\
/* 080095b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080095b4 */ STRB R0, [R1] \n\
/* 080095b6 */ POP {R0} \n\
/* 080095b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
