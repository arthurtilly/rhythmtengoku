asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e184 \n\
/* 0800e184 */ PUSH {R4, LR} \n\
/* 0800e186 */ LSLS R0, R0, 0x10 \n\
/* 0800e188 */ LSLS R1, R1, 0x10 \n\
/* 0800e18a */ LSRS R3, R1, 0x10 \n\
/* 0800e18c */ LSRS R4, R0, 0x10 \n\
/* 0800e18e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e190 */ BLT branch_0800e1a0 \n\
/* 0800e192 */ LDR R0, =D_03004b10 \n\
/* 0800e194 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 0800e196 */ LDRH R2, [R0] \n\
/* 0800e198 */ LDR R1, =0xfff0 \n\
/* 0800e19a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800e19c */ ORRS R1, R4 @ Set R1 to R1 | R4 \n\
/* 0800e19e */ STRH R1, [R0] \n\
 \n\
branch_0800e1a0: \n\
/* 0800e1a0 */ LSLS R0, R3, 0x10 \n\
/* 0800e1a2 */ ASRS R3, R0, 0x10 \n\
/* 0800e1a4 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800e1a6 */ BLT branch_0800e1b8 \n\
/* 0800e1a8 */ LDR R2,  =D_03004b10 \n\
/* 0800e1aa */ ADDS R2, 0x48 @ Add 0x48 to R2 \n\
/* 0800e1ac */ LDRH R1, [R2] \n\
/* 0800e1ae */ LDR R0, =0xff0f \n\
/* 0800e1b0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e1b2 */ LSLS R1, R3, 0x4 \n\
/* 0800e1b4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800e1b6 */ STRH R0, [R2] \n\
 \n\
branch_0800e1b8: \n\
/* 0800e1b8 */ POP {R4} \n\
/* 0800e1ba */ POP {R0} \n\
/* 0800e1bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
