asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027bd8 \n\
/* 08027bd8 */ PUSH {R4-R7, LR} \n\
/* 08027bda */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08027bdc */ PUSH {R7} \n\
/* 08027bde */ SUB SP, 0x4 \n\
/* 08027be0 */ LDR R4, =gCurrentEngineData \n\
/* 08027be2 */ LDR R0, [R4] \n\
/* 08027be4 */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 08027be6 */ LSLS R1, R1, 0x3 \n\
/* 08027be8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027bea */ LDR R0, [R0] \n\
/* 08027bec */ MOV R5, SP @ Set R5 to SP \n\
/* 08027bee */ ADDS R5, 0x2 @ Add 0x2 to R5 \n\
/* 08027bf0 */ MOV R1, SP @ Set R1 to SP \n\
/* 08027bf2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08027bf4 */ BL text_printer_get_x_y \n\
/* 08027bf8 */ LDR R2, =gSpriteHandler \n\
/* 08027bfa */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08027bfc */ LDR R0, [R2] \n\
/* 08027bfe */ LDR R1, [R4] \n\
/* 08027c00 */ LDR R6, =0x0000042c \n\
/* 08027c02 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08027c04 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08027c06 */ LDRSH R1, [R1, R3] \n\
/* 08027c08 */ MOV R2, SP @ Set R2 to SP \n\
/* 08027c0a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08027c0c */ LDRSH R2, [R2, R7] \n\
/* 08027c0e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08027c10 */ LDRSH R3, [R5, R7] \n\
/* 08027c12 */ BL sprite_set_x_y \n\
/* 08027c16 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08027c18 */ LDR R0, [R1] \n\
/* 08027c1a */ LDR R1, [R4] \n\
/* 08027c1c */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08027c1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027c20 */ LDRSH R1, [R1, R2] \n\
/* 08027c22 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027c24 */ BL sprite_set_visible \n\
/* 08027c28 */ LDR R0, [R4] \n\
/* 08027c2a */ LDR R3, =0x0000045c \n\
/* 08027c2c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08027c2e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08027c30 */ STRB R1, [R0] \n\
/* 08027c32 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08027c34 */ BL set_pause_beatscript_scene \n\
/* 08027c38 */ ADD SP, 0x4 \n\
/* 08027c3a */ POP {R3} \n\
/* 08027c3c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08027c3e */ POP {R4-R7} \n\
/* 08027c40 */ POP {R0} \n\
/* 08027c42 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
