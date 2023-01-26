asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a314 \n\
/* 0801a314 */ PUSH {LR} \n\
/* 0801a316 */ BL func_0801a354 \n\
/* 0801a31a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a31c */ BEQ branch_0801a342 \n\
/* 0801a31e */ LDR R0, =D_03004afc \n\
/* 0801a320 */ LDRH R1, [R0] \n\
/* 0801a322 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801a324 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801a326 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a328 */ BEQ branch_0801a342 \n\
/* 0801a32a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a32c */ BL pause_beatscript_scene \n\
/* 0801a330 */ LDR R0, =s_menu_se20_seqData \n\
/* 0801a332 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801a334 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a336 */ BL play_sound_w_pitch_volume \n\
/* 0801a33a */ LDR R0, =D_030046a4 \n\
/* 0801a33c */ LDR R1, [R0] \n\
/* 0801a33e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a340 */ STR R0, [R1, 0x8] \n\
 \n\
branch_0801a342: \n\
/* 0801a342 */ POP {R0} \n\
/* 0801a344 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
