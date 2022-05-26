asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080073f0 \n\
/* 080073f0 */ PUSH {LR} \n\
/* 080073f2 */ LDR R0, =D_03005380 \n\
/* 080073f4 */ LDR R0, [R0] \n\
/* 080073f6 */ BL func_0804cbcc \n\
/* 080073fa */ LDR R1, =(D_03004b10 + 0x454) \n\
/* 080073fc */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080073fe */ BL func_080020ec \n\
/* 08007402 */ POP {R0} \n\
/* 08007404 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
