asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006364 \n\
/* 08006364 */ PUSH {R4, LR} \n\
/* 08006366 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006368 */ LDR R0, [R4] \n\
/* 0800636a */ BL mem_heap_dealloc \n\
/* 0800636e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006370 */ BL mem_heap_dealloc \n\
/* 08006374 */ POP {R4} \n\
/* 08006376 */ POP {R0} \n\
/* 08006378 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
