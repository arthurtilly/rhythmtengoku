asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004248 \n\
/* 08004248 */ PUSH {LR} \n\
/* 0800424a */ LDR R1, =D_030008a4 \n\
/* 0800424c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800424e */ STRB R0, [R1] \n\
/* 08004250 */ BL func_08004058 \n\
/* 08004254 */ POP {R0} \n\
/* 08004256 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
