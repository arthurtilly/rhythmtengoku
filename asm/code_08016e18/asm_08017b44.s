asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017b44 \n\
/* 08017b44 */ PUSH {R4, LR} \n\
/* 08017b46 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017b48 */ LDR R2, [R4, 0x24] \n\
/* 08017b4a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017b4c */ BEQ branch_08017b54 \n\
/* 08017b4e */ LDR R1, [R4, 0x64] \n\
/* 08017b50 */ BL _call_via_r2 \n\
 \n\
branch_08017b54: \n\
/* 08017b54 */ LDR R0, [R4, 0x64] \n\
/* 08017b56 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017b58 */ BEQ branch_08017b5e \n\
/* 08017b5a */ BL mem_heap_dealloc \n\
 \n\
branch_08017b5e: \n\
/* 08017b5e */ LDR R2, [R4] \n\
/* 08017b60 */ LDR R1, [R4, 0x4] \n\
/* 08017b62 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017b64 */ BEQ branch_08017b6a \n\
/* 08017b66 */ STR R1, [R2, 0x4] \n\
/* 08017b68 */ B branch_08017b70 \n\
 \n\
branch_08017b6a: \n\
/* 08017b6a */ LDR R0, =D_030046a4 \n\
/* 08017b6c */ LDR R0, [R0] \n\
/* 08017b6e */ STR R1, [R0, 0x18] \n\
 \n\
branch_08017b70: \n\
/* 08017b70 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08017b72 */ BEQ branch_08017b76 \n\
/* 08017b74 */ STR R2, [R1] \n\
 \n\
branch_08017b76: \n\
/* 08017b76 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017b78 */ BL mem_heap_dealloc \n\
/* 08017b7c */ POP {R4} \n\
/* 08017b7e */ POP {R0} \n\
/* 08017b80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
