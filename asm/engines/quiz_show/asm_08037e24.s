asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037e24 \n\
/* 08037e24 */ PUSH {LR} \n\
/* 08037e26 */ LDR R2, =gCurrentEngineData \n\
/* 08037e28 */ LDR R1, [R2] \n\
/* 08037e2a */ ADDS R1, 0x49 @ Add 0x49 to R1 \n\
/* 08037e2c */ LDRB R0, [R1] \n\
/* 08037e2e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08037e30 */ STRB R0, [R1] \n\
/* 08037e32 */ LSLS R0, R0, 0x18 \n\
/* 08037e34 */ LSRS R0, R0, 0x18 \n\
/* 08037e36 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08037e38 */ BLS branch_08037e42 \n\
/* 08037e3a */ LDR R0, [R2] \n\
/* 08037e3c */ ADDS R0, 0x49 @ Add 0x49 to R0 \n\
/* 08037e3e */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08037e40 */ STRB R1, [R0] \n\
 \n\
branch_08037e42: \n\
/* 08037e42 */ POP {R0} \n\
/* 08037e44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
