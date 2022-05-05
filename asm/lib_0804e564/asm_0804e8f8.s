asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e8f8 \n\
/* 0804e8f8 */ PUSH {LR} \n\
/* 0804e8fa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804e8fc */ LDR R0, =D_03004440 \n\
/* 0804e8fe */ LDRB R0, [R0] \n\
/* 0804e900 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e902 */ BNE branch_0804e906 \n\
/* 0804e904 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_0804e906: \n\
/* 0804e906 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804e908 */ BL func_0804e618 \n\
/* 0804e90c */ POP {R0} \n\
/* 0804e90e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
