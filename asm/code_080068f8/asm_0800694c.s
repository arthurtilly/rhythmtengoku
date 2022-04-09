asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800694c \n\
/* 0800694c */ PUSH {R4, R5, LR} \n\
/* 0800694e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08006950 */ LDRH R0, [R5, 0x1C] \n\
/* 08006952 */ LSLS R0, R0, 0x14 \n\
/* 08006954 */ LSRS R0, R0, 0x14 \n\
/* 08006956 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08006958 */ BNE branch_08006960 \n\
/* 0800695a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800695c */ BL func_08006a8c \n\
 \n\
branch_08006960: \n\
/* 08006960 */ LDR R0, [R5, 0x18] \n\
/* 08006962 */ LDR R0, [R0, 0x1C] \n\
/* 08006964 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006966 */ BEQ branch_0800697c \n\
/* 08006968 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800696a */ B branch_08006976 \n\
 \n\
branch_0800696c: \n\
/* 0800696c */ LDR R0, [R5] \n\
/* 0800696e */ LDR R1, [R4, 0x4] \n\
/* 08006970 */ BL func_08005424 \n\
/* 08006974 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
 \n\
branch_08006976: \n\
/* 08006976 */ LDR R0, [R4, 0x4] \n\
/* 08006978 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800697a */ BNE branch_0800696c \n\
 \n\
branch_0800697c: \n\
/* 0800697c */ LDR R0, [R5, 0x8] \n\
/* 0800697e */ BL func_08006364 \n\
/* 08006982 */ LDR R0, [R5, 0x14] \n\
/* 08006984 */ BL func_08006364 \n\
/* 08006988 */ LDR R0, [R5, 0x10] \n\
/* 0800698a */ BL mem_heap_dealloc \n\
/* 0800698e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006990 */ BL mem_heap_dealloc \n\
/* 08006994 */ POP {R4, R5} \n\
/* 08006996 */ POP {R0} \n\
/* 08006998 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
