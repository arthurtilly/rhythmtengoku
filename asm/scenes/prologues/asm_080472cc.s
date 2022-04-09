asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080472cc \n\
/* 080472cc */ PUSH {LR} \n\
/* 080472ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080472d0 */ BL func_0800c604 \n\
/* 080472d4 */ BL func_0800c3b8 \n\
/* 080472d8 */ LSLS R0, R0, 0x10 \n\
/* 080472da */ LSRS R0, R0, 0x10 \n\
/* 080472dc */ LDR R1, =D_089ed18c \n\
/* 080472de */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080472e0 */ LSLS R2, R2, 0x6 \n\
/* 080472e2 */ BL func_08002ee0 \n\
/* 080472e6 */ LDR R1, =func_080472bc \n\
/* 080472e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080472ea */ BL func_08005d38 \n\
/* 080472ee */ POP {R0} \n\
/* 080472f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
