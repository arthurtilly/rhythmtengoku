asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801314c \n\
/* 0801314c */ PUSH {LR} \n\
/* 0801314e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08013150 */ LDR R0, =D_030046a8 \n\
/* 08013152 */ LDR R0, [R0] \n\
/* 08013154 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08013156 */ BLT branch_08013164 \n\
/* 08013158 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 0801315a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801315c */ LDRB R0, [R0] \n\
/* 0801315e */ B branch_08013168 \n\
\n\
.ltorg \n\
 \n\
branch_08013164: \n\
/* 08013164 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08013166 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08013168: \n\
/* 08013168 */ POP {R1} \n\
/* 0801316a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
