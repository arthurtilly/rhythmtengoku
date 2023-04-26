asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038ef8 \n\
/* 08038ef8 */ PUSH {R4, R5, LR} \n\
/* 08038efa */ LDR R0, =gCurrentEngineData \n\
/* 08038efc */ LDR R0, [R0] \n\
/* 08038efe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08038f00 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08038f02 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08038f04: \n\
/* 08038f04 */ LDRB R0, [R4, 0x2] \n\
/* 08038f06 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038f08 */ BEQ branch_08038f14 \n\
/* 08038f0a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08038f0c */ BNE branch_08038f14 \n\
/* 08038f0e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08038f10 */ BL func_08038b98 \n\
 \n\
branch_08038f14: \n\
/* 08038f14 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 08038f16 */ LSLS R0, R0, 0x18 \n\
/* 08038f18 */ LSRS R5, R0, 0x18 \n\
/* 08038f1a */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08038f1c */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08038f1e */ BLS branch_08038f04 \n\
/* 08038f20 */ POP {R4, R5} \n\
/* 08038f22 */ POP {R0} \n\
/* 08038f24 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
