asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037d2c \n\
/* 08037d2c */ PUSH {R4, LR} \n\
/* 08037d2e */ LDR R0, =gCurrentEngineData \n\
/* 08037d30 */ LDR R0, [R0] \n\
/* 08037d32 */ LDR R0, [R0, 0x40] \n\
/* 08037d34 */ LDR R4, [R0, 0x8] \n\
/* 08037d36 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037d38 */ LDR R0, [R4] \n\
/* 08037d3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037d3c */ BEQ branch_08037d4a \n\
/* 08037d3e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_08037d40: \n\
/* 08037d40 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08037d42 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08037d44 */ LDR R0, [R1] \n\
/* 08037d46 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037d48 */ BNE branch_08037d40 \n\
 \n\
branch_08037d4a: \n\
/* 08037d4a */ LSLS R0, R2, 0x10 \n\
/* 08037d4c */ LSRS R0, R0, 0x10 \n\
/* 08037d4e */ BL agb_random \n\
/* 08037d52 */ LDR R1, =gCurrentEngineData \n\
/* 08037d54 */ LDR R1, [R1] \n\
/* 08037d56 */ LSLS R0, R0, 0x10 \n\
/* 08037d58 */ LSRS R0, R0, 0xE \n\
/* 08037d5a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08037d5c */ LDR R0, [R0] \n\
/* 08037d5e */ STR R0, [R1, 0x40] \n\
/* 08037d60 */ POP {R4} \n\
/* 08037d62 */ POP {R0} \n\
/* 08037d64 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
