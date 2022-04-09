asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fca0 \n\
/* 0800fca0 */ PUSH {R4, LR} \n\
/* 0800fca2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800fca4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800fca6 */ BEQ branch_0800fd0c \n\
/* 0800fca8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800fcaa */ BEQ branch_0800fcf0 \n\
/* 0800fcac */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800fcae */ LDRSB R0, [R4, R0] \n\
/* 0800fcb0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fcb2 */ BGE branch_0800fd0c \n\
/* 0800fcb4 */ BL func_0800c42c \n\
/* 0800fcb8 */ STRB R0, [R4, 0x2] \n\
/* 0800fcba */ LSLS R0, R0, 0x18 \n\
/* 0800fcbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fcbe */ BLT branch_0800fd0c \n\
/* 0800fcc0 */ LDR R0, =D_03005380 \n\
/* 0800fcc2 */ LDR R3, [R0] \n\
/* 0800fcc4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800fcc6 */ LDRSH R1, [R4, R0] \n\
/* 0800fcc8 */ LDRB R0, [R4, 0x3] \n\
/* 0800fcca */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800fccc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fcce */ BEQ branch_0800fcd2 \n\
/* 0800fcd0 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_0800fcd2: \n\
/* 0800fcd2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800fcd4 */ BL func_0804dc8c \n\
/* 0800fcd8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800fcda */ LDRSH R0, [R4, R1] \n\
/* 0800fcdc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800fcde */ LDRSB R1, [R4, R1] \n\
/* 0800fce0 */ BL func_08007468 \n\
/* 0800fce4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800fce6 */ BL func_0800f904 \n\
/* 0800fcea */ B branch_0800fd0c \n\
\n\
.ltorg \n\
 \n\
branch_0800fcf0: \n\
/* 0800fcf0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800fcf2 */ LDRSB R0, [R4, R0] \n\
/* 0800fcf4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fcf6 */ BLT branch_0800fd0c \n\
/* 0800fcf8 */ BL func_080021b8 \n\
/* 0800fcfc */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0800fcfe */ STRB R0, [R4, 0x2] \n\
/* 0800fd00 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800fd02 */ LDRSH R0, [R4, R1] \n\
/* 0800fd04 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800fd06 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800fd08 */ BL func_08007468 \n\
 \n\
branch_0800fd0c: \n\
/* 0800fd0c */ POP {R4} \n\
/* 0800fd0e */ POP {R0} \n\
/* 0800fd10 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
