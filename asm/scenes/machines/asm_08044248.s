asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044248 \n\
/* 08044248 */ LDR R1, =D_089e9d18 \n\
/* 0804424a */ LSLS R0, R0, 0x2 \n\
/* 0804424c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804424e */ LDR R1, =D_030055d0 \n\
/* 08044250 */ LDR R1, [R1] \n\
/* 08044252 */ LDRB R1, [R1] \n\
/* 08044254 */ LDR R0, [R0] \n\
/* 08044256 */ LSLS R1, R1, 0x3 \n\
/* 08044258 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804425a */ LDR R0, [R1, 0x4] \n\
/* 0804425c */ LDRH R0, [R0, 0x2] \n\
/* 0804425e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
