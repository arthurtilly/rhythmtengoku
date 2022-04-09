asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080074ec \n\
/* 080074ec */ PUSH {R4-R6, LR} \n\
/* 080074ee */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080074f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080074f2 */ LDRSH R0, [R5, R1] \n\
/* 080074f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080074f6 */ BLT branch_08007538 \n\
/* 080074f8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080074fa */ BL mem_heap_alloc \n\
/* 080074fe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007500 */ LDRH R0, [R5] \n\
/* 08007502 */ STRH R0, [R4] \n\
/* 08007504 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08007506 */ LDRSH R0, [R5, R2] \n\
/* 08007508 */ LSLS R0, R0, 0x8 \n\
/* 0800750a */ STR R0, [R4, 0x8] \n\
/* 0800750c */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0800750e */ LDRSH R0, [R5, R3] \n\
/* 08007510 */ LSLS R0, R0, 0x8 \n\
/* 08007512 */ STR R0, [R4, 0xC] \n\
/* 08007514 */ LDRH R0, [R5, 0x6] \n\
/* 08007516 */ STRH R0, [R4, 0x2] \n\
/* 08007518 */ LDRH R0, [R5, 0x8] \n\
/* 0800751a */ STRH R0, [R4, 0x4] \n\
/* 0800751c */ LDR R0, =D_03005380 \n\
/* 0800751e */ LDR R0, [R0] \n\
/* 08007520 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08007522 */ LDRSH R1, [R5, R6] \n\
/* 08007524 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08007526 */ LDRSH R2, [R5, R3] \n\
/* 08007528 */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
/* 0800752a */ LDRSH R3, [R5, R6] \n\
/* 0800752c */ BL func_0804d5d4 \n\
/* 08007530 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08007532 */ B branch_0800753c \n\
\n\
.ltorg \n\
 \n\
branch_08007538: \n\
/* 08007538 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800753a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800753c: \n\
/* 0800753c */ POP {R4-R6} \n\
/* 0800753e */ POP {R1} \n\
/* 08007540 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
