asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080028a8 \n\
/* 080028a8 */ PUSH {LR} \n\
/* 080028aa */ LSLS R1, R1, 0x10 \n\
/* 080028ac */ LSRS R2, R1, 0x10 \n\
/* 080028ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080028b0 */ BEQ branch_080028bc \n\
/* 080028b2 */ LDR R1, =0xffff \n\
/* 080028b4 */ LSLS R2, R2, 0x10 \n\
/* 080028b6 */ ASRS R2, R2, 0x10 \n\
/* 080028b8 */ BL func_0804b65c \n\
 \n\
branch_080028bc: \n\
/* 080028bc */ POP {R0} \n\
/* 080028be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
