asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020238 \n\
/* 08020238 */ PUSH {R4, LR} \n\
/* 0802023a */ SUB SP, 0x4 \n\
/* 0802023c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802023e */ ASRS R4, R1, 0x10 \n\
/* 08020240 */ LDR R0, =0x0000ffff \n\
/* 08020242 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08020244 */ BL func_0800c3a4 \n\
/* 08020248 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802024a */ LDR R0, =D_030055d0 \n\
/* 0802024c */ LDR R0, [R0] \n\
/* 0802024e */ ADDS R2, R0, 0x4 @ Set R2 to R0 + 0x4 \n\
/* 08020250 */ LDR R3, [R0, 0x4] \n\
/* 08020252 */ STR R4, [SP] \n\
/* 08020254 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08020256 */ BL func_0800c4b0 \n\
/* 0802025a */ ADD SP, 0x4 \n\
/* 0802025c */ POP {R4} \n\
/* 0802025e */ POP {R0} \n\
/* 08020260 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
