asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013f9c \n\
/* 08013f9c */ PUSH {R4, LR} \n\
/* 08013f9e */ LDR R0, =D_030046a4 \n\
/* 08013fa0 */ LDR R1, [R0] \n\
/* 08013fa2 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013fa4 */ LDRSB R0, [R1, R0] \n\
/* 08013fa6 */ LDRB R1, [R1, 0x11] \n\
/* 08013fa8 */ LSLS R1, R1, 0x18 \n\
/* 08013faa */ ASRS R1, R1, 0x18 \n\
/* 08013fac */ BL func_0801317c \n\
/* 08013fb0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08013fb2 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 08013fb4 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 08013fb6 */ BHI branch_08014010 \n\
/* 08013fb8 */ LSLS R0, R0, 0x2 \n\
/* 08013fba */ LDR R1, =jtbl_08013fcc \n\
/* 08013fbc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013fbe */ LDR R0, [R0] \n\
/* 08013fc0 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08013fcc: \n\
.word jump_08013fe8 \n\
.word jump_08013fe8 \n\
.word branch_08014010 \n\
.word jump_08013fe8 \n\
.word jump_08013ff6 \n\
.word jump_08013ff6 \n\
.word jump_08013ff6 \n\
\n\
jump_08013fe8: \n\
/* 08013fe8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08013fea */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08013fec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013fee */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08013ff0 */ BL func_08015244 \n\
/* 08013ff4 */ B branch_08014010 \n\
\n\
jump_08013ff6: \n\
/* 08013ff6 */ LDR R0, =D_030046a4 \n\
/* 08013ff8 */ LDR R1, [R0] \n\
/* 08013ffa */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013ffc */ LDRSB R0, [R1, R0] \n\
/* 08013ffe */ LDRB R1, [R1, 0x11] \n\
/* 08014000 */ LSLS R1, R1, 0x18 \n\
/* 08014002 */ ASRS R1, R1, 0x18 \n\
/* 08014004 */ BL func_08013100 \n\
/* 08014008 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801400a */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0801400c */ BL func_08015244 \n\
 \n\
branch_08014010: \n\
/* 08014010 */ POP {R4} \n\
/* 08014012 */ POP {R0} \n\
/* 08014014 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
