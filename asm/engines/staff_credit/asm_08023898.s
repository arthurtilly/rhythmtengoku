asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023898 \n\
/* 08023898 */ LDR R1, =gCurrentEngineData \n\
/* 0802389a */ LDR R3, [R1] \n\
/* 0802389c */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0802389e */ ADDS R2, 0x78 @ Add 0x78 to R2 \n\
/* 080238a0 */ MOVS R1, 0x33 @ Set R1 to 0x33 \n\
/* 080238a2 */ STRH R1, [R2] \n\
/* 080238a4 */ STR R0, [R3, 0x7C] \n\
/* 080238a6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
