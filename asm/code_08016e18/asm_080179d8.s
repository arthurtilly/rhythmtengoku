asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080179d8 \n\
/* 080179d8 */ PUSH {LR} \n\
/* 080179da */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080179dc */ LDR R0, =D_030046a4 \n\
/* 080179de */ LDR R0, [R0] \n\
/* 080179e0 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 080179e2 */ LDRB R0, [R0] \n\
/* 080179e4 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080179e6 */ BL func_08017928 \n\
/* 080179ea */ POP {R0} \n\
/* 080179ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
