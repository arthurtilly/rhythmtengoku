asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080451e4 \n\
/* 080451e4 */ PUSH {LR} \n\
/* 080451e6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080451e8 */ LDR R0, =D_03005380 \n\
/* 080451ea */ LDR R0, [R0] \n\
/* 080451ec */ LDR R1, =D_030055d0 \n\
/* 080451ee */ LDR R1, [R1] \n\
/* 080451f0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080451f2 */ LDRSH R1, [R1, R3] \n\
/* 080451f4 */ LSLS R2, R2, 0x18 \n\
/* 080451f6 */ ASRS R2, R2, 0x18 \n\
/* 080451f8 */ BL func_0804cebc \n\
/* 080451fc */ POP {R0} \n\
/* 080451fe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
