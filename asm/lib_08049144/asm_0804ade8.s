asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ade8 \n\
/* 0804ade8 */ PUSH {R4, LR} \n\
/* 0804adea */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804adec */ LSLS R1, R1, 0x18 \n\
/* 0804adee */ LSRS R4, R1, 0x18 \n\
/* 0804adf0 */ LDRB R0, [R3, 0x14] \n\
/* 0804adf2 */ LSLS R0, R0, 0x1B \n\
/* 0804adf4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804adf6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804adf8 */ BEQ branch_0804ae0e \n\
 \n\
branch_0804adfa: \n\
/* 0804adfa */ LDR R0, [R3, 0x18] \n\
/* 0804adfc */ LSLS R1, R2, 0x5 \n\
/* 0804adfe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804ae00 */ STRB R4, [R1, 0xF] \n\
/* 0804ae02 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804ae04 */ LDRB R0, [R3, 0x14] \n\
/* 0804ae06 */ LSLS R0, R0, 0x1B \n\
/* 0804ae08 */ LSRS R0, R0, 0x1B \n\
/* 0804ae0a */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0804ae0c */ BCC branch_0804adfa \n\
 \n\
branch_0804ae0e: \n\
/* 0804ae0e */ POP {R4} \n\
/* 0804ae10 */ POP {R0} \n\
/* 0804ae12 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
