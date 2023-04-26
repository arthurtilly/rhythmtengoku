asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027760 \n\
/* 08027760 */ PUSH {LR} \n\
/* 08027762 */ LDR R1, =gCurrentEngineData \n\
/* 08027764 */ LDR R1, [R1] \n\
/* 08027766 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08027768 */ LSLS R2, R2, 0x2 \n\
/* 0802776a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802776c */ STRB R0, [R1] \n\
/* 0802776e */ BL func_08027668 \n\
/* 08027772 */ POP {R0} \n\
/* 08027774 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
