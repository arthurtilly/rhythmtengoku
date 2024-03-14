asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080320c8 \n\
/* 080320c8 */ PUSH {R4-R6, LR} \n\
/* 080320ca */ SUB SP, 0xC \n\
/* 080320cc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080320ce */ LDR R0, [R6, 0x2C] \n\
/* 080320d0 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080320d2 */ STR R0, [R6, 0x2C] \n\
/* 080320d4 */ LDR R3, [R6, 0xC] \n\
/* 080320d6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080320d8 */ STR R3, [R6, 0xC] \n\
/* 080320da */ LDR R2, [R6, 0x8] \n\
/* 080320dc */ LDR R0, =0xfffffe80 \n\
/* 080320de */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080320e0 */ STR R2, [R6, 0x8] \n\
/* 080320e2 */ LDR R5, =gSpriteHandler \n\
/* 080320e4 */ LDR R0, [R5] \n\
/* 080320e6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080320e8 */ LDRSH R1, [R6, R4] \n\
/* 080320ea */ LSLS R2, R2, 0x8 \n\
/* 080320ec */ ASRS R2, R2, 0x10 \n\
/* 080320ee */ LSLS R3, R3, 0x8 \n\
/* 080320f0 */ ASRS R3, R3, 0x10 \n\
/* 080320f2 */ BL sprite_set_x_y \n\
/* 080320f6 */ LDR R0, [R5] \n\
/* 080320f8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080320fa */ LDRSH R1, [R6, R2] \n\
/* 080320fc */ LDR R2, [R6, 0x8] \n\
/* 080320fe */ LSLS R2, R2, 0x8 \n\
/* 08032100 */ ASRS R2, R2, 0x10 \n\
/* 08032102 */ BL sprite_set_x \n\
/* 08032106 */ LDR R0, [R6, 0x8] \n\
/* 08032108 */ ASRS R0, R0, 0x8 \n\
/* 0803210a */ CMP R0, 0x30 @ Compare R0 and 0x30 \n\
/* 0803210c */ BGT branch_0803217e \n\
/* 0803210e */ LDR R0, [R5] \n\
/* 08032110 */ LDR R4, =gCurrentEngineData \n\
/* 08032112 */ LDR R1, [R4] \n\
/* 08032114 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08032116 */ LDRSH R1, [R1, R2] \n\
/* 08032118 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0803211a */ BL sprite_get_data \n\
/* 0803211e */ LDR R3, =anim_samurai_hurt \n\
/* 08032120 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08032122 */ BEQ branch_0803217e \n\
/* 08032124 */ LDR R0, [R5] \n\
/* 08032126 */ LDR R1, [R4] \n\
/* 08032128 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0803212a */ LDRSH R1, [R1, R2] \n\
/* 0803212c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803212e */ STR R2, [SP] \n\
/* 08032130 */ STR R2, [SP, 0x4] \n\
/* 08032132 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08032134 */ STR R2, [SP, 0x8] \n\
/* 08032136 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08032138 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803213a */ BL sprite_set_anim \n\
/* 0803213e */ LDR R0, [R5] \n\
/* 08032140 */ LDR R1, [R4] \n\
/* 08032142 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08032144 */ LDRSH R1, [R1, R2] \n\
/* 08032146 */ LDR R2, =func_08032070 \n\
/* 08032148 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803214a */ BL sprite_set_callback \n\
/* 0803214e */ LDR R5, [R5] \n\
/* 08032150 */ LDR R0, [R4] \n\
/* 08032152 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08032154 */ LDRSH R4, [R0, R1] \n\
/* 08032156 */ BL get_beatscript_tempo \n\
/* 0803215a */ LSLS R0, R0, 0x8 \n\
/* 0803215c */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0803215e */ BL __udivsi3 \n\
/* 08032162 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08032164 */ LSLS R2, R2, 0x10 \n\
/* 08032166 */ LSRS R2, R2, 0x10 \n\
/* 08032168 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803216a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803216c */ BL sprite_set_anim_speed \n\
/* 08032170 */ LDR R0, =s_iai_yarare_seqData \n\
/* 08032172 */ BL play_sound \n\
/* 08032176 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08032178 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803217a */ BL gameplay_set_input_buttons \n\
 \n\
branch_0803217e: \n\
/* 0803217e */ LDR R0, [R6, 0x8] \n\
/* 08032180 */ ASRS R0, R0, 0x8 \n\
/* 08032182 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08032184 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08032186 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08032188 */ BGT branch_080321a8 \n\
/* 0803218a */ LDR R4, =gSpriteHandler \n\
/* 0803218c */ LDR R0, [R4] \n\
/* 0803218e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032190 */ LDRSH R1, [R6, R2] \n\
/* 08032192 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032194 */ BL sprite_set_visible \n\
/* 08032198 */ LDR R0, [R4] \n\
/* 0803219a */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0803219c */ LDRSH R1, [R6, R4] \n\
/* 0803219e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080321a0 */ BL sprite_set_visible \n\
/* 080321a4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080321a6 */ STRB R0, [R6, 0x4] \n\
 \n\
branch_080321a8: \n\
/* 080321a8 */ ADD SP, 0xC \n\
/* 080321aa */ POP {R4-R6} \n\
/* 080321ac */ POP {R0} \n\
/* 080321ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
