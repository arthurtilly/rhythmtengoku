asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046408 \n\
/* 08046408 */ PUSH {LR} \n\
/* 0804640a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804640c */ LDR R0, =D_03005380 \n\
/* 0804640e */ LDR R0, [R0] \n\
/* 08046410 */ LDR R1, =D_030055d0 \n\
/* 08046412 */ LDR R1, [R1] \n\
/* 08046414 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046416 */ LDRSH R1, [R1, R3] \n\
/* 08046418 */ LSLS R2, R2, 0x18 \n\
/* 0804641a */ ASRS R2, R2, 0x18 \n\
/* 0804641c */ BL func_0804cebc \n\
/* 08046420 */ POP {R0} \n\
/* 08046422 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
