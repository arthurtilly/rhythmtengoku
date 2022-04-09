asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037404 \n\
/* 08037404 */ PUSH {LR} \n\
/* 08037406 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037408 */ BL func_0800c604 \n\
/* 0803740c */ BL func_0800c3b8 \n\
/* 08037410 */ LSLS R0, R0, 0x10 \n\
/* 08037412 */ LSRS R0, R0, 0x10 \n\
/* 08037414 */ LDR R1, =D_089e5d30 \n\
/* 08037416 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08037418 */ LSLS R2, R2, 0x6 \n\
/* 0803741a */ BL func_08002ee0 \n\
/* 0803741e */ LDR R1, =func_080373f4 \n\
/* 08037420 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037422 */ BL func_08005d38 \n\
/* 08037426 */ POP {R0} \n\
/* 08037428 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
