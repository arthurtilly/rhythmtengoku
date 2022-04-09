asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a914 \n\
/* 0800a914 */ PUSH {LR} \n\
/* 0800a916 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a918 */ BEQ branch_0800a930 \n\
/* 0800a91a */ LDRB R1, [R0, 0x2] \n\
/* 0800a91c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800a91e */ BEQ branch_0800a926 \n\
/* 0800a920 */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 0800a922 */ BEQ branch_0800a92c \n\
/* 0800a924 */ B branch_0800a930 \n\
 \n\
branch_0800a926: \n\
/* 0800a926 */ BL func_0800a818 \n\
/* 0800a92a */ B branch_0800a930 \n\
 \n\
branch_0800a92c: \n\
/* 0800a92c */ BL func_0800a890 \n\
 \n\
branch_0800a930: \n\
/* 0800a930 */ POP {R0} \n\
/* 0800a932 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
