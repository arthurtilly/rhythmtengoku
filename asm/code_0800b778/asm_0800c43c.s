asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c43c \n\
/* 0800c43c */ PUSH {R4, LR} \n\
/* 0800c43e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c440 */ BL func_0800c3b8 \n\
/* 0800c444 */ LSLS R0, R0, 0x10 \n\
/* 0800c446 */ LSRS R0, R0, 0x10 \n\
/* 0800c448 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800c44a */ BL mem_heap_alloc_id \n\
/* 0800c44e */ POP {R4} \n\
/* 0800c450 */ POP {R1} \n\
/* 0800c452 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
