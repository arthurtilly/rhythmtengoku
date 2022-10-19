asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026d68 \n\
/* 08026d68 */ PUSH {R4-R7, LR} \n\
/* 08026d6a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08026d6c */ PUSH {R7} \n\
/* 08026d6e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08026d70 */ LDR R0, =D_030055d0 \n\
/* 08026d72 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08026d74 */ LDR R5, =D_03005380 \n\
/* 08026d76 */ MOVS R6, 0xDD @ Set R6 to 0xDD \n\
/* 08026d78 */ LSLS R6, R6, 0x2 \n\
 \n\
branch_08026d7a: \n\
/* 08026d7a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08026d7c */ LDR R0, [R1] \n\
/* 08026d7e */ ADDS R4, R0, R6 @ Set R4 to R0 + R6 \n\
/* 08026d80 */ LDRB R0, [R4, 0xE] \n\
/* 08026d82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026d84 */ BNE branch_08026db6 \n\
/* 08026d86 */ LDR R0, [R5] \n\
/* 08026d88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026d8a */ LDRSH R1, [R4, R2] \n\
/* 08026d8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026d8e */ BL func_0804cebc \n\
/* 08026d92 */ LDR R0, [R5] \n\
/* 08026d94 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08026d96 */ LDRSH R1, [R4, R2] \n\
/* 08026d98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026d9a */ BL func_0804cebc \n\
/* 08026d9e */ LDR R0, [R5] \n\
/* 08026da0 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08026da2 */ LDRSH R1, [R4, R2] \n\
/* 08026da4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026da6 */ BL func_0804cebc \n\
/* 08026daa */ LDR R0, [R5] \n\
/* 08026dac */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08026dae */ LDRSH R1, [R4, R2] \n\
/* 08026db0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026db2 */ BL func_0804cebc \n\
 \n\
branch_08026db6: \n\
/* 08026db6 */ ADDS R6, 0x14 @ Add 0x14 to R6 \n\
/* 08026db8 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08026dba */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 08026dbc */ BLS branch_08026d7a \n\
/* 08026dbe */ LDR R0, =D_030055d0 \n\
/* 08026dc0 */ LDR R0, [R0] \n\
/* 08026dc2 */ LDR R1, =0x000013d4 \n\
/* 08026dc4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026dc6 */ LDR R0, [R0] \n\
/* 08026dc8 */ ASRS R0, R0, 0x8 \n\
/* 08026dca */ BL func_08025bec \n\
/* 08026dce */ BL func_080258c0 \n\
/* 08026dd2 */ POP {R3} \n\
/* 08026dd4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08026dd6 */ POP {R4-R7} \n\
/* 08026dd8 */ POP {R0} \n\
/* 08026dda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
