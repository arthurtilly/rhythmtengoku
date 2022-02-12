asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800c6a4 \n\
/* 0800c6a4 */ PUSH {LR} \n\
/* 0800c6a6 */ BL func_08009394 \n\
/* 0800c6aa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c6ac */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800c6ae */ BGE branch_0800c6b2 \n\
/* 0800c6b0 */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0800c6b2: \n\
/* 0800c6b2 */ LSLS R0, R1, 0x3 \n\
/* 0800c6b4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800c6b6 */ LSLS R0, R0, 0x1 \n\
/* 0800c6b8 */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 0800c6ba */ BL __divsi3 \n\
/* 0800c6be */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 0800c6c0 */ BL func_0800c694 \n\
/* 0800c6c4 */ POP {R0} \n\
/* 0800c6c6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
