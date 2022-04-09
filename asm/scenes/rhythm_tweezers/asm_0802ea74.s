asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ea74 \n\
/* 0802ea74 */ PUSH {R4-R7, LR} \n\
/* 0802ea76 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802ea78 */ PUSH {R7} \n\
/* 0802ea7a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802ea7c */ LDR R7, =D_030055d0 \n\
/* 0802ea7e */ LDR R4, [R7] \n\
/* 0802ea80 */ ADDS R6, R4, 0x4 @ Set R6 to R4 + 0x4 \n\
/* 0802ea82 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ea84 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0802ea86 */ LDRB R0, [R0] \n\
/* 0802ea88 */ LSLS R0, R0, 0x4 \n\
/* 0802ea8a */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802ea8c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802ea8e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802ea90 */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 0802ea92 */ LSLS R0, R0, 0x8 \n\
/* 0802ea94 */ STRH R0, [R4, 0xC] \n\
/* 0802ea96 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0802ea98 */ BL func_08001980 \n\
/* 0802ea9c */ SUBS R0, 0xF @ Subtract 0xF from R0 \n\
/* 0802ea9e */ STRH R0, [R4, 0xE] \n\
/* 0802eaa0 */ LDR R0, [R4] \n\
/* 0802eaa2 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0802eaa4 */ BL func_0800fe0c \n\
/* 0802eaa8 */ LDR R0, [R4] \n\
/* 0802eaaa */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802eaac */ LDRSH R1, [R6, R2] \n\
/* 0802eaae */ BL func_0800febc \n\
/* 0802eab2 */ LDR R0, [R4] \n\
/* 0802eab4 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802eab6 */ LDRSH R1, [R4, R2] \n\
/* 0802eab8 */ BL func_0800fe94 \n\
/* 0802eabc */ LDR R0, [R4] \n\
/* 0802eabe */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802eac0 */ BL func_08010040 \n\
/* 0802eac4 */ STR R5, [R4, 0x4] \n\
/* 0802eac6 */ STR R5, [R4, 0x8] \n\
/* 0802eac8 */ LDR R0, [R4] \n\
/* 0802eaca */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802eacc */ BL func_0800ffc0 \n\
/* 0802ead0 */ LDR R1, [R7] \n\
/* 0802ead2 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0802ead4 */ LDRB R0, [R1] \n\
/* 0802ead6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802ead8 */ STRB R0, [R1] \n\
/* 0802eada */ LSLS R0, R0, 0x18 \n\
/* 0802eadc */ LSRS R0, R0, 0x18 \n\
/* 0802eade */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802eae0 */ BLS branch_0802eaea \n\
/* 0802eae2 */ LDR R0, [R7] \n\
/* 0802eae4 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0802eae6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802eae8 */ STRB R1, [R0] \n\
 \n\
branch_0802eaea: \n\
/* 0802eaea */ POP {R3} \n\
/* 0802eaec */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802eaee */ POP {R4-R7} \n\
/* 0802eaf0 */ POP {R0} \n\
/* 0802eaf2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
