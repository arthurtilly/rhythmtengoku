asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d98c \n\
/* 0801d98c */ PUSH {R4, R5, LR} \n\
/* 0801d98e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d990 */ BL func_080013e8 \n\
/* 0801d994 */ BL func_08003f28 \n\
/* 0801d998 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0801d99a: \n\
/* 0801d99a */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0801d99c */ LDR R0, =D_03005380 \n\
/* 0801d99e */ LDR R0, [R0] \n\
/* 0801d9a0 */ LSLS R4, R5, 0x10 \n\
/* 0801d9a2 */ LSRS R4, R4, 0x10 \n\
/* 0801d9a4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801d9a6 */ BL func_0804e0c4 \n\
/* 0801d9aa */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801d9ac */ BL func_0800222c \n\
/* 0801d9b0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d9b2 */ BL func_08005de4 \n\
/* 0801d9b6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d9b8 */ BL mem_heap_dealloc_with_id \n\
/* 0801d9bc */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0801d9be */ BLS branch_0801d99a \n\
/* 0801d9c0 */ POP {R4, R5} \n\
/* 0801d9c2 */ POP {R0} \n\
/* 0801d9c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
