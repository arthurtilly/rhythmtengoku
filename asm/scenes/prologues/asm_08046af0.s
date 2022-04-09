asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046af0 \n\
/* 08046af0 */ PUSH {LR} \n\
/* 08046af2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046af4 */ LDR R0, =D_03005380 \n\
/* 08046af6 */ LDR R0, [R0] \n\
/* 08046af8 */ LDR R1, =D_030055d0 \n\
/* 08046afa */ LDR R1, [R1] \n\
/* 08046afc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046afe */ LDRSH R1, [R1, R3] \n\
/* 08046b00 */ LSLS R2, R2, 0x18 \n\
/* 08046b02 */ ASRS R2, R2, 0x18 \n\
/* 08046b04 */ BL func_0804cebc \n\
/* 08046b08 */ POP {R0} \n\
/* 08046b0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
