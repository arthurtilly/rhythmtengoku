asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013c64 \n\
/* 08013c64 */ PUSH {R4, R5, LR} \n\
/* 08013c66 */ SUB SP, 0xC \n\
/* 08013c68 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013c6a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08013c6c */ LDR R0, =D_030053b8 \n\
/* 08013c6e */ LDRH R1, [R0] \n\
/* 08013c70 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08013c72 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08013c74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013c76 */ BEQ branch_08013c7a \n\
/* 08013c78 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
 \n\
branch_08013c7a: \n\
/* 08013c7a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08013c7c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08013c7e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013c80 */ BEQ branch_08013c84 \n\
/* 08013c82 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_08013c84: \n\
/* 08013c84 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08013c86 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08013c88 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013c8a */ BEQ branch_08013c90 \n\
/* 08013c8c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08013c8e */ NEGS R5, R5 @ Set R5 to -R5 \n\
 \n\
branch_08013c90: \n\
/* 08013c90 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013c92 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08013c94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013c96 */ BEQ branch_08013c9a \n\
/* 08013c98 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08013c9a: \n\
/* 08013c9a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08013c9c */ BNE branch_08013ca8 \n\
/* 08013c9e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08013ca0 */ BEQ branch_08013d08 \n\
/* 08013ca2 */ B branch_08013cae \n\
\n\
.ltorg \n\
 \n\
branch_08013ca8: \n\
/* 08013ca8 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08013caa */ BEQ branch_08013cae \n\
/* 08013cac */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08013cae: \n\
/* 08013cae */ LDR R0, =D_030046a4 \n\
/* 08013cb0 */ LDR R1, [R0] \n\
/* 08013cb2 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013cb4 */ LDRSB R0, [R1, R0] \n\
/* 08013cb6 */ STR R0, [SP, 0x4] \n\
/* 08013cb8 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 08013cba */ LDRSB R0, [R1, R0] \n\
/* 08013cbc */ STR R0, [SP, 0x8] \n\
/* 08013cbe */ ADD R0, SP, 0x4 \n\
/* 08013cc0 */ ADD R1, SP, 0x8 \n\
/* 08013cc2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08013cc4 */ BL func_08013c04 \n\
/* 08013cc8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013cca */ BEQ branch_08013d08 \n\
/* 08013ccc */ LDR R0, [SP, 0x4] \n\
/* 08013cce */ LDR R1, [SP, 0x8] \n\
/* 08013cd0 */ BL func_08013b98 \n\
/* 08013cd4 */ LDR R0, [SP, 0x4] \n\
/* 08013cd6 */ LDR R1, [SP, 0x8] \n\
/* 08013cd8 */ MOV R4, SP @ Set R4 to SP \n\
/* 08013cda */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08013cdc */ MOV R2, SP @ Set R2 to SP \n\
/* 08013cde */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08013ce0 */ BL func_0801332c \n\
/* 08013ce4 */ MOV R0, SP @ Set R0 to SP \n\
/* 08013ce6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013ce8 */ LDRSH R0, [R0, R1] \n\
/* 08013cea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08013cec */ LDRSH R1, [R4, R2] \n\
/* 08013cee */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 08013cf0 */ BL func_080139b0 \n\
/* 08013cf4 */ BL func_08013f9c \n\
/* 08013cf8 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08013cfa */ BEQ branch_08013d02 \n\
/* 08013cfc */ LDR R0, [SP, 0x4] \n\
/* 08013cfe */ BL func_080140a4 \n\
 \n\
branch_08013d02: \n\
/* 08013d02 */ LDR R0, =s_menu_cursor1_seqData \n\
/* 08013d04 */ BL func_08002634 \n\
 \n\
branch_08013d08: \n\
/* 08013d08 */ ADD SP, 0xC \n\
/* 08013d0a */ POP {R4, R5} \n\
/* 08013d0c */ POP {R0} \n\
/* 08013d0e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
