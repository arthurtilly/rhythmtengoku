asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803516c \n\
/* 0803516c */ PUSH {R4, R5, LR} \n\
/* 0803516e */ SUB SP, 0xC \n\
/* 08035170 */ LDR R5, =gCurrentEngineData \n\
/* 08035172 */ LDR R2, [R5] \n\
/* 08035174 */ LDR R0, =gSpriteHandler \n\
/* 08035176 */ LDR R0, [R0] \n\
/* 08035178 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803517a */ LDRSH R1, [R2, R3] \n\
/* 0803517c */ LDR R4, =mr_upbeat_game_over_anim \n\
/* 0803517e */ LDRB R3, [R2, 0xC] \n\
/* 08035180 */ LSLS R3, R3, 0x2 \n\
/* 08035182 */ ADDS R2, 0x52 @ Add 0x52 to R2 \n\
/* 08035184 */ LDRB R2, [R2] \n\
/* 08035186 */ LSLS R2, R2, 0x4 \n\
/* 08035188 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0803518a */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0803518c */ LDR R2, [R3] \n\
/* 0803518e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08035190 */ STR R3, [SP] \n\
/* 08035192 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08035194 */ STR R3, [SP, 0x4] \n\
/* 08035196 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035198 */ STR R3, [SP, 0x8] \n\
/* 0803519a */ BL sprite_set_anim \n\
/* 0803519e */ LDR R0, [R5] \n\
/* 080351a0 */ ADDS R0, 0x52 @ Add 0x52 to R0 \n\
/* 080351a2 */ LDRB R0, [R0] \n\
/* 080351a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080351a6 */ BEQ branch_080351cc \n\
/* 080351a8 */ LDR R0, =D_0805a674 \n\
/* 080351aa */ BL gameplay_display_text \n\
/* 080351ae */ LDR R0, =s_intro_pat1_seqData \n\
/* 080351b0 */ BL play_sound \n\
/* 080351b4 */ B branch_080351d8 \n\
\n\
.ltorg \n\
 \n\
branch_080351cc: \n\
/* 080351cc */ LDR R0, =D_0805a684 \n\
/* 080351ce */ BL gameplay_display_text \n\
/* 080351d2 */ LDR R0, =s_gameover_fan_seqData \n\
/* 080351d4 */ BL play_sound \n\
 \n\
branch_080351d8: \n\
/* 080351d8 */ ADD SP, 0xC \n\
/* 080351da */ POP {R4, R5} \n\
/* 080351dc */ POP {R0} \n\
/* 080351de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
