asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08002f9c \n\
/* 08002f9c */ PUSH {R4-R6, LR} \n\
/* 08002f9e */ LSLS R0, R0, 0x10 \n\
/* 08002fa0 */ LSLS R1, R1, 0x10 \n\
/* 08002fa2 */ LSRS R1, R1, 0x10 \n\
/* 08002fa4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08002fa6 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08002fa8 */ LSRS R3, R0, 0x10 \n\
/* 08002faa */ ASRS R0, R0, 0x10 \n\
/* 08002fac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002fae */ BGE branch_08002fba \n\
/* 08002fb0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002fb2 */ LSLS R0, R0, 0x10 \n\
/* 08002fb4 */ LSRS R3, R0, 0x10 \n\
/* 08002fb6 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08002fb8 */ NEGS R5, R5 @ Set R5 to -R5 \n\
 \n\
branch_08002fba: \n\
/* 08002fba */ LSLS R0, R1, 0x10 \n\
/* 08002fbc */ ASRS R0, R0, 0x10 \n\
/* 08002fbe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002fc0 */ BGE branch_08002fca \n\
/* 08002fc2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002fc4 */ LSLS R0, R0, 0x10 \n\
/* 08002fc6 */ LSRS R1, R0, 0x10 \n\
/* 08002fc8 */ NEGS R5, R5 @ Set R5 to -R5 \n\
 \n\
branch_08002fca: \n\
/* 08002fca */ LSLS R0, R3, 0x10 \n\
/* 08002fcc */ LSLS R2, R1, 0x10 \n\
/* 08002fce */ ASRS R4, R0, 0x10 \n\
/* 08002fd0 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 08002fd2 */ BGE branch_08002fe0 \n\
/* 08002fd4 */ LSLS R0, R5, 0x6 \n\
/* 08002fd6 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08002fd8 */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 08002fda */ LSRS R3, R2, 0x10 \n\
/* 08002fdc */ LSLS R0, R4, 0x10 \n\
/* 08002fde */ LSRS R1, R0, 0x10 \n\
 \n\
branch_08002fe0: \n\
/* 08002fe0 */ LDR R4, =D_0893640c \n\
/* 08002fe2 */ LSLS R0, R1, 0x10 \n\
/* 08002fe4 */ ASRS R0, R0, 0xA \n\
/* 08002fe6 */ LSLS R1, R3, 0x10 \n\
/* 08002fe8 */ ASRS R1, R1, 0x10 \n\
/* 08002fea */ BL __divsi3 \n\
/* 08002fee */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08002ff0 */ LDRB R0, [R0] \n\
/* 08002ff2 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08002ff4 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08002ff6 */ LSLS R0, R0, 0x18 \n\
/* 08002ff8 */ LSRS R0, R0, 0x18 \n\
/* 08002ffa */ POP {R4-R6} \n\
/* 08002ffc */ POP {R1} \n\
/* 08002ffe */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
