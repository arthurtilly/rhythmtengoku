asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045b00 \n\
/* 08045b00 */ PUSH {R4-R6, LR} \n\
/* 08045b02 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08045b04 */ PUSH {R6} \n\
/* 08045b06 */ SUB SP, 0x14 \n\
/* 08045b08 */ LDR R6, =D_030055d0 \n\
/* 08045b0a */ LDR R1, [R6] \n\
/* 08045b0c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045b0e */ STRB R0, [R1] \n\
/* 08045b10 */ BL func_08045ad0 \n\
/* 08045b14 */ BL func_0800e0ec \n\
/* 08045b18 */ STR R4, [SP] \n\
/* 08045b1a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045b1c */ STR R0, [SP, 0x4] \n\
/* 08045b1e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045b20 */ STR R0, [SP, 0x8] \n\
/* 08045b22 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045b24 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045b26 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045b28 */ BL func_0800e0a0 \n\
/* 08045b2c */ LDR R0, =D_03005380 \n\
/* 08045b2e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08045b30 */ LDR R0, [R0] \n\
/* 08045b32 */ LDR R1, =D_088af5a0 \n\
/* 08045b34 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08045b36 */ STR R2, [SP] \n\
/* 08045b38 */ STR R4, [SP, 0x4] \n\
/* 08045b3a */ STR R4, [SP, 0x8] \n\
/* 08045b3c */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 08045b3e */ STR R5, [SP, 0xC] \n\
/* 08045b40 */ STR R4, [SP, 0x10] \n\
/* 08045b42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045b44 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08045b46 */ BL func_0804d160 \n\
/* 08045b4a */ LDR R1, [R6] \n\
/* 08045b4c */ STRH R0, [R1, 0x2] \n\
/* 08045b4e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08045b50 */ LDR R0, [R1] \n\
/* 08045b52 */ LDR R1, =D_088af510 \n\
/* 08045b54 */ MOVS R2, 0x65 @ Set R2 to 0x65 \n\
/* 08045b56 */ STR R2, [SP] \n\
/* 08045b58 */ STR R4, [SP, 0x4] \n\
/* 08045b5a */ STR R4, [SP, 0x8] \n\
/* 08045b5c */ STR R5, [SP, 0xC] \n\
/* 08045b5e */ STR R4, [SP, 0x10] \n\
/* 08045b60 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045b62 */ MOVS R3, 0x77 @ Set R3 to 0x77 \n\
/* 08045b64 */ BL func_0804d160 \n\
/* 08045b68 */ LDR R1, [R6] \n\
/* 08045b6a */ STRH R0, [R1, 0x4] \n\
/* 08045b6c */ ADD SP, 0x14 \n\
/* 08045b6e */ POP {R3} \n\
/* 08045b70 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08045b72 */ POP {R4-R6} \n\
/* 08045b74 */ POP {R0} \n\
/* 08045b76 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
