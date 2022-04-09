asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007f58 \n\
/* 08007f58 */ PUSH {R4, R5, LR} \n\
/* 08007f5a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007f5c */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08007f5e */ BL mem_heap_alloc \n\
/* 08007f62 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08007f64 */ LDRH R2, [R4] \n\
/* 08007f66 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007f68 */ STRH R2, [R5] \n\
/* 08007f6a */ LDRH R0, [R4, 0x2] \n\
/* 08007f6c */ STRH R0, [R5, 0x2] \n\
/* 08007f6e */ STRH R1, [R5, 0x4] \n\
/* 08007f70 */ LDRH R0, [R4, 0x6] \n\
/* 08007f72 */ STRH R0, [R5, 0x6] \n\
/* 08007f74 */ LDRH R1, [R4, 0x6] \n\
/* 08007f76 */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 08007f78 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007f7a */ ASRS R3, R0, 0x1F \n\
/* 08007f7c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007f7e */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 08007f80 */ SUBS R4, R0, R3 @ Set R4 to R0 - R3 \n\
/* 08007f82 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08007f84 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007f86 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 08007f88 */ BEQ branch_08007fac \n\
/* 08007f8a */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 08007f8c */ BGT branch_08007f9c \n\
/* 08007f8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007f90 */ BEQ branch_08007fac \n\
/* 08007f92 */ LDR R0, =D_03004b10 \n\
/* 08007f94 */ B branch_08007fca \n\
\n\
.ltorg \n\
 \n\
branch_08007f9c: \n\
/* 08007f9c */ CMP R0, 0x80 @ Compare R0 and 0x80 \n\
/* 08007f9e */ BEQ branch_08007fc0 \n\
/* 08007fa0 */ CMP R0, 0xC0 @ Compare R0 and 0xC0 \n\
/* 08007fa2 */ BEQ branch_08007fc0 \n\
/* 08007fa4 */ LDR R0, =D_03004b10 \n\
/* 08007fa6 */ B branch_08007fca \n\
\n\
.ltorg \n\
 \n\
branch_08007fac: \n\
/* 08007fac */ LDR R1, =D_03004b10 \n\
/* 08007fae */ LSLS R0, R3, 0x8 \n\
/* 08007fb0 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 08007fb2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08007fb4 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08007fb6 */ STRH R4, [R0] \n\
/* 08007fb8 */ B branch_08007fc8 \n\
\n\
.ltorg \n\
 \n\
branch_08007fc0: \n\
/* 08007fc0 */ LDR R1, =D_03004b10 \n\
/* 08007fc2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08007fc4 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08007fc6 */ STRH R3, [R0] \n\
 \n\
branch_08007fc8: \n\
/* 08007fc8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_08007fca: \n\
/* 08007fca */ LDRH R1, [R5] \n\
/* 08007fcc */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08007fce */ STRH R1, [R0] \n\
/* 08007fd0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08007fd2 */ POP {R4, R5} \n\
/* 08007fd4 */ POP {R1} \n\
/* 08007fd6 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
