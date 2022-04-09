asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801fdc4 \n\
/* 0801fdc4 */ PUSH {R4-R7, LR} \n\
/* 0801fdc6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801fdc8 */ PUSH {R7} \n\
/* 0801fdca */ SUB SP, 0x8 \n\
/* 0801fdcc */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801fdce */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801fdd0 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0801fdd2 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 0801fdd4 */ LDR R0, =D_030055d0 \n\
/* 0801fdd6 */ LDR R0, [R0] \n\
/* 0801fdd8 */ LDR R0, [R0, 0x4] \n\
/* 0801fdda */ SUBS R7, R7, R0 @ Set R7 to R7 - R0 \n\
/* 0801fddc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801fdde */ LSLS R0, R0, 0x9 \n\
/* 0801fde0 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0801fde2 */ BL func_08007b80 \n\
/* 0801fde6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801fde8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801fdea */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0801fdec */ ASRS R5, R0, 0x8 \n\
/* 0801fdee */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801fdf0 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0801fdf2 */ ASRS R6, R0, 0x8 \n\
/* 0801fdf4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801fdf6 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0801fdf8 */ LSLS R1, R1, 0x10 \n\
/* 0801fdfa */ ASRS R1, R1, 0x10 \n\
/* 0801fdfc */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801fdfe */ ADDS R2, 0x50 @ Add 0x50 to R2 \n\
/* 0801fe00 */ LSLS R2, R2, 0x10 \n\
/* 0801fe02 */ ASRS R2, R2, 0x10 \n\
/* 0801fe04 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801fe06 */ BL func_0800fddc \n\
/* 0801fe0a */ CMP R4, 0x80 @ Compare R4 and 0x80 \n\
/* 0801fe0c */ BLE branch_0801fe34 \n\
/* 0801fe0e */ LSLS R1, R4, 0x10 \n\
/* 0801fe10 */ ASRS R1, R1, 0x10 \n\
/* 0801fe12 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801fe14 */ BL func_0800fe60 \n\
/* 0801fe18 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801fe1a */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0801fe1c */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0801fe1e */ STR R0, [SP] \n\
/* 0801fe20 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801fe22 */ STR R0, [SP, 0x4] \n\
/* 0801fe24 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801fe26 */ LDR R1, [SP, 0x20] \n\
/* 0801fe28 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801fe2a */ BL func_08010064 \n\
/* 0801fe2e */ B branch_0801fe60 \n\
\n\
.ltorg \n\
 \n\
branch_0801fe34: \n\
/* 0801fe34 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801fe36 */ LSLS R0, R0, 0xA \n\
/* 0801fe38 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0801fe3a */ BL func_08007b80 \n\
/* 0801fe3e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801fe40 */ LSLS R1, R4, 0x10 \n\
/* 0801fe42 */ ASRS R1, R1, 0x10 \n\
/* 0801fe44 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801fe46 */ BL func_0800fe60 \n\
/* 0801fe4a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801fe4c */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0801fe4e */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0801fe50 */ STR R0, [SP] \n\
/* 0801fe52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801fe54 */ STR R0, [SP, 0x4] \n\
/* 0801fe56 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801fe58 */ LDR R1, [SP, 0x24] \n\
/* 0801fe5a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801fe5c */ BL func_08010064 \n\
 \n\
branch_0801fe60: \n\
/* 0801fe60 */ ADD SP, 0x8 \n\
/* 0801fe62 */ POP {R3} \n\
/* 0801fe64 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fe66 */ POP {R4-R7} \n\
/* 0801fe68 */ POP {R0} \n\
/* 0801fe6a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
