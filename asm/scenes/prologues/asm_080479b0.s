asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080479b0 \n\
/* 080479b0 */ PUSH {LR} \n\
/* 080479b2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080479b4 */ LDR R0, =D_03005380 \n\
/* 080479b6 */ LDR R0, [R0] \n\
/* 080479b8 */ LDR R1, =D_030055d0 \n\
/* 080479ba */ LDR R1, [R1] \n\
/* 080479bc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080479be */ LDRSH R1, [R1, R3] \n\
/* 080479c0 */ LSLS R2, R2, 0x18 \n\
/* 080479c2 */ ASRS R2, R2, 0x18 \n\
/* 080479c4 */ BL func_0804cebc \n\
/* 080479c8 */ POP {R0} \n\
/* 080479ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
