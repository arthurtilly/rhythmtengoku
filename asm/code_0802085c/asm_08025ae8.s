asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025ae8 \n\
/* 08025ae8 */ PUSH {LR} \n\
/* 08025aea */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08025aec */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08025aee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08025af0 */ LSRS R1, R1, 0x8 \n\
/* 08025af2 */ BL func_08025abc \n\
/* 08025af6 */ POP {R0} \n\
/* 08025af8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
