asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start set_soundplayer_volume \n\
/* 08002920 */ PUSH {LR} \n\
/* 08002922 */ LSLS R1, R1, 0x10 \n\
/* 08002924 */ LSRS R1, R1, 0x10 \n\
/* 08002926 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002928 */ BEQ branch_0800292e \n\
/* 0800292a */ BL func_0804b650 \n\
 \n\
branch_0800292e: \n\
/* 0800292e */ POP {R0} \n\
/* 08002930 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
