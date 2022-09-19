asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e100 \n\
/* 0801e100 */ PUSH {R4-R7, LR} \n\
/* 0801e102 */ LDR R1, =D_089ddbe8 \n\
/* 0801e104 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e106 */ LDR R0, [R1] \n\
/* 0801e108 */ LDR R7, =D_03001560 \n\
/* 0801e10a */ LDR R3, =D_03001561 \n\
/* 0801e10c */ MOV R12, R3 @ Set R12 to R3 \n\
/* 0801e10e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e110 */ BEQ branch_0801e146 \n\
/* 0801e112 */ LDR R4, =D_089dd47c \n\
/* 0801e114 */ ADDS R5, R7, 0x0 @ Set R5 to R7 + 0x0 \n\
/* 0801e116 */ MOV R6, R12 @ Set R6 to R12 \n\
/* 0801e118 */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
 \n\
branch_0801e11a: \n\
/* 0801e11a */ LDR R0, [R1] \n\
/* 0801e11c */ CMP R0, R4 @ Check R0 - R4 \n\
/* 0801e11e */ BNE branch_0801e13c \n\
/* 0801e120 */ LSRS R0, R2, 0x3 \n\
/* 0801e122 */ STRB R0, [R5] \n\
/* 0801e124 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0801e126 */ STRB R2, [R6] \n\
/* 0801e128 */ B branch_0801e14e \n\
\n\
.ltorg \n\
 \n\
branch_0801e13c: \n\
/* 0801e13c */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 0801e13e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801e140 */ LDR R0, [R1] \n\
/* 0801e142 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e144 */ BNE branch_0801e11a \n\
 \n\
branch_0801e146: \n\
/* 0801e146 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e148 */ STRB R0, [R7] \n\
/* 0801e14a */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0801e14c */ STRB R0, [R1] \n\
 \n\
branch_0801e14e: \n\
/* 0801e14e */ POP {R4-R7} \n\
/* 0801e150 */ POP {R0} \n\
/* 0801e152 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
