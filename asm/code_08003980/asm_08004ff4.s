asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004ff4 \n\
/* 08004ff4 */ PUSH {R4, R5, LR} \n\
/* 08004ff6 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08004ff8 */ LSLS R2, R2, 0x18 \n\
/* 08004ffa */ LSRS R2, R2, 0x18 \n\
/* 08004ffc */ LDR R1, [R4] \n\
/* 08004ffe */ BL func_08004eac \n\
/* 08005002 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08005004 */ LDR R0, [R4] \n\
/* 08005006 */ BL mem_heap_dealloc \n\
/* 0800500a */ STR R5, [R4] \n\
/* 0800500c */ POP {R4, R5} \n\
/* 0800500e */ POP {R0} \n\
/* 08005010 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
