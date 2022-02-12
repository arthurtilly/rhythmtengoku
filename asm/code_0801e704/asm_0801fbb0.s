asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801fbb0 \n\
/* 0801fbb0 */ PUSH {R4-R6, LR} \n\
/* 0801fbb2 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801fbb4 */ PUSH {R6} \n\
/* 0801fbb6 */ SUB SP, 0x14 \n\
/* 0801fbb8 */ LDR R5, =D_030055d0 \n\
/* 0801fbba */ LDR R0, [R5] \n\
/* 0801fbbc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801fbbe */ ADDS R1, 0x72 @ Add 0x72 to R1 \n\
/* 0801fbc0 */ LDRB R0, [R1] \n\
/* 0801fbc2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801fbc4 */ BEQ branch_0801fc16 \n\
/* 0801fbc6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801fbc8 */ STRB R4, [R1] \n\
/* 0801fbca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801fbcc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801fbce */ BL func_08017338 \n\
/* 0801fbd2 */ LDR R6, =D_03005380 \n\
/* 0801fbd4 */ LDR R0, [R6] \n\
/* 0801fbd6 */ LDR R1, [R5] \n\
/* 0801fbd8 */ ADDS R1, 0x70 @ Add 0x70 to R1 \n\
/* 0801fbda */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fbdc */ LDRSH R1, [R1, R2] \n\
/* 0801fbde */ LDR R2, =D_088a1158 \n\
/* 0801fbe0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801fbe2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fbe4 */ STR R3, [SP] \n\
/* 0801fbe6 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 0801fbe8 */ STR R5, [SP, 0x4] \n\
/* 0801fbea */ STR R4, [SP, 0x8] \n\
/* 0801fbec */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801fbee */ BL func_0804d8f8 \n\
/* 0801fbf2 */ LDR R0, [R6] \n\
/* 0801fbf4 */ LDR R1, =D_088a0df0 \n\
/* 0801fbf6 */ MOVS R2, 0x3A @ Set R2 to 0x3A \n\
/* 0801fbf8 */ STR R2, [SP] \n\
/* 0801fbfa */ LDR R2, =0x00008792 \n\
/* 0801fbfc */ STR R2, [SP, 0x4] \n\
/* 0801fbfe */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801fc00 */ STR R2, [SP, 0x8] \n\
/* 0801fc02 */ STR R5, [SP, 0xC] \n\
/* 0801fc04 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801fc06 */ STR R2, [SP, 0x10] \n\
/* 0801fc08 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fc0a */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 0801fc0c */ BL func_0804d160 \n\
/* 0801fc10 */ LDR R0, =D_08a9c4b4 \n\
/* 0801fc12 */ BL func_08002634 \n\
 \n\
branch_0801fc16: \n\
/* 0801fc16 */ ADD SP, 0x14 \n\
/* 0801fc18 */ POP {R3} \n\
/* 0801fc1a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fc1c */ POP {R4-R6} \n\
/* 0801fc1e */ POP {R0} \n\
/* 0801fc20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
