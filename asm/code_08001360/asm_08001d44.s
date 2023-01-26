asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001d44 \n\
/* 08001d44 */ PUSH {LR} \n\
/* 08001d46 */ SUB SP, 0x4 \n\
/* 08001d48 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08001d4a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08001d4c */ BEQ branch_08001d6e \n\
/* 08001d4e */ LDRB R0, [R1] \n\
/* 08001d50 */ LSLS R0, R0, 0x1F \n\
/* 08001d52 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001d54 */ BEQ branch_08001d6e \n\
/* 08001d56 */ LDR R3, [R1, 0xC] \n\
/* 08001d58 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08001d5a */ BEQ branch_08001d6e \n\
/* 08001d5c */ LDR R0, [R1, 0x10] \n\
/* 08001d5e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08001d60 */ LSLS R2, R2, 0x2 \n\
/* 08001d62 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08001d64 */ STR R1, [SP] \n\
/* 08001d66 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08001d68 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08001d6a */ BL dma3_set \n\
 \n\
branch_08001d6e: \n\
/* 08001d6e */ ADD SP, 0x4 \n\
/* 08001d70 */ POP {R0} \n\
/* 08001d72 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
