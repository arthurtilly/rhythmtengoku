asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080480ac \n\
/* 080480ac */ PUSH {R4, LR} \n\
/* 080480ae */ LDR R4, =s_studio_bgm_seqData \n\
/* 080480b0 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 080480b2 */ BL func_0800c3a4 \n\
/* 080480b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080480b8 */ LSLS R1, R1, 0x10 \n\
/* 080480ba */ LSRS R1, R1, 0x10 \n\
/* 080480bc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080480be */ BL func_080027dc \n\
/* 080480c2 */ POP {R4} \n\
/* 080480c4 */ POP {R0} \n\
/* 080480c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
