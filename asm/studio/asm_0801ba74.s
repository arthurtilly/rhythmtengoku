asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ba74 \n\
/* 0801ba74 */ PUSH {R4-R6, LR} \n\
/* 0801ba76 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801ba78 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801ba7a */ PUSH {R5, R6} \n\
/* 0801ba7c */ SUB SP, 0x3C \n\
/* 0801ba7e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801ba80 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801ba82 */ LDR R0, =D_030046a4 \n\
/* 0801ba84 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801ba86 */ LDR R0, [R0] \n\
/* 0801ba88 */ MOVS R1, 0xDD @ Set R1 to 0xDD \n\
/* 0801ba8a */ LSLS R1, R1, 0x2 \n\
/* 0801ba8c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ba8e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801ba90 */ STRB R5, [R0] \n\
/* 0801ba92 */ BL get_current_mem_id \n\
/* 0801ba96 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801ba98 */ LSLS R4, R4, 0x10 \n\
/* 0801ba9a */ LSRS R4, R4, 0x10 \n\
/* 0801ba9c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801ba9e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801baa0 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801baa2 */ BL clamp_int32 \n\
/* 0801baa6 */ STR R6, [SP] \n\
/* 0801baa8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801baaa */ STR R1, [SP, 0x4] \n\
/* 0801baac */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801baae */ STR R1, [SP, 0x8] \n\
/* 0801bab0 */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 0801bab2 */ LSLS R1, R1, 0x1 \n\
/* 0801bab4 */ STR R1, [SP, 0xC] \n\
/* 0801bab6 */ MOVS R1, 0x2C @ Set R1 to 0x2C \n\
/* 0801bab8 */ STR R1, [SP, 0x10] \n\
/* 0801baba */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801babc */ LSLS R1, R1, 0x8 \n\
/* 0801babe */ STR R1, [SP, 0x14] \n\
/* 0801bac0 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801bac2 */ STR R1, [SP, 0x18] \n\
/* 0801bac4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801bac6 */ STR R2, [SP, 0x1C] \n\
/* 0801bac8 */ LDR R1, =D_089d8444 \n\
/* 0801baca */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 0801bacc */ LDRB R1, [R5] \n\
/* 0801bace */ STR R1, [SP, 0x20] \n\
/* 0801bad0 */ LDR R1, =anim_studio_selection_option \n\
/* 0801bad2 */ STR R1, [SP, 0x24] \n\
/* 0801bad4 */ STR R6, [SP, 0x28] \n\
/* 0801bad6 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801bad8 */ STR R1, [SP, 0x2C] \n\
/* 0801bada */ STR R0, [SP, 0x30] \n\
/* 0801badc */ LDR R0, =func_0801b9ec \n\
/* 0801bade */ STR R0, [SP, 0x34] \n\
/* 0801bae0 */ STR R6, [SP, 0x38] \n\
/* 0801bae2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801bae4 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801bae6 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0801bae8 */ BL func_0800aeb4 \n\
/* 0801baec */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801baee */ LDR R1, [R2] \n\
/* 0801baf0 */ MOVS R2, 0xDC @ Set R2 to 0xDC \n\
/* 0801baf2 */ LSLS R2, R2, 0x2 \n\
/* 0801baf4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801baf6 */ STR R0, [R1] \n\
/* 0801baf8 */ LDR R1, =func_0801ba60 \n\
/* 0801bafa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801bafc */ BL func_0800b30c \n\
/* 0801bb00 */ ADD SP, 0x3C \n\
/* 0801bb02 */ POP {R3, R4} \n\
/* 0801bb04 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801bb06 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801bb08 */ POP {R4-R6} \n\
/* 0801bb0a */ POP {R0} \n\
/* 0801bb0c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
