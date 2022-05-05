asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d6cc \n\
/* 0804d6cc */ PUSH {R4, R5, LR} \n\
/* 0804d6ce */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d6d0 */ LDR R2, =D_03004428 \n\
/* 0804d6d2 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0804d6d4 */ STRB R0, [R2] \n\
/* 0804d6d6 */ LSLS R1, R1, 0x10 \n\
/* 0804d6d8 */ ASRS R4, R1, 0x10 \n\
/* 0804d6da */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d6dc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d6de */ BL func_0804cc68 \n\
/* 0804d6e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d6e4 */ BNE branch_0804d6fc \n\
/* 0804d6e6 */ LDR R0, [R5, 0x8] \n\
/* 0804d6e8 */ LSLS R1, R4, 0x4 \n\
/* 0804d6ea */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d6ec */ LSLS R1, R1, 0x2 \n\
/* 0804d6ee */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d6f0 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804d6f2 */ LDRSB R0, [R1, R0] \n\
/* 0804d6f4 */ B branch_0804d700 \n\
\n\
.ltorg \n\
 \n\
branch_0804d6fc: \n\
/* 0804d6fc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d6fe */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804d700: \n\
/* 0804d700 */ POP {R4, R5} \n\
/* 0804d702 */ POP {R1} \n\
/* 0804d704 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
