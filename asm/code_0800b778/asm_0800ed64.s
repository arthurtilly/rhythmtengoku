asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ed64 \n\
/* 0800ed64 */ PUSH {R4-R6, LR} \n\
/* 0800ed66 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800ed68 */ PUSH {R6} \n\
/* 0800ed6a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800ed6c */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800ed6e */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800ed70 */ LSLS R5, R5, 0x10 \n\
/* 0800ed72 */ LSRS R5, R5, 0x10 \n\
/* 0800ed74 */ LSLS R6, R6, 0x10 \n\
/* 0800ed76 */ LSRS R6, R6, 0x10 \n\
/* 0800ed78 */ LSLS R4, R4, 0x10 \n\
/* 0800ed7a */ LSRS R4, R4, 0x10 \n\
/* 0800ed7c */ BL get_current_mem_id \n\
/* 0800ed80 */ LSLS R0, R0, 0x10 \n\
/* 0800ed82 */ LSRS R0, R0, 0x10 \n\
/* 0800ed84 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0800ed86 */ LSLS R1, R1, 0x1 \n\
/* 0800ed88 */ BL mem_heap_alloc_id \n\
/* 0800ed8c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800ed8e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800ed90 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800ed92 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800ed94 */ BL func_0800edc8 \n\
/* 0800ed98 */ LSLS R4, R4, 0x1 \n\
/* 0800ed9a */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0800ed9c */ LSLS R0, R0, 0x13 \n\
/* 0800ed9e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800eda0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800eda2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800eda4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800eda6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800eda8 */ BL func_0800402c \n\
/* 0800edac */ POP {R3} \n\
/* 0800edae */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800edb0 */ POP {R4-R6} \n\
/* 0800edb2 */ POP {R1} \n\
/* 0800edb4 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
