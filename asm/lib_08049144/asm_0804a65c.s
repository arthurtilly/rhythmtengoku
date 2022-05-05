asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a65c \n\
/* 0804a65c */ PUSH {LR} \n\
/* 0804a65e */ LSLS R0, R0, 0x18 \n\
/* 0804a660 */ LSRS R0, R0, 0x18 \n\
/* 0804a662 */ CMP R0, 0x3F @ Compare R0 and 0x3F \n\
/* 0804a664 */ BHI branch_0804a66c \n\
/* 0804a666 */ LSLS R0, R0, 0x19 \n\
/* 0804a668 */ LSRS R0, R0, 0x18 \n\
/* 0804a66a */ B branch_0804a66e \n\
 \n\
branch_0804a66c: \n\
/* 0804a66c */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
 \n\
branch_0804a66e: \n\
/* 0804a66e */ POP {R1} \n\
/* 0804a670 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
