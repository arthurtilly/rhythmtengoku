asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ac50 \n\
/* 0802ac50 */ PUSH {R4, R5, LR} \n\
/* 0802ac52 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802ac54 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802ac56 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802ac58 */ BEQ branch_0802ac86 \n\
/* 0802ac5a */ LDR R0, [R4, 0x8] \n\
/* 0802ac5c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ac5e */ BEQ branch_0802ac6a \n\
/* 0802ac60 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ac62 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ac64 */ BL func_0802aac0 \n\
/* 0802ac68 */ B branch_0802ac76 \n\
 \n\
branch_0802ac6a: \n\
/* 0802ac6a */ LDRB R0, [R4] \n\
/* 0802ac6c */ LDRH R1, [R4, 0x2] \n\
/* 0802ac6e */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802ac70 */ LDRSH R2, [R4, R3] \n\
/* 0802ac72 */ BL func_0802ab7c \n\
 \n\
branch_0802ac76: \n\
/* 0802ac76 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802ac78 */ BEQ branch_0802ac86 \n\
/* 0802ac7a */ LDR R1, [R4, 0xC] \n\
/* 0802ac7c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802ac7e */ BEQ branch_0802ac86 \n\
/* 0802ac80 */ LDR R0, [R4, 0x10] \n\
/* 0802ac82 */ BL _call_via_r1 \n\
 \n\
branch_0802ac86: \n\
/* 0802ac86 */ POP {R4, R5} \n\
/* 0802ac88 */ POP {R0} \n\
/* 0802ac8a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
