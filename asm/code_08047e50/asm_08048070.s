asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048070 \n\
/* 08048070 */ PUSH {LR} \n\
/* 08048072 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08048074 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08048076 */ BEQ branch_08048088 \n\
/* 08048078 */ LDR R1, =s_intro_stick_seqData \n\
/* 0804807a */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0804807c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804807e */ BL play_sound_in_player_w_pitch_volume \n\
/* 08048082 */ B branch_08048090 \n\
\n\
.ltorg \n\
 \n\
branch_08048088: \n\
/* 08048088 */ LDR R1, =s_intro_stick_seqData \n\
/* 0804808a */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0804808c */ BL play_sound_in_player \n\
 \n\
branch_08048090: \n\
/* 08048090 */ POP {R0} \n\
/* 08048092 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
