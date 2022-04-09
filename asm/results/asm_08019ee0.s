asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019ee0 \n\
/* 08019ee0 */ PUSH {R4-R7, LR} \n\
/* 08019ee2 */ SUB SP, 0x14 \n\
/* 08019ee4 */ LDR R0, =D_089d7980 \n\
/* 08019ee6 */ LDR R0, [R0] \n\
/* 08019ee8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019eea */ ADDS R4, 0x7C @ Add 0x7C to R4 \n\
/* 08019eec */ LDR R5, [R0, 0x78] \n\
/* 08019eee */ BL func_0801287c \n\
/* 08019ef2 */ B branch_08019f08 \n\
\n\
.ltorg \n\
 \n\
branch_08019ef8: \n\
/* 08019ef8 */ LDRH R0, [R4] \n\
/* 08019efa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019efc */ BEQ branch_08019f04 \n\
/* 08019efe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08019f00 */ BL func_08019480 \n\
 \n\
branch_08019f04: \n\
/* 08019f04 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 08019f06 */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
 \n\
branch_08019f08: \n\
/* 08019f08 */ LDR R0, [R5] \n\
/* 08019f0a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019f0c */ BNE branch_08019ef8 \n\
/* 08019f0e */ BL func_08019a80 \n\
/* 08019f12 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019f14 */ BL func_08019bec \n\
/* 08019f18 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08019f1a */ BL func_08019d9c \n\
/* 08019f1e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08019f20 */ BEQ branch_08019f4c \n\
/* 08019f22 */ LDR R2, =D_030046a4 \n\
/* 08019f24 */ LDR R1, [R2] \n\
/* 08019f26 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019f28 */ STRB R0, [R1, 0xC] \n\
/* 08019f2a */ LDR R0, =D_03005380 \n\
/* 08019f2c */ LDR R0, [R0] \n\
/* 08019f2e */ LDR R1, [R2] \n\
/* 08019f30 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08019f32 */ LDRSH R1, [R1, R2] \n\
/* 08019f34 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08019f36 */ BL func_0804cebc \n\
/* 08019f3a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08019f3c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08019f3e */ BL func_080191bc \n\
/* 08019f42 */ B branch_0801a04a \n\
\n\
.ltorg \n\
 \n\
branch_08019f4c: \n\
/* 08019f4c */ BL func_080139a0 \n\
/* 08019f50 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019f52 */ BEQ branch_08019f74 \n\
/* 08019f54 */ LDR R4, =D_089d7c18 \n\
/* 08019f56 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08019f58 */ BL func_080005e0 \n\
/* 08019f5c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08019f5e */ LDR R5, =D_089d6d74 \n\
/* 08019f60 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08019f62 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08019f64 */ BL func_080006b0 \n\
/* 08019f68 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019f6a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08019f6c */ BL func_080006b0 \n\
/* 08019f70 */ BL func_08013994 \n\
 \n\
branch_08019f74: \n\
/* 08019f74 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08019f76 */ BNE branch_08019fbc \n\
/* 08019f78 */ LDR R4, =D_089d7b40 \n\
/* 08019f7a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08019f7c */ BL func_08001980 \n\
/* 08019f80 */ LSLS R0, R0, 0x10 \n\
/* 08019f82 */ LSRS R0, R0, 0xE \n\
/* 08019f84 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08019f86 */ LDR R0, [R0] \n\
/* 08019f88 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08019f8a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08019f8c */ BL func_08019210 \n\
/* 08019f90 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019f92 */ LDR R4, =D_03005380 \n\
/* 08019f94 */ LDR R0, [R4] \n\
/* 08019f96 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08019f98 */ STR R2, [SP] \n\
/* 08019f9a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08019f9c */ LSLS R2, R2, 0x4 \n\
/* 08019f9e */ STR R2, [SP, 0x4] \n\
/* 08019fa0 */ STR R7, [SP, 0x8] \n\
/* 08019fa2 */ STR R7, [SP, 0xC] \n\
/* 08019fa4 */ STR R7, [SP, 0x10] \n\
/* 08019fa6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019fa8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08019faa */ BL func_0804d160 \n\
/* 08019fae */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019fb0 */ LDR R0, [R4] \n\
/* 08019fb2 */ LSLS R1, R1, 0x10 \n\
/* 08019fb4 */ ASRS R1, R1, 0x10 \n\
/* 08019fb6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08019fb8 */ BL func_0804d8c4 \n\
 \n\
branch_08019fbc: \n\
/* 08019fbc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08019fbe */ LSLS R0, R0, 0x1 \n\
/* 08019fc0 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 08019fc2 */ BNE branch_0801a020 \n\
/* 08019fc4 */ LDR R4, =D_030046a4 \n\
/* 08019fc6 */ LDR R1, [R4] \n\
/* 08019fc8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08019fca */ STRB R0, [R1, 0xC] \n\
/* 08019fcc */ LDR R0, =D_03005380 \n\
/* 08019fce */ LDR R0, [R0] \n\
/* 08019fd0 */ LDR R1, [R4] \n\
/* 08019fd2 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08019fd4 */ LDRSH R1, [R1, R2] \n\
/* 08019fd6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08019fd8 */ BL func_0804cebc \n\
/* 08019fdc */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08019fde */ BL func_080191bc \n\
/* 08019fe2 */ LDR R0, =D_030046a8 \n\
/* 08019fe4 */ LDR R1, [R0] \n\
/* 08019fe6 */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 08019fe8 */ LDRSB R0, [R1, R0] \n\
/* 08019fea */ LDRB R1, [R1, 0x13] \n\
/* 08019fec */ LSLS R1, R1, 0x18 \n\
/* 08019fee */ ASRS R1, R1, 0x18 \n\
/* 08019ff0 */ BL func_0801317c \n\
/* 08019ff4 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08019ff6 */ BHI branch_0801a04a \n\
/* 08019ff8 */ LDR R0, [R4] \n\
/* 08019ffa */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 08019ffc */ LSLS R2, R2, 0x1 \n\
/* 08019ffe */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801a000 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801a002 */ STRB R0, [R1] \n\
/* 0801a004 */ B branch_0801a04a \n\
\n\
.ltorg \n\
 \n\
branch_0801a020: \n\
/* 0801a020 */ LDR R4, =D_030046a4 \n\
/* 0801a022 */ LDR R0, [R4] \n\
/* 0801a024 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0801a026 */ STRB R5, [R0, 0xC] \n\
/* 0801a028 */ LDR R0, =D_03005380 \n\
/* 0801a02a */ LDR R0, [R0] \n\
/* 0801a02c */ LDR R1, [R4] \n\
/* 0801a02e */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801a030 */ LDRSH R1, [R1, R2] \n\
/* 0801a032 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a034 */ BL func_0804cebc \n\
/* 0801a038 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801a03a */ BL func_080191bc \n\
/* 0801a03e */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0801a040 */ BEQ branch_0801a04a \n\
/* 0801a042 */ LDR R0, [R4] \n\
/* 0801a044 */ LDR R1, =0x127 \n\
/* 0801a046 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a048 */ STRB R5, [R0] \n\
 \n\
branch_0801a04a: \n\
/* 0801a04a */ ADD SP, 0x14 \n\
/* 0801a04c */ POP {R4-R7} \n\
/* 0801a04e */ POP {R0} \n\
/* 0801a050 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
