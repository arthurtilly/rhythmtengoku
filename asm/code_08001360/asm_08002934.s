asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start set_soundplayer_track_volume \n\
/* 08002934 */ PUSH {LR} \n\
/* 08002936 */ LSLS R1, R1, 0x10 \n\
/* 08002938 */ LSRS R1, R1, 0x10 \n\
/* 0800293a */ LSLS R2, R2, 0x10 \n\
/* 0800293c */ LSRS R2, R2, 0x10 \n\
/* 0800293e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002940 */ BEQ branch_08002946 \n\
/* 08002942 */ BL func_0804b654 \n\
 \n\
branch_08002946: \n\
/* 08002946 */ POP {R0} \n\
/* 08002948 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
