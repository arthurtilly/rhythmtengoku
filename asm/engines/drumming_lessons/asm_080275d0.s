asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080275d0 \n\
/* 080275d0 */ PUSH {LR} \n\
/* 080275d2 */ LDR R0, =gCurrentEngineData \n\
/* 080275d4 */ LDR R1, [R0] \n\
/* 080275d6 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 080275d8 */ LSLS R0, R0, 0x2 \n\
/* 080275da */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080275dc */ LDR R0, =gSpriteHandler \n\
/* 080275de */ LDR R0, [R0] \n\
/* 080275e0 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 080275e2 */ LDRSH R1, [R1, R2] \n\
/* 080275e4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080275e6 */ BL sprite_set_visible \n\
/* 080275ea */ POP {R0} \n\
/* 080275ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
