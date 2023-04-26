asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803aa58 \n\
/* 0803aa58 */ PUSH {R4, LR} \n\
/* 0803aa5a */ SUB SP, 0xC \n\
/* 0803aa5c */ LDR R2, =gCurrentEngineData \n\
/* 0803aa5e */ LDR R0, [R2] \n\
/* 0803aa60 */ ADDS R0, 0xD3 @ Add 0xD3 to R0 \n\
/* 0803aa62 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803aa64 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803aa66 */ STRB R1, [R0] \n\
/* 0803aa68 */ LDR R0, [R2] \n\
/* 0803aa6a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803aa6c */ ADDS R1, 0xD4 @ Add 0xD4 to R1 \n\
/* 0803aa6e */ LDR R3, [R0, 0x30] \n\
/* 0803aa70 */ STR R3, [R1] \n\
/* 0803aa72 */ LDR R2, [R0, 0x30] \n\
/* 0803aa74 */ SUBS R2, R2, R3 @ Set R2 to R2 - R3 \n\
/* 0803aa76 */ ASRS R2, R2, 0x8 \n\
/* 0803aa78 */ STR R4, [SP] \n\
/* 0803aa7a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803aa7c */ STR R0, [SP, 0x4] \n\
/* 0803aa7e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803aa80 */ LSLS R0, R0, 0x7 \n\
/* 0803aa82 */ STR R0, [SP, 0x8] \n\
/* 0803aa84 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803aa86 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803aa88 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803aa8a */ BL scene_set_bg_layer_display \n\
/* 0803aa8e */ ADD SP, 0xC \n\
/* 0803aa90 */ POP {R4} \n\
/* 0803aa92 */ POP {R0} \n\
/* 0803aa94 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
