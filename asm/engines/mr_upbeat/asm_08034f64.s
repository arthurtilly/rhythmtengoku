asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034f64 \n\
/* 08034f64 */ PUSH {R4-R6, LR} \n\
/* 08034f66 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08034f68 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08034f6a */ PUSH {R5, R6} \n\
/* 08034f6c */ SUB SP, 0x14 \n\
/* 08034f6e */ LDR R0, =gCurrentEngineData \n\
/* 08034f70 */ LDR R4, [R0] \n\
/* 08034f72 */ ADDS R0, R4, 0x4 @ Set R0 to R4 + 0x4 \n\
/* 08034f74 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08034f76 */ LDR R6, =gSpriteHandler \n\
/* 08034f78 */ LDR R0, [R6] \n\
/* 08034f7a */ LDR R1, =anim_mr_upbeat_l_step \n\
/* 08034f7c */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08034f7e */ STR R2, [SP] \n\
/* 08034f80 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08034f82 */ LSLS R2, R2, 0x7 \n\
/* 08034f84 */ STR R2, [SP, 0x4] \n\
/* 08034f86 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034f88 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08034f8a */ STR R2, [SP, 0x8] \n\
/* 08034f8c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08034f8e */ STR R2, [SP, 0xC] \n\
/* 08034f90 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08034f92 */ STR R5, [SP, 0x10] \n\
/* 08034f94 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08034f96 */ BL sprite_create \n\
/* 08034f9a */ STRH R0, [R4, 0x4] \n\
/* 08034f9c */ LDR R0, [R6] \n\
/* 08034f9e */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08034fa0 */ LDRSH R1, [R4, R2] \n\
/* 08034fa2 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08034fa4 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08034fa6 */ BL sprite_set_x_y \n\
/* 08034faa */ LDR R0, [R6] \n\
/* 08034fac */ LDR R1, =anim_mr_upbeat_shadow \n\
/* 08034fae */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 08034fb0 */ STR R2, [SP] \n\
/* 08034fb2 */ LDR R2, =0x4814 \n\
/* 08034fb4 */ STR R2, [SP, 0x4] \n\
/* 08034fb6 */ STR R5, [SP, 0x8] \n\
/* 08034fb8 */ STR R5, [SP, 0xC] \n\
/* 08034fba */ STR R5, [SP, 0x10] \n\
/* 08034fbc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08034fbe */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08034fc0 */ BL sprite_create \n\
/* 08034fc4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08034fc6 */ STRH R0, [R1, 0x2] \n\
/* 08034fc8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08034fca */ STRB R2, [R1, 0x5] \n\
/* 08034fcc */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08034fce */ STRB R0, [R1, 0x4] \n\
/* 08034fd0 */ STRH R5, [R1, 0x6] \n\
/* 08034fd2 */ ADD SP, 0x14 \n\
/* 08034fd4 */ POP {R3, R4} \n\
/* 08034fd6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08034fd8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08034fda */ POP {R4-R6} \n\
/* 08034fdc */ POP {R0} \n\
/* 08034fde */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
