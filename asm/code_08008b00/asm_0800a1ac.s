asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a1ac \n\
/* 0800a1ac */ PUSH {LR} \n\
/* 0800a1ae */ CMP R0, 0x80 @ Compare R0 and 0x80 \n\
/* 0800a1b0 */ BLS branch_0800a1b6 \n\
/* 0800a1b2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a1b4 */ B branch_0800a1d0 \n\
 \n\
branch_0800a1b6: \n\
/* 0800a1b6 */ CMP R0, 0x50 @ Compare R0 and 0x50 \n\
/* 0800a1b8 */ BLS branch_0800a1be \n\
/* 0800a1ba */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a1bc */ B branch_0800a1d0 \n\
 \n\
branch_0800a1be: \n\
/* 0800a1be */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 0800a1c0 */ BLS branch_0800a1c6 \n\
/* 0800a1c2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800a1c4 */ B branch_0800a1d0 \n\
 \n\
branch_0800a1c6: \n\
/* 0800a1c6 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 0800a1c8 */ BHI branch_0800a1ce \n\
/* 0800a1ca */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0800a1cc */ B branch_0800a1d0 \n\
 \n\
branch_0800a1ce: \n\
/* 0800a1ce */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
 \n\
branch_0800a1d0: \n\
/* 0800a1d0 */ POP {R1} \n\
/* 0800a1d2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
