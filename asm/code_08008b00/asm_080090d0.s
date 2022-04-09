asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080090d0 \n\
/* 080090d0 */ PUSH {LR} \n\
/* 080090d2 */ SUB SP, 0x4 \n\
/* 080090d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080090d6 */ B branch_080090dc \n\
 \n\
branch_080090d8: \n\
/* 080090d8 */ LDR R0, [SP] \n\
/* 080090da */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
 \n\
branch_080090dc: \n\
/* 080090dc */ STR R0, [SP] \n\
/* 080090de */ LDR R0, [SP] \n\
/* 080090e0 */ CMP R0, 0xC7 @ Compare R0 and 0xC7 \n\
/* 080090e2 */ BLS branch_080090d8 \n\
/* 080090e4 */ ADD SP, 0x4 \n\
/* 080090e6 */ POP {R0} \n\
/* 080090e8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
