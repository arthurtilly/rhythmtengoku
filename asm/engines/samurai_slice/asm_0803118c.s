asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803118c \n\
/* 0803118c */ PUSH {LR} \n\
/* 0803118e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08031190 */ ADDS R2, 0xE @ Add 0xE to R2 \n\
/* 08031192 */ LDR R0, =gSpriteHandler \n\
/* 08031194 */ LDR R0, [R0] \n\
/* 08031196 */ LDR R1, =gCurrentEngineData \n\
/* 08031198 */ LDR R1, [R1] \n\
/* 0803119a */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0803119c */ LDRSH R1, [R1, R3] \n\
/* 0803119e */ LSLS R2, R2, 0x10 \n\
/* 080311a0 */ ASRS R2, R2, 0x10 \n\
/* 080311a2 */ BL sprite_set_x \n\
/* 080311a6 */ POP {R0} \n\
/* 080311a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
