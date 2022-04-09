asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080179a0 \n\
/* 080179a0 */ PUSH {LR} \n\
/* 080179a2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080179a4 */ LDR R0, =D_030046a4 \n\
/* 080179a6 */ LDR R0, [R0] \n\
/* 080179a8 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 080179aa */ LDRB R0, [R0] \n\
/* 080179ac */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080179ae */ BL func_08017928 \n\
/* 080179b2 */ POP {R0} \n\
/* 080179b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
