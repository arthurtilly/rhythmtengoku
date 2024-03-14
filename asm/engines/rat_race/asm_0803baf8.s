asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803baf8 \n\
/* 0803baf8 */ PUSH {R4, R5, LR} \n\
/* 0803bafa */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0803bafc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803bafe */ BL func_0800c604 \n\
/* 0803bb02 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803bb04 */ STRB R0, [R4, 0x2] \n\
/* 0803bb06 */ LDR R5, =gSpriteHandler \n\
/* 0803bb08 */ LDR R0, [R5] \n\
/* 0803bb0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bb0c */ LDRSH R1, [R4, R2] \n\
/* 0803bb0e */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803bb10 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0803bb12 */ BL sprite_set_y \n\
/* 0803bb16 */ LDR R0, [R5] \n\
/* 0803bb18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bb1a */ LDRSH R1, [R4, R2] \n\
/* 0803bb1c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bb1e */ BL sprite_set_visible \n\
/* 0803bb22 */ POP {R4, R5} \n\
/* 0803bb24 */ POP {R0} \n\
/* 0803bb26 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
