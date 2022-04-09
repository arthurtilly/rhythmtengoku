asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030a10 \n\
/* 08030a10 */ PUSH {R4, R5, LR} \n\
/* 08030a12 */ SUB SP, 0xC \n\
/* 08030a14 */ LDR R0, =D_030055d0 \n\
/* 08030a16 */ LDR R4, [R0] \n\
/* 08030a18 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 08030a1a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08030a1c */ BL func_08030384 \n\
/* 08030a20 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030a22 */ LDR R0, =D_03005380 \n\
/* 08030a24 */ LDR R0, [R0] \n\
/* 08030a26 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08030a28 */ LDRSH R1, [R4, R3] \n\
/* 08030a2a */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08030a2c */ STR R5, [SP] \n\
/* 08030a2e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08030a30 */ STR R3, [SP, 0x4] \n\
/* 08030a32 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030a34 */ STR R3, [SP, 0x8] \n\
/* 08030a36 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08030a38 */ BL func_0804d8f8 \n\
/* 08030a3c */ LDR R0, =s_witch_donats_seqData \n\
/* 08030a3e */ BL func_08002634 \n\
/* 08030a42 */ STRB R5, [R4, 0x8] \n\
/* 08030a44 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08030a46 */ STRB R0, [R4, 0x9] \n\
/* 08030a48 */ BL func_0800bc40 \n\
/* 08030a4c */ ADD SP, 0xC \n\
/* 08030a4e */ POP {R4, R5} \n\
/* 08030a50 */ POP {R0} \n\
/* 08030a52 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
