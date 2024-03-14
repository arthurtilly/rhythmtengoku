asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e884 \n\
/* 0803e884 */ PUSH {LR} \n\
/* 0803e886 */ LDR R0, =gCurrentEngineData \n\
/* 0803e888 */ LDR R0, [R0] \n\
/* 0803e88a */ MOVS R2, 0xE7 @ Set R2 to 0xE7 \n\
/* 0803e88c */ LSLS R2, R2, 0x2 \n\
/* 0803e88e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803e890 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e892 */ LDRSH R0, [R1, R2] \n\
/* 0803e894 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e896 */ BLT branch_0803e8a6 \n\
/* 0803e898 */ LDR R0, =gSpriteHandler \n\
/* 0803e89a */ LDR R0, [R0] \n\
/* 0803e89c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e89e */ LDRSH R1, [R1, R2] \n\
/* 0803e8a0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803e8a2 */ BL sprite_set_visible \n\
 \n\
branch_0803e8a6: \n\
/* 0803e8a6 */ POP {R0} \n\
/* 0803e8a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
