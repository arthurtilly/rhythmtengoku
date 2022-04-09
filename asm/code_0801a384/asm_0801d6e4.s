asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d6e4 \n\
/* 0801d6e4 */ PUSH {LR} \n\
/* 0801d6e6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801d6e8 */ LDR R0, =D_03005380 \n\
/* 0801d6ea */ LDR R0, [R0] \n\
/* 0801d6ec */ LSLS R1, R1, 0x10 \n\
/* 0801d6ee */ ASRS R1, R1, 0x10 \n\
/* 0801d6f0 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0801d6f2 */ LSLS R2, R2, 0x2 \n\
/* 0801d6f4 */ BL func_0804d890 \n\
/* 0801d6f8 */ POP {R0} \n\
/* 0801d6fa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
