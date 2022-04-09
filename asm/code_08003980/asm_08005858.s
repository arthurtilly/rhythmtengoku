asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005858 \n\
/* 08005858 */ PUSH {R4, LR} \n\
/* 0800585a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800585c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800585e */ BL mem_heap_alloc \n\
/* 08005862 */ LDR R1, [R4] \n\
/* 08005864 */ STR R1, [R0] \n\
/* 08005866 */ LDR R1, [R4, 0x4] \n\
/* 08005868 */ STR R1, [R0, 0x4] \n\
/* 0800586a */ LDR R1, [R4, 0x8] \n\
/* 0800586c */ STR R1, [R0, 0x8] \n\
/* 0800586e */ LDR R1, [R4, 0xC] \n\
/* 08005870 */ STR R1, [R0, 0xC] \n\
/* 08005872 */ POP {R4} \n\
/* 08005874 */ POP {R1} \n\
/* 08005876 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
