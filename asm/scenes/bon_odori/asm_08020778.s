asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020778 \n\
/* 08020778 */ PUSH {R4-R6, LR} \n\
/* 0802077a */ SUB SP, 0xC \n\
/* 0802077c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802077e */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08020780 */ BL func_0802075c \n\
/* 08020784 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08020786 */ LDR R0, =D_03005380 \n\
/* 08020788 */ LDR R0, [R0] \n\
/* 0802078a */ LDR R6, =D_030055d0 \n\
/* 0802078c */ LDR R1, [R6] \n\
/* 0802078e */ LSLS R5, R5, 0x1 \n\
/* 08020790 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 08020792 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08020794 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020796 */ LDRSH R1, [R1, R3] \n\
/* 08020798 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802079a */ STR R3, [SP] \n\
/* 0802079c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802079e */ STR R3, [SP, 0x4] \n\
/* 080207a0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080207a2 */ STR R3, [SP, 0x8] \n\
/* 080207a4 */ BL func_0804d8f8 \n\
/* 080207a8 */ LDR R0, =D_089ded00 \n\
/* 080207aa */ LSLS R4, R4, 0x1 \n\
/* 080207ac */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080207ae */ LDRH R0, [R4] \n\
/* 080207b0 */ BL func_0800c3a4 \n\
/* 080207b4 */ LDR R1, [R6] \n\
/* 080207b6 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 080207b8 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080207ba */ STRH R0, [R1] \n\
/* 080207bc */ ADD SP, 0xC \n\
/* 080207be */ POP {R4-R6} \n\
/* 080207c0 */ POP {R0} \n\
/* 080207c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
