asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030bf0 \n\
/* 08030bf0 */ PUSH {LR} \n\
/* 08030bf2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030bf4 */ LDR R0, =D_03005380 \n\
/* 08030bf6 */ LDR R0, [R0] \n\
/* 08030bf8 */ LDR R1, =gCurrentEngineData \n\
/* 08030bfa */ LDR R1, [R1] \n\
/* 08030bfc */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 08030bfe */ LDRSH R1, [R1, R3] \n\
/* 08030c00 */ LSLS R2, R2, 0x10 \n\
/* 08030c02 */ LSRS R2, R2, 0x10 \n\
/* 08030c04 */ BL func_0804d770 \n\
/* 08030c08 */ POP {R0} \n\
/* 08030c0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
