asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080178e4 \n\
/* 080178e4 */ PUSH {LR} \n\
/* 080178e6 */ LDR R3, =D_030046a4 \n\
/* 080178e8 */ LDR R0, [R3] \n\
/* 080178ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080178ec */ STR R2, [R0, 0x18] \n\
/* 080178ee */ STR R2, [R0, 0x58] \n\
/* 080178f0 */ ADDS R0, 0x5C @ Add 0x5C to R0 \n\
/* 080178f2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080178f4 */ STRB R1, [R0] \n\
/* 080178f6 */ LDR R0, [R3] \n\
/* 080178f8 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 080178fa */ STRB R2, [R0] \n\
/* 080178fc */ BL func_080178ac \n\
/* 08017900 */ POP {R0} \n\
/* 08017902 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
