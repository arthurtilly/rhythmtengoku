asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010ae0 \n\
/* 08010ae0 */ PUSH {R4-R6, LR} \n\
/* 08010ae2 */ SUB SP, 0xC \n\
/* 08010ae4 */ BL func_080114f4 \n\
/* 08010ae8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010aea */ BEQ branch_08010ba2 \n\
/* 08010aec */ LDR R5, =D_030046a4 \n\
/* 08010aee */ LDR R2, [R5] \n\
/* 08010af0 */ LDRB R0, [R2, 0xC] \n\
/* 08010af2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010af4 */ BEQ branch_08010ba2 \n\
/* 08010af6 */ LDRB R0, [R2, 0x1E] \n\
/* 08010af8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010afa */ BEQ branch_08010b6a \n\
/* 08010afc */ LDRB R3, [R2, 0x1F] \n\
/* 08010afe */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 08010b00 */ LDR R4, =D_03004afc \n\
/* 08010b02 */ LDRH R1, [R4] \n\
/* 08010b04 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08010b06 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08010b08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010b0a */ BEQ branch_08010b10 \n\
/* 08010b0c */ SUBS R0, R3, 0x1 @ Set R0 to R3 - 0x1 \n\
/* 08010b0e */ STRB R0, [R2, 0x1F] \n\
 \n\
branch_08010b10: \n\
/* 08010b10 */ LDRH R1, [R4] \n\
/* 08010b12 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08010b14 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08010b16 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010b18 */ BEQ branch_08010b22 \n\
/* 08010b1a */ LDR R1, [R5] \n\
/* 08010b1c */ LDRB R0, [R1, 0x1F] \n\
/* 08010b1e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08010b20 */ STRB R0, [R1, 0x1F] \n\
 \n\
branch_08010b22: \n\
/* 08010b22 */ LDR R0, [R5] \n\
/* 08010b24 */ LDRB R0, [R0, 0x1F] \n\
/* 08010b26 */ LSLS R0, R0, 0x18 \n\
/* 08010b28 */ ASRS R0, R0, 0x18 \n\
/* 08010b2a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08010b2c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08010b2e */ BL clamp_int32 \n\
/* 08010b32 */ LDR R1, [R5] \n\
/* 08010b34 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010b36 */ STRB R0, [R1, 0x1F] \n\
/* 08010b38 */ LDR R2, [R5] \n\
/* 08010b3a */ LSLS R0, R6, 0x18 \n\
/* 08010b3c */ ASRS R0, R0, 0x18 \n\
/* 08010b3e */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 08010b40 */ LDRSB R1, [R2, R1] \n\
/* 08010b42 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08010b44 */ BEQ branch_08010b6a \n\
/* 08010b46 */ LDR R0, =D_03005380 \n\
/* 08010b48 */ LDR R0, [R0] \n\
/* 08010b4a */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08010b4c */ LDRSH R1, [R2, R3] \n\
/* 08010b4e */ LDR R3, =D_089cd474 \n\
/* 08010b50 */ LDRB R2, [R2, 0x1F] \n\
/* 08010b52 */ LSLS R2, R2, 0x18 \n\
/* 08010b54 */ ASRS R2, R2, 0x18 \n\
/* 08010b56 */ LSLS R2, R2, 0x2 \n\
/* 08010b58 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08010b5a */ LDR R2, [R2] \n\
/* 08010b5c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08010b5e */ STR R3, [SP] \n\
/* 08010b60 */ STR R4, [SP, 0x4] \n\
/* 08010b62 */ STR R4, [SP, 0x8] \n\
/* 08010b64 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08010b66 */ BL func_0804d8f8 \n\
 \n\
branch_08010b6a: \n\
/* 08010b6a */ LDR R0, =D_03004afc \n\
/* 08010b6c */ LDRH R1, [R0] \n\
/* 08010b6e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08010b70 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08010b72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08010b74 */ BEQ branch_08010ba2 \n\
/* 08010b76 */ LDR R4, =D_030046a4 \n\
/* 08010b78 */ LDR R0, [R4] \n\
/* 08010b7a */ LDR R0, [R0, 0x4] \n\
/* 08010b7c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08010b7e */ BL text_printer_set_string \n\
/* 08010b82 */ LDR R0, =D_03005380 \n\
/* 08010b84 */ LDR R0, [R0] \n\
/* 08010b86 */ LDR R1, [R4] \n\
/* 08010b88 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08010b8a */ LDRSH R1, [R1, R2] \n\
/* 08010b8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010b8e */ BL func_0804d770 \n\
/* 08010b92 */ LDR R0, =s_f_cafe_send_mes_seqData \n\
/* 08010b94 */ BL play_sound \n\
/* 08010b98 */ LDR R1, [R4] \n\
/* 08010b9a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010b9c */ STRB R0, [R1, 0xC] \n\
/* 08010b9e */ BL pause_beatscript_scene \n\
 \n\
branch_08010ba2: \n\
/* 08010ba2 */ ADD SP, 0xC \n\
/* 08010ba4 */ POP {R4-R6} \n\
/* 08010ba6 */ POP {R0} \n\
/* 08010ba8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
