asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032a04 \n\
/* 08032a04 */ PUSH {R4-R7, LR} \n\
/* 08032a06 */ LDR R1, =gCurrentEngineData \n\
/* 08032a08 */ LDR R1, [R1] \n\
/* 08032a0a */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 08032a0c */ LSLS R2, R2, 0x1 \n\
/* 08032a0e */ ADDS R4, R1, R2 @ Set R4 to R1 + R2 \n\
/* 08032a10 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08032a12 */ LSLS R6, R0, 0x8 \n\
/* 08032a14 */ ADDS R7, R6, 0x0 @ Set R7 to R6 + 0x0 \n\
 \n\
branch_08032a16: \n\
/* 08032a16 */ LDR R2, [R4, 0x4] \n\
/* 08032a18 */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 08032a1a */ STR R2, [R4, 0x4] \n\
/* 08032a1c */ LDR R0, =D_03005380 \n\
/* 08032a1e */ LDR R0, [R0] \n\
/* 08032a20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032a22 */ LDRSH R1, [R4, R3] \n\
/* 08032a24 */ LSLS R2, R2, 0x8 \n\
/* 08032a26 */ ASRS R2, R2, 0x10 \n\
/* 08032a28 */ BL func_0804d648 \n\
/* 08032a2c */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032a2e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08032a30 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 08032a32 */ BLS branch_08032a16 \n\
/* 08032a34 */ CMP R5, 0xB @ Compare R5 and 0xB \n\
/* 08032a36 */ BHI branch_08032a56 \n\
 \n\
branch_08032a38: \n\
/* 08032a38 */ LDR R2, [R4, 0x4] \n\
/* 08032a3a */ SUBS R2, R2, R6 @ Set R2 to R2 - R6 \n\
/* 08032a3c */ STR R2, [R4, 0x4] \n\
/* 08032a3e */ LDR R0, =D_03005380 \n\
/* 08032a40 */ LDR R0, [R0] \n\
/* 08032a42 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032a44 */ LDRSH R1, [R4, R3] \n\
/* 08032a46 */ LSLS R2, R2, 0x8 \n\
/* 08032a48 */ ASRS R2, R2, 0x10 \n\
/* 08032a4a */ BL func_0804d648 \n\
/* 08032a4e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08032a50 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08032a52 */ CMP R5, 0xB @ Compare R5 and 0xB \n\
/* 08032a54 */ BLS branch_08032a38 \n\
 \n\
branch_08032a56: \n\
/* 08032a56 */ POP {R4-R7} \n\
/* 08032a58 */ POP {R0} \n\
/* 08032a5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
