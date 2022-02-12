asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a954 \n\
/* 0802a954 */ PUSH {LR} \n\
/* 0802a956 */ LDR R0, =D_030055d0 \n\
/* 0802a958 */ LDR R0, [R0] \n\
/* 0802a95a */ LDRB R0, [R0, 0x1] \n\
/* 0802a95c */ LSLS R0, R0, 0x1F \n\
/* 0802a95e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a960 */ BNE branch_0802a966 \n\
/* 0802a962 */ BL func_0802a674 \n\
 \n\
branch_0802a966: \n\
/* 0802a966 */ POP {R0} \n\
/* 0802a968 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
