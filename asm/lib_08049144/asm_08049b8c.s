asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049b8c \n\
/* 08049b8c */ PUSH {LR} \n\
/* 08049b8e */ LSLS R0, R0, 0x18 \n\
/* 08049b90 */ LSRS R1, R0, 0x18 \n\
/* 08049b92 */ LDR R0, =D_03005b44 \n\
/* 08049b94 */ LDRB R0, [R0] \n\
/* 08049b96 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049b98 */ BNE branch_08049b9e \n\
/* 08049b9a */ LDR R0, =D_03005b28 \n\
/* 08049b9c */ STRB R1, [R0] \n\
 \n\
branch_08049b9e: \n\
/* 08049b9e */ POP {R0} \n\
/* 08049ba0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
