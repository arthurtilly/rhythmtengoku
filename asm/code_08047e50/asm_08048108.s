asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048108 \n\
/* 08048108 */ PUSH {R4, LR} \n\
/* 0804810a */ LDR R4, =s_studio_bgm_seqData \n\
/* 0804810c */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0804810e */ BL ticks_to_frames \n\
/* 08048112 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08048114 */ LSLS R1, R1, 0x10 \n\
/* 08048116 */ LSRS R1, R1, 0x10 \n\
/* 08048118 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804811a */ BL fade_out_sound \n\
/* 0804811e */ POP {R4} \n\
/* 08048120 */ POP {R0} \n\
/* 08048122 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
