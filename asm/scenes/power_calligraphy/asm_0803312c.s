asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803312c \n\
/* 0803312c */ PUSH {R4, LR} \n\
/* 0803312e */ SUB SP, 0xC \n\
/* 08033130 */ LDR R2, =D_030055d0 \n\
/* 08033132 */ LDR R1, [R2] \n\
/* 08033134 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033136 */ STRB R0, [R1, 0x6] \n\
/* 08033138 */ LDR R1, =D_03005380 \n\
/* 0803313a */ LDR R4, [R1] \n\
/* 0803313c */ LDR R1, [R2] \n\
/* 0803313e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08033140 */ LDRSH R1, [R1, R2] \n\
/* 08033142 */ LDR R2, =D_089e49e8 \n\
/* 08033144 */ LSLS R0, R0, 0x2 \n\
/* 08033146 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08033148 */ LDR R2, [R0] \n\
/* 0803314a */ STR R3, [SP] \n\
/* 0803314c */ STR R3, [SP, 0x4] \n\
/* 0803314e */ STR R3, [SP, 0x8] \n\
/* 08033150 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08033152 */ BL func_0804d8f8 \n\
/* 08033156 */ ADD SP, 0xC \n\
/* 08033158 */ POP {R4} \n\
/* 0803315a */ POP {R0} \n\
/* 0803315c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
