asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027744 \n\
/* 08027744 */ PUSH {LR} \n\
/* 08027746 */ LDR R1, =gCurrentEngineData \n\
/* 08027748 */ LDR R1, [R1] \n\
/* 0802774a */ MOVS R2, 0xE2 @ Set R2 to 0xE2 \n\
/* 0802774c */ LSLS R2, R2, 0x2 \n\
/* 0802774e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08027750 */ STRB R0, [R1] \n\
/* 08027752 */ BL drum_studio_init_kit \n\
/* 08027756 */ POP {R0} \n\
/* 08027758 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
