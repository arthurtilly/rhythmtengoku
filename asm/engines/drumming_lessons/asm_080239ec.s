asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080239ec \n\
/* 080239ec */ PUSH {R4, R5, LR} \n\
/* 080239ee */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080239f0 */ LDR R5, =gSpriteHandler \n\
/* 080239f2 */ LDR R0, [R5] \n\
/* 080239f4 */ LSLS R4, R4, 0x10 \n\
/* 080239f6 */ ASRS R4, R4, 0x10 \n\
/* 080239f8 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080239fa */ LSLS R2, R2, 0x2 \n\
/* 080239fc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080239fe */ BL sprite_set_base_tile \n\
/* 08023a02 */ LDR R0, [R5] \n\
/* 08023a04 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08023a06 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08023a08 */ BL sprite_set_base_palette \n\
/* 08023a0c */ POP {R4, R5} \n\
/* 08023a0e */ POP {R0} \n\
/* 08023a10 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
