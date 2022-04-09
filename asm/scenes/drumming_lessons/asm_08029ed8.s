asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029ed8 \n\
/* 08029ed8 */ PUSH {LR} \n\
/* 08029eda */ LDR R0, =D_030055d0 \n\
/* 08029edc */ LDR R1, [R0] \n\
/* 08029ede */ LDRB R0, [R1] \n\
/* 08029ee0 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08029ee2 */ BNE branch_08029ef4 \n\
/* 08029ee4 */ LDR R0, =0x00000425 \n\
/* 08029ee6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08029ee8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08029eea */ STRB R0, [R1] \n\
/* 08029eec */ BL func_08027f1c \n\
/* 08029ef0 */ BL func_08027f90 \n\
 \n\
branch_08029ef4: \n\
/* 08029ef4 */ POP {R0} \n\
/* 08029ef6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
