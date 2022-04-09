asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002eb0 \n\
/* 08002eb0 */ PUSH {R4, R5, LR} \n\
/* 08002eb2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002eb4 */ MOVS R0, 0x5C @ Set R0 to 0x5C \n\
/* 08002eb6 */ BL mem_heap_alloc \n\
/* 08002eba */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002ebc */ LDR R1, [R4] \n\
/* 08002ebe */ LDR R2, [R4, 0x4] \n\
/* 08002ec0 */ BL func_08002a6c \n\
/* 08002ec4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08002ec6 */ POP {R4, R5} \n\
/* 08002ec8 */ POP {R1} \n\
/* 08002eca */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
