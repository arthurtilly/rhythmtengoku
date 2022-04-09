asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080140f8 \n\
/* 080140f8 */ PUSH {LR} \n\
/* 080140fa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080140fc */ LDR R0, =D_03005380 \n\
/* 080140fe */ LDR R0, [R0] \n\
/* 08014100 */ LSLS R1, R1, 0x10 \n\
/* 08014102 */ ASRS R1, R1, 0x10 \n\
/* 08014104 */ LDR R2, =D_03004b28 \n\
/* 08014106 */ ADDS R3, R2, 0x2 @ Set R3 to R2 + 0x2 \n\
/* 08014108 */ BL func_0804db44 \n\
/* 0801410c */ POP {R0} \n\
/* 0801410e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
