asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c5cc \n\
/* 0803c5cc */ PUSH {LR} \n\
/* 0803c5ce */ LDR R0, =gSpriteHandler \n\
/* 0803c5d0 */ LDR R0, [R0] \n\
/* 0803c5d2 */ LDR R1, =gCurrentEngineData \n\
/* 0803c5d4 */ LDR R1, [R1] \n\
/* 0803c5d6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803c5d8 */ LDRSH R1, [R1, R2] \n\
/* 0803c5da */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c5dc */ BL sprite_set_visible \n\
/* 0803c5e0 */ LDR R0, =s_ninja_chakuti_seqData \n\
/* 0803c5e2 */ BL play_sound \n\
/* 0803c5e6 */ POP {R0} \n\
/* 0803c5e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
