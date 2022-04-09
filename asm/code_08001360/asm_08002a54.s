asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002a54 \n\
/* 08002a54 */ PUSH {LR} \n\
/* 08002a56 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08002a58 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08002a5a */ BGE branch_08002a62 \n\
/* 08002a5c */ LDR R0, =0x7fffffff \n\
/* 08002a5e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002a60 */ LDR R1, [R0] \n\
 \n\
branch_08002a62: \n\
/* 08002a62 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002a64 */ POP {R1} \n\
/* 08002a66 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
