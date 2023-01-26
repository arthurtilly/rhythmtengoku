asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c944 \n\
/* 0801c944 */ PUSH {LR} \n\
/* 0801c946 */ LDR R0, =D_030046a4 \n\
/* 0801c948 */ LDR R0, [R0] \n\
/* 0801c94a */ MOVS R1, 0x97 @ Set R1 to 0x97 \n\
/* 0801c94c */ LSLS R1, R1, 0x3 \n\
/* 0801c94e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801c950 */ LDR R0, [R0] \n\
/* 0801c952 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801c954 */ BL fade_out_soundplayer \n\
/* 0801c958 */ POP {R0} \n\
/* 0801c95a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
