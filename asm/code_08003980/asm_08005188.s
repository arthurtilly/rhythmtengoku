asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005188 \n\
/* 08005188 */ PUSH {R4, LR} \n\
/* 0800518a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800518c */ LDR R0, [R4, 0x8] \n\
/* 0800518e */ BL mem_heap_dealloc \n\
/* 08005192 */ LDR R0, [R4, 0xC] \n\
/* 08005194 */ BL mem_heap_dealloc \n\
/* 08005198 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800519a */ BL mem_heap_dealloc \n\
/* 0800519e */ POP {R4} \n\
/* 080051a0 */ POP {R0} \n\
/* 080051a2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
