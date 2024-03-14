asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tram_pauline_common_init_tutorial \n\
/* 08040bd4 */ PUSH {R4, LR} \n\
/* 08040bd6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08040bd8 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08040bda */ BEQ branch_08040c04 \n\
/* 08040bdc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08040bde */ BL gameplay_enable_tutorial \n\
/* 08040be2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08040be4 */ BL gameplay_set_skip_destination \n\
/* 08040be8 */ LDR R0, =gSpriteHandler \n\
/* 08040bea */ LDR R0, [R0] \n\
/* 08040bec */ LDR R1, =gCurrentEngineData \n\
/* 08040bee */ LDR R1, [R1] \n\
/* 08040bf0 */ MOVS R2, 0x3E @ Set R2 to 0x3E \n\
/* 08040bf2 */ LDRSH R1, [R1, R2] \n\
/* 08040bf4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08040bf6 */ BL sprite_set_visible \n\
/* 08040bfa */ B branch_08040c1c \n\
\n\
.ltorg \n\
 \n\
branch_08040c04: \n\
/* 08040c04 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040c06 */ BL gameplay_enable_tutorial \n\
/* 08040c0a */ LDR R0, =gSpriteHandler \n\
/* 08040c0c */ LDR R0, [R0] \n\
/* 08040c0e */ LDR R1, =gCurrentEngineData \n\
/* 08040c10 */ LDR R1, [R1] \n\
/* 08040c12 */ MOVS R2, 0x3E @ Set R2 to 0x3E \n\
/* 08040c14 */ LDRSH R1, [R1, R2] \n\
/* 08040c16 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040c18 */ BL sprite_set_visible \n\
 \n\
branch_08040c1c: \n\
/* 08040c1c */ POP {R4} \n\
/* 08040c1e */ POP {R0} \n\
/* 08040c20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
