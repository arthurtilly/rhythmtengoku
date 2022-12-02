asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b0d4 \n\
/* 0800b0d4 */ PUSH {R4, LR} \n\
/* 0800b0d6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800b0d8 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800b0da */ BEQ branch_0800b0fc \n\
/* 0800b0dc */ LDR R0, [R4, 0x4] \n\
/* 0800b0de */ BL text_printer_delete \n\
/* 0800b0e2 */ MOVS R1, 0x2A @ Set R1 to 0x2A \n\
/* 0800b0e4 */ LDRSH R0, [R4, R1] \n\
/* 0800b0e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b0e8 */ BLT branch_0800b0f6 \n\
/* 0800b0ea */ LDR R0, =D_03005380 \n\
/* 0800b0ec */ LDR R0, [R0] \n\
/* 0800b0ee */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 0800b0f0 */ LDRSH R1, [R4, R2] \n\
/* 0800b0f2 */ BL func_0804d504 \n\
 \n\
branch_0800b0f6: \n\
/* 0800b0f6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b0f8 */ BL mem_heap_dealloc \n\
 \n\
branch_0800b0fc: \n\
/* 0800b0fc */ POP {R4} \n\
/* 0800b0fe */ POP {R0} \n\
/* 0800b100 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
