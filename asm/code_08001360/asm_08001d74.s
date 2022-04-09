asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001d74 \n\
/* 08001d74 */ PUSH {R4, R5, LR} \n\
/* 08001d76 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08001d78 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08001d7a */ BEQ branch_08001dd4 \n\
/* 08001d7c */ LDRB R0, [R5] \n\
/* 08001d7e */ LSLS R0, R0, 0x1F \n\
/* 08001d80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001d82 */ BEQ branch_08001dd4 \n\
/* 08001d84 */ LDR R2, [R5] \n\
/* 08001d86 */ LSLS R0, R2, 0xF \n\
/* 08001d88 */ LSRS R0, R0, 0x18 \n\
/* 08001d8a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08001d8c */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08001d8e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001d90 */ LSLS R0, R0, 0x9 \n\
/* 08001d92 */ LDR R1, =0xfffe01ff \n\
/* 08001d94 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08001d96 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08001d98 */ STR R1, [R5] \n\
/* 08001d9a */ LSLS R1, R1, 0xF \n\
/* 08001d9c */ LSRS R1, R1, 0x18 \n\
/* 08001d9e */ LDRH R0, [R5] \n\
/* 08001da0 */ LSLS R0, R0, 0x17 \n\
/* 08001da2 */ LSRS R0, R0, 0x18 \n\
/* 08001da4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08001da6 */ BLE branch_08001db8 \n\
/* 08001da8 */ LDRB R1, [R5] \n\
/* 08001daa */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08001dac */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08001dae */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001db0 */ STRB R0, [R5] \n\
/* 08001db2 */ B branch_08001dd4 \n\
\n\
.ltorg \n\
 \n\
branch_08001db8: \n\
/* 08001db8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08001dba: \n\
/* 08001dba */ LDRH R0, [R5, 0x14] \n\
/* 08001dbc */ ASRS R0, R4 @ Set R0 to R0 << R4 (arithmetic) \n\
/* 08001dbe */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08001dc0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001dc2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001dc4 */ BEQ branch_08001dce \n\
/* 08001dc6 */ LSLS R1, R4, 0x4 \n\
/* 08001dc8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08001dca */ BL func_08001a64 \n\
 \n\
branch_08001dce: \n\
/* 08001dce */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08001dd0 */ CMP R4, 0xF @ Compare R4 and 0xF \n\
/* 08001dd2 */ BLE branch_08001dba \n\
 \n\
branch_08001dd4: \n\
/* 08001dd4 */ POP {R4, R5} \n\
/* 08001dd6 */ POP {R0} \n\
/* 08001dd8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
