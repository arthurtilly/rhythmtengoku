asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044504 \n\
/* 08044504 */ PUSH {LR} \n\
/* 08044506 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044508 */ BL func_0800c604 \n\
/* 0804450c */ BL func_0800c3b8 \n\
/* 08044510 */ LSLS R0, R0, 0x10 \n\
/* 08044512 */ LSRS R0, R0, 0x10 \n\
/* 08044514 */ LDR R1, =D_089e9d4c \n\
/* 08044516 */ BL func_080087b4 \n\
/* 0804451a */ LDR R1, =func_080444c4 \n\
/* 0804451c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804451e */ BL func_08005d38 \n\
/* 08044522 */ POP {R0} \n\
/* 08044524 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
