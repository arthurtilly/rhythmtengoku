asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804dc10 \n\
/* 0804dc10 */ PUSH {R4-R7, LR} \n\
/* 0804dc12 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804dc14 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804dc16 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 0804dc18 */ LDR R2, =D_03004428 \n\
/* 0804dc1a */ MOVS R0, 0x19 @ Set R0 to 0x19 \n\
/* 0804dc1c */ STRB R0, [R2] \n\
/* 0804dc1e */ LSLS R1, R1, 0x10 \n\
/* 0804dc20 */ ASRS R4, R1, 0x10 \n\
/* 0804dc22 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804dc24 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804dc26 */ BL func_0804cc68 \n\
/* 0804dc2a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804dc2c */ BNE branch_0804dc7e \n\
/* 0804dc2e */ LSLS R0, R4, 0x4 \n\
/* 0804dc30 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804dc32 */ LSLS R0, R0, 0x2 \n\
/* 0804dc34 */ LDR R1, [R5, 0x8] \n\
/* 0804dc36 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0804dc38 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804dc3a */ BLT branch_0804dc6c \n\
/* 0804dc3c */ STR R7, [R2, 0x34] \n\
/* 0804dc3e */ LDR R0, [R2, 0x10] \n\
/* 0804dc40 */ LDR R1, =0xfdffffff \n\
/* 0804dc42 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804dc44 */ LDR R1, =0xffffc1ff \n\
/* 0804dc46 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804dc48 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804dc4a */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804dc4c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804dc4e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804dc50 */ LSLS R1, R1, 0x12 \n\
/* 0804dc52 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804dc54 */ LSLS R1, R6, 0x9 \n\
/* 0804dc56 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804dc58 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804dc5a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804dc5c */ B branch_0804dc7c \n\
\n\
.ltorg \n\
 \n\
branch_0804dc6c: \n\
/* 0804dc6c */ LDR R0, [R2, 0x10] \n\
/* 0804dc6e */ LDR R1, =0xfdffffff \n\
/* 0804dc70 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804dc72 */ LDR R1, =0xffffc1ff \n\
/* 0804dc74 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804dc76 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804dc78 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804dc7a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
 \n\
branch_0804dc7c: \n\
/* 0804dc7c */ STR R0, [R2, 0x10] \n\
 \n\
branch_0804dc7e: \n\
/* 0804dc7e */ POP {R4-R7} \n\
/* 0804dc80 */ POP {R0} \n\
/* 0804dc82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
