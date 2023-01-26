asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006328 \n\
/* 08006328 */ PUSH {R4-R6, LR} \n\
/* 0800632a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800632c */ PUSH {R6} \n\
/* 0800632e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006330 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08006332 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08006334 */ LSLS R4, R4, 0x10 \n\
/* 08006336 */ LSRS R4, R4, 0x10 \n\
/* 08006338 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800633a */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0800633c */ BL mem_heap_alloc_id \n\
/* 08006340 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08006342 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08006344 */ MULS R1, R6 @ Multiply R1 by R6 \n\
/* 08006346 */ LSLS R1, R1, 0x1 \n\
/* 08006348 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800634a */ BL mem_heap_alloc_id \n\
/* 0800634e */ STR R0, [R5] \n\
/* 08006350 */ STRH R6, [R5, 0x4] \n\
/* 08006352 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08006354 */ STRH R0, [R5, 0x6] \n\
/* 08006356 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006358 */ POP {R3} \n\
/* 0800635a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800635c */ POP {R4-R6} \n\
/* 0800635e */ POP {R1} \n\
/* 08006360 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
