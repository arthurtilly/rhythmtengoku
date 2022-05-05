asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049e8c \n\
/* 08049e8c */ PUSH {R4, R5, LR} \n\
/* 08049e8e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08049e90 */ LSLS R1, R1, 0x18 \n\
/* 08049e92 */ LSRS R1, R1, 0x13 \n\
/* 08049e94 */ LDR R0, [R5, 0x14] \n\
/* 08049e96 */ MOVS R2, 0x1F @ Set R2 to 0x1F \n\
/* 08049e98 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08049e9a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08049e9c */ STR R0, [R5, 0x14] \n\
/* 08049e9e */ LDRB R0, [R5, 0x14] \n\
/* 08049ea0 */ LSLS R0, R0, 0x1B \n\
/* 08049ea2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049ea4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049ea6 */ BEQ branch_08049ebe \n\
 \n\
branch_08049ea8: \n\
/* 08049ea8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049eaa */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049eac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08049eae */ BL func_0804ad18 \n\
/* 08049eb2 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049eb4 */ LDRB R0, [R5, 0x14] \n\
/* 08049eb6 */ LSLS R0, R0, 0x1B \n\
/* 08049eb8 */ LSRS R0, R0, 0x1B \n\
/* 08049eba */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049ebc */ BCC branch_08049ea8 \n\
 \n\
branch_08049ebe: \n\
/* 08049ebe */ POP {R4, R5} \n\
/* 08049ec0 */ POP {R0} \n\
/* 08049ec2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
