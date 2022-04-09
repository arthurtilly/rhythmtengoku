asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018914 \n\
/* 08018914 */ PUSH {LR} \n\
/* 08018916 */ BL func_0800c3b8 \n\
/* 0801891a */ LSLS R0, R0, 0x10 \n\
/* 0801891c */ LSRS R0, R0, 0x10 \n\
/* 0801891e */ LDR R1, =func_080188e4 \n\
/* 08018920 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018922 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08018924 */ BL func_0800856c \n\
/* 08018928 */ BL func_0800e0ec \n\
/* 0801892c */ POP {R0} \n\
/* 0801892e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
