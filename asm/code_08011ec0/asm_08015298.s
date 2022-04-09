asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015298 \n\
/* 08015298 */ PUSH {LR} \n\
/* 0801529a */ BL func_08015108 \n\
/* 0801529e */ LDR R0, =D_030046a4 \n\
/* 080152a0 */ LDR R0, [R0] \n\
/* 080152a2 */ LDR R0, [R0, 0x38] \n\
/* 080152a4 */ BL func_0800a914 \n\
/* 080152a8 */ POP {R0} \n\
/* 080152aa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
