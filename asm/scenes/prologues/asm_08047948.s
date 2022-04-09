asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047948 \n\
/* 08047948 */ PUSH {R4, R5, LR} \n\
/* 0804794a */ SUB SP, 0x14 \n\
/* 0804794c */ LDR R5, =D_030055d0 \n\
/* 0804794e */ LDR R1, [R5] \n\
/* 08047950 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047952 */ STRB R0, [R1] \n\
/* 08047954 */ BL func_08047918 \n\
/* 08047958 */ BL func_0800e0ec \n\
/* 0804795c */ STR R4, [SP] \n\
/* 0804795e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047960 */ STR R0, [SP, 0x4] \n\
/* 08047962 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047964 */ STR R0, [SP, 0x8] \n\
/* 08047966 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047968 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804796a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804796c */ BL func_0800e0a0 \n\
/* 08047970 */ LDR R0, =D_03005380 \n\
/* 08047972 */ LDR R0, [R0] \n\
/* 08047974 */ LDR R1, =D_088b8098 \n\
/* 08047976 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08047978 */ STR R2, [SP] \n\
/* 0804797a */ STR R4, [SP, 0x4] \n\
/* 0804797c */ STR R4, [SP, 0x8] \n\
/* 0804797e */ STR R4, [SP, 0xC] \n\
/* 08047980 */ STR R4, [SP, 0x10] \n\
/* 08047982 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047984 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047986 */ BL func_0804d160 \n\
/* 0804798a */ LDR R1, [R5] \n\
/* 0804798c */ STRH R0, [R1, 0x2] \n\
/* 0804798e */ ADD SP, 0x14 \n\
/* 08047990 */ POP {R4, R5} \n\
/* 08047992 */ POP {R0} \n\
/* 08047994 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
