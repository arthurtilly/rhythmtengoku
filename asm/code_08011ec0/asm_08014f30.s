asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014f30 \n\
/* 08014f30 */ PUSH {R4, LR} \n\
/* 08014f32 */ SUB SP, 0x4 \n\
/* 08014f34 */ LDR R4, =D_030046a4 \n\
/* 08014f36 */ LDR R0, [R4] \n\
/* 08014f38 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08014f3a */ LDRB R0, [R0] \n\
/* 08014f3c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014f3e */ BNE branch_08014f82 \n\
/* 08014f40 */ STR R0, [SP] \n\
/* 08014f42 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08014f44 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 08014f46 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08014f48 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08014f4a */ BL func_0800a0f0 \n\
/* 08014f4e */ LDR R0, [R4] \n\
/* 08014f50 */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 08014f52 */ BL func_08014ef8 \n\
/* 08014f56 */ LDR R0, [R4] \n\
/* 08014f58 */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 08014f5a */ BL func_08014ef8 \n\
/* 08014f5e */ LDR R0, [R4] \n\
/* 08014f60 */ LDR R0, [R0, 0x38] \n\
/* 08014f62 */ BL func_0800a934 \n\
/* 08014f66 */ LDR R0, =D_03005380 \n\
/* 08014f68 */ LDR R0, [R0] \n\
/* 08014f6a */ LDR R1, [R4] \n\
/* 08014f6c */ LDR R2, =0x4fa \n\
/* 08014f6e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014f70 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014f72 */ LDRSH R1, [R1, R2] \n\
/* 08014f74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014f76 */ BL func_0804d770 \n\
/* 08014f7a */ LDR R0, [R4] \n\
/* 08014f7c */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08014f7e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08014f80 */ STRB R1, [R0] \n\
 \n\
branch_08014f82: \n\
/* 08014f82 */ ADD SP, 0x4 \n\
/* 08014f84 */ POP {R4} \n\
/* 08014f86 */ POP {R0} \n\
/* 08014f88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
