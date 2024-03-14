asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080417ac \n\
/* 080417ac */ PUSH {R4-R7, LR} \n\
/* 080417ae */ SUB SP, 0xC \n\
/* 080417b0 */ LDR R6, =gCurrentEngineData \n\
/* 080417b2 */ LDR R2, [R6] \n\
/* 080417b4 */ LDR R1, [R2, 0x24] \n\
/* 080417b6 */ MOVS R0, 0xB0 @ Set R0 to 0xB0 \n\
/* 080417b8 */ LSLS R0, R0, 0x7 \n\
/* 080417ba */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080417bc */ BGT branch_08041880 \n\
/* 080417be */ MOVS R7, 0xB3 @ Set R7 to 0xB3 \n\
/* 080417c0 */ LSLS R7, R7, 0x2 \n\
/* 080417c2 */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 080417c4 */ LDRB R0, [R0] \n\
/* 080417c6 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080417c8 */ BEQ branch_08041802 \n\
/* 080417ca */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080417cc */ STRB R4, [R2, 0x6] \n\
/* 080417ce */ LDR R0, [R6] \n\
/* 080417d0 */ STRB R4, [R0, 0x7] \n\
/* 080417d2 */ LDR R1, [R6] \n\
/* 080417d4 */ STR R4, [R1, 0x14] \n\
/* 080417d6 */ LDR R5, =gSpriteHandler \n\
/* 080417d8 */ LDR R0, [R5] \n\
/* 080417da */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080417dc */ LDRSH R1, [R1, R2] \n\
/* 080417de */ LDR R2, =anim_horse_still \n\
/* 080417e0 */ STR R4, [SP] \n\
/* 080417e2 */ STR R4, [SP, 0x4] \n\
/* 080417e4 */ STR R4, [SP, 0x8] \n\
/* 080417e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080417e8 */ BL sprite_set_anim \n\
/* 080417ec */ LDR R0, [R5] \n\
/* 080417ee */ LDR R1, [R6] \n\
/* 080417f0 */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 080417f2 */ LDRSH R1, [R1, R2] \n\
/* 080417f4 */ LDR R2, =anim_horse_walk_jockey \n\
/* 080417f6 */ STR R4, [SP] \n\
/* 080417f8 */ STR R4, [SP, 0x4] \n\
/* 080417fa */ STR R4, [SP, 0x8] \n\
/* 080417fc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080417fe */ BL sprite_set_anim \n\
 \n\
branch_08041802: \n\
/* 08041802 */ LDR R0, [R6] \n\
/* 08041804 */ LDR R1, =0x2ea \n\
/* 08041806 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041808 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804180a */ STRB R1, [R0] \n\
/* 0804180c */ LDR R0, =s_uma_hihin_seqData \n\
/* 0804180e */ BL play_sound \n\
/* 08041812 */ LDR R0, [R6] \n\
/* 08041814 */ ADDS R2, R0, R7 @ Set R2 to R0 + R7 \n\
/* 08041816 */ LDRB R0, [R2] \n\
/* 08041818 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804181a */ BHI branch_08041854 \n\
/* 0804181c */ LDR R1, =mechanical_horse_lesson_bgm \n\
/* 0804181e */ LSLS R0, R0, 0x2 \n\
/* 08041820 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08041822 */ LDR R4, [R0] \n\
/* 08041824 */ MOVS R0, 0x60 @ Set R0 to 0x60 \n\
/* 08041826 */ BL ticks_to_frames \n\
/* 0804182a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804182c */ LSLS R1, R1, 0x10 \n\
/* 0804182e */ LSRS R1, R1, 0x10 \n\
/* 08041830 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08041832 */ BL fade_out_sound \n\
/* 08041836 */ B branch_08041870 \n\
\n\
.ltorg \n\
 \n\
branch_08041854: \n\
/* 08041854 */ LDR R1, =mechanical_horse_lesson_bgm \n\
/* 08041856 */ LDRB R0, [R2] \n\
/* 08041858 */ LSLS R0, R0, 0x2 \n\
/* 0804185a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804185c */ LDR R4, [R0] \n\
/* 0804185e */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08041860 */ BL ticks_to_frames \n\
/* 08041864 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08041866 */ LSLS R1, R1, 0x10 \n\
/* 08041868 */ LSRS R1, R1, 0x10 \n\
/* 0804186a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804186c */ BL fade_out_sound \n\
 \n\
branch_08041870: \n\
/* 08041870 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08041872 */ BL func_08041744 \n\
/* 08041876 */ BL beatscript_disable_loops \n\
/* 0804187a */ B branch_08041884 \n\
\n\
.ltorg \n\
 \n\
branch_08041880: \n\
/* 08041880 */ BL beatscript_enable_loops \n\
 \n\
branch_08041884: \n\
/* 08041884 */ ADD SP, 0xC \n\
/* 08041886 */ POP {R4-R7} \n\
/* 08041888 */ POP {R0} \n\
/* 0804188a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
