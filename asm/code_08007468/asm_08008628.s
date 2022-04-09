asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008628 \n\
/* 08008628 */ PUSH {R4, R5, LR} \n\
/* 0800862a */ LDR R0, =D_0300536c  \n\
/* 0800862c */ LDR R5, [R0] \n\
/* 0800862e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08008630 */ BEQ branch_08008646 \n\
 \n\
branch_08008632: \n\
/* 08008632 */ LDR R4, [R5, 0x14] \n\
/* 08008634 */ LDR R0, [R5, 0x4] \n\
/* 08008636 */ BL mem_heap_dealloc \n\
/* 0800863a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800863c */ BL mem_heap_dealloc \n\
/* 08008640 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 08008642 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08008644 */ BNE branch_08008632 \n\
 \n\
branch_08008646: \n\
/* 08008646 */ LDR R1, =D_0300536c \n\
/* 08008648 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800864a */ STR R0, [R1] \n\
/* 0800864c */ POP {R4, R5} \n\
/* 0800864e */ POP {R0} \n\
/* 08008650 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
