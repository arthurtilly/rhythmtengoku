asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start score_results_scene_update \n\
/* 08019138 */ PUSH {LR} \n\
/* 0801913a */ BL results_scene_inputs_enabled \n\
/* 0801913e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019140 */ BEQ branch_08019166 \n\
/* 08019142 */ LDR R0, =D_03004afc \n\
/* 08019144 */ LDRH R1, [R0] \n\
/* 08019146 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08019148 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801914a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801914c */ BEQ branch_08019166 \n\
/* 0801914e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019150 */ BL set_pause_beatscript_scene \n\
/* 08019154 */ LDR R0, =D_030046a4 \n\
/* 08019156 */ LDR R1, [R0] \n\
/* 08019158 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801915a */ STR R0, [R1, 0x8] \n\
/* 0801915c */ LDR R0, =s_menu_se20_seqData \n\
/* 0801915e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08019160 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019162 */ BL play_sound_w_pitch_volume \n\
 \n\
branch_08019166: \n\
/* 08019166 */ POP {R0} \n\
/* 08019168 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
