asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c228 \n\
/* 0800c228 */ PUSH {R4, LR} \n\
/* 0800c22a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c22c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c22e */ BEQ branch_0800c278 \n\
/* 0800c230 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c232 */ LDR R0, [R4] \n\
/* 0800c234 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c236 */ BEQ branch_0800c244 \n\
/* 0800c238 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
 \n\
branch_0800c23a: \n\
/* 0800c23a */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0800c23c */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c23e */ LDR R0, [R1] \n\
/* 0800c240 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800c242 */ BNE branch_0800c23a \n\
 \n\
branch_0800c244: \n\
/* 0800c244 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c246 */ BEQ branch_0800c278 \n\
/* 0800c248 */ LSLS R0, R2, 0x10 \n\
/* 0800c24a */ LSRS R0, R0, 0x10 \n\
/* 0800c24c */ BL agb_random \n\
/* 0800c250 */ LSLS R0, R0, 0x10 \n\
/* 0800c252 */ LSRS R0, R0, 0xE \n\
/* 0800c254 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800c256 */ LDR R4, [R0] \n\
/* 0800c258 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c25a */ BL scene_set_music \n\
/* 0800c25e */ LDR R2, =D_08aa4460 \n\
/* 0800c260 */ LDRB R1, [R4, 0x4] \n\
/* 0800c262 */ LSLS R1, R1, 0x1B \n\
/* 0800c264 */ LSRS R1, R1, 0x1B \n\
/* 0800c266 */ LSLS R0, R1, 0x1 \n\
/* 0800c268 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800c26a */ LSLS R0, R0, 0x2 \n\
/* 0800c26c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800c26e */ LDR R0, [R0] \n\
/* 0800c270 */ B branch_0800c27a \n\
\n\
.ltorg \n\
 \n\
branch_0800c278: \n\
/* 0800c278 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800c27a: \n\
/* 0800c27a */ POP {R4} \n\
/* 0800c27c */ POP {R1} \n\
/* 0800c27e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
