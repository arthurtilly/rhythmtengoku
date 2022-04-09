asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005124 \n\
/* 08005124 */ PUSH {R4-R6, LR} \n\
/* 08005126 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08005128 */ PUSH {R6} \n\
/* 0800512a */ SUB SP, 0x8 \n\
/* 0800512c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800512e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08005130 */ LDR R5, [SP, 0x1C] \n\
/* 08005132 */ LSLS R6, R6, 0x10 \n\
/* 08005134 */ LSRS R6, R6, 0x10 \n\
/* 08005136 */ LSLS R2, R2, 0x18 \n\
/* 08005138 */ LSRS R2, R2, 0x18 \n\
/* 0800513a */ LSLS R3, R3, 0x10 \n\
/* 0800513c */ LSRS R3, R3, 0x10 \n\
/* 0800513e */ LSLS R5, R5, 0x18 \n\
/* 08005140 */ LSRS R5, R5, 0x18 \n\
/* 08005142 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08005144 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08005146 */ STR R2, [SP] \n\
/* 08005148 */ STR R3, [SP, 0x4] \n\
/* 0800514a */ BL mem_heap_alloc_id \n\
/* 0800514e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005150 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005152 */ STR R0, [R4] \n\
/* 08005154 */ LDR R2, [SP] \n\
/* 08005156 */ STRB R2, [R4, 0x6] \n\
/* 08005158 */ LDR R3, [SP, 0x4] \n\
/* 0800515a */ STRH R3, [R4, 0x4] \n\
/* 0800515c */ STRB R5, [R4, 0x7] \n\
/* 0800515e */ LSLS R1, R5, 0x5 \n\
/* 08005160 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08005162 */ BL mem_heap_alloc_id \n\
/* 08005166 */ STR R0, [R4, 0x8] \n\
/* 08005168 */ LSLS R5, R5, 0x4 \n\
/* 0800516a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800516c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800516e */ BL mem_heap_alloc_id \n\
/* 08005172 */ STR R0, [R4, 0xC] \n\
/* 08005174 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005176 */ BL func_080051c4 \n\
/* 0800517a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800517c */ ADD SP, 0x8 \n\
/* 0800517e */ POP {R3} \n\
/* 08005180 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005182 */ POP {R4-R6} \n\
/* 08005184 */ POP {R1} \n\
/* 08005186 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
