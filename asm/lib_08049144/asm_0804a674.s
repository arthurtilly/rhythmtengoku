asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a674 \n\
/* 0804a674 */ PUSH {LR} \n\
/* 0804a676 */ LSLS R0, R0, 0x18 \n\
/* 0804a678 */ LSRS R1, R0, 0x18 \n\
/* 0804a67a */ CMP R1, 0x3F @ Compare R1 and 0x3F \n\
/* 0804a67c */ BLS branch_0804a688 \n\
/* 0804a67e */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804a680 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804a682 */ LSLS R0, R0, 0x19 \n\
/* 0804a684 */ LSRS R0, R0, 0x18 \n\
/* 0804a686 */ B branch_0804a68a \n\
 \n\
branch_0804a688: \n\
/* 0804a688 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
 \n\
branch_0804a68a: \n\
/* 0804a68a */ POP {R1} \n\
/* 0804a68c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
