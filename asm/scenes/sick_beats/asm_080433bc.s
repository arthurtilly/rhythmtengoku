asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080433bc \n\
/* 080433bc */ PUSH {LR} \n\
/* 080433be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080433c0 */ BL func_0800c604 \n\
/* 080433c4 */ BL func_0800c3b8 \n\
/* 080433c8 */ LSLS R0, R0, 0x10 \n\
/* 080433ca */ LSRS R0, R0, 0x10 \n\
/* 080433cc */ LDR R1, =D_089e9100 \n\
/* 080433ce */ BL func_080087b4 \n\
/* 080433d2 */ LDR R1, =func_0804338c \n\
/* 080433d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080433d6 */ BL func_08005d38 \n\
/* 080433da */ POP {R0} \n\
/* 080433dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
