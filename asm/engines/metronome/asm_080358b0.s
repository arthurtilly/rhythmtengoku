asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080358b0 \n\
/* 080358b0 */ PUSH {R4, LR} \n\
/* 080358b2 */ LDR R4, =gCurrentEngineData \n\
/* 080358b4 */ LDR R0, [R4] \n\
/* 080358b6 */ LDRH R0, [R0, 0x28] \n\
/* 080358b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080358ba */ BEQ branch_080358cc \n\
/* 080358bc */ BL beatscript_enable_loops \n\
/* 080358c0 */ LDR R1, [R4] \n\
/* 080358c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080358c4 */ STRH R0, [R1, 0x28] \n\
/* 080358c6 */ B branch_080358d0 \n\
\n\
.ltorg \n\
 \n\
branch_080358cc: \n\
/* 080358cc */ BL beatscript_disable_loops \n\
 \n\
branch_080358d0: \n\
/* 080358d0 */ POP {R4} \n\
/* 080358d2 */ POP {R0} \n\
/* 080358d4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
