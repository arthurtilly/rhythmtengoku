asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034100 \n\
/* 08034100 */ PUSH {LR} \n\
/* 08034102 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034104 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08034106 */ BLT branch_08034128 \n\
/* 08034108 */ LDR R0, =marching_anim_table \n\
/* 0803410a */ LSLS R1, R1, 0x2 \n\
/* 0803410c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803410e */ LDR R0, =gCurrentEngineData \n\
/* 08034110 */ LDR R0, [R0] \n\
/* 08034112 */ LDRB R0, [R0] \n\
/* 08034114 */ LDR R1, [R1] \n\
/* 08034116 */ LSLS R0, R0, 0x2 \n\
/* 08034118 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803411a */ LDR R0, [R0] \n\
/* 0803411c */ B branch_0803412a \n\
\n\
.ltorg \n\
 \n\
branch_08034128: \n\
/* 08034128 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0803412a: \n\
/* 0803412a */ POP {R1} \n\
/* 0803412c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
