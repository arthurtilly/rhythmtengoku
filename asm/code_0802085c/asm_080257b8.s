asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080257b8 \n\
/* 080257b8 */ PUSH {R4-R7, LR} \n\
/* 080257ba */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080257bc */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080257be */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080257c0 */ PUSH {R5-R7} \n\
/* 080257c2 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080257c4 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 080257c6 */ LDR R4, [SP, 0x20] \n\
/* 080257c8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080257ca */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080257cc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080257ce */ MOVS R5, 0x20 @ Set R5 to 0x20 \n\
/* 080257d0 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080257d2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080257d4 */ BNE branch_080257d8 \n\
/* 080257d6 */ MOV R10, R4 @ Set R10 to R4 \n\
 \n\
branch_080257d8: \n\
/* 080257d8 */ LSRS R0, R3, 0x1 \n\
/* 080257da */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080257dc */ MOVS R5, 0x20 @ Set R5 to 0x20 \n\
/* 080257de */ MOV R9, R5 @ Set R9 to R5 \n\
/* 080257e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080257e2 */ BNE branch_080257e6 \n\
/* 080257e4 */ MOV R9, R4 @ Set R9 to R4 \n\
 \n\
branch_080257e6: \n\
/* 080257e6 */ LSRS R0, R3, 0x2 \n\
/* 080257e8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080257ea */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 080257ec */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080257ee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080257f0 */ BNE branch_080257f4 \n\
/* 080257f2 */ MOV R8, R4 @ Set R8 to R4 \n\
 \n\
branch_080257f4: \n\
/* 080257f4 */ LSLS R6, R2, 0x4 \n\
/* 080257f6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080257f8 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 080257fa */ BCS branch_08025838 \n\
/* 080257fc */ MOVS R5, 0x1F @ Set R5 to 0x1F \n\
 \n\
branch_080257fe: \n\
/* 080257fe */ MOV R2, R12 @ Set R2 to R12 \n\
/* 08025800 */ LDRH R1, [R2] \n\
/* 08025802 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08025804 */ ADD R12, R0 @ Add R0 to R12 \n\
/* 08025806 */ LSRS R0, R1, 0xA \n\
/* 08025808 */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 0802580a */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0802580c */ ANDS R3, R5 @ Set R3 to R3 & R5 \n\
/* 0802580e */ LSRS R1, R1, 0x5 \n\
/* 08025810 */ ANDS R1, R5 @ Set R1 to R1 & R5 \n\
/* 08025812 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08025814 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 08025816 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08025818 */ LSRS R2, R0, 0x5 \n\
/* 0802581a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802581c */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0802581e */ LSRS R3, R0, 0x5 \n\
/* 08025820 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08025822 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08025824 */ LSRS R1, R0, 0x5 \n\
/* 08025826 */ LSLS R0, R2, 0xA \n\
/* 08025828 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 0802582a */ LSLS R1, R1, 0x5 \n\
/* 0802582c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802582e */ STRH R0, [R7] \n\
/* 08025830 */ ADDS R7, 0x2 @ Add 0x2 to R7 \n\
/* 08025832 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08025834 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 08025836 */ BCC branch_080257fe \n\
 \n\
branch_08025838: \n\
/* 08025838 */ POP {R3-R5} \n\
/* 0802583a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802583c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802583e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08025840 */ POP {R4-R7} \n\
/* 08025842 */ POP {R0} \n\
/* 08025844 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
