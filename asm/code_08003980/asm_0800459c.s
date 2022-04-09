asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800459c \n\
/* 0800459c */ PUSH {R4, LR} \n\
/* 0800459e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080045a0 */ STR R1, [R4, 0x14] \n\
/* 080045a2 */ LDRH R0, [R4] \n\
/* 080045a4 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080045a6 */ BL mem_heap_alloc_id \n\
/* 080045aa */ STR R0, [R4, 0x18] \n\
/* 080045ac */ POP {R4} \n\
/* 080045ae */ POP {R0} \n\
/* 080045b0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
