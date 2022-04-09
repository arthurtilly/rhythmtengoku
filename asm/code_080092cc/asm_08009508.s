asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009508 \n\
/* 08009508 */ PUSH {LR} \n\
/* 0800950a */ LDR R1, =0x0400010c @ !Hardware REG_TM3D \n\
/* 0800950c */ LDR R0, =0xc3fff0 \n\
/* 0800950e */ STR R0, [R1] \n\
/* 08009510 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009512 */ BL func_0804e8f8 \n\
/* 08009516 */ LDR R1, =D_030011a4 \n\
/* 08009518 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800951a */ STRB R0, [R1] \n\
/* 0800951c */ LDR R0, =D_030011a8 \n\
/* 0800951e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009520 */ STR R1, [R0] \n\
/* 08009522 */ LDR R0, =D_030011ac \n\
/* 08009524 */ STR R1, [R0] \n\
/* 08009526 */ LDR R0, =D_030011a0 \n\
/* 08009528 */ STR R1, [R0] \n\
/* 0800952a */ POP {R0} \n\
/* 0800952c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
