asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011ec0 \n\
/* 08011ec0 */ PUSH {LR} \n\
/* 08011ec2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011ec4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011ec6 */ BL func_08012200 \n\
/* 08011eca */ POP {R0} \n\
/* 08011ecc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
