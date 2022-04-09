asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013530 \n\
/* 08013530 */ PUSH {LR} \n\
/* 08013532 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013534 */ BL func_0800c604 \n\
/* 08013538 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801353a */ BL func_0800bd04 \n\
/* 0801353e */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 08013540 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08013542 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013544 */ BL func_080041d0 \n\
/* 08013548 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0801354a */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 0801354c */ BL func_0800425c \n\
/* 08013550 */ BL func_080131e8 \n\
/* 08013554 */ BL func_080158f4 \n\
/* 08013558 */ LDR R0, =D_030046a4 \n\
/* 0801355a */ LDR R2, [R0] \n\
/* 0801355c */ LDRB R1, [R2, 0x8] \n\
/* 0801355e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08013560 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08013562 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08013564 */ STRB R0, [R2, 0x8] \n\
/* 08013566 */ POP {R0} \n\
/* 08013568 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
