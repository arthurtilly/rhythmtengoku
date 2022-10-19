asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802394c \n\
/* 0802394c */ LDR R2, =D_03004b10 \n\
/* 0802394e */ LDRH R1, [R2] \n\
/* 08023950 */ LDR R0, =0x0000dfff \n\
/* 08023952 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08023954 */ STRH R0, [R2] \n\
/* 08023956 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
