asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b778 \n\
/* 0800b778 */ PUSH {R4-R7, LR} \n\
/* 0800b77a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800b77c */ PUSH {R7} \n\
/* 0800b77e */ LDR R7, =D_030053c0 \n\
/* 0800b780 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0800b782 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b784 */ LDRB R2, [R7] \n\
/* 0800b786 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0800b788 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800b78a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800b78c */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800b78e */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0800b790 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800b792 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800b794 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0800b796 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800b798 */ LDRB R2, [R7, 0x1] \n\
/* 0800b79a */ ADDS R0, 0x1F @ Add 0x1F to R0 \n\
/* 0800b79c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800b79e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800b7a0 */ STRB R0, [R7, 0x1] \n\
/* 0800b7a2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800b7a4 */ STR R5, [R7, 0x4] \n\
/* 0800b7a6 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0800b7a8 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800b7aa */ SUBS R0, 0xC0 @ Subtract 0xC0 from R0 \n\
/* 0800b7ac */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800b7ae */ STRB R1, [R7] \n\
/* 0800b7b0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800b7b2 */ STRB R0, [R7, 0x1C] \n\
/* 0800b7b4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800b7b6 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0800b7b8 */ STRH R0, [R7, 0xA] \n\
/* 0800b7ba */ STRH R0, [R7, 0x8] \n\
/* 0800b7bc */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0800b7be */ LSLS R4, R4, 0x1 \n\
/* 0800b7c0 */ STRH R4, [R7, 0xE] \n\
/* 0800b7c2 */ BL func_0800bdf8 \n\
/* 0800b7c6 */ STRH R5, [R7, 0x20] \n\
/* 0800b7c8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800b7ca */ BL func_0800c088 \n\
/* 0800b7ce */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 0800b7d0 */ LSLS R1, R1, 0x1 \n\
/* 0800b7d2 */ ADDS R0, R7, R1 @ Set R0 to R7 + R1 \n\
/* 0800b7d4 */ STRH R4, [R0] \n\
/* 0800b7d6 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800b7d8 */ ADDS R0, R7, R1 @ Set R0 to R7 + R1 \n\
/* 0800b7da */ STRH R4, [R0] \n\
/* 0800b7dc */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800b7de */ ADDS R0, R7, R1 @ Set R0 to R7 + R1 \n\
/* 0800b7e0 */ STRH R5, [R0] \n\
/* 0800b7e2 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0800b7e4 */ ADDS R0, R7, R1 @ Set R0 to R7 + R1 \n\
/* 0800b7e6 */ STRB R6, [R0] \n\
/* 0800b7e8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800b7ea */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0800b7ec */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800b7ee */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
 \n\
branch_0800b7f0: \n\
/* 0800b7f0 */ LDRB R1, [R2] \n\
/* 0800b7f2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b7f4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800b7f6 */ STRB R0, [R2] \n\
/* 0800b7f8 */ ADDS R2, 0x9C @ Add 0x9C to R2 \n\
/* 0800b7fa */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0800b7fc */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 0800b7fe */ BLS branch_0800b7f0 \n\
/* 0800b800 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800b802 */ BL func_0800e948 \n\
/* 0800b806 */ BL func_0800eb0c \n\
/* 0800b80a */ BL func_0800ec20 \n\
/* 0800b80e */ LDR R2, =D_030053c0 \n\
/* 0800b810 */ LDRB R0, [R2, 0x2] \n\
/* 0800b812 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800b814 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800b816 */ STRB R0, [R2, 0x2] \n\
/* 0800b818 */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 0800b81a */ LSLS R1, R1, 0x1 \n\
/* 0800b81c */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0800b81e */ STR R4, [R0] \n\
/* 0800b820 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0800b822 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0800b824 */ STR R4, [R0] \n\
/* 0800b826 */ POP {R3} \n\
/* 0800b828 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800b82a */ POP {R4-R7} \n\
/* 0800b82c */ POP {R0} \n\
/* 0800b82e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
