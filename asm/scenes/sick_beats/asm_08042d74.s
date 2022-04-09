asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042d74 \n\
/* 08042d74 */ PUSH {R4, LR} \n\
/* 08042d76 */ LDR R0, =D_030055d0 \n\
/* 08042d78 */ LDR R0, [R0] \n\
/* 08042d7a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08042d7c */ ADDS R3, 0x28 @ Add 0x28 to R3 \n\
/* 08042d7e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042d80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08042d82: \n\
/* 08042d82 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08042d84 */ STRB R2, [R0] \n\
/* 08042d86 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08042d88 */ CMP R1, 0xFF @ Compare R1 and 0xFF \n\
/* 08042d8a */ BLS branch_08042d82 \n\
/* 08042d8c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08042d8e */ LSLS R0, R0, 0x1 \n\
/* 08042d90 */ ADDS R1, R3, R0 @ Set R1 to R3 + R0 \n\
/* 08042d92 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08042d94 */ STRB R0, [R1] \n\
/* 08042d96 */ LDR R2, =0x101 \n\
/* 08042d98 */ ADDS R1, R3, R2 @ Set R1 to R3 + R2 \n\
/* 08042d9a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08042d9c */ STRB R0, [R1] \n\
/* 08042d9e */ MOVS R4, 0x81 @ Set R4 to 0x81 \n\
/* 08042da0 */ LSLS R4, R4, 0x1 \n\
/* 08042da2 */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 08042da4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042da6 */ STRH R0, [R1] \n\
/* 08042da8 */ MOVS R1, 0x82 @ Set R1 to 0x82 \n\
/* 08042daa */ LSLS R1, R1, 0x1 \n\
/* 08042dac */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08042dae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08042db0 */ STRB R1, [R0] \n\
/* 08042db2 */ ADDS R4, 0x3 @ Add 0x3 to R4 \n\
/* 08042db4 */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 08042db6 */ STRB R2, [R0] \n\
/* 08042db8 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08042dba */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 08042dbc */ STRB R1, [R0] \n\
/* 08042dbe */ LDR R1, =0x107 \n\
/* 08042dc0 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 08042dc2 */ STRB R2, [R0] \n\
/* 08042dc4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042dc6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042dc8 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08042dca */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
 \n\
branch_08042dcc: \n\
/* 08042dcc */ STR R2, [R0] \n\
/* 08042dce */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08042dd0 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08042dd2 */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 08042dd4 */ BLS branch_08042dcc \n\
/* 08042dd6 */ POP {R4} \n\
/* 08042dd8 */ POP {R0} \n\
/* 08042dda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
