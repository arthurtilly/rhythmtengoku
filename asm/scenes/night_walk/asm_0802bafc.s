asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802bafc \n\
/* 0802bafc */ PUSH {R4-R6, LR} \n\
/* 0802bafe */ SUB SP, 0xC \n\
/* 0802bb00 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0802bb02 */ LDR R4, =D_030055d0 \n\
/* 0802bb04 */ LDR R0, [R4] \n\
/* 0802bb06 */ LDRB R0, [R0, 0x1] \n\
/* 0802bb08 */ LSLS R0, R0, 0x1F \n\
/* 0802bb0a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802bb0c */ BNE branch_0802bb18 \n\
/* 0802bb0e */ LDRB R1, [R6, 0x1] \n\
/* 0802bb10 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0802bb12 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802bb14 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802bb16 */ BEQ branch_0802bb54 \n\
 \n\
branch_0802bb18: \n\
/* 0802bb18 */ BL func_08018068 \n\
/* 0802bb1c */ LDR R0, [R4] \n\
/* 0802bb1e */ LDRB R0, [R0, 0x1] \n\
/* 0802bb20 */ LSLS R0, R0, 0x1F \n\
/* 0802bb22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802bb24 */ BNE branch_0802bb8c \n\
/* 0802bb26 */ LDRB R0, [R6, 0x1] \n\
/* 0802bb28 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 0802bb2a */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0802bb2c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802bb2e */ BNE branch_0802bb8c \n\
/* 0802bb30 */ LDR R0, =D_03005380 \n\
/* 0802bb32 */ LDR R0, [R0] \n\
/* 0802bb34 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802bb36 */ LDRSH R1, [R6, R2] \n\
/* 0802bb38 */ LDR R2, =D_088c9d10 \n\
/* 0802bb3a */ STR R3, [SP] \n\
/* 0802bb3c */ STR R3, [SP, 0x4] \n\
/* 0802bb3e */ STR R3, [SP, 0x8] \n\
/* 0802bb40 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802bb42 */ BL func_0804d8f8 \n\
/* 0802bb46 */ B branch_0802bb8c \n\
\n\
.ltorg \n\
 \n\
branch_0802bb54: \n\
/* 0802bb54 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0802bb56 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802bb58 */ STRB R0, [R6, 0x1] \n\
/* 0802bb5a */ LDR R5, =D_03005380 \n\
/* 0802bb5c */ LDR R0, [R5] \n\
/* 0802bb5e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802bb60 */ LDRSH R1, [R6, R2] \n\
/* 0802bb62 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802bb64 */ BL func_0804ddb0 \n\
/* 0802bb68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802bb6a */ LDR R0, [R5] \n\
/* 0802bb6c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802bb6e */ LDRSH R1, [R6, R2] \n\
/* 0802bb70 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0802bb72 */ BL func_0804ddb0 \n\
/* 0802bb76 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802bb78 */ LSLS R4, R4, 0x10 \n\
/* 0802bb7a */ ASRS R4, R4, 0x10 \n\
/* 0802bb7c */ LSLS R1, R1, 0x10 \n\
/* 0802bb7e */ ASRS R1, R1, 0x10 \n\
/* 0802bb80 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802bb82 */ BL func_0802a154 \n\
/* 0802bb86 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802bb88 */ BL func_08017b88 \n\
 \n\
branch_0802bb8c: \n\
/* 0802bb8c */ ADD SP, 0xC \n\
/* 0802bb8e */ POP {R4-R6} \n\
/* 0802bb90 */ POP {R0} \n\
/* 0802bb92 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
