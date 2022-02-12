asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802555c \n\
/* 0802555c */ PUSH {LR} \n\
/* 0802555e */ LDR R0, =D_030055d0 \n\
/* 08025560 */ LDR R0, [R0] \n\
/* 08025562 */ LDR R1, =0x000013d4 \n\
/* 08025564 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08025566 */ LDR R0, [R0] \n\
/* 08025568 */ ASRS R0, R0, 0x8 \n\
/* 0802556a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802556c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802556e */ BL func_080087d4 \n\
/* 08025572 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08025574 */ BHI branch_080255ee \n\
/* 08025576 */ LSLS R0, R0, 0x2 \n\
/* 08025578 */ LDR R1, =jtbl_0802558c \n\
/* 0802557a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802557c */ LDR R0, [R0] \n\
/* 0802557e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0802558c: \n\
.word branch_080255ee \n\
.word jump_080255a0 \n\
.word jump_080255a8 \n\
.word jump_080255c4 \n\
.word jump_080255dc \n\
\n\
jump_080255a0: \n\
/* 080255a0 */ LDR R1, =D_08a9b924 \n\
/* 080255a2 */ B branch_080255aa \n\
\n\
.ltorg \n\
\n\
jump_080255a8: \n\
/* 080255a8 */ LDR R1, =D_08a9b8fc \n\
 \n\
branch_080255aa: \n\
/* 080255aa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080255ac */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 080255ae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080255b0 */ BL func_080026c4 \n\
/* 080255b4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080255b6 */ LSLS R1, R1, 0x1 \n\
/* 080255b8 */ BL func_08002894 \n\
/* 080255bc */ B branch_080255ee \n\
\n\
.ltorg \n\
\n\
jump_080255c4: \n\
/* 080255c4 */ LDR R1, =D_08a9b8d4 \n\
/* 080255c6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080255c8 */ MOVS R2, 0x50 @ Set R2 to 0x50 \n\
/* 080255ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080255cc */ BL func_080026c4 \n\
/* 080255d0 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080255d2 */ BL func_08002894 \n\
/* 080255d6 */ B branch_080255ee \n\
\n\
.ltorg \n\
\n\
jump_080255dc: \n\
/* 080255dc */ LDR R1, =D_08a9b8c0 \n\
/* 080255de */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080255e0 */ MOVS R2, 0x60 @ Set R2 to 0x60 \n\
/* 080255e2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080255e4 */ BL func_080026c4 \n\
/* 080255e8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080255ea */ BL func_08002894 \n\
 \n\
branch_080255ee: \n\
/* 080255ee */ POP {R0} \n\
/* 080255f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
