asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018828 \n\
/* 08018828 */ PUSH {LR} \n\
/* 0801882a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801882c */ LDR R0, =D_030046a4 \n\
/* 0801882e */ LDR R0, [R0] \n\
/* 08018830 */ MOVS R2, 0x93 @ Set R2 to 0x93 \n\
/* 08018832 */ LSLS R2, R2, 0x3 \n\
/* 08018834 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08018836 */ LDR R0, [R0] \n\
/* 08018838 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801883a */ BEQ branch_08018844 \n\
/* 0801883c */ LSLS R1, R1, 0x10 \n\
/* 0801883e */ ASRS R1, R1, 0x10 \n\
/* 08018840 */ BL func_0800ac80 \n\
 \n\
branch_08018844: \n\
/* 08018844 */ POP {R0} \n\
/* 08018846 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
