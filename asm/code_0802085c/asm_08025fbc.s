asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025fbc \n\
/* 08025fbc */ PUSH {R4-R6, LR} \n\
/* 08025fbe */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08025fc0 */ PUSH {R6} \n\
/* 08025fc2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08025fc4 */ LDR R0, =D_030055d0 \n\
/* 08025fc6 */ LDR R0, [R0] \n\
/* 08025fc8 */ LDRB R0, [R0] \n\
/* 08025fca */ LSLS R4, R0, 0x1 \n\
/* 08025fcc */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025fce */ LSLS R4, R4, 0x2 \n\
/* 08025fd0 */ LSLS R1, R1, 0x2 \n\
/* 08025fd2 */ LDR R0, =D_089e0ab0 \n\
/* 08025fd4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025fd6 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08025fd8 */ LDR R6, =D_03005380 \n\
/* 08025fda */ LDR R0, [R6] \n\
/* 08025fdc */ LSLS R5, R5, 0x10 \n\
/* 08025fde */ ASRS R5, R5, 0x10 \n\
/* 08025fe0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08025fe2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025fe4 */ BL func_0804ddb0 \n\
/* 08025fe8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08025fea */ LDR R0, [R6] \n\
/* 08025fec */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08025fee */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08025ff0 */ BL func_0804ddb0 \n\
/* 08025ff4 */ LDR R1, [R6] \n\
/* 08025ff6 */ LDRH R2, [R4] \n\
/* 08025ff8 */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08025ffa */ LSLS R2, R2, 0x10 \n\
/* 08025ffc */ ASRS R2, R2, 0x10 \n\
/* 08025ffe */ LDRH R3, [R4, 0x2] \n\
/* 08026000 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08026002 */ LSLS R3, R3, 0x10 \n\
/* 08026004 */ ASRS R3, R3, 0x10 \n\
/* 08026006 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08026008 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802600a */ BL func_0804d5d4 \n\
/* 0802600e */ POP {R3} \n\
/* 08026010 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08026012 */ POP {R4-R6} \n\
/* 08026014 */ POP {R0} \n\
/* 08026016 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
