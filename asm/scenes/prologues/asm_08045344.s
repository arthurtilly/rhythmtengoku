asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045344 \n\
/* 08045344 */ PUSH {LR} \n\
/* 08045346 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045348 */ BL func_0800c604 \n\
/* 0804534c */ BL func_08006d80 \n\
/* 08045350 */ BL func_0800c3b8 \n\
/* 08045354 */ LSLS R0, R0, 0x10 \n\
/* 08045356 */ LSRS R0, R0, 0x10 \n\
/* 08045358 */ LDR R1, =D_089ea3e4 \n\
/* 0804535a */ BL func_080087b4 \n\
/* 0804535e */ LDR R1, =func_08045314 \n\
/* 08045360 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045362 */ BL func_08005d38 \n\
/* 08045366 */ POP {R0} \n\
/* 08045368 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
