asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801fc44 \n\
/* 0801fc44 */ PUSH {R4-R6, LR} \n\
/* 0801fc46 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801fc48 */ PUSH {R6} \n\
/* 0801fc4a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801fc4c */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801fc4e */ LSLS R0, R0, 0x2 \n\
/* 0801fc50 */ BL func_08001980 \n\
/* 0801fc54 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801fc56 */ LSLS R4, R4, 0x10 \n\
/* 0801fc58 */ LSRS R4, R4, 0x10 \n\
/* 0801fc5a */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0801fc5c */ LSLS R6, R6, 0x1 \n\
/* 0801fc5e */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0801fc60 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0801fc62 */ BL func_08001980 \n\
/* 0801fc66 */ LSLS R0, R0, 0x10 \n\
/* 0801fc68 */ LSRS R0, R0, 0x10 \n\
/* 0801fc6a */ SUBS R0, 0x78 @ Subtract 0x78 from R0 \n\
/* 0801fc6c */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0801fc6e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801fc70 */ BL fast_divsi3 \n\
/* 0801fc74 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801fc76 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0801fc78 */ BL func_08001980 \n\
/* 0801fc7c */ LSLS R0, R0, 0x10 \n\
/* 0801fc7e */ LSRS R0, R0, 0x10 \n\
/* 0801fc80 */ SUBS R0, 0x50 @ Subtract 0x50 from R0 \n\
/* 0801fc82 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0801fc84 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801fc86 */ BL fast_divsi3 \n\
/* 0801fc8a */ LDR R1, =D_030055d0 \n\
/* 0801fc8c */ LSLS R5, R5, 0x3 \n\
/* 0801fc8e */ ADDS R5, 0x98 @ Add 0x98 to R5 \n\
/* 0801fc90 */ LDR R1, [R1] \n\
/* 0801fc92 */ ADDS R5, R1, R5 @ Set R5 to R1 + R5 \n\
/* 0801fc94 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801fc96 */ STRH R2, [R5] \n\
/* 0801fc98 */ STRH R0, [R5, 0x2] \n\
/* 0801fc9a */ LDR R0, [R1, 0x4] \n\
/* 0801fc9c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801fc9e */ STRH R0, [R5, 0x4] \n\
/* 0801fca0 */ POP {R3} \n\
/* 0801fca2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fca4 */ POP {R4-R6} \n\
/* 0801fca6 */ POP {R0} \n\
/* 0801fca8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
