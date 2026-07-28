asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ee18 \n\
/* 0803ee18 */ PUSH {R4, LR} \n\
/* 0803ee1a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ee1c */ LDR R3, =gCurrentEngineData \n\
/* 0803ee1e */ LDR R4, =0x35a \n\
 \n\
branch_0803ee20: \n\
/* 0803ee20 */ LDR R0, [R3] \n\
/* 0803ee22 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803ee24 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803ee26 */ LDRB R0, [R1] \n\
/* 0803ee28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ee2a */ BEQ branch_0803ee30 \n\
/* 0803ee2c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803ee2e */ STRB R0, [R1] \n\
 \n\
branch_0803ee30: \n\
/* 0803ee30 */ LDR R0, [R3] \n\
/* 0803ee32 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0803ee34 */ LSLS R1, R1, 0x2 \n\
/* 0803ee36 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803ee38 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803ee3a */ LDRB R0, [R1] \n\
/* 0803ee3c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ee3e */ BEQ branch_0803ee44 \n\
/* 0803ee40 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803ee42 */ STRB R0, [R1] \n\
 \n\
branch_0803ee44: \n\
/* 0803ee44 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0803ee46 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0803ee48 */ BLS branch_0803ee20 \n\
/* 0803ee4a */ POP {R4} \n\
/* 0803ee4c */ POP {R0} \n\
/* 0803ee4e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
