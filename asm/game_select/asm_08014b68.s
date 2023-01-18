asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014b68 \n\
/* 08014b68 */ PUSH {R4-R7, LR} \n\
/* 08014b6a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08014b6c */ PUSH {R7} \n\
/* 08014b6e */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08014b70 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014b72 */ MOVS R2, 0x63 @ Set R2 to 0x63 \n\
/* 08014b74 */ BL clamp_int32 \n\
/* 08014b78 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08014b7a */ LDR R6, =D_03005380 \n\
/* 08014b7c */ LDR R0, [R6] \n\
/* 08014b7e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08014b80 */ LDR R5, =D_030046a4 \n\
/* 08014b82 */ LDR R0, [R5] \n\
/* 08014b84 */ LDR R1, =0x4ea \n\
/* 08014b86 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014b88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014b8a */ LDRSH R4, [R0, R2] \n\
/* 08014b8c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08014b8e */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08014b90 */ BL __umodsi3 \n\
/* 08014b94 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08014b96 */ LSLS R2, R2, 0x18 \n\
/* 08014b98 */ ASRS R2, R2, 0x18 \n\
/* 08014b9a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08014b9c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08014b9e */ BL func_0804cebc \n\
/* 08014ba2 */ LDR R6, [R6] \n\
/* 08014ba4 */ LDR R0, [R5] \n\
/* 08014ba6 */ LDR R1, =0x4ec \n\
/* 08014ba8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014baa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014bac */ LDRSH R4, [R0, R2] \n\
/* 08014bae */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 08014bb0 */ BLS branch_08014bd0 \n\
/* 08014bb2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08014bb4 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08014bb6 */ BL __udivsi3 \n\
/* 08014bba */ LSLS R0, R0, 0x18 \n\
/* 08014bbc */ ASRS R2, R0, 0x18 \n\
/* 08014bbe */ B branch_08014bd2 \n\
\n\
.ltorg \n\
 \n\
branch_08014bd0: \n\
/* 08014bd0 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
 \n\
branch_08014bd2: \n\
/* 08014bd2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08014bd4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08014bd6 */ BL func_0804cebc \n\
/* 08014bda */ LDR R0, =D_03005380 \n\
/* 08014bdc */ LDR R3, [R0] \n\
/* 08014bde */ LDR R0, =D_030046a4 \n\
/* 08014be0 */ LDR R0, [R0] \n\
/* 08014be2 */ LDR R1, =0x4ea \n\
/* 08014be4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014be6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014be8 */ LDRSH R1, [R0, R2] \n\
/* 08014bea */ MOVS R2, 0xA8 @ Set R2 to 0xA8 \n\
/* 08014bec */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 08014bee */ BHI branch_08014bf2 \n\
/* 08014bf0 */ MOVS R2, 0xA4 @ Set R2 to 0xA4 \n\
 \n\
branch_08014bf2: \n\
/* 08014bf2 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08014bf4 */ BL func_0804d614 \n\
/* 08014bf8 */ POP {R3} \n\
/* 08014bfa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08014bfc */ POP {R4-R7} \n\
/* 08014bfe */ POP {R0} \n\
/* 08014c00 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
