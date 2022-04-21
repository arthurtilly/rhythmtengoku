asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804dae0 \n\
/* 0804dae0 */ PUSH {R4-R7, LR} \n\
/* 0804dae2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804dae4 */ PUSH {R7} \n\
/* 0804dae6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804dae8 */ LDR R0, [SP, 0x18] \n\
/* 0804daea */ LSLS R2, R2, 0x18 \n\
/* 0804daec */ LSRS R2, R2, 0x18 \n\
/* 0804daee */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804daf0 */ LSLS R3, R3, 0x18 \n\
/* 0804daf2 */ LSRS R6, R3, 0x18 \n\
/* 0804daf4 */ LSLS R0, R0, 0x10 \n\
/* 0804daf6 */ LSRS R7, R0, 0x10 \n\
/* 0804daf8 */ LDR R2, =D_03004428 \n\
/* 0804dafa */ MOVS R0, 0x17 @ Set R0 to 0x17 \n\
/* 0804dafc */ STRB R0, [R2] \n\
/* 0804dafe */ LSLS R1, R1, 0x10 \n\
/* 0804db00 */ ASRS R4, R1, 0x10 \n\
/* 0804db02 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804db04 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804db06 */ BL func_0804cc68 \n\
/* 0804db0a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804db0c */ BNE branch_0804db34 \n\
/* 0804db0e */ LSLS R0, R4, 0x4 \n\
/* 0804db10 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804db12 */ LSLS R0, R0, 0x2 \n\
/* 0804db14 */ LDR R2, [R5, 0x8] \n\
/* 0804db16 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804db18 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804db1a */ STRB R0, [R2, 0xD] \n\
/* 0804db1c */ STRB R6, [R2, 0xE] \n\
/* 0804db1e */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 0804db20 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 0804db22 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804db24 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804db26 */ LSLS R1, R1, 0x1 \n\
/* 0804db28 */ LDRB R3, [R2] \n\
/* 0804db2a */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0804db2c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804db2e */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804db30 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804db32 */ STRB R0, [R2] \n\
 \n\
branch_0804db34: \n\
/* 0804db34 */ POP {R3} \n\
/* 0804db36 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804db38 */ POP {R4-R7} \n\
/* 0804db3a */ POP {R0} \n\
/* 0804db3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
