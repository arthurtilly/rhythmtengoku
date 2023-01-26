asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801490c \n\
/* 0801490c */ PUSH {R4, LR} \n\
/* 0801490e */ LDR R4, =D_030046a4 \n\
/* 08014910 */ B branch_08014924 \n\
\n\
.ltorg \n\
 \n\
branch_08014918: \n\
/* 08014918 */ LDR R0, [R4] \n\
/* 0801491a */ LDR R1, =0x2d9 \n\
/* 0801491c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801491e */ LDRB R0, [R0] \n\
/* 08014920 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014922 */ BNE branch_0801492c \n\
 \n\
branch_08014924: \n\
/* 08014924 */ BL func_08014624 \n\
/* 08014928 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801492a */ BEQ branch_08014918 \n\
 \n\
branch_0801492c: \n\
/* 0801492c */ POP {R4} \n\
/* 0801492e */ POP {R0} \n\
/* 08014930 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
