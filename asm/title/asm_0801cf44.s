asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cf44 \n\
/* 0801cf44 */ PUSH {R4, R5, LR} \n\
/* 0801cf46 */ LDR R5, =D_030046a4 \n\
/* 0801cf48 */ LDR R1, [R5] \n\
/* 0801cf4a */ LDRB R0, [R1, 0x10] \n\
/* 0801cf4c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801cf4e */ BNE branch_0801cf82 \n\
/* 0801cf50 */ LDR R4, =D_03005380 \n\
/* 0801cf52 */ LDR R0, [R4] \n\
/* 0801cf54 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801cf56 */ LDRSH R1, [R1, R2] \n\
/* 0801cf58 */ BL func_0804d6cc \n\
/* 0801cf5c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801cf5e */ LSLS R2, R2, 0x18 \n\
/* 0801cf60 */ LDR R0, [R4] \n\
/* 0801cf62 */ LDR R1, [R5] \n\
/* 0801cf64 */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 0801cf66 */ LDRSH R1, [R1, R3] \n\
/* 0801cf68 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0801cf6a */ LSLS R3, R3, 0x11 \n\
/* 0801cf6c */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0801cf6e */ ASRS R2, R2, 0x18 \n\
/* 0801cf70 */ BL func_0804cebc \n\
/* 0801cf74 */ LDR R0, [R4] \n\
/* 0801cf76 */ LDR R1, [R5] \n\
/* 0801cf78 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801cf7a */ LDRSH R1, [R1, R2] \n\
/* 0801cf7c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801cf7e */ BL func_0804d770 \n\
 \n\
branch_0801cf82: \n\
/* 0801cf82 */ LDR R0, =D_03005380 \n\
/* 0801cf84 */ LDR R0, [R0] \n\
/* 0801cf86 */ LDR R1, [R5] \n\
/* 0801cf88 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0801cf8a */ LDRSH R1, [R1, R3] \n\
/* 0801cf8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cf8e */ BL func_0804cebc \n\
/* 0801cf92 */ BL func_0801ccd0 \n\
/* 0801cf96 */ POP {R4, R5} \n\
/* 0801cf98 */ POP {R0} \n\
/* 0801cf9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
