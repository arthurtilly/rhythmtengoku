asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018d68 \n\
/* 08018d68 */ PUSH {R4, LR} \n\
/* 08018d6a */ LDR R1, =D_089d7694 \n\
/* 08018d6c */ LDR R0, =D_030046a4 \n\
/* 08018d6e */ LDR R0, [R0] \n\
/* 08018d70 */ LDRB R0, [R0, 0xC] \n\
/* 08018d72 */ LSLS R0, R0, 0x2 \n\
/* 08018d74 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018d76 */ LDR R4, [R0] \n\
/* 08018d78 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08018d7a */ BL func_0800bf7c \n\
/* 08018d7e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08018d80 */ BL func_080102d0 \n\
/* 08018d84 */ LSLS R0, R0, 0x10 \n\
/* 08018d86 */ LSRS R0, R0, 0x10 \n\
/* 08018d88 */ BL func_0800bdf8 \n\
/* 08018d8c */ POP {R4} \n\
/* 08018d8e */ POP {R0} \n\
/* 08018d90 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
