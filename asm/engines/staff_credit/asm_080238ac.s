asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080238ac \n\
/* 080238ac */ LDR R0, =gCurrentEngineData \n\
/* 080238ae */ LDR R0, [R0] \n\
/* 080238b0 */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 080238b2 */ LDR R1, =0x0000ffcd \n\
/* 080238b4 */ STRH R1, [R0] \n\
/* 080238b6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
