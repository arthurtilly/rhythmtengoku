asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027c54 \n\
/* 08027c54 */ PUSH {R4, LR} \n\
/* 08027c56 */ LDR R4, =gCurrentEngineData \n\
/* 08027c58 */ LDR R0, [R4] \n\
/* 08027c5a */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 08027c5c */ LSLS R1, R1, 0x3 \n\
/* 08027c5e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08027c60 */ LDR R0, [R0] \n\
/* 08027c62 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027c64 */ BL text_printer_set_string \n\
/* 08027c68 */ LDR R0, =gSpriteHandler \n\
/* 08027c6a */ LDR R0, [R0] \n\
/* 08027c6c */ LDR R1, [R4] \n\
/* 08027c6e */ LDR R2, =0x0000042c \n\
/* 08027c70 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08027c72 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027c74 */ LDRSH R1, [R1, R2] \n\
/* 08027c76 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027c78 */ BL sprite_set_visible \n\
/* 08027c7c */ POP {R4} \n\
/* 08027c7e */ POP {R0} \n\
/* 08027c80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
