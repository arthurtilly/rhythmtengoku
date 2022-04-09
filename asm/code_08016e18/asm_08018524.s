asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018524 \n\
/* 08018524 */ PUSH {LR} \n\
/* 08018526 */ LDR R0, =D_089cfde0 \n\
/* 08018528 */ BL func_0801daf8 \n\
/* 0801852c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801852e */ BL func_0801db04 \n\
/* 08018532 */ POP {R0} \n\
/* 08018534 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
