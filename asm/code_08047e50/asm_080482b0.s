asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080482b0 \n\
/* 080482b0 */ PUSH {R4, LR} \n\
/* 080482b2 */ LDR R4, =D_089e2ea0 \n\
/* 080482b4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080482b6 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 080482b8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080482ba */ BL func_08017728 \n\
/* 080482be */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080482c0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080482c2 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080482c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080482c6 */ BL func_080026c4 \n\
/* 080482ca */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080482cc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080482ce */ MOVS R1, 0x19 @ Set R1 to 0x19 \n\
/* 080482d0 */ BL func_08017728 \n\
/* 080482d4 */ POP {R4} \n\
/* 080482d6 */ POP {R0} \n\
/* 080482d8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
