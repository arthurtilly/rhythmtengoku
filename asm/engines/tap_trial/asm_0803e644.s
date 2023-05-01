asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e644 \n\
/* 0803e644 */ PUSH {LR} \n\
/* 0803e646 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803e648 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0803e64a */ LDR R0, =gCurrentEngineData \n\
/* 0803e64c */ LDR R0, [R0] \n\
/* 0803e64e */ LDRB R0, [R0, 0x10] \n\
/* 0803e650 */ CMP R0, 0xD @ Compare R0 and 0xD \n\
/* 0803e652 */ BHI branch_0803e6b6 \n\
/* 0803e654 */ LSLS R0, R0, 0x2 \n\
/* 0803e656 */ LDR R1, =jtbl_0803e668 \n\
/* 0803e658 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803e65a */ LDR R0, [R0] \n\
/* 0803e65c */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803e668: \n\
.word jump_0803e6a0 \n\
.word jump_0803e6a4 \n\
.word jump_0803e6a0 \n\
.word jump_0803e6a4 \n\
.word jump_0803e6a0 \n\
.word jump_0803e6a4 \n\
.word jump_0803e6ac \n\
.word jump_0803e6a8 \n\
.word jump_0803e6a8 \n\
.word branch_0803e6b6 \n\
.word branch_0803e6b6 \n\
.word jump_0803e6b4 \n\
.word branch_0803e6b6 \n\
.word jump_0803e6b0 \n\
jump_0803e6a0: \n\
/* 0803e6a0 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803e6a2 */ B branch_0803e6ba \n\
jump_0803e6a4: \n\
/* 0803e6a4 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0803e6a6 */ B branch_0803e6ba \n\
jump_0803e6a8: \n\
/* 0803e6a8 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0803e6aa */ B branch_0803e6ba \n\
jump_0803e6ac: \n\
/* 0803e6ac */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0803e6ae */ B branch_0803e6ba \n\
jump_0803e6b0: \n\
/* 0803e6b0 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0803e6b2 */ B branch_0803e6ba \n\
jump_0803e6b4: \n\
/* 0803e6b4 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
 \n\
branch_0803e6b6: \n\
/* 0803e6b6 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0803e6b8 */ BLT branch_0803e6c6 \n\
 \n\
branch_0803e6ba: \n\
/* 0803e6ba */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803e6bc */ BL tap_trial_play_girl_action \n\
/* 0803e6c0 */ LDR R0, =s_f_tap_tap_seqData \n\
/* 0803e6c2 */ BL play_sound \n\
 \n\
branch_0803e6c6: \n\
/* 0803e6c6 */ POP {R0} \n\
/* 0803e6c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
