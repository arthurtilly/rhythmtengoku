asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046890 \n\
/* 08046890 */ PUSH {R4, R5, LR} \n\
/* 08046892 */ SUB SP, 0x14 \n\
/* 08046894 */ LDR R5, =D_030055d0 \n\
/* 08046896 */ LDR R1, [R5] \n\
/* 08046898 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804689a */ STRB R0, [R1] \n\
/* 0804689c */ BL func_08046860 \n\
/* 080468a0 */ BL func_0800e0ec \n\
/* 080468a4 */ STR R4, [SP] \n\
/* 080468a6 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080468a8 */ STR R0, [SP, 0x4] \n\
/* 080468aa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080468ac */ STR R0, [SP, 0x8] \n\
/* 080468ae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080468b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080468b2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080468b4 */ BL func_0800e0a0 \n\
/* 080468b8 */ LDR R0, =D_03005380 \n\
/* 080468ba */ LDR R0, [R0] \n\
/* 080468bc */ LDR R1, =D_088b2044 \n\
/* 080468be */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080468c0 */ STR R2, [SP] \n\
/* 080468c2 */ STR R4, [SP, 0x4] \n\
/* 080468c4 */ STR R4, [SP, 0x8] \n\
/* 080468c6 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080468c8 */ STR R2, [SP, 0xC] \n\
/* 080468ca */ STR R4, [SP, 0x10] \n\
/* 080468cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080468ce */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080468d0 */ BL func_0804d160 \n\
/* 080468d4 */ LDR R1, [R5] \n\
/* 080468d6 */ STRH R0, [R1, 0x2] \n\
/* 080468d8 */ ADD SP, 0x14 \n\
/* 080468da */ POP {R4, R5} \n\
/* 080468dc */ POP {R0} \n\
/* 080468de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
