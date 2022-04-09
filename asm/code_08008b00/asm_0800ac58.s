asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ac58 \n\
/* 0800ac58 */ PUSH {LR} \n\
/* 0800ac5a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ac5c */ BEQ branch_0800ac62 \n\
/* 0800ac5e */ LDRB R0, [R0, 0x3] \n\
/* 0800ac60 */ B branch_0800ac64 \n\
 \n\
branch_0800ac62: \n\
/* 0800ac62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800ac64: \n\
/* 0800ac64 */ POP {R1} \n\
/* 0800ac66 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
