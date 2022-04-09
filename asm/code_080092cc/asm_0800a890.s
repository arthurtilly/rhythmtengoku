asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a890 \n\
/* 0800a890 */ PUSH {R4-R6, LR} \n\
/* 0800a892 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a894 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800a896 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800a898 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0800a89a */ LDRSH R0, [R4, R2] \n\
/* 0800a89c */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0800a89e */ BCS branch_0800a8ba \n\
/* 0800a8a0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800a8a2 */ LDR R2, [R4, 0x1C] \n\
 \n\
branch_0800a8a4: \n\
/* 0800a8a4 */ LDR R0, [R2] \n\
/* 0800a8a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a8a8 */ BEQ branch_0800a8b2 \n\
/* 0800a8aa */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800a8ac */ BNE branch_0800a8b0 \n\
/* 0800a8ae */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
 \n\
branch_0800a8b0: \n\
/* 0800a8b0 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
 \n\
branch_0800a8b2: \n\
/* 0800a8b2 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0800a8b4 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0800a8b6 */ CMP R3, R5 @ Check R3 - R5 \n\
/* 0800a8b8 */ BCC branch_0800a8a4 \n\
 \n\
branch_0800a8ba: \n\
/* 0800a8ba */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800a8bc */ BEQ branch_0800a90e \n\
/* 0800a8be */ LDR R0, [R4, 0x1C] \n\
/* 0800a8c0 */ LSLS R5, R1, 0x2 \n\
/* 0800a8c2 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0800a8c4 */ LDR R2, [R0] \n\
/* 0800a8c6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a8c8 */ BL func_0800a4a8 \n\
/* 0800a8cc */ LDR R0, [R4, 0x1C] \n\
/* 0800a8ce */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0800a8d0 */ LDR R0, [R0] \n\
/* 0800a8d2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a8d4 */ BEQ branch_0800a8da \n\
/* 0800a8d6 */ BL mem_heap_dealloc \n\
 \n\
branch_0800a8da: \n\
/* 0800a8da */ LDR R0, [R4, 0x1C] \n\
/* 0800a8dc */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0800a8de */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800a8e0 */ STR R5, [R0] \n\
/* 0800a8e2 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800a8e4 */ BHI branch_0800a90e \n\
/* 0800a8e6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a8e8 */ BL func_0800a6a0 \n\
/* 0800a8ec */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a8ee */ ADDS R0, 0x56 @ Add 0x56 to R0 \n\
/* 0800a8f0 */ LDRB R1, [R0] \n\
/* 0800a8f2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a8f4 */ BL func_0800a794 \n\
/* 0800a8f8 */ STRB R5, [R4, 0x3] \n\
/* 0800a8fa */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a8fc */ ADDS R1, 0x39 @ Add 0x39 to R1 \n\
/* 0800a8fe */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a900 */ STRB R0, [R1] \n\
/* 0800a902 */ LDR R1, [R4, 0x3C] \n\
/* 0800a904 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800a906 */ BEQ branch_0800a90e \n\
/* 0800a908 */ LDR R0, [R4, 0x40] \n\
/* 0800a90a */ BL _call_via_r1 \n\
 \n\
branch_0800a90e: \n\
/* 0800a90e */ POP {R4-R6} \n\
/* 0800a910 */ POP {R0} \n\
/* 0800a912 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
