asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080286f4 \n\
/* 080286f4 */ PUSH {LR} \n\
/* 080286f6 */ LDR R0, =gCurrentEngineData \n\
/* 080286f8 */ LDR R1, [R0] \n\
/* 080286fa */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 080286fc */ LSLS R0, R0, 0x2 \n\
/* 080286fe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08028700 */ LDR R0, =gSpriteHandler \n\
/* 08028702 */ LDR R0, [R0] \n\
/* 08028704 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08028706 */ LDRSH R1, [R1, R2] \n\
/* 08028708 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802870a */ BL sprite_set_visible \n\
/* 0802870e */ POP {R0} \n\
/* 08028710 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
