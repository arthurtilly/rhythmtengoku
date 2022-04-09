asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004da0 \n\
/* 08004da0 */ PUSH {R4, LR} \n\
/* 08004da2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004da4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08004da6 */ BL mem_heap_alloc \n\
/* 08004daa */ LDR R1, [R4] \n\
/* 08004dac */ STR R1, [R0] \n\
/* 08004dae */ LDR R1, [R4, 0x4] \n\
/* 08004db0 */ STR R1, [R0, 0x4] \n\
/* 08004db2 */ LDR R1, [R4, 0x8] \n\
/* 08004db4 */ STR R1, [R0, 0x8] \n\
/* 08004db6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08004db8 */ STR R1, [R0, 0xC] \n\
/* 08004dba */ POP {R4} \n\
/* 08004dbc */ POP {R1} \n\
/* 08004dbe */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
