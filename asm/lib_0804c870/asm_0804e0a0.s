asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e0a0 \n\
/* 0804e0a0 */ PUSH {LR} \n\
/* 0804e0a2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804e0a4 */ LDRH R0, [R1, 0x1E] \n\
/* 0804e0a6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804e0a8 */ STRH R0, [R1, 0x1E] \n\
/* 0804e0aa */ LSLS R0, R0, 0x10 \n\
/* 0804e0ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804e0ae */ BNE branch_0804e0b6 \n\
/* 0804e0b0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804e0b2 */ LSLS R0, R0, 0x1 \n\
/* 0804e0b4 */ STRH R0, [R1, 0x1E] \n\
 \n\
branch_0804e0b6: \n\
/* 0804e0b6 */ LDRH R0, [R1, 0x1E] \n\
/* 0804e0b8 */ POP {R1} \n\
/* 0804e0ba */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
