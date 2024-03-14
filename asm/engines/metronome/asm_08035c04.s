asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_input_event \n\
/* 08035c04 */ PUSH {LR} \n\
/* 08035c06 */ LDR R0, =gCurrentEngineData \n\
/* 08035c08 */ LDR R1, [R0] \n\
/* 08035c0a */ LDRH R0, [R1, 0x28] \n\
/* 08035c0c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08035c0e */ STRH R0, [R1, 0x28] \n\
/* 08035c10 */ LDR R0, =gSpriteHandler \n\
/* 08035c12 */ LDR R0, [R0] \n\
/* 08035c14 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08035c16 */ LDRSH R1, [R1, R2] \n\
/* 08035c18 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08035c1a */ BL sprite_set_anim_cel \n\
/* 08035c1e */ POP {R0} \n\
/* 08035c20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
