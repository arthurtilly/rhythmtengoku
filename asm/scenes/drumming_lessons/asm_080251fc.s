asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080251fc \n\
/* 080251fc */ LDR R0, =s_f_drumdr_miss_seqData \n\
/* 080251fe */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
