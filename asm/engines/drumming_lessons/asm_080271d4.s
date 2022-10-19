asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080271d4 \n\
/* 080271d4 */ PUSH {LR} \n\
/* 080271d6 */ LSLS R1, R2, 0x10 \n\
/* 080271d8 */ LSRS R1, R1, 0x10 \n\
/* 080271da */ LDR R2, =D_089e16f0 \n\
/* 080271dc */ LSLS R0, R0, 0x2 \n\
/* 080271de */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080271e0 */ LDR R0, [R0] \n\
/* 080271e2 */ BL func_0802ad2c \n\
/* 080271e6 */ POP {R0} \n\
/* 080271e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
