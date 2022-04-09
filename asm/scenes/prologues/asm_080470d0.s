asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080470d0 \n\
/* 080470d0 */ PUSH {R4, R5, LR} \n\
/* 080470d2 */ SUB SP, 0x14 \n\
/* 080470d4 */ LDR R5, =D_030055d0 \n\
/* 080470d6 */ LDR R1, [R5] \n\
/* 080470d8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080470da */ STRB R0, [R1] \n\
/* 080470dc */ BL func_080470a0 \n\
/* 080470e0 */ BL func_0800e0ec \n\
/* 080470e4 */ STR R4, [SP] \n\
/* 080470e6 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080470e8 */ STR R0, [SP, 0x4] \n\
/* 080470ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080470ec */ STR R0, [SP, 0x8] \n\
/* 080470ee */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080470f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080470f2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080470f4 */ BL func_0800e0a0 \n\
/* 080470f8 */ LDR R0, =D_03005380 \n\
/* 080470fa */ LDR R0, [R0] \n\
/* 080470fc */ LDR R1, =D_088b3ac4 \n\
/* 080470fe */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08047100 */ STR R2, [SP] \n\
/* 08047102 */ STR R4, [SP, 0x4] \n\
/* 08047104 */ STR R4, [SP, 0x8] \n\
/* 08047106 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08047108 */ STR R2, [SP, 0xC] \n\
/* 0804710a */ STR R4, [SP, 0x10] \n\
/* 0804710c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804710e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047110 */ BL func_0804d160 \n\
/* 08047114 */ LDR R1, [R5] \n\
/* 08047116 */ STRH R0, [R1, 0x2] \n\
/* 08047118 */ ADD SP, 0x14 \n\
/* 0804711a */ POP {R4, R5} \n\
/* 0804711c */ POP {R0} \n\
/* 0804711e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
