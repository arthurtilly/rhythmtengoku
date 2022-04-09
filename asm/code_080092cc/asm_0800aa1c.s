asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800aa1c \n\
/* 0800aa1c */ PUSH {R4, LR} \n\
/* 0800aa1e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800aa20 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800aa22 */ BEQ branch_0800aa46 \n\
/* 0800aa24 */ BL func_0800a934 \n\
/* 0800aa28 */ LDR R0, [R4, 0x10] \n\
/* 0800aa2a */ BL mem_heap_dealloc \n\
/* 0800aa2e */ LDR R0, [R4, 0x14] \n\
/* 0800aa30 */ BL mem_heap_dealloc \n\
/* 0800aa34 */ LDR R0, [R4, 0x18] \n\
/* 0800aa36 */ BL mem_heap_dealloc \n\
/* 0800aa3a */ LDR R0, [R4, 0x20] \n\
/* 0800aa3c */ BL mem_heap_dealloc \n\
/* 0800aa40 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800aa42 */ BL mem_heap_dealloc \n\
 \n\
branch_0800aa46: \n\
/* 0800aa46 */ POP {R4} \n\
/* 0800aa48 */ POP {R0} \n\
/* 0800aa4a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
