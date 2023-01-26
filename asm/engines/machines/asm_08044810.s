asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044810 \n\
/* 08044810 */ PUSH {LR} \n\
/* 08044812 */ BL scene_stop_music \n\
/* 08044816 */ LDR R0, =D_030055d0 \n\
/* 08044818 */ LDR R0, [R0] \n\
/* 0804481a */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 0804481c */ LSLS R1, R1, 0x2 \n\
/* 0804481e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044820 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08044822 */ STRB R1, [R0] \n\
/* 08044824 */ POP {R0} \n\
/* 08044826 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
