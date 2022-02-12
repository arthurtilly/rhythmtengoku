asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025ad4 \n\
/* 08025ad4 */ PUSH {LR} \n\
/* 08025ad6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08025ad8 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08025ada */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08025adc */ LSRS R1, R1, 0x8 \n\
/* 08025ade */ BL func_08025aa4 \n\
/* 08025ae2 */ POP {R0} \n\
/* 08025ae4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
