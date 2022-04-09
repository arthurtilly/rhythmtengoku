asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a068 \n\
/* 0800a068 */ PUSH {R4, LR} \n\
/* 0800a06a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a06c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800a06e */ BEQ branch_0800a07c \n\
/* 0800a070 */ LDR R0, [R4] \n\
/* 0800a072 */ BL mem_heap_dealloc \n\
/* 0800a076 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a078 */ BL mem_heap_dealloc \n\
 \n\
branch_0800a07c: \n\
/* 0800a07c */ POP {R4} \n\
/* 0800a07e */ POP {R0} \n\
/* 0800a080 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
