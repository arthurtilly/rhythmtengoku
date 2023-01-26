asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014268 \n\
/* 08014268 */ PUSH {R4-R7, LR} \n\
/* 0801426a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801426c */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0801426e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08014270 */ LDR R3, =D_030046a4 \n\
/* 08014272 */ LDR R1, [R3] \n\
/* 08014274 */ LDR R2, =0x2da \n\
/* 08014276 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08014278 */ LDRB R0, [R0] \n\
/* 0801427a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801427c */ BNE branch_08014290 \n\
/* 0801427e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08014280 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08014282 */ STR R0, [R4] \n\
/* 08014284 */ B branch_080142da \n\
\n\
.ltorg \n\
 \n\
branch_08014290: \n\
/* 08014290 */ LDR R2, =0x2db \n\
/* 08014292 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08014294 */ LDRB R0, [R0] \n\
/* 08014296 */ LSLS R0, R0, 0x2 \n\
/* 08014298 */ MOVS R7, 0xB8 @ Set R7 to 0xB8 \n\
/* 0801429a */ LSLS R7, R7, 0x2 \n\
/* 0801429c */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801429e */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 080142a0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080142a2 */ LDRSB R1, [R0, R1] \n\
/* 080142a4 */ STR R1, [R5] \n\
/* 080142a6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080142a8 */ LDRSB R1, [R0, R1] \n\
/* 080142aa */ STR R1, [R6] \n\
/* 080142ac */ LDRB R0, [R0, 0x2] \n\
/* 080142ae */ LSLS R0, R0, 0x18 \n\
/* 080142b0 */ ASRS R0, R0, 0x18 \n\
/* 080142b2 */ STR R0, [R4] \n\
/* 080142b4 */ LDR R1, [R3] \n\
/* 080142b6 */ LDR R0, =0x2da \n\
/* 080142b8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080142ba */ LDRB R0, [R1] \n\
/* 080142bc */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080142be */ STRB R0, [R1] \n\
/* 080142c0 */ LDR R1, [R3] \n\
/* 080142c2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080142c4 */ LDRB R0, [R1] \n\
/* 080142c6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080142c8 */ STRB R0, [R1] \n\
/* 080142ca */ LSLS R0, R0, 0x18 \n\
/* 080142cc */ LSRS R0, R0, 0x18 \n\
/* 080142ce */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 080142d0 */ BLS branch_080142da \n\
/* 080142d2 */ LDR R0, [R3] \n\
/* 080142d4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080142d6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080142d8 */ STRB R1, [R0] \n\
 \n\
branch_080142da: \n\
/* 080142da */ POP {R4-R7} \n\
/* 080142dc */ POP {R0} \n\
/* 080142de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
