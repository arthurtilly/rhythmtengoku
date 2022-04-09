asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08048208 \n\
/* 08048208 */ PUSH {LR} \n\
/* 0804820a */ LDR R1, =s_studio_bgm_seqData \n\
/* 0804820c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804820e */ BL func_0800267c \n\
/* 08048212 */ POP {R0} \n\
/* 08048214 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
