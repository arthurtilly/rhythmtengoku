asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b138 \n\
/* 0801b138 */ PUSH {R4-R6, LR} \n\
/* 0801b13a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801b13c */ PUSH {R6} \n\
/* 0801b13e */ SUB SP, 0x3C \n\
/* 0801b140 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801b142 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0801b144 */ LDR R6, =D_030046a4 \n\
/* 0801b146 */ LDR R1, [R6] \n\
/* 0801b148 */ MOVS R2, 0xD9 @ Set R2 to 0xD9 \n\
/* 0801b14a */ LSLS R2, R2, 0x2 \n\
/* 0801b14c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b14e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801b150 */ STRB R0, [R1] \n\
/* 0801b152 */ BL get_current_mem_id \n\
/* 0801b156 */ LSLS R0, R0, 0x10 \n\
/* 0801b158 */ LSRS R0, R0, 0x10 \n\
/* 0801b15a */ STR R4, [SP] \n\
/* 0801b15c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801b15e */ STR R1, [SP, 0x4] \n\
/* 0801b160 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801b162 */ STR R1, [SP, 0x8] \n\
/* 0801b164 */ MOVS R1, 0x76 @ Set R1 to 0x76 \n\
/* 0801b166 */ STR R1, [SP, 0xC] \n\
/* 0801b168 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801b16a */ STR R2, [SP, 0x10] \n\
/* 0801b16c */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801b16e */ LSLS R1, R1, 0x8 \n\
/* 0801b170 */ STR R1, [SP, 0x14] \n\
/* 0801b172 */ STR R2, [SP, 0x18] \n\
/* 0801b174 */ STR R5, [SP, 0x1C] \n\
/* 0801b176 */ LDR R1, =D_030046a8 \n\
/* 0801b178 */ LDR R1, [R1] \n\
/* 0801b17a */ ADDS R1, 0xC2 @ Add 0xC2 to R1 \n\
/* 0801b17c */ LDRB R1, [R1] \n\
/* 0801b17e */ STR R1, [SP, 0x20] \n\
/* 0801b180 */ LDR R1, =anim_studio_selection_item \n\
/* 0801b182 */ STR R1, [SP, 0x24] \n\
/* 0801b184 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801b186 */ STR R1, [SP, 0x28] \n\
/* 0801b188 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0801b18a */ STR R1, [SP, 0x2C] \n\
/* 0801b18c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801b18e */ STR R1, [SP, 0x30] \n\
/* 0801b190 */ LDR R1, =func_0801af64 \n\
/* 0801b192 */ STR R1, [SP, 0x34] \n\
/* 0801b194 */ LDR R1, =func_0801aff8 \n\
/* 0801b196 */ STR R1, [SP, 0x38] \n\
/* 0801b198 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801b19a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801b19c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801b19e */ BL func_0800aeb4 \n\
/* 0801b1a2 */ LDR R1, [R6] \n\
/* 0801b1a4 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b1a6 */ LSLS R2, R2, 0x2 \n\
/* 0801b1a8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b1aa */ STR R0, [R1] \n\
/* 0801b1ac */ LDR R1, =func_0801b0b0 \n\
/* 0801b1ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b1b0 */ BL func_0800b30c \n\
/* 0801b1b4 */ ADD SP, 0x3C \n\
/* 0801b1b6 */ POP {R3} \n\
/* 0801b1b8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801b1ba */ POP {R4-R6} \n\
/* 0801b1bc */ POP {R0} \n\
/* 0801b1be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
