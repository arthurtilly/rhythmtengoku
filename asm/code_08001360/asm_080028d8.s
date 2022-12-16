asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start fade_out_soundplayer \n\
/* 080028d8 */ PUSH {LR} \n\
/* 080028da */ LSLS R1, R1, 0x10 \n\
/* 080028dc */ LSRS R1, R1, 0x10 \n\
/* 080028de */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080028e0 */ BEQ branch_080028e6 \n\
/* 080028e2 */ BL func_0804b7dc \n\
 \n\
branch_080028e6: \n\
/* 080028e6 */ POP {R0} \n\
/* 080028e8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
