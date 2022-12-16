asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start pause_all_soundplayers \n\
/* 08002880 */ PUSH {LR} \n\
/* 08002882 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002884 */ BEQ branch_0800288c \n\
/* 08002886 */ BL func_0804b5f0 \n\
/* 0800288a */ B branch_08002890 \n\
 \n\
branch_0800288c: \n\
/* 0800288c */ BL func_0804b620 \n\
 \n\
branch_08002890: \n\
/* 08002890 */ POP {R0} \n\
/* 08002892 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
