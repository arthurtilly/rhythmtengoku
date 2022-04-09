asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800873c \n\
/* 0800873c */ PUSH {R4, LR} \n\
/* 0800873e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008740 */ MOVS R0, 0x2C @ Set R0 to 0x2C \n\
/* 08008742 */ BL mem_heap_alloc \n\
/* 08008746 */ STR R4, [R0] \n\
/* 08008748 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800874a */ ADDS R2, 0x28 @ Add 0x28 to R2 \n\
/* 0800874c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800874e */ STRB R1, [R2] \n\
/* 08008750 */ POP {R4} \n\
/* 08008752 */ POP {R1} \n\
/* 08008754 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
