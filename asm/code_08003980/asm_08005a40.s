asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005a40 \n\
/* 08005a40 */ PUSH {R4, R5, LR} \n\
/* 08005a42 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005a44 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08005a46 */ LDR R0, [R4, 0x4] \n\
/* 08005a48 */ LDR R1, [R0, 0xC] \n\
/* 08005a4a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005a4c */ BEQ branch_08005a54 \n\
/* 08005a4e */ LDR R0, [R4, 0xC] \n\
/* 08005a50 */ BL _call_via_r1 \n\
 \n\
branch_08005a54: \n\
/* 08005a54 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08005a56 */ BNE branch_08005a64 \n\
/* 08005a58 */ LDR R1, [R4, 0x10] \n\
/* 08005a5a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005a5c */ BEQ branch_08005a64 \n\
/* 08005a5e */ LDR R0, [R4, 0x14] \n\
/* 08005a60 */ BL _call_via_r1 \n\
 \n\
branch_08005a64: \n\
/* 08005a64 */ LDR R0, [R4, 0xC] \n\
/* 08005a66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005a68 */ BEQ branch_08005a6e \n\
/* 08005a6a */ BL mem_heap_dealloc \n\
 \n\
branch_08005a6e: \n\
/* 08005a6e */ LDRB R0, [R4] \n\
/* 08005a70 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08005a72 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08005a74 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08005a76 */ STRB R1, [R4] \n\
/* 08005a78 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005a7a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08005a7c */ STR R0, [R4, 0x8] \n\
/* 08005a7e */ POP {R4, R5} \n\
/* 08005a80 */ POP {R0} \n\
/* 08005a82 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
