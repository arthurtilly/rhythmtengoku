asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_test_common_beat_animation \n\
/* 080340cc */ PUSH {LR} \n\
/* 080340ce */ LDR R0, =gCurrentEngineData \n\
/* 080340d0 */ LDR R0, [R0] \n\
/* 080340d2 */ LDRH R1, [R0, 0x6] \n\
/* 080340d4 */ LDRB R0, [R0, 0x8] \n\
/* 080340d6 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080340d8 */ BGT branch_080340ec \n\
/* 080340da */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080340dc */ BLT branch_080340ec \n\
/* 080340de */ LDR R0, =gSpriteHandler \n\
/* 080340e0 */ LDR R0, [R0] \n\
/* 080340e2 */ LSLS R1, R1, 0x10 \n\
/* 080340e4 */ ASRS R1, R1, 0x10 \n\
/* 080340e6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080340e8 */ BL sprite_set_anim_cel \n\
 \n\
branch_080340ec: \n\
/* 080340ec */ POP {R0} \n\
/* 080340ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
