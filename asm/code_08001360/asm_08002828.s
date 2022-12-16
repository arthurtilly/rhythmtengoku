asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start stop_soundplayer \n\
/* 08002828 */ PUSH {LR} \n\
/* 0800282a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800282c */ BEQ branch_08002834 \n\
/* 0800282e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002830 */ BL func_0804b7dc \n\
 \n\
branch_08002834: \n\
/* 08002834 */ POP {R0} \n\
/* 08002836 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
