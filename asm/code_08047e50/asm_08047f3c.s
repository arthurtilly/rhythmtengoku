asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047f3c \n\
/* 08047f3c */ PUSH {R4, LR} \n\
/* 08047f3e */ LDR R4, =s_studio_bgm_seqData \n\
/* 08047f40 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08047f42 */ BL func_0800c3a4 \n\
/* 08047f46 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08047f48 */ LSLS R1, R1, 0x10 \n\
/* 08047f4a */ LSRS R1, R1, 0x10 \n\
/* 08047f4c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08047f4e */ BL func_080027dc \n\
/* 08047f52 */ POP {R4} \n\
/* 08047f54 */ POP {R0} \n\
/* 08047f56 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
