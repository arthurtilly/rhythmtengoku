asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080054b0 \n\
/* 080054b0 */ PUSH {R4, R5, LR} \n\
/* 080054b2 */ SUB SP, 0x4 \n\
/* 080054b4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080054b6 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 080054b8 */ BL mem_heap_alloc \n\
/* 080054bc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080054be */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080054c0 */ LSLS R0, R0, 0x1 \n\
/* 080054c2 */ STR R0, [SP] \n\
/* 080054c4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080054c6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080054c8 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080054ca */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080054cc */ BL dma3_set \n\
/* 080054d0 */ LDRB R1, [R4, 0x4] \n\
/* 080054d2 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080054d4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080054d6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080054d8 */ STRB R0, [R4, 0x4] \n\
/* 080054da */ LDRH R1, [R4, 0x6] \n\
/* 080054dc */ LDR R0, =0xfffffc00 \n\
/* 080054de */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080054e0 */ STRH R0, [R4, 0x6] \n\
/* 080054e2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080054e4 */ ADD SP, 0x4 \n\
/* 080054e6 */ POP {R4, R5} \n\
/* 080054e8 */ POP {R1} \n\
/* 080054ea */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
