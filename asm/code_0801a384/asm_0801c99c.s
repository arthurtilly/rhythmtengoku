asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c99c \n\
/* 0801c99c */ PUSH {LR} \n\
/* 0801c99e */ LDR R0, =D_0300154c \n\
/* 0801c9a0 */ LDRB R0, [R0] \n\
/* 0801c9a2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801c9a4 */ BNE branch_0801c9ac \n\
/* 0801c9a6 */ LDR R0, =s_intro_stick_seqData \n\
/* 0801c9a8 */ BL func_08002634 \n\
 \n\
branch_0801c9ac: \n\
/* 0801c9ac */ POP {R0} \n\
/* 0801c9ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
