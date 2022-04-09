asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801fb14 \n\
/* 0801fb14 */ PUSH {R4-R7, LR} \n\
/* 0801fb16 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801fb18 */ PUSH {R7} \n\
/* 0801fb1a */ SUB SP, 0x14 \n\
/* 0801fb1c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801fb1e */ LDR R0, =D_03005380 \n\
/* 0801fb20 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801fb22 */ LDR R0, [R0] \n\
/* 0801fb24 */ LDR R1, =D_088a0fb8 \n\
/* 0801fb26 */ MOVS R2, 0x5C @ Set R2 to 0x5C \n\
/* 0801fb28 */ STR R2, [SP] \n\
/* 0801fb2a */ LDR R7, =0x00008792 \n\
/* 0801fb2c */ STR R7, [SP, 0x4] \n\
/* 0801fb2e */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0801fb30 */ STR R6, [SP, 0x8] \n\
/* 0801fb32 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fb34 */ STR R2, [SP, 0xC] \n\
/* 0801fb36 */ MOVS R5, 0x3 @ Set R5 to 0x3 \n\
/* 0801fb38 */ STR R5, [SP, 0x10] \n\
/* 0801fb3a */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801fb3c */ BL func_0804d160 \n\
/* 0801fb40 */ ADDS R4, 0x26 @ Add 0x26 to R4 \n\
/* 0801fb42 */ LDRB R3, [R4] \n\
/* 0801fb44 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801fb46 */ BNE branch_0801fb82 \n\
/* 0801fb48 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801fb4a */ LDR R0, [R1] \n\
/* 0801fb4c */ LDR R1, =D_088a0d80 \n\
/* 0801fb4e */ MOVS R2, 0x69 @ Set R2 to 0x69 \n\
/* 0801fb50 */ STR R2, [SP] \n\
/* 0801fb52 */ STR R7, [SP, 0x4] \n\
/* 0801fb54 */ STR R6, [SP, 0x8] \n\
/* 0801fb56 */ STR R3, [SP, 0xC] \n\
/* 0801fb58 */ STR R5, [SP, 0x10] \n\
/* 0801fb5a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fb5c */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 0801fb5e */ BL func_0804d160 \n\
/* 0801fb62 */ BL func_0800c3b8 \n\
/* 0801fb66 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801fb68 */ LSLS R4, R4, 0x10 \n\
/* 0801fb6a */ LSRS R4, R4, 0x10 \n\
/* 0801fb6c */ LDR R5, =func_08002634 \n\
/* 0801fb6e */ LDR R6, =s_ghost_warai_seqData \n\
/* 0801fb70 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0801fb72 */ BL func_0800c3a4 \n\
/* 0801fb76 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801fb78 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801fb7a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801fb7c */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801fb7e */ BL func_0800856c \n\
 \n\
branch_0801fb82: \n\
/* 0801fb82 */ LDR R0, =s_ghost_dash_seqData \n\
/* 0801fb84 */ BL func_08002634 \n\
/* 0801fb88 */ ADD SP, 0x14 \n\
/* 0801fb8a */ POP {R3} \n\
/* 0801fb8c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fb8e */ POP {R4-R7} \n\
/* 0801fb90 */ POP {R0} \n\
/* 0801fb92 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
