asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004508 \n\
/* 08004508 */ PUSH {R4-R6, LR} \n\
/* 0800450a */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800450c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800450e */ PUSH {R5, R6} \n\
/* 08004510 */ SUB SP, 0x4 \n\
/* 08004512 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08004514 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08004516 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 08004518 */ LSLS R6, R6, 0x10 \n\
/* 0800451a */ LSRS R6, R6, 0x10 \n\
/* 0800451c */ LSLS R2, R2, 0x10 \n\
/* 0800451e */ LSRS R2, R2, 0x10 \n\
/* 08004520 */ LSLS R5, R5, 0x18 \n\
/* 08004522 */ LSRS R5, R5, 0x18 \n\
/* 08004524 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004526 */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 08004528 */ STR R2, [SP] \n\
/* 0800452a */ BL mem_heap_alloc_id \n\
/* 0800452e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004530 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08004532 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08004534 */ STRH R6, [R4] \n\
/* 08004536 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08004538 */ STR R0, [R4, 0x4] \n\
/* 0800453a */ LDR R2, [SP] \n\
/* 0800453c */ STRH R2, [R4, 0x8] \n\
/* 0800453e */ STRB R5, [R4, 0xA] \n\
/* 08004540 */ LSLS R1, R5, 0x5 \n\
/* 08004542 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004544 */ BL mem_heap_alloc_id \n\
/* 08004548 */ STR R0, [R4, 0xC] \n\
/* 0800454a */ LSLS R5, R5, 0x4 \n\
/* 0800454c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800454e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08004550 */ BL mem_heap_alloc_id \n\
/* 08004554 */ STR R0, [R4, 0x10] \n\
/* 08004556 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08004558 */ STR R0, [R4, 0x14] \n\
/* 0800455a */ STR R0, [R4, 0x18] \n\
/* 0800455c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800455e */ BL func_080045d0 \n\
/* 08004562 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08004564 */ ADD SP, 0x4 \n\
/* 08004566 */ POP {R3, R4} \n\
/* 08004568 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800456a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800456c */ POP {R4-R6} \n\
/* 0800456e */ POP {R1} \n\
/* 08004570 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
