asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080070c4 \n\
/* 080070c4 */ PUSH {R4-R7, LR} \n\
/* 080070c6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080070c8 */ PUSH {R7} \n\
/* 080070ca */ LSLS R0, R0, 0x10 \n\
/* 080070cc */ LSRS R6, R0, 0x10 \n\
/* 080070ce */ LSLS R1, R1, 0x10 \n\
/* 080070d0 */ LSRS R7, R1, 0x10 \n\
/* 080070d2 */ LDR R2, =D_03004b10 \n\
/* 080070d4 */ LDR R1, =0x854 \n\
/* 080070d6 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 080070d8 */ LDRB R1, [R0] \n\
/* 080070da */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080070dc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080070de */ LSLS R0, R0, 0x18 \n\
/* 080070e0 */ LSRS R1, R0, 0x18 \n\
/* 080070e2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080070e4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080070e6 */ BEQ branch_08007110 \n\
/* 080070e8 */ LDR R5, =D_03000ea6 \n\
/* 080070ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080070ec */ LDRSH R0, [R5, R2] \n\
/* 080070ee */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 080070f0 */ LDR R4, =D_03000ea4 \n\
/* 080070f2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080070f4 */ LDRSH R1, [R4, R2] \n\
/* 080070f6 */ BL __divsi3 \n\
/* 080070fa */ STRH R0, [R5] \n\
/* 080070fc */ B branch_08007116 \n\
\n\
.ltorg \n\
 \n\
branch_08007110: \n\
/* 08007110 */ LDR R0, =D_03000ea6 \n\
/* 08007112 */ STRH R1, [R0] \n\
/* 08007114 */ LDR R4, =D_03000ea4 \n\
 \n\
branch_08007116: \n\
/* 08007116 */ STRH R6, [R4] \n\
/* 08007118 */ LDR R0, =D_03000ea8 \n\
/* 0800711a */ STRH R7, [R0] \n\
/* 0800711c */ LDR R2, =0x854 \n\
/* 0800711e */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08007120 */ LDRB R0, [R2] \n\
/* 08007122 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08007124 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007126 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 08007128 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800712a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800712c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800712e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007130 */ STRB R0, [R2] \n\
/* 08007132 */ POP {R3} \n\
/* 08007134 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08007136 */ POP {R4-R7} \n\
/* 08007138 */ POP {R0} \n\
/* 0800713a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
