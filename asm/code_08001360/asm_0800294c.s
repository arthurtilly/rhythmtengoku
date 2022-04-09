asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800294c \n\
/* 0800294c */ PUSH {LR} \n\
/* 0800294e */ LSLS R1, R1, 0x18 \n\
/* 08002950 */ LSRS R2, R1, 0x18 \n\
/* 08002952 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002954 */ BEQ branch_08002960 \n\
/* 08002956 */ LDR R1, =0xffff \n\
/* 08002958 */ LSLS R2, R2, 0x18 \n\
/* 0800295a */ ASRS R2, R2, 0x18 \n\
/* 0800295c */ BL func_0804b66c \n\
 \n\
branch_08002960: \n\
/* 08002960 */ POP {R0} \n\
/* 08002962 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
