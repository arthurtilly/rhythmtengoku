asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080206c0 \n\
/* 080206c0 */ PUSH {R4-R7, LR} \n\
/* 080206c2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080206c4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080206c6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080206c8 */ PUSH {R5-R7} \n\
/* 080206ca */ SUB SP, 0x14 \n\
/* 080206cc */ MOVS R6, 0x28 @ Set R6 to 0x28 \n\
/* 080206ce */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 080206d0 */ LSLS R0, R0, 0x7 \n\
/* 080206d2 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080206d4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080206d6 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 080206d8 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080206da */ MOV R8, R4 @ Set R8 to R4 \n\
 \n\
branch_080206dc: \n\
/* 080206dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080206de */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080206e0 */ BL func_0802075c \n\
/* 080206e4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080206e6 */ LDR R0, =D_03005380 \n\
/* 080206e8 */ LDR R0, [R0] \n\
/* 080206ea */ LSLS R3, R6, 0x10 \n\
/* 080206ec */ ASRS R3, R3, 0x10 \n\
/* 080206ee */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080206f0 */ STR R2, [SP] \n\
/* 080206f2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080206f4 */ STR R2, [SP, 0x4] \n\
/* 080206f6 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 080206f8 */ STR R7, [SP, 0x8] \n\
/* 080206fa */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080206fc */ STR R2, [SP, 0xC] \n\
/* 080206fe */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020700 */ STR R2, [SP, 0x10] \n\
/* 08020702 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08020704 */ BL func_0804d160 \n\
/* 08020708 */ LDR R5, =D_030055d0 \n\
/* 0802070a */ LDR R3, [R5] \n\
/* 0802070c */ LSLS R2, R4, 0x1 \n\
/* 0802070e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08020710 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 08020712 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08020714 */ STRH R0, [R1] \n\
/* 08020716 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08020718 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 0802071a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802071c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802071e */ STRH R1, [R0] \n\
/* 08020720 */ ADDS R6, 0x35 @ Add 0x35 to R6 \n\
/* 08020722 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08020724 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08020726 */ BLS branch_080206dc \n\
/* 08020728 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0802072a */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0802072c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802072e */ STRB R1, [R0] \n\
/* 08020730 */ LDR R0, [R5] \n\
/* 08020732 */ ADDS R0, 0x55 @ Add 0x55 to R0 \n\
/* 08020734 */ STRB R1, [R0] \n\
/* 08020736 */ LDR R0, [R5] \n\
/* 08020738 */ LDR R2, =0x00000862 \n\
/* 0802073a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802073c */ STRB R7, [R0] \n\
/* 0802073e */ ADD SP, 0x14 \n\
/* 08020740 */ POP {R3-R5} \n\
/* 08020742 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020744 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08020746 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08020748 */ POP {R4-R7} \n\
/* 0802074a */ POP {R0} \n\
/* 0802074c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
