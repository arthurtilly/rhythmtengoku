asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801e928 \n\
/* 0801e928 */ PUSH {LR} \n\
/* 0801e92a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801e92c */ LSLS R1, R1, 0x8 \n\
/* 0801e92e */ BL func_0804f150 \n\
/* 0801e932 */ LDR R1, =D_030046a4 \n\
/* 0801e934 */ LDR R1, [R1] \n\
/* 0801e936 */ STR R0, [R1, 0xC] \n\
/* 0801e938 */ POP {R0} \n\
/* 0801e93a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
