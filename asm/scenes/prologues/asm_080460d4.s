asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080460d4 \n\
/* 080460d4 */ PUSH {LR} \n\
/* 080460d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080460d8 */ LDR R0, =D_03005380 \n\
/* 080460da */ LDR R0, [R0] \n\
/* 080460dc */ LDR R1, =D_030055d0 \n\
/* 080460de */ LDR R1, [R1] \n\
/* 080460e0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080460e2 */ LDRSH R1, [R1, R3] \n\
/* 080460e4 */ LSLS R2, R2, 0x18 \n\
/* 080460e6 */ ASRS R2, R2, 0x18 \n\
/* 080460e8 */ BL func_0804cebc \n\
/* 080460ec */ POP {R0} \n\
/* 080460ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
