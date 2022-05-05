asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080493f4 \n\
/* 080493f4 */ PUSH {R4, R5, LR} \n\
/* 080493f6 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080493f8 */ LDR R1, =D_03005b88 \n\
/* 080493fa */ LSLS R0, R0, 0x5 \n\
/* 080493fc */ LDR R1, [R1] \n\
/* 080493fe */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08049400 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08049402 */ BNE branch_08049418 \n\
/* 08049404 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08049406 */ LSLS R0, R0, 0x7 \n\
/* 08049408 */ STR R0, [R4, 0x18] \n\
/* 0804940a */ LDRB R1, [R4] \n\
/* 0804940c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804940e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08049410 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049412 */ B branch_08049446 \n\
\n\
.ltorg \n\
 \n\
branch_08049418: \n\
/* 08049418 */ LDR R0, [R4, 0x1C] \n\
/* 0804941a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804941c */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804941e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08049420 */ BL __muldi3 \n\
/* 08049424 */ LSLS R3, R1, 0x12 \n\
/* 08049426 */ LSRS R2, R0, 0xE \n\
/* 08049428 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804942a */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804942c */ STR R0, [R4, 0x18] \n\
/* 0804942e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08049430 */ LSLS R2, R2, 0x7 \n\
/* 08049432 */ EORS R2, R0 @ Set R2 to R2 ^ R0 \n\
/* 08049434 */ NEGS R1, R2 @ Set R1 to -R2 \n\
/* 08049436 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08049438 */ LSRS R1, R1, 0x1F \n\
/* 0804943a */ LSLS R1, R1, 0x1 \n\
/* 0804943c */ LDRB R2, [R4] \n\
/* 0804943e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08049440 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08049442 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08049444 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
 \n\
branch_08049446: \n\
/* 08049446 */ STRB R0, [R4] \n\
/* 08049448 */ POP {R4, R5} \n\
/* 0804944a */ POP {R0} \n\
/* 0804944c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
