asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start set_soundplayer_key \n\
/* 080029c4 */ PUSH {LR} \n\
/* 080029c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080029c8 */ BEQ branch_080029d4 \n\
/* 080029ca */ LDR R0, [R0, 0x4] \n\
/* 080029cc */ LSLS R1, R1, 0x18 \n\
/* 080029ce */ ASRS R1, R1, 0x18 \n\
/* 080029d0 */ BL func_0804adb0 \n\
 \n\
branch_080029d4: \n\
/* 080029d4 */ POP {R0} \n\
/* 080029d6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
