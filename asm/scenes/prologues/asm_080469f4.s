asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080469f4 \n\
/* 080469f4 */ PUSH {LR} \n\
/* 080469f6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080469f8 */ LDR R0, =D_03005380 \n\
/* 080469fa */ LDR R0, [R0] \n\
/* 080469fc */ LDR R1, =D_030055d0 \n\
/* 080469fe */ LDR R1, [R1] \n\
/* 08046a00 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046a02 */ LDRSH R1, [R1, R3] \n\
/* 08046a04 */ LSLS R2, R2, 0x18 \n\
/* 08046a06 */ ASRS R2, R2, 0x18 \n\
/* 08046a08 */ BL func_0804cebc \n\
/* 08046a0c */ POP {R0} \n\
/* 08046a0e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
