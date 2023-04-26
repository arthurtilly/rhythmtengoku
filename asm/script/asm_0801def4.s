asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801def4 \n\
/* 0801def4 */ PUSH {LR} \n\
/* 0801def6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801def8 */ BL func_080013e8 \n\
/* 0801defc */ LDR R0, =D_03005380 \n\
/* 0801defe */ LDR R0, [R0] \n\
/* 0801df00 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801df02 */ BL func_0804e1bc \n\
/* 0801df06 */ LDR R0, =gCurrentSceneData \n\
/* 0801df08 */ LDR R1, [R0] \n\
/* 0801df0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801df0c */ STRB R0, [R1] \n\
/* 0801df0e */ POP {R0} \n\
/* 0801df10 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
