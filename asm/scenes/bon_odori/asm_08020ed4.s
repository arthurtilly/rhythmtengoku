asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020ed4 \n\
/* 08020ed4 */ LDR R0, =D_030055d0 \n\
/* 08020ed6 */ LDR R0, [R0] \n\
/* 08020ed8 */ MOVS R1, 0x86 @ Set R1 to 0x86 \n\
/* 08020eda */ LSLS R1, R1, 0x4 \n\
/* 08020edc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020ede */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08020ee0 */ STRH R1, [R0] \n\
/* 08020ee2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
