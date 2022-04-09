asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048164 \n\
/* 08048164 */ PUSH {R4, LR} \n\
/* 08048166 */ LDR R4, =s_studio_bgm_seqData \n\
/* 08048168 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0804816a */ BL func_0800c3a4 \n\
/* 0804816e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08048170 */ LSLS R1, R1, 0x10 \n\
/* 08048172 */ LSRS R1, R1, 0x10 \n\
/* 08048174 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08048176 */ BL func_080027dc \n\
/* 0804817a */ POP {R4} \n\
/* 0804817c */ POP {R0} \n\
/* 0804817e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
