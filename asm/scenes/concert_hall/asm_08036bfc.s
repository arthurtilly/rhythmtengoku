asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036bfc \n\
/* 08036bfc */ PUSH {LR} \n\
/* 08036bfe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08036c00 */ BL func_0800c604 \n\
/* 08036c04 */ BL func_0800c3b8 \n\
/* 08036c08 */ LSLS R0, R0, 0x10 \n\
/* 08036c0a */ LSRS R0, R0, 0x10 \n\
/* 08036c0c */ LDR R1, =D_089e5c44 \n\
/* 08036c0e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08036c10 */ LSLS R2, R2, 0x6 \n\
/* 08036c12 */ BL func_08002ee0 \n\
/* 08036c16 */ LDR R1, =func_08036bec \n\
/* 08036c18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036c1a */ BL func_08005d38 \n\
/* 08036c1e */ POP {R0} \n\
/* 08036c20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
