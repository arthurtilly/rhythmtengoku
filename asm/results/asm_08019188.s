asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019188 \n\
/* 08019188 */ PUSH {LR} \n\
/* 0801918a */ LDR R1, =D_089d7854 \n\
/* 0801918c */ LDR R0, =D_030046a4 \n\
/* 0801918e */ LDR R0, [R0] \n\
/* 08019190 */ ADDS R0, 0x25 @ Add 0x25 to R0 \n\
/* 08019192 */ LDRB R0, [R0] \n\
/* 08019194 */ LSLS R0, R0, 0x2 \n\
/* 08019196 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08019198 */ LDR R0, [R0] \n\
/* 0801919a */ BL play_sound \n\
/* 0801919e */ POP {R0} \n\
/* 080191a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
