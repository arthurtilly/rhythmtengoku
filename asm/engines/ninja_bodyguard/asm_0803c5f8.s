asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c5f8 \n\
/* 0803c5f8 */ PUSH {LR} \n\
/* 0803c5fa */ SUB SP, 0xC \n\
/* 0803c5fc */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803c5fe */ BL ninja_get_anim \n\
/* 0803c602 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c604 */ LDR R0, =gSpriteHandler \n\
/* 0803c606 */ LDR R0, [R0] \n\
/* 0803c608 */ LDR R1, =gCurrentEngineData \n\
/* 0803c60a */ LDR R1, [R1] \n\
/* 0803c60c */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803c60e */ LDRSH R1, [R1, R3] \n\
/* 0803c610 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803c612 */ STR R3, [SP] \n\
/* 0803c614 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803c616 */ STR R3, [SP, 0x4] \n\
/* 0803c618 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c61a */ STR R3, [SP, 0x8] \n\
/* 0803c61c */ BL sprite_set_anim \n\
/* 0803c620 */ LDR R0, =s_ninja_kamae_seqData \n\
/* 0803c622 */ BL play_sound \n\
/* 0803c626 */ ADD SP, 0xC \n\
/* 0803c628 */ POP {R0} \n\
/* 0803c62a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
