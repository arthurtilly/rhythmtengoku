asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080174e8 \n\
/* 080174e8 */ PUSH {LR} \n\
/* 080174ea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080174ec */ LDR R0, =D_03005380 \n\
/* 080174ee */ LDR R0, [R0] \n\
/* 080174f0 */ LDR R1, =D_030046a4 \n\
/* 080174f2 */ LDR R1, [R1] \n\
/* 080174f4 */ LDR R3, =0x494 \n\
/* 080174f6 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080174f8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080174fa */ LDRSH R1, [R1, R3] \n\
/* 080174fc */ LSLS R2, R2, 0x18 \n\
/* 080174fe */ ASRS R2, R2, 0x18 \n\
/* 08017500 */ BL func_0804cebc \n\
/* 08017504 */ POP {R0} \n\
/* 08017506 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
