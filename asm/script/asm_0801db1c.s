asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801db1c \n\
/* 0801db1c */ PUSH {R4, LR} \n\
/* 0801db1e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801db20 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0801db22 */ ADDS R2, 0x25 @ Add 0x25 to R2 \n\
/* 0801db24 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801db26 */ LDRSB R0, [R2, R0] \n\
/* 0801db28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801db2a */ BLT branch_0801db64 \n\
/* 0801db2c */ ADDS R1, 0x24 @ Add 0x24 to R1 \n\
/* 0801db2e */ LDRB R0, [R1] \n\
/* 0801db30 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801db32 */ STRB R0, [R1] \n\
/* 0801db34 */ LSLS R0, R0, 0x18 \n\
/* 0801db36 */ LSRS R0, R0, 0x18 \n\
/* 0801db38 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 0801db3a */ BLS branch_0801db40 \n\
/* 0801db3c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801db3e */ STRB R0, [R1] \n\
 \n\
branch_0801db40: \n\
/* 0801db40 */ LDRB R0, [R1] \n\
/* 0801db42 */ LSRS R0, R0, 0x2 \n\
/* 0801db44 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801db46 */ LDRSB R1, [R2, R1] \n\
/* 0801db48 */ LSLS R1, R1, 0x5 \n\
/* 0801db4a */ LDR R3, =(D_03004b10 + 0x64) \n\
/* 0801db4c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801db4e */ LDR R2, =D_089dd94a \n\
/* 0801db50 */ LSLS R0, R0, 0x3 \n\
/* 0801db52 */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 0801db54 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
 \n\
branch_0801db56: \n\
/* 0801db56 */ LDRH R0, [R2] \n\
/* 0801db58 */ STRH R0, [R1] \n\
/* 0801db5a */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0801db5c */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0801db5e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801db60 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0801db62 */ BLS branch_0801db56 \n\
 \n\
branch_0801db64: \n\
/* 0801db64 */ POP {R4} \n\
/* 0801db66 */ POP {R0} \n\
/* 0801db68 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
