asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08021034 \n\
/* 08021034 */ PUSH {R4, LR} \n\
/* 08021036 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08021038 */ BL func_0800c3a4 \n\
/* 0802103c */ LDR R4, =D_030055d0 \n\
/* 0802103e */ LDR R1, [R4] \n\
/* 08021040 */ LDR R2, =0x00000864 \n\
/* 08021042 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08021044 */ STRH R0, [R1] \n\
/* 08021046 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08021048 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802104a */ BL func_08017338 \n\
/* 0802104e */ LDR R0, [R4] \n\
/* 08021050 */ LDR R1, =0x00000862 \n\
/* 08021052 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08021054 */ LDRB R0, [R0] \n\
/* 08021056 */ BL func_080207ec \n\
/* 0802105a */ LDR R1, [R4] \n\
/* 0802105c */ MOVS R2, 0x86 @ Set R2 to 0x86 \n\
/* 0802105e */ LSLS R2, R2, 0x4 \n\
/* 08021060 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08021062 */ LDRH R0, [R1] \n\
/* 08021064 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08021066 */ STRH R0, [R1] \n\
/* 08021068 */ LDR R0, =s_HC_seqData \n\
/* 0802106a */ BL func_08002634 \n\
/* 0802106e */ POP {R4} \n\
/* 08021070 */ POP {R0} \n\
/* 08021072 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
