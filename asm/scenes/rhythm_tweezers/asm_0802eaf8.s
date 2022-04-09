asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802eaf8 \n\
/* 0802eaf8 */ PUSH {R4-R6, LR} \n\
/* 0802eafa */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802eafc */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802eafe */ PUSH {R5, R6} \n\
/* 0802eb00 */ SUB SP, 0x1C \n\
/* 0802eb02 */ LDR R0, =D_030055d0 \n\
/* 0802eb04 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802eb06 */ LDR R5, [R0] \n\
/* 0802eb08 */ ADDS R4, R5, 0x4 @ Set R4 to R5 + 0x4 \n\
/* 0802eb0a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802eb0c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802eb0e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802eb10 */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 0802eb12 */ LSLS R0, R0, 0x8 \n\
/* 0802eb14 */ STRH R0, [R4, 0x6] \n\
/* 0802eb16 */ LDR R0, =D_088e87a8 \n\
/* 0802eb18 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 0802eb1a */ LSLS R1, R1, 0x7 \n\
/* 0802eb1c */ STR R1, [SP] \n\
/* 0802eb1e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802eb20 */ LSLS R1, R1, 0x1 \n\
/* 0802eb22 */ STR R1, [SP, 0x4] \n\
/* 0802eb24 */ LDR R1, =0xfffffe00 \n\
/* 0802eb26 */ STR R1, [SP, 0x8] \n\
/* 0802eb28 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802eb2a */ STR R1, [SP, 0xC] \n\
/* 0802eb2c */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0802eb2e */ STR R1, [SP, 0x10] \n\
/* 0802eb30 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802eb32 */ STR R2, [SP, 0x14] \n\
/* 0802eb34 */ STR R2, [SP, 0x18] \n\
/* 0802eb36 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0802eb38 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0802eb3a */ BL func_0800fa6c \n\
/* 0802eb3e */ STR R0, [R5, 0x4] \n\
/* 0802eb40 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0802eb42 */ LDRSH R1, [R4, R2] \n\
/* 0802eb44 */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 0802eb46 */ BL func_0800fed0 \n\
/* 0802eb4a */ LDR R0, [R5, 0x4] \n\
/* 0802eb4c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802eb4e */ BL func_0800feec \n\
/* 0802eb52 */ STRB R6, [R4, 0x4] \n\
/* 0802eb54 */ STRB R6, [R4, 0x5] \n\
/* 0802eb56 */ STRB R6, [R4, 0x10] \n\
/* 0802eb58 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0802eb5a */ LDR R0, [R1] \n\
/* 0802eb5c */ ADDS R0, 0x88 @ Add 0x88 to R0 \n\
/* 0802eb5e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802eb60 */ STRH R2, [R0] \n\
/* 0802eb62 */ ADD SP, 0x1C \n\
/* 0802eb64 */ POP {R3, R4} \n\
/* 0802eb66 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802eb68 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802eb6a */ POP {R4-R6} \n\
/* 0802eb6c */ POP {R0} \n\
/* 0802eb6e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
