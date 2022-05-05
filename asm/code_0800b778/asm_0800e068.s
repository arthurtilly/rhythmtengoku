asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e068 \n\
/* 0800e068 */ PUSH {R4, LR} \n\
/* 0800e06a */ LDR R4, =(D_03004b10 + 4) \n\
/* 0800e06c */ LSLS R0, R0, 0x1 \n\
/* 0800e06e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800e070 */ LSLS R1, R1, 0x2 \n\
/* 0800e072 */ LSLS R2, R2, 0x8 \n\
/* 0800e074 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800e076 */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 0800e078 */ STRH R1, [R0] \n\
/* 0800e07a */ POP {R4} \n\
/* 0800e07c */ POP {R0} \n\
/* 0800e07e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
