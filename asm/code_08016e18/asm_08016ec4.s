asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016ec4 \n\
/* 08016ec4 */ PUSH {R4-R6, LR} \n\
/* 08016ec6 */ LDR R0, =D_089cfd7c \n\
/* 08016ec8 */ BL func_08002e78 \n\
/* 08016ecc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016ece */ BL func_08007324 \n\
/* 08016ed2 */ BL func_080073f0 \n\
/* 08016ed6 */ BL func_08018154 \n\
/* 08016eda */ BL func_08018524 \n\
/* 08016ede */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016ee0 */ BL func_08018630 \n\
/* 08016ee4 */ LDR R4, =D_030046a4 \n\
/* 08016ee6 */ LDR R0, [R4] \n\
/* 08016ee8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08016eea */ STR R5, [R0, 0x10] \n\
/* 08016eec */ BL func_080178e4 \n\
/* 08016ef0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016ef2 */ BL func_08019324 \n\
/* 08016ef6 */ BL func_080192a4 \n\
/* 08016efa */ LDR R0, [R4] \n\
/* 08016efc */ LDR R1, =0x5b7 \n\
/* 08016efe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f00 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08016f02 */ STRB R6, [R0] \n\
/* 08016f04 */ LDR R0, [R4] \n\
/* 08016f06 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016f08 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f0a */ STRB R5, [R0] \n\
/* 08016f0c */ LDR R0, [R4] \n\
/* 08016f0e */ STRB R5, [R0, 0x8] \n\
/* 08016f10 */ LDR R0, [R4] \n\
/* 08016f12 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016f14 */ STRH R5, [R0, 0xA] \n\
/* 08016f16 */ STRH R5, [R0, 0xC] \n\
/* 08016f18 */ STRB R6, [R0, 0x9] \n\
/* 08016f1a */ LDR R0, [R4] \n\
/* 08016f1c */ ADDS R0, 0x64 @ Add 0x64 to R0 \n\
/* 08016f1e */ STRB R3, [R0] \n\
/* 08016f20 */ LDR R0, [R4] \n\
/* 08016f22 */ ADDS R0, 0x7B @ Add 0x7B to R0 \n\
/* 08016f24 */ STRB R3, [R0] \n\
/* 08016f26 */ LDR R0, [R4] \n\
/* 08016f28 */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 08016f2a */ STRB R3, [R0] \n\
/* 08016f2c */ LDR R1, [R4] \n\
/* 08016f2e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08016f30 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 08016f32 */ STR R5, [R0] \n\
/* 08016f34 */ MOVS R0, 0x96 @ Set R0 to 0x96 \n\
/* 08016f36 */ LSLS R0, R0, 0x3 \n\
/* 08016f38 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08016f3a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08016f3c */ STRH R0, [R2] \n\
/* 08016f3e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08016f40 */ ADDS R2, 0x84 @ Add 0x84 to R2 \n\
/* 08016f42 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08016f44 */ STRH R0, [R2] \n\
/* 08016f46 */ ADDS R1, 0x5E @ Add 0x5E to R1 \n\
/* 08016f48 */ STRB R3, [R1] \n\
/* 08016f4a */ LDR R0, [R4] \n\
/* 08016f4c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08016f4e */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 08016f50 */ STRH R5, [R1] \n\
/* 08016f52 */ LDR R1, =0x4a4 \n\
/* 08016f54 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f56 */ STRB R3, [R0] \n\
/* 08016f58 */ LDR R0, [R4] \n\
/* 08016f5a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016f5c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f5e */ STRB R6, [R0] \n\
/* 08016f60 */ LDR R0, [R4] \n\
/* 08016f62 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016f64 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f66 */ STRB R3, [R0] \n\
/* 08016f68 */ LDR R0, [R4] \n\
/* 08016f6a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016f6c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f6e */ STRB R3, [R0] \n\
/* 08016f70 */ LDR R0, [R4] \n\
/* 08016f72 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016f74 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f76 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08016f78 */ STRB R1, [R0] \n\
/* 08016f7a */ LDR R0, [R4] \n\
/* 08016f7c */ LDR R1, =0x5b4 \n\
/* 08016f7e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f80 */ STRB R6, [R0] \n\
/* 08016f82 */ LDR R0, [R4] \n\
/* 08016f84 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016f86 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f88 */ STRB R6, [R0] \n\
/* 08016f8a */ LDR R0, [R4] \n\
/* 08016f8c */ LDR R1, =0x4a9 \n\
/* 08016f8e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f90 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08016f92 */ STRB R1, [R0] \n\
/* 08016f94 */ LDR R0, [R4] \n\
/* 08016f96 */ LDR R1, =0x4aa \n\
/* 08016f98 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016f9a */ STRB R6, [R0] \n\
/* 08016f9c */ LDR R0, [R4] \n\
/* 08016f9e */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08016fa0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016fa2 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08016fa4 */ STRB R1, [R0] \n\
/* 08016fa6 */ LDR R0, [R4] \n\
/* 08016fa8 */ LDR R1, =0x4ac \n\
/* 08016faa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016fac */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08016fae */ STRB R1, [R0] \n\
/* 08016fb0 */ MOVS R0, 0x23 @ Set R0 to 0x23 \n\
/* 08016fb2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08016fb4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08016fb6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08016fb8 */ BL func_0804c340 \n\
/* 08016fbc */ BL func_08000608 \n\
/* 08016fc0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016fc2 */ BNE branch_08016fca \n\
/* 08016fc4 */ LDR R0, =D_089d77e4 \n\
/* 08016fc6 */ BL func_08000584 \n\
 \n\
branch_08016fca: \n\
/* 08016fca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016fcc */ BL func_0801911c \n\
/* 08016fd0 */ POP {R4-R6} \n\
/* 08016fd2 */ POP {R0} \n\
/* 08016fd4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
