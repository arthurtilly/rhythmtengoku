asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046f0c \n\
/* 08046f0c */ PUSH {LR} \n\
/* 08046f0e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046f10 */ LDR R0, =D_03005380 \n\
/* 08046f12 */ LDR R0, [R0] \n\
/* 08046f14 */ LDR R1, =D_030055d0 \n\
/* 08046f16 */ LDR R1, [R1] \n\
/* 08046f18 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046f1a */ LDRSH R1, [R1, R3] \n\
/* 08046f1c */ LSLS R2, R2, 0x18 \n\
/* 08046f1e */ ASRS R2, R2, 0x18 \n\
/* 08046f20 */ BL func_0804cebc \n\
/* 08046f24 */ POP {R0} \n\
/* 08046f26 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
