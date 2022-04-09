asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006d80 \n\
/* 08006d80 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08006d82 */ LSLS R0, R0, 0x13 \n\
/* 08006d84 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08006d86 */ STRH R1, [R0] \n\
/* 08006d88 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08006d8a */ LSLS R0, R0, 0x13 \n\
/* 08006d8c */ STRH R1, [R0] \n\
/* 08006d8e */ LDR R1, =D_03004b10 \n\
/* 08006d90 */ LDR R0, =0x854 \n\
/* 08006d92 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08006d94 */ LDRB R2, [R1] \n\
/* 08006d96 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08006d98 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08006d9a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08006d9c */ STRB R0, [R1] \n\
/* 08006d9e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
