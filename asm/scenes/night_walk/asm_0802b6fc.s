asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b6fc \n\
/* 0802b6fc */ PUSH {R4, LR} \n\
/* 0802b6fe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802b700 */ LDRB R0, [R4, 0xE] \n\
/* 0802b702 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b704 */ BEQ branch_0802b720 \n\
/* 0802b706 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0802b708 */ BL func_0800c3a4 \n\
/* 0802b70c */ LDR R1, =D_030055d0 \n\
/* 0802b70e */ LDR R1, [R1] \n\
/* 0802b710 */ LDR R3, =0x000003b2 \n\
/* 0802b712 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0802b714 */ STRH R0, [R2] \n\
/* 0802b716 */ LDRH R0, [R4, 0x10] \n\
/* 0802b718 */ MOVS R2, 0xED @ Set R2 to 0xED \n\
/* 0802b71a */ LSLS R2, R2, 0x2 \n\
/* 0802b71c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b71e */ STRH R0, [R1] \n\
 \n\
branch_0802b720: \n\
/* 0802b720 */ POP {R4} \n\
/* 0802b722 */ POP {R0} \n\
/* 0802b724 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
