asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080269e8 \n\
/* 080269e8 */ LDR R2, =D_030055d0 \n\
/* 080269ea */ LDR R1, [R2] \n\
/* 080269ec */ LDR R3, =0x0000181c \n\
/* 080269ee */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080269f0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080269f2 */ STRB R0, [R1] \n\
/* 080269f4 */ LDR R0, [R2] \n\
/* 080269f6 */ LDR R1, =0x0000181e \n\
/* 080269f8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080269fa */ STRH R3, [R0] \n\
/* 080269fc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
