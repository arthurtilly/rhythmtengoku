asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start pause_soundplayer \n\
/* 08002868 */ PUSH {LR} \n\
/* 0800286a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800286c */ BEQ branch_0800287c \n\
/* 0800286e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08002870 */ BEQ branch_08002878 \n\
/* 08002872 */ BL func_0804b5d8 \n\
/* 08002876 */ B branch_0800287c \n\
 \n\
branch_08002878: \n\
/* 08002878 */ BL func_0804b5e4 \n\
 \n\
branch_0800287c: \n\
/* 0800287c */ POP {R0} \n\
/* 0800287e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
