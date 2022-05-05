asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d140 \n\
/* 0804d140 */ PUSH {LR} \n\
/* 0804d142 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804d144 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804d146 */ B branch_0804d152 \n\
 \n\
branch_0804d148: \n\
/* 0804d148 */ LDRB R0, [R1, 0x4] \n\
/* 0804d14a */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0804d14c */ LSLS R0, R0, 0x10 \n\
/* 0804d14e */ LSRS R2, R0, 0x10 \n\
/* 0804d150 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
 \n\
branch_0804d152: \n\
/* 0804d152 */ LDR R0, [R1] \n\
/* 0804d154 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d156 */ BNE branch_0804d148 \n\
/* 0804d158 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804d15a */ POP {R1} \n\
/* 0804d15c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
