asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046504 \n\
/* 08046504 */ PUSH {LR} \n\
/* 08046506 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046508 */ LDR R0, =D_03005380 \n\
/* 0804650a */ LDR R0, [R0] \n\
/* 0804650c */ LDR R1, =D_030055d0 \n\
/* 0804650e */ LDR R1, [R1] \n\
/* 08046510 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08046512 */ LDRSH R1, [R1, R3] \n\
/* 08046514 */ LSLS R2, R2, 0x18 \n\
/* 08046516 */ ASRS R2, R2, 0x18 \n\
/* 08046518 */ BL func_0804cebc \n\
/* 0804651c */ POP {R0} \n\
/* 0804651e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
