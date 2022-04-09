asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800852c \n\
/* 0800852c */ PUSH {R4, LR} \n\
/* 0800852e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008530 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08008532 */ BL mem_heap_alloc \n\
/* 08008536 */ LDR R1, [R4] \n\
/* 08008538 */ STR R1, [R0] \n\
/* 0800853a */ LDR R1, [R4, 0x4] \n\
/* 0800853c */ STR R1, [R0, 0x4] \n\
/* 0800853e */ LDR R1, [R4, 0x8] \n\
/* 08008540 */ STR R1, [R0, 0x8] \n\
/* 08008542 */ POP {R4} \n\
/* 08008544 */ POP {R1} \n\
/* 08008546 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
