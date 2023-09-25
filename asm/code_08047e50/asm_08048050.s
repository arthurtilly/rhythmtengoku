asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048050 \n\
/* 08048050 */ PUSH {R4, LR} \n\
/* 08048052 */ LDR R4, =s_studio_bgm_seqData \n\
/* 08048054 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08048056 */ BL ticks_to_frames \n\
/* 0804805a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804805c */ LSLS R1, R1, 0x10 \n\
/* 0804805e */ LSRS R1, R1, 0x10 \n\
/* 08048060 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08048062 */ BL fade_out_sound \n\
/* 08048066 */ POP {R4} \n\
/* 08048068 */ POP {R0} \n\
/* 0804806a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
