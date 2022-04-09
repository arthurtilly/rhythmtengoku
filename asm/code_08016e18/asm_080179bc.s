asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080179bc \n\
/* 080179bc */ PUSH {LR} \n\
/* 080179be */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080179c0 */ LDR R0, =D_030046a4 \n\
/* 080179c2 */ LDR R0, [R0] \n\
/* 080179c4 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 080179c6 */ LDRB R0, [R0] \n\
/* 080179c8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080179ca */ BL func_08017928 \n\
/* 080179ce */ POP {R0} \n\
/* 080179d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
