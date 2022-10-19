asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802deb0 \n\
/* 0802deb0 */ PUSH {LR} \n\
/* 0802deb2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802deb4 */ BL func_0802de60 \n\
/* 0802deb8 */ POP {R0} \n\
/* 0802deba */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
