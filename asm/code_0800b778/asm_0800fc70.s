asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fc70 \n\
/* 0800fc70 */ PUSH {R4, LR} \n\
/* 0800fc72 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800fc74 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800fc76 */ BEQ branch_0800fc96 \n\
/* 0800fc78 */ LDR R0, =D_03005380 \n\
/* 0800fc7a */ LDR R0, [R0] \n\
/* 0800fc7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800fc7e */ LDRSH R1, [R4, R2] \n\
/* 0800fc80 */ BL func_0804d504 \n\
/* 0800fc84 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800fc86 */ LDRSB R0, [R4, R0] \n\
/* 0800fc88 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fc8a */ BLT branch_0800fc90 \n\
/* 0800fc8c */ BL func_080021b8 \n\
 \n\
branch_0800fc90: \n\
/* 0800fc90 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800fc92 */ BL mem_heap_dealloc \n\
 \n\
branch_0800fc96: \n\
/* 0800fc96 */ POP {R4} \n\
/* 0800fc98 */ POP {R0} \n\
/* 0800fc9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
