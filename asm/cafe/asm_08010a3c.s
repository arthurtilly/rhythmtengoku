asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010a3c \n\
/* 08010a3c */ PUSH {R4-R7, LR} \n\
/* 08010a3e */ SUB SP, 0x10 \n\
/* 08010a40 */ LDR R6, =D_030046a4 \n\
/* 08010a42 */ LDR R1, [R6] \n\
/* 08010a44 */ LDRB R0, [R1, 0xD] \n\
/* 08010a46 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010a48 */ BNE branch_08010aca \n\
/* 08010a4a */ LDR R0, [R1, 0x4] \n\
/* 08010a4c */ MOV R4, SP @ Set R4 to SP \n\
/* 08010a4e */ ADDS R4, 0xE @ Add 0xE to R4 \n\
/* 08010a50 */ ADD R1, SP, 0xC \n\
/* 08010a52 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08010a54 */ BL text_printer_get_x_y \n\
/* 08010a58 */ LDR R5, =D_03005380 \n\
/* 08010a5a */ LDR R0, [R5] \n\
/* 08010a5c */ LDR R1, [R6] \n\
/* 08010a5e */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08010a60 */ LDRSH R1, [R1, R2] \n\
/* 08010a62 */ ADD R2, SP, 0xC \n\
/* 08010a64 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08010a66 */ LDRSH R2, [R2, R3] \n\
/* 08010a68 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08010a6a */ LDRSH R3, [R4, R7] \n\
/* 08010a6c */ BL func_0804d5d4 \n\
/* 08010a70 */ LDR R0, [R5] \n\
/* 08010a72 */ LDR R1, [R6] \n\
/* 08010a74 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08010a76 */ LDRSH R1, [R1, R2] \n\
/* 08010a78 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08010a7a */ BL func_0804d770 \n\
/* 08010a7e */ LDR R2, [R6] \n\
/* 08010a80 */ LDRB R0, [R2, 0x1E] \n\
/* 08010a82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010a84 */ BEQ branch_08010aa0 \n\
/* 08010a86 */ LDR R1, =D_089cd474 \n\
/* 08010a88 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08010a8a */ LDRSB R0, [R2, R0] \n\
/* 08010a8c */ LSLS R0, R0, 0x2 \n\
/* 08010a8e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08010a90 */ LDR R3, [R0] \n\
/* 08010a92 */ B branch_08010aa2 \n\
\n\
.ltorg \n\
 \n\
branch_08010aa0: \n\
/* 08010aa0 */ LDR R3, =D_0890021c \n\
 \n\
branch_08010aa2: \n\
/* 08010aa2 */ LDR R0, =D_03005380 \n\
/* 08010aa4 */ LDR R0, [R0] \n\
/* 08010aa6 */ LDR R5, =D_030046a4 \n\
/* 08010aa8 */ LDR R1, [R5] \n\
/* 08010aaa */ MOVS R7, 0x8 @ Set R7 to 0x8 \n\
/* 08010aac */ LDRSH R1, [R1, R7] \n\
/* 08010aae */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08010ab0 */ STR R4, [SP] \n\
/* 08010ab2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010ab4 */ STR R2, [SP, 0x4] \n\
/* 08010ab6 */ STR R2, [SP, 0x8] \n\
/* 08010ab8 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08010aba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08010abc */ BL func_0804d8f8 \n\
/* 08010ac0 */ LDR R0, [R5] \n\
/* 08010ac2 */ STRB R4, [R0, 0xC] \n\
/* 08010ac4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08010ac6 */ BL pause_beatscript_scene \n\
 \n\
branch_08010aca: \n\
/* 08010aca */ ADD SP, 0x10 \n\
/* 08010acc */ POP {R4-R7} \n\
/* 08010ace */ POP {R0} \n\
/* 08010ad0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
