asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002088 \n\
/* 08002088 */ PUSH {R4-R7, LR} \n\
/* 0800208a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800208c */ PUSH {R7} \n\
/* 0800208e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002090 */ LSLS R5, R5, 0x10 \n\
/* 08002092 */ LSLS R1, R1, 0x10 \n\
/* 08002094 */ LSLS R2, R2, 0x10 \n\
/* 08002096 */ LSRS R2, R2, 0x10 \n\
/* 08002098 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0800209a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800209c */ MOVS R4, 0x1F @ Set R4 to 0x1F \n\
/* 0800209e */ LSRS R0, R5, 0x10 \n\
/* 080020a0 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 080020a2 */ LSRS R6, R5, 0x15 \n\
/* 080020a4 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080020a6 */ ANDS R6, R3 @ Set R6 to R6 & R3 \n\
/* 080020a8 */ LSRS R5, R5, 0x1A \n\
/* 080020aa */ ANDS R5, R3 @ Set R5 to R5 & R3 \n\
/* 080020ac */ LSRS R3, R1, 0x10 \n\
/* 080020ae */ ANDS R3, R4 @ Set R3 to R3 & R4 \n\
/* 080020b0 */ LSRS R4, R1, 0x15 \n\
/* 080020b2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080020b4 */ ANDS R4, R7 @ Set R4 to R4 & R7 \n\
/* 080020b6 */ LSRS R1, R1, 0x1A \n\
/* 080020b8 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 080020ba */ SUBS R3, R3, R0 @ Set R3 to R3 - R0 \n\
/* 080020bc */ MULS R3, R2 @ Multiply R3 by R2 \n\
/* 080020be */ ASRS R3, R3, 0x8 \n\
/* 080020c0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080020c2 */ SUBS R4, R4, R6 @ Set R4 to R4 - R6 \n\
/* 080020c4 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080020c6 */ MULS R3, R2 @ Multiply R3 by R2 \n\
/* 080020c8 */ ASRS R3, R3, 0x8 \n\
/* 080020ca */ ADDS R6, R6, R3 @ Set R6 to R6 + R3 \n\
/* 080020cc */ SUBS R1, R1, R5 @ Set R1 to R1 - R5 \n\
/* 080020ce */ MULS R1, R2 @ Multiply R1 by R2 \n\
/* 080020d0 */ ASRS R1, R1, 0x8 \n\
/* 080020d2 */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 080020d4 */ LSLS R6, R6, 0x5 \n\
/* 080020d6 */ ORRS R0, R6 @ Set R0 to R0 | R6 \n\
/* 080020d8 */ LSLS R5, R5, 0xA \n\
/* 080020da */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 080020dc */ LSLS R0, R0, 0x10 \n\
/* 080020de */ LSRS R0, R0, 0x10 \n\
/* 080020e0 */ POP {R3} \n\
/* 080020e2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080020e4 */ POP {R4-R7} \n\
/* 080020e6 */ POP {R1} \n\
/* 080020e8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
