asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047f98 \n\
/* 08047f98 */ PUSH {R4, LR} \n\
/* 08047f9a */ LDR R4, =s_studio_bgm_seqData \n\
/* 08047f9c */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08047f9e */ BL beats_to_ticks \n\
/* 08047fa2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08047fa4 */ LSLS R1, R1, 0x10 \n\
/* 08047fa6 */ LSRS R1, R1, 0x10 \n\
/* 08047fa8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08047faa */ BL func_080027dc \n\
/* 08047fae */ POP {R4} \n\
/* 08047fb0 */ POP {R0} \n\
/* 08047fb2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
