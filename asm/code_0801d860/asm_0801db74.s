asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801db74 \n\
/* 0801db74 */ PUSH {R4, LR} \n\
/* 0801db76 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801db78 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0801db7a */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0801db7c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801db7e */ LDRSB R0, [R1, R0] \n\
/* 0801db80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801db82 */ BLT branch_0801dbe0 \n\
/* 0801db84 */ LSLS R0, R0, 0x5 \n\
/* 0801db86 */ LDR R1, =(D_03004b10 + 0x64) \n\
/* 0801db88 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 0801db8a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801db8c */ ADDS R0, 0x26 @ Add 0x26 to R0 \n\
/* 0801db8e */ LDRB R0, [R0] \n\
/* 0801db90 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801db92 */ BEQ branch_0801dbd0 \n\
/* 0801db94 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0801db96 */ ADDS R1, 0x27 @ Add 0x27 to R1 \n\
/* 0801db98 */ LDRB R0, [R1] \n\
/* 0801db9a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801db9c */ STRB R0, [R1] \n\
/* 0801db9e */ LSLS R0, R0, 0x18 \n\
/* 0801dba0 */ LSRS R0, R0, 0x18 \n\
/* 0801dba2 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 0801dba4 */ BLS branch_0801dbaa \n\
/* 0801dba6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801dba8 */ STRB R0, [R1] \n\
 \n\
branch_0801dbaa: \n\
/* 0801dbaa */ LDRB R0, [R1] \n\
/* 0801dbac */ LSRS R0, R0, 0x2 \n\
/* 0801dbae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801dbb0 */ LDR R1, =D_089dd962 \n\
/* 0801dbb2 */ LSLS R0, R0, 0x3 \n\
/* 0801dbb4 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0801dbb6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_0801dbb8: \n\
/* 0801dbb8 */ LDRH R0, [R2] \n\
/* 0801dbba */ STRH R0, [R1] \n\
/* 0801dbbc */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0801dbbe */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0801dbc0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0801dbc2 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0801dbc4 */ BLS branch_0801dbb8 \n\
/* 0801dbc6 */ B branch_0801dbe0 \n\
\n\
.ltorg \n\
 \n\
branch_0801dbd0: \n\
/* 0801dbd0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801dbd2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801dbd4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0801dbd6: \n\
/* 0801dbd6 */ STRH R1, [R0] \n\
/* 0801dbd8 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0801dbda */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0801dbdc */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0801dbde */ BLS branch_0801dbd6 \n\
 \n\
branch_0801dbe0: \n\
/* 0801dbe0 */ POP {R4} \n\
/* 0801dbe2 */ POP {R0} \n\
/* 0801dbe4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
