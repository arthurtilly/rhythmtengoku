asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802871c \n\
/* 0802871c */ PUSH {LR} \n\
/* 0802871e */ LDR R0, =gCurrentEngineData \n\
/* 08028720 */ LDR R1, [R0] \n\
/* 08028722 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08028724 */ LSLS R0, R0, 0x2 \n\
/* 08028726 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08028728 */ LDR R0, =gSpriteHandler \n\
/* 0802872a */ LDR R0, [R0] \n\
/* 0802872c */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0802872e */ LDRSH R1, [R1, R2] \n\
/* 08028730 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08028732 */ BL sprite_set_visible \n\
/* 08028736 */ POP {R0} \n\
/* 08028738 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
