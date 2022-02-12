asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08028210 \n\
/* 08028210 */ PUSH {R4, LR} \n\
/* 08028212 */ SUB SP, 0x8 \n\
/* 08028214 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08028216 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08028218 */ BL func_0800c604 \n\
/* 0802821c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802821e */ BL func_0800e030 \n\
/* 08028222 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08028224 */ BL func_0800e030 \n\
/* 08028228 */ BL func_0800c3b8 \n\
/* 0802822c */ LSLS R0, R0, 0x10 \n\
/* 0802822e */ LSRS R0, R0, 0x10 \n\
/* 08028230 */ LDR R1, =D_088c88e0 \n\
/* 08028232 */ LDRH R3, [R1] \n\
/* 08028234 */ STR R4, [SP] \n\
/* 08028236 */ LDR R1, =D_03004b64 \n\
/* 08028238 */ STR R1, [SP, 0x4] \n\
/* 0802823a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802823c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802823e */ BL func_08002018 \n\
/* 08028242 */ ADD SP, 0x8 \n\
/* 08028244 */ POP {R4} \n\
/* 08028246 */ POP {R0} \n\
/* 08028248 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
