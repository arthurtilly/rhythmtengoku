asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080239a0 \n\
/* 080239a0 */ PUSH {LR} \n\
/* 080239a2 */ LDR R1, =tanuki_and_monkey_bgm_seq_table \n\
/* 080239a4 */ LSLS R0, R0, 0x2 \n\
/* 080239a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080239a8 */ LDR R0, [R0] \n\
/* 080239aa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080239ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080239ae */ BL play_drumtech_seq \n\
/* 080239b2 */ POP {R0} \n\
/* 080239b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
