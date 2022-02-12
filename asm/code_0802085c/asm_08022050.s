asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08022050 \n\
/* 08022050 */ PUSH {R4-R6, LR} \n\
/* 08022052 */ SUB SP, 0x14 \n\
/* 08022054 */ LDR R5, =D_030055d0 \n\
/* 08022056 */ LDR R0, [R5] \n\
/* 08022058 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802205a */ STRB R4, [R0, 0x16] \n\
/* 0802205c */ LDR R6, =D_03005380 \n\
/* 0802205e */ LDR R0, [R6] \n\
/* 08022060 */ LDR R1, =D_088acd1c \n\
/* 08022062 */ LDR R2, [R5] \n\
/* 08022064 */ LDRB R2, [R2, 0x16] \n\
/* 08022066 */ LSLS R2, R2, 0x18 \n\
/* 08022068 */ ASRS R2, R2, 0x18 \n\
/* 0802206a */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0802206c */ STR R3, [SP] \n\
/* 0802206e */ LDR R3, =0x000047f6 \n\
/* 08022070 */ STR R3, [SP, 0x4] \n\
/* 08022072 */ STR R4, [SP, 0x8] \n\
/* 08022074 */ STR R4, [SP, 0xC] \n\
/* 08022076 */ STR R4, [SP, 0x10] \n\
/* 08022078 */ MOVS R3, 0x24 @ Set R3 to 0x24 \n\
/* 0802207a */ BL func_0804d160 \n\
/* 0802207e */ LDR R1, [R5] \n\
/* 08022080 */ STRH R0, [R1, 0x14] \n\
/* 08022082 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08022084 */ STRB R0, [R1, 0x17] \n\
/* 08022086 */ LDR R1, [R5] \n\
/* 08022088 */ LDRB R0, [R1] \n\
/* 0802208a */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802208c */ BNE branch_0802209e \n\
/* 0802208e */ LDR R0, [R6] \n\
/* 08022090 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08022092 */ LDRSH R1, [R1, R2] \n\
/* 08022094 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022096 */ BL func_0804d770 \n\
/* 0802209a */ LDR R0, [R5] \n\
/* 0802209c */ STRB R4, [R0, 0x17] \n\
 \n\
branch_0802209e: \n\
/* 0802209e */ LDR R0, [R5] \n\
/* 080220a0 */ STRB R4, [R0, 0x18] \n\
/* 080220a2 */ LDR R1, [R5] \n\
/* 080220a4 */ LDR R0, =D_089df37c \n\
/* 080220a6 */ STR R0, [R1, 0x1C] \n\
/* 080220a8 */ ADD SP, 0x14 \n\
/* 080220aa */ POP {R4-R6} \n\
/* 080220ac */ POP {R0} \n\
/* 080220ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
