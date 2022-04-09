asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f380 \n\
/* 0802f380 */ PUSH {LR} \n\
/* 0802f382 */ LDR R0, =D_03005380 \n\
/* 0802f384 */ LDR R0, [R0] \n\
/* 0802f386 */ LDR R1, =D_030055d0 \n\
/* 0802f388 */ LDR R1, [R1] \n\
/* 0802f38a */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0802f38c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f38e */ LDRSH R1, [R1, R2] \n\
/* 0802f390 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f392 */ BL func_0804d770 \n\
/* 0802f396 */ POP {R0} \n\
/* 0802f398 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
