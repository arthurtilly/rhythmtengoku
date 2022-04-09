asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e980 \n\
/* 0802e980 */ PUSH {LR} \n\
/* 0802e982 */ LDR R0, =D_030055d0 \n\
/* 0802e984 */ LDR R0, [R0] \n\
/* 0802e986 */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 0802e988 */ LDRB R0, [R0, 0x6] \n\
/* 0802e98a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e98c */ BEQ branch_0802e992 \n\
/* 0802e98e */ BL func_0802e8ac \n\
 \n\
branch_0802e992: \n\
/* 0802e992 */ POP {R0} \n\
/* 0802e994 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
