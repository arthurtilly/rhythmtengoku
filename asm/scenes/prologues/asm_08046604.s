asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046604 \n\
/* 08046604 */ PUSH {LR} \n\
/* 08046606 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046608 */ LDR R0, =D_03005380 \n\
/* 0804660a */ LDR R0, [R0] \n\
/* 0804660c */ LDR R1, =D_030055d0 \n\
/* 0804660e */ LDR R1, [R1] \n\
/* 08046610 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046612 */ LDRSH R1, [R1, R3] \n\
/* 08046614 */ LSLS R2, R2, 0x18 \n\
/* 08046616 */ ASRS R2, R2, 0x18 \n\
/* 08046618 */ BL func_0804cebc \n\
/* 0804661c */ POP {R0} \n\
/* 0804661e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
