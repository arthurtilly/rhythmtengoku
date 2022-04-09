asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801359c \n\
/* 0801359c */ PUSH {LR} \n\
/* 0801359e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080135a0 */ BL func_0800c604 \n\
/* 080135a4 */ BL func_0800c3b8 \n\
/* 080135a8 */ LSLS R0, R0, 0x10 \n\
/* 080135aa */ LSRS R0, R0, 0x10 \n\
/* 080135ac */ LDR R1, =D_089cf948 \n\
/* 080135ae */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 080135b0 */ LSLS R2, R2, 0x6 \n\
/* 080135b2 */ BL func_08002ee0 \n\
/* 080135b6 */ LDR R1, =func_08013570 \n\
/* 080135b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080135ba */ BL func_08005d38 \n\
/* 080135be */ POP {R0} \n\
/* 080135c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
