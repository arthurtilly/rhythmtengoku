asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f794 \n\
/* 0801f794 */ PUSH {LR} \n\
/* 0801f796 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801f798 */ LDR R0, =D_03005380 \n\
/* 0801f79a */ LDR R0, [R0] \n\
/* 0801f79c */ LDR R1, =D_030055d0 \n\
/* 0801f79e */ LDR R1, [R1] \n\
/* 0801f7a0 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0801f7a2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f7a4 */ LDRSH R1, [R1, R3] \n\
/* 0801f7a6 */ LSLS R2, R2, 0x18 \n\
/* 0801f7a8 */ ASRS R2, R2, 0x18 \n\
/* 0801f7aa */ BL func_0804cebc \n\
/* 0801f7ae */ POP {R0} \n\
/* 0801f7b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
