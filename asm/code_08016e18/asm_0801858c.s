asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801858c \n\
/* 0801858c */ PUSH {LR} \n\
/* 0801858e */ SUB SP, 0xC \n\
/* 08018590 */ LDR R1, =D_03005380 \n\
/* 08018592 */ LDR R3, [R1] \n\
/* 08018594 */ LDR R1, =D_030046a4 \n\
/* 08018596 */ LDR R1, [R1] \n\
/* 08018598 */ LDR R2, =0x496 \n\
/* 0801859a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801859c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801859e */ LDRSH R1, [R1, R2] \n\
/* 080185a0 */ LDR R2, =D_089cfdf0 \n\
/* 080185a2 */ LSLS R0, R0, 0x2 \n\
/* 080185a4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080185a6 */ LDR R2, [R0] \n\
/* 080185a8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080185aa */ STR R0, [SP] \n\
/* 080185ac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080185ae */ STR R0, [SP, 0x4] \n\
/* 080185b0 */ STR R0, [SP, 0x8] \n\
/* 080185b2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080185b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080185b6 */ BL func_0804d8f8 \n\
/* 080185ba */ ADD SP, 0xC \n\
/* 080185bc */ POP {R0} \n\
/* 080185be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
