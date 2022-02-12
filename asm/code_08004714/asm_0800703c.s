asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800703c \n\
/* 0800703c */ PUSH {R4-R7, LR} \n\
/* 0800703e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08007040 */ PUSH {R7} \n\
/* 08007042 */ LSLS R0, R0, 0x10 \n\
/* 08007044 */ LSRS R6, R0, 0x10 \n\
/* 08007046 */ LSLS R1, R1, 0x10 \n\
/* 08007048 */ LSRS R7, R1, 0x10 \n\
/* 0800704a */ LDR R2, =D_03004b10 \n\
/* 0800704c */ LDR R1, =0x854 \n\
/* 0800704e */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08007050 */ LDRB R1, [R0] \n\
/* 08007052 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08007054 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007056 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08007058 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800705a */ BEQ branch_08007084 \n\
/* 0800705c */ LDR R5, =D_03000ea6 \n\
/* 0800705e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007060 */ LDRSH R0, [R5, R2] \n\
/* 08007062 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08007064 */ LDR R4, =D_03000ea4 \n\
/* 08007066 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007068 */ LDRSH R1, [R4, R2] \n\
/* 0800706a */ BL __divsi3 \n\
/* 0800706e */ STRH R0, [R5] \n\
/* 08007070 */ B branch_0800708a \n\
\n\
.ltorg \n\
 \n\
branch_08007084: \n\
/* 08007084 */ LDR R0, =D_03000ea6 \n\
/* 08007086 */ STRH R6, [R0] \n\
/* 08007088 */ LDR R4, =D_03000ea4 \n\
 \n\
branch_0800708a: \n\
/* 0800708a */ STRH R6, [R4] \n\
/* 0800708c */ LDR R0, =D_03000ea8 \n\
/* 0800708e */ STRH R7, [R0] \n\
/* 08007090 */ LDR R2, =0x854 \n\
/* 08007092 */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08007094 */ LDRB R1, [R2] \n\
/* 08007096 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08007098 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800709a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800709c */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0800709e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080070a0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080070a2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080070a4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080070a6 */ STRB R0, [R2] \n\
/* 080070a8 */ POP {R3} \n\
/* 080070aa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080070ac */ POP {R4-R7} \n\
/* 080070ae */ POP {R0} \n\
/* 080070b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
