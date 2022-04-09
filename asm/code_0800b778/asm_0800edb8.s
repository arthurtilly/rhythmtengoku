asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800edb8 \n\
/* 0800edb8 */ PUSH {LR} \n\
/* 0800edba */ BL mem_heap_dealloc \n\
/* 0800edbe */ BL func_08004058 \n\
/* 0800edc2 */ POP {R0} \n\
/* 0800edc4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
