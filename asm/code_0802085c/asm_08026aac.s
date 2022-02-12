asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026aac \n\
/* 08026aac */ PUSH {R4, R5, LR} \n\
/* 08026aae */ LDR R4, =D_030055d0 \n\
/* 08026ab0 */ LDR R0, [R4] \n\
/* 08026ab2 */ LDR R5, =0x000013a8 \n\
/* 08026ab4 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08026ab6 */ BL func_08003b34 \n\
/* 08026aba */ LDR R2, =D_089e0978 \n\
/* 08026abc */ LDR R1, =D_089e0ae4 \n\
/* 08026abe */ LDR R0, [R4] \n\
/* 08026ac0 */ LDRB R0, [R0] \n\
/* 08026ac2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026ac4 */ LDRB R0, [R0] \n\
/* 08026ac6 */ LSLS R0, R0, 0x2 \n\
/* 08026ac8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08026aca */ LDR R0, [R0] \n\
/* 08026acc */ LDR R1, =D_03004afc \n\
/* 08026ace */ LDRH R1, [R1] \n\
/* 08026ad0 */ BL func_0802ad20 \n\
/* 08026ad4 */ BL func_0802ab34 \n\
/* 08026ad8 */ LDR R0, [R4] \n\
/* 08026ada */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08026adc */ BL func_08003c1c \n\
/* 08026ae0 */ BL func_08026a0c \n\
/* 08026ae4 */ BL func_08026930 \n\
/* 08026ae8 */ BL func_08026a50 \n\
/* 08026aec */ BL func_08025460 \n\
/* 08026af0 */ POP {R4, R5} \n\
/* 08026af2 */ POP {R0} \n\
/* 08026af4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
