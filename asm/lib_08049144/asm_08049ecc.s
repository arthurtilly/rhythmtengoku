asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049ecc \n\
/* 08049ecc */ PUSH {R4, R5, LR} \n\
/* 08049ece */ LDRB R2, [R0] \n\
/* 08049ed0 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08049ed2 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08049ed4 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049ed6 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08049ed8 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08049eda */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049edc */ STRB R1, [R0] \n\
/* 08049ede */ LDRH R2, [R0] \n\
/* 08049ee0 */ LDR R1, =0xfffffe03 \n\
/* 08049ee2 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049ee4 */ STRH R1, [R0] \n\
/* 08049ee6 */ LDR R1, [R0] \n\
/* 08049ee8 */ LDR R2, =0xff8001ff \n\
/* 08049eea */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049eec */ STR R1, [R0] \n\
/* 08049eee */ LDRH R2, [R0, 0x2] \n\
/* 08049ef0 */ LDR R1, =0xffffc07f \n\
/* 08049ef2 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049ef4 */ MOVS R3, 0xC8 @ Set R3 to 0xC8 \n\
/* 08049ef6 */ LSLS R3, R3, 0x6 \n\
/* 08049ef8 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08049efa */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08049efc */ STRH R1, [R0, 0x2] \n\
/* 08049efe */ LDRB R2, [R0, 0x4] \n\
/* 08049f00 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08049f02 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08049f04 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f06 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08049f08 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08049f0a */ STRB R1, [R0, 0x4] \n\
/* 08049f0c */ LDRH R1, [R0, 0x4] \n\
/* 08049f0e */ MOVS R5, 0xFE @ Set R5 to 0xFE \n\
/* 08049f10 */ LSLS R5, R5, 0x6 \n\
/* 08049f12 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08049f14 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08049f16 */ STRH R1, [R0, 0x4] \n\
/* 08049f18 */ LDRH R2, [R0, 0x6] \n\
/* 08049f1a */ LDR R1, =0xfffff01f \n\
/* 08049f1c */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f1e */ STRH R1, [R0, 0x6] \n\
/* 08049f20 */ LDR R1, [R0, 0x4] \n\
/* 08049f22 */ LDR R2, =0xffe03fff \n\
/* 08049f24 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f26 */ STR R1, [R0, 0x4] \n\
/* 08049f28 */ LDRB R2, [R0, 0x7] \n\
/* 08049f2a */ MOVS R1, 0x31 @ Set R1 to 0x31 \n\
/* 08049f2c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08049f2e */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f30 */ STRB R1, [R0, 0x7] \n\
/* 08049f32 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049f34 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08049f36 */ STRB R1, [R0, 0xC] \n\
/* 08049f38 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08049f3a */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08049f3c */ LSLS R1, R1, 0x6 \n\
/* 08049f3e */ STRH R1, [R0, 0x10] \n\
/* 08049f40 */ STRH R4, [R0, 0x12] \n\
/* 08049f42 */ STRB R3, [R0, 0x14] \n\
/* 08049f44 */ STRB R3, [R0, 0x15] \n\
/* 08049f46 */ STRB R3, [R0, 0xD] \n\
/* 08049f48 */ LDRH R2, [R0, 0x8] \n\
/* 08049f4a */ LDR R1, =0xffffc000 \n\
/* 08049f4c */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f4e */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08049f50 */ LSLS R5, R5, 0x6 \n\
/* 08049f52 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08049f54 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08049f56 */ STRH R1, [R0, 0x8] \n\
/* 08049f58 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08049f5a */ STRB R1, [R0, 0xF] \n\
/* 08049f5c */ LDRH R2, [R0, 0xA] \n\
/* 08049f5e */ MOVS R1, 0x3F @ Set R1 to 0x3F \n\
/* 08049f60 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f62 */ STRH R1, [R0, 0xA] \n\
/* 08049f64 */ LDRB R2, [R0, 0x3] \n\
/* 08049f66 */ MOVS R1, 0x41 @ Set R1 to 0x41 \n\
/* 08049f68 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08049f6a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f6c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08049f6e */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08049f70 */ STRB R1, [R0, 0x3] \n\
/* 08049f72 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08049f74 */ LSLS R1, R1, 0x1 \n\
/* 08049f76 */ STRH R1, [R0, 0x1A] \n\
/* 08049f78 */ STRH R1, [R0, 0x16] \n\
/* 08049f7a */ STRH R4, [R0, 0x18] \n\
/* 08049f7c */ STRB R3, [R0, 0x1C] \n\
/* 08049f7e */ STRB R3, [R0, 0x1D] \n\
/* 08049f80 */ STRB R3, [R0, 0x1E] \n\
/* 08049f82 */ POP {R4, R5} \n\
/* 08049f84 */ POP {R0} \n\
/* 08049f86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
