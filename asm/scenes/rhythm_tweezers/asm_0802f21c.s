asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f21c \n\
/* 0802f21c */ PUSH {R4-R6, LR} \n\
/* 0802f21e */ SUB SP, 0x8 \n\
/* 0802f220 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0802f222 */ LDR R0, =D_030055d0 \n\
/* 0802f224 */ LDR R4, [R0] \n\
/* 0802f226 */ ADDS R5, R4, 0x4 @ Set R5 to R4 + 0x4 \n\
/* 0802f228 */ BL func_08018068 \n\
/* 0802f22c */ LDRB R0, [R5, 0x5] \n\
/* 0802f22e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f230 */ BEQ branch_0802f238 \n\
/* 0802f232 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802f234 */ BL func_0802ea74 \n\
 \n\
branch_0802f238: \n\
/* 0802f238 */ LDR R0, [R4, 0x4] \n\
/* 0802f23a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f23c */ BL func_08010040 \n\
/* 0802f240 */ LDR R0, [R6, 0x4] \n\
/* 0802f242 */ LDR R1, =D_088e8a50 \n\
/* 0802f244 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802f246 */ STR R4, [SP] \n\
/* 0802f248 */ STR R4, [SP, 0x4] \n\
/* 0802f24a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f24c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802f24e */ BL func_08010064 \n\
/* 0802f252 */ LDRH R0, [R5, 0x6] \n\
/* 0802f254 */ STRH R0, [R6, 0x28] \n\
/* 0802f256 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802f258 */ STRB R0, [R5, 0x10] \n\
/* 0802f25a */ LDRB R0, [R6, 0x1] \n\
/* 0802f25c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0802f25e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802f260 */ STRB R0, [R6, 0x1] \n\
/* 0802f262 */ STRH R4, [R6, 0x2C] \n\
/* 0802f264 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0802f266 */ BL func_0800c3a4 \n\
/* 0802f26a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802f26c */ BL func_08018054 \n\
/* 0802f270 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0802f272 */ STRH R4, [R6, 0x2E] \n\
/* 0802f274 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f276 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802f278 */ BL func_08017338 \n\
/* 0802f27c */ LDR R0, =s_f_hair_nuki_long_seqData \n\
/* 0802f27e */ BL func_0800274c \n\
/* 0802f282 */ LDR R0, =s_f_hair_tuneru_seqData \n\
/* 0802f284 */ BL func_08002634 \n\
/* 0802f288 */ ADD SP, 0x8 \n\
/* 0802f28a */ POP {R4-R6} \n\
/* 0802f28c */ POP {R0} \n\
/* 0802f28e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
