asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804630c \n\
/* 0804630c */ PUSH {LR} \n\
/* 0804630e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046310 */ LDR R0, =D_03005380 \n\
/* 08046312 */ LDR R0, [R0] \n\
/* 08046314 */ LDR R1, =D_030055d0 \n\
/* 08046316 */ LDR R1, [R1] \n\
/* 08046318 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0804631a */ LDRSH R1, [R1, R3] \n\
/* 0804631c */ LSLS R2, R2, 0x18 \n\
/* 0804631e */ ASRS R2, R2, 0x18 \n\
/* 08046320 */ BL func_0804cebc \n\
/* 08046324 */ POP {R0} \n\
/* 08046326 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
