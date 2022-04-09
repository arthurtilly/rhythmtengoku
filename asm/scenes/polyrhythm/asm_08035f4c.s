asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035f4c \n\
/* 08035f4c */ PUSH {R4, LR} \n\
/* 08035f4e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08035f50 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035f52 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08035f54 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035f56 */ BEQ branch_08035f5e \n\
/* 08035f58 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035f5a */ BL func_0803638c \n\
 \n\
branch_08035f5e: \n\
/* 08035f5e */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08035f60 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08035f62 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035f64 */ BEQ branch_08035f6c \n\
/* 08035f66 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035f68 */ BL func_0803638c \n\
 \n\
branch_08035f6c: \n\
/* 08035f6c */ POP {R4} \n\
/* 08035f6e */ POP {R0} \n\
/* 08035f70 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
