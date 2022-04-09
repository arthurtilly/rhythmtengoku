asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b064 \n\
/* 0802b064 */ PUSH {R4, R5, LR} \n\
/* 0802b066 */ BL func_0802a994 \n\
/* 0802b06a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802b06c */ LDR R5, =D_08aa4460 \n\
 \n\
branch_0802b06e: \n\
/* 0802b06e */ LDR R0, =D_03001568 \n\
/* 0802b070 */ LDR R0, [R0] \n\
/* 0802b072 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802b074 */ LDRB R0, [R0] \n\
/* 0802b076 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b078 */ BEQ branch_0802b080 \n\
/* 0802b07a */ LDR R0, [R5] \n\
/* 0802b07c */ BL func_08002828 \n\
 \n\
branch_0802b080: \n\
/* 0802b080 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0802b082 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0802b084 */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 0802b086 */ BLS branch_0802b06e \n\
/* 0802b088 */ POP {R4, R5} \n\
/* 0802b08a */ POP {R0} \n\
/* 0802b08c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
