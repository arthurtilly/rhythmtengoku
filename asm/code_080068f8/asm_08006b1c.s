asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006b1c \n\
/* 08006b1c */ PUSH {R4, LR} \n\
/* 08006b1e */ LDR R4, [SP, 0x8] \n\
/* 08006b20 */ STR R1, [R0, 0x20] \n\
/* 08006b22 */ STR R2, [R0, 0x24] \n\
/* 08006b24 */ STR R3, [R0, 0x28] \n\
/* 08006b26 */ STR R4, [R0, 0x2C] \n\
/* 08006b28 */ POP {R4} \n\
/* 08006b2a */ POP {R0} \n\
/* 08006b2c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
