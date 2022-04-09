asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f570 \n\
/* 0800f570 */ STR R1, [R0, 0xC] \n\
/* 0800f572 */ STR R2, [R0, 0x10] \n\
/* 0800f574 */ STR R3, [R0, 0x14] \n\
/* 0800f576 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
