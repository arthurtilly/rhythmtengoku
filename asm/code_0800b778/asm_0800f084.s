asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f084 \n\
/* 0800f084 */ PUSH {R4, LR} \n\
/* 0800f086 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0800f088: \n\
/* 0800f088 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f08a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800f08c */ BL func_0800f070 \n\
/* 0800f090 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f092 */ CMP R4, 0x9 @ Compare R4 and 0x9 \n\
/* 0800f094 */ BLS branch_0800f088 \n\
/* 0800f096 */ POP {R4} \n\
/* 0800f098 */ POP {R0} \n\
/* 0800f09a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
