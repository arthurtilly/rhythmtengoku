asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080086c4 \n\
/* 080086c4 */ PUSH {R4, R5, LR} \n\
/* 080086c6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080086c8 */ LDRB R0, [R5, 0xC] \n\
/* 080086ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080086cc */ BNE branch_080086d2 \n\
 \n\
branch_080086ce: \n\
/* 080086ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080086d0 */ B branch_08008716 \n\
 \n\
branch_080086d2: \n\
/* 080086d2 */ LDR R0, =D_0300536c  \n\
/* 080086d4 */ LDR R4, [R0] \n\
/* 080086d6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080086d8 */ BEQ branch_080086e6 \n\
 \n\
branch_080086da: \n\
/* 080086da */ LDR R0, [R4] \n\
/* 080086dc */ CMP R0, R5 @ Check R0 - R5 \n\
/* 080086de */ BEQ branch_080086ce \n\
/* 080086e0 */ LDR R4, [R4, 0x14] \n\
/* 080086e2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080086e4 */ BNE branch_080086da \n\
 \n\
branch_080086e6: \n\
/* 080086e6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080086e8 */ BL mem_heap_alloc \n\
/* 080086ec */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080086ee */ STR R5, [R4] \n\
/* 080086f0 */ LDR R1, =D_0300536c \n\
/* 080086f2 */ LDR R0, [R1] \n\
/* 080086f4 */ STR R0, [R4, 0x14] \n\
/* 080086f6 */ STR R4, [R1] \n\
/* 080086f8 */ LDR R0, [R5] \n\
/* 080086fa */ LDRH R0, [R0, 0x4] \n\
/* 080086fc */ LSLS R0, R0, 0x1 \n\
/* 080086fe */ BL mem_heap_alloc \n\
/* 08008702 */ STR R0, [R4, 0x4] \n\
/* 08008704 */ LDR R0, [R5, 0x4] \n\
/* 08008706 */ STR R0, [R4, 0x8] \n\
/* 08008708 */ LDRH R0, [R5, 0x8] \n\
/* 0800870a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800870c */ STRH R0, [R4, 0xC] \n\
/* 0800870e */ LDRH R0, [R5, 0xA] \n\
/* 08008710 */ STRH R0, [R4, 0xE] \n\
/* 08008712 */ STRB R1, [R4, 0x10] \n\
/* 08008714 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_08008716: \n\
/* 08008716 */ POP {R4, R5} \n\
/* 08008718 */ POP {R1} \n\
/* 0800871a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
