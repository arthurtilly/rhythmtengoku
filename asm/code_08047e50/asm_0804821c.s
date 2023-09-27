asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804821c \n\
/* 0804821c */ PUSH {R4, LR} \n\
/* 0804821e */ LDR R4, =s_studio_bgm_seqData \n\
/* 08048220 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08048222 */ BL ticks_to_frames \n\
/* 08048226 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08048228 */ LSLS R1, R1, 0x10 \n\
/* 0804822a */ LSRS R1, R1, 0x10 \n\
/* 0804822c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804822e */ BL fade_out_sound \n\
/* 08048232 */ POP {R4} \n\
/* 08048234 */ POP {R0} \n\
/* 08048236 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
