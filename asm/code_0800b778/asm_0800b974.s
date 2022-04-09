asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b974 \n\
/* 0800b974 */ PUSH {R4-R7, LR} \n\
/* 0800b976 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800b978 */ LDR R4, =D_030053c0 \n\
/* 0800b97a */ ADDS R7, R4, 0x0 @ Set R7 to R4 + 0x0 \n\
/* 0800b97c */ ADDS R7, 0x2C @ Add 0x2C to R7 \n\
/* 0800b97e */ LDR R6, =D_03005588 \n\
 \n\
branch_0800b980: \n\
/* 0800b980 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0800b982 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800b984 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0800b986 */ LSLS R2, R2, 0x1 \n\
/* 0800b988 */ LDRB R0, [R4, 0x1] \n\
/* 0800b98a */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0800b98c */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0800b98e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800b990 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b992 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800b994 */ STRB R0, [R4, 0x1] \n\
/* 0800b996 */ LSLS R0, R0, 0x1C \n\
/* 0800b998 */ LSRS R0, R0, 0x1D \n\
/* 0800b99a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800b99c */ BL func_0800c3c4 \n\
/* 0800b9a0 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800b9a2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800b9a4 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0800b9a6 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0800b9a8 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0800b9aa */ LDRB R1, [R0] \n\
/* 0800b9ac */ LSLS R0, R1, 0x1F \n\
/* 0800b9ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b9b0 */ BEQ branch_0800b9e2 \n\
/* 0800b9b2 */ LSLS R0, R1, 0x19 \n\
/* 0800b9b4 */ LSRS R0, R0, 0x1E \n\
/* 0800b9b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b9b8 */ BNE branch_0800b9e2 \n\
/* 0800b9ba */ LSLS R1, R5, 0x2 \n\
/* 0800b9bc */ MOVS R3, 0xB0 @ Set R3 to 0xB0 \n\
/* 0800b9be */ LSLS R3, R3, 0x1 \n\
/* 0800b9c0 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
/* 0800b9c2 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 0800b9c4 */ STR R3, [R6] \n\
/* 0800b9c6 */ LDR R1, =D_0300558c \n\
/* 0800b9c8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b9ca */ ADDS R0, 0x7E @ Add 0x7E to R0 \n\
/* 0800b9cc */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800b9ce */ STR R0, [R1] \n\
/* 0800b9d0 */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 0800b9d2 */ LDR R0, [R0] \n\
/* 0800b9d4 */ LDR R2, [R0, 0x8] \n\
/* 0800b9d6 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800b9d8 */ BEQ branch_0800b9e2 \n\
/* 0800b9da */ LDR R1, [R0, 0xC] \n\
/* 0800b9dc */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800b9de */ BL _call_via_r2 \n\
 \n\
branch_0800b9e2: \n\
/* 0800b9e2 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800b9e4 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0800b9e6 */ BLS branch_0800b980 \n\
/* 0800b9e8 */ POP {R4-R7} \n\
/* 0800b9ea */ POP {R0} \n\
/* 0800b9ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
