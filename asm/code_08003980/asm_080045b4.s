asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080045b4 \n\
/* 080045b4 */ PUSH {R4, R5, LR} \n\
/* 080045b6 */ LDR R4, [SP, 0x14] \n\
/* 080045b8 */ LDR R5, [SP, 0x18] \n\
/* 080045ba */ STR R1, [R0, 0x4] \n\
/* 080045bc */ STRH R2, [R0, 0x8] \n\
/* 080045be */ STRB R3, [R0, 0xA] \n\
/* 080045c0 */ STR R4, [R0, 0xC] \n\
/* 080045c2 */ STR R5, [R0, 0x10] \n\
/* 080045c4 */ BL func_080045d0 \n\
/* 080045c8 */ POP {R4, R5} \n\
/* 080045ca */ POP {R0} \n\
/* 080045cc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
