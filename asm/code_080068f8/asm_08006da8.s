asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006da8 \n\
/* 08006da8 */ PUSH {R4, LR} \n\
/* 08006daa */ SUB SP, 0x4 \n\
/* 08006dac */ LDR R1, =D_03004b10 \n\
/* 08006dae */ LDR R0, =0x854 \n\
/* 08006db0 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 08006db2 */ LDRB R2, [R3] \n\
/* 08006db4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08006db6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08006db8 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08006dba */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08006dbc */ STRH R4, [R1] \n\
/* 08006dbe */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08006dc0 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08006dc2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08006dc4 */ SUBS R2, 0x6 @ Subtract 0x6 from R2 \n\
/* 08006dc6 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08006dc8 */ STRB R0, [R3] \n\
/* 08006dca */ LDRH R2, [R3] \n\
/* 08006dcc */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08006dce */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08006dd0 */ STRH R0, [R3] \n\
/* 08006dd2 */ LDR R2, =0x858 \n\
/* 08006dd4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08006dd6 */ STR R4, [R0] \n\
/* 08006dd8 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08006dda */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08006ddc */ LSLS R0, R0, 0x1 \n\
/* 08006dde */ STR R0, [SP] \n\
/* 08006de0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08006de2 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08006de4 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08006de6 */ BL func_080018e0 \n\
/* 08006dea */ ADD SP, 0x4 \n\
/* 08006dec */ POP {R4} \n\
/* 08006dee */ POP {R0} \n\
/* 08006df0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
