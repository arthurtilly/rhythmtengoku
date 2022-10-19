asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025220 \n\
/* 08025220 */ LDR R0, =s_f_drumdr_miss_seqData \n\
/* 08025222 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
