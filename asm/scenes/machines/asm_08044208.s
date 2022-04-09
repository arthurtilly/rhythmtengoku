asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044208 \n\
/* 08044208 */ LDR R1, =D_089e9d18 \n\
/* 0804420a */ LSLS R0, R0, 0x2 \n\
/* 0804420c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804420e */ LDR R1, =D_030055d0 \n\
/* 08044210 */ LDR R1, [R1] \n\
/* 08044212 */ LDRB R1, [R1] \n\
/* 08044214 */ LDR R0, [R0] \n\
/* 08044216 */ LSLS R1, R1, 0x3 \n\
/* 08044218 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804421a */ LDR R0, [R1] \n\
/* 0804421c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
