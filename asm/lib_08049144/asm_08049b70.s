asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049b70 \n\
/* 08049b70 */ PUSH {LR} \n\
/* 08049b72 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08049b74 */ LDR R0, =D_03005b44 \n\
/* 08049b76 */ LDRB R0, [R0] \n\
/* 08049b78 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049b7a */ BNE branch_08049b80 \n\
/* 08049b7c */ LDR R0, =D_03005620 \n\
/* 08049b7e */ STR R1, [R0] \n\
 \n\
branch_08049b80: \n\
/* 08049b80 */ POP {R0} \n\
/* 08049b82 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
