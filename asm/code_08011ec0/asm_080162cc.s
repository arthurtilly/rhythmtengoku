asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080162cc \n\
/* 080162cc */ PUSH {LR} \n\
/* 080162ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080162d0 */ BL func_0800c604 \n\
/* 080162d4 */ BL func_0800c3b8 \n\
/* 080162d8 */ LSLS R0, R0, 0x10 \n\
/* 080162da */ LSRS R0, R0, 0x10 \n\
/* 080162dc */ LDR R1, =D_089cfb10 \n\
/* 080162de */ BL func_080087b4 \n\
/* 080162e2 */ LDR R1, =func_0800bd04 \n\
/* 080162e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080162e6 */ BL func_08005d38 \n\
/* 080162ea */ POP {R0} \n\
/* 080162ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
