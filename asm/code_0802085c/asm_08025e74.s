asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025e74 \n\
/* 08025e74 */ PUSH {R4, R5, LR} \n\
/* 08025e76 */ SUB SP, 0xC \n\
/* 08025e78 */ LDR R0, =D_030055d0 \n\
/* 08025e7a */ LDR R4, [R0] \n\
/* 08025e7c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025e7e */ LSLS R0, R0, 0x2 \n\
/* 08025e80 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025e82 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08025e84 */ BL func_08025228 \n\
/* 08025e88 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025e8a */ LDR R5, =D_03005380 \n\
/* 08025e8c */ LDR R0, [R5] \n\
/* 08025e8e */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025e90 */ LDRSH R1, [R4, R3] \n\
/* 08025e92 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08025e94 */ STR R3, [SP] \n\
/* 08025e96 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025e98 */ STR R3, [SP, 0x4] \n\
/* 08025e9a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025e9c */ STR R3, [SP, 0x8] \n\
/* 08025e9e */ BL func_0804d8f8 \n\
/* 08025ea2 */ LDR R0, [R5] \n\
/* 08025ea4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025ea6 */ LDRSH R1, [R4, R2] \n\
/* 08025ea8 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08025eaa */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 08025eac */ BL func_0804d5d4 \n\
/* 08025eb0 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025eb2 */ LDRSH R0, [R4, R3] \n\
/* 08025eb4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025eb6 */ BL func_08025fbc \n\
/* 08025eba */ LDR R0, [R5] \n\
/* 08025ebc */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 08025ebe */ LDRSH R1, [R4, R2] \n\
/* 08025ec0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025ec2 */ BL func_0804cebc \n\
/* 08025ec6 */ ADD SP, 0xC \n\
/* 08025ec8 */ POP {R4, R5} \n\
/* 08025eca */ POP {R0} \n\
/* 08025ecc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
