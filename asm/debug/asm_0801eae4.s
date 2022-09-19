asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801eae4 \n\
/* 0801eae4 */ PUSH {LR} \n\
/* 0801eae6 */ SUB SP, 0xC \n\
/* 0801eae8 */ BL func_0800c3b8 \n\
/* 0801eaec */ LSLS R0, R0, 0x10 \n\
/* 0801eaee */ LSRS R0, R0, 0x10 \n\
/* 0801eaf0 */ LDR R1, =func_0801eab4 \n\
/* 0801eaf2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801eaf4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801eaf6 */ BL func_0800856c \n\
/* 0801eafa */ BL func_0800e0ec \n\
/* 0801eafe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801eb00 */ STR R0, [SP] \n\
/* 0801eb02 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0801eb04 */ STR R0, [SP, 0x4] \n\
/* 0801eb06 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801eb08 */ STR R0, [SP, 0x8] \n\
/* 0801eb0a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801eb0c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801eb0e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801eb10 */ BL func_0800e0a0 \n\
/* 0801eb14 */ ADD SP, 0xC \n\
/* 0801eb16 */ POP {R0} \n\
/* 0801eb18 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
