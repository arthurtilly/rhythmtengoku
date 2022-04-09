asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013c04 \n\
/* 08013c04 */ PUSH {R4-R7, LR} \n\
/* 08013c06 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08013c08 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08013c0a */ PUSH {R6, R7} \n\
/* 08013c0c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08013c0e */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08013c10 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08013c12 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 08013c14 */ LDR R5, [R0] \n\
/* 08013c16 */ LDR R4, [R1] \n\
/* 08013c18 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08013c1a */ BNE branch_08013c24 \n\
/* 08013c1c */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08013c1e */ BNE branch_08013c2a \n\
 \n\
branch_08013c20: \n\
/* 08013c20 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013c22 */ B branch_08013c58 \n\
 \n\
branch_08013c24: \n\
/* 08013c24 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08013c26 */ BEQ branch_08013c2a \n\
/* 08013c28 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08013c2a: \n\
/* 08013c2a */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 08013c2c */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08013c2e */ CMP R5, 0xE @ Compare R5 and 0xE \n\
/* 08013c30 */ BHI branch_08013c20 \n\
/* 08013c32 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08013c34 */ BLT branch_08013c20 \n\
/* 08013c36 */ CMP R4, 0xB @ Compare R4 and 0xB \n\
/* 08013c38 */ BGT branch_08013c20 \n\
/* 08013c3a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08013c3c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08013c3e */ BL func_08013100 \n\
/* 08013c42 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08013c44 */ BLT branch_08013c2a \n\
/* 08013c46 */ BL func_0801314c \n\
/* 08013c4a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08013c4c */ BLE branch_08013c2a \n\
/* 08013c4e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08013c50 */ STR R5, [R0] \n\
/* 08013c52 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08013c54 */ STR R4, [R0] \n\
/* 08013c56 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08013c58: \n\
/* 08013c58 */ POP {R3, R4} \n\
/* 08013c5a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08013c5c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08013c5e */ POP {R4-R7} \n\
/* 08013c60 */ POP {R1} \n\
/* 08013c62 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
