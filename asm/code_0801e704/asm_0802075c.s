asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802075c \n\
/* 0802075c */ PUSH {LR} \n\
/* 0802075e */ LDR R2, =D_089dece0 \n\
/* 08020760 */ LSLS R0, R0, 0x2 \n\
/* 08020762 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08020764 */ LDR R0, [R0] \n\
/* 08020766 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020768 */ LDRB R0, [R0] \n\
/* 0802076a */ BL func_080206a0 \n\
/* 0802076e */ POP {R1} \n\
/* 08020770 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
