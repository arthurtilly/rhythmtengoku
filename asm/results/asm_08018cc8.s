asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018cc8 \n\
/* 08018cc8 */ PUSH {R4, R5, LR} \n\
/* 08018cca */ SUB SP, 0x14 \n\
/* 08018ccc */ LDR R4, =D_03005380 \n\
/* 08018cce */ LDR R0, [R4] \n\
/* 08018cd0 */ LDR R5, =D_030046a4 \n\
/* 08018cd2 */ LDR R1, [R5] \n\
/* 08018cd4 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08018cd6 */ LDRSH R1, [R1, R2] \n\
/* 08018cd8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018cda */ BL func_0804d770 \n\
/* 08018cde */ LDR R0, [R5] \n\
/* 08018ce0 */ MOVS R1, 0x93 @ Set R1 to 0x93 \n\
/* 08018ce2 */ LSLS R1, R1, 0x1 \n\
/* 08018ce4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018ce6 */ LDRB R0, [R0] \n\
/* 08018ce8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018cea */ BEQ branch_08018d0a \n\
/* 08018cec */ LDR R0, [R4] \n\
/* 08018cee */ LDR R1, =D_0890b70c \n\
/* 08018cf0 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08018cf2 */ STR R2, [SP] \n\
/* 08018cf4 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08018cf6 */ LSLS R2, R2, 0x3 \n\
/* 08018cf8 */ STR R2, [SP, 0x4] \n\
/* 08018cfa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018cfc */ STR R2, [SP, 0x8] \n\
/* 08018cfe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018d00 */ STR R2, [SP, 0xC] \n\
/* 08018d02 */ STR R2, [SP, 0x10] \n\
/* 08018d04 */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 08018d06 */ BL func_0804d160 \n\
 \n\
branch_08018d0a: \n\
/* 08018d0a */ LDR R0, [R5] \n\
/* 08018d0c */ LDR R2, =0x127 \n\
/* 08018d0e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08018d10 */ LDRB R0, [R0] \n\
/* 08018d12 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018d14 */ BEQ branch_08018d34 \n\
/* 08018d16 */ LDR R0, [R4] \n\
/* 08018d18 */ LDR R1, =D_0890b724 \n\
/* 08018d1a */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08018d1c */ STR R2, [SP] \n\
/* 08018d1e */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08018d20 */ LSLS R2, R2, 0x3 \n\
/* 08018d22 */ STR R2, [SP, 0x4] \n\
/* 08018d24 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018d26 */ STR R2, [SP, 0x8] \n\
/* 08018d28 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018d2a */ STR R2, [SP, 0xC] \n\
/* 08018d2c */ STR R2, [SP, 0x10] \n\
/* 08018d2e */ MOVS R3, 0xB4 @ Set R3 to 0xB4 \n\
/* 08018d30 */ BL func_0804d160 \n\
 \n\
branch_08018d34: \n\
/* 08018d34 */ LDR R1, =D_089d7688 \n\
/* 08018d36 */ LDR R0, [R5] \n\
/* 08018d38 */ LDRB R0, [R0, 0xC] \n\
/* 08018d3a */ LSLS R0, R0, 0x2 \n\
/* 08018d3c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018d3e */ LDR R1, [R0] \n\
/* 08018d40 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08018d42 */ BL func_0800267c \n\
/* 08018d46 */ ADD SP, 0x14 \n\
/* 08018d48 */ POP {R4, R5} \n\
/* 08018d4a */ POP {R0} \n\
/* 08018d4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
