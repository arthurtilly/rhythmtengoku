asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a500 \n\
/* 0802a500 */ PUSH {LR} \n\
/* 0802a502 */ LDR R0, =D_030055d0 \n\
/* 0802a504 */ LDR R0, [R0] \n\
/* 0802a506 */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 0802a508 */ LSLS R1, R1, 0x2 \n\
/* 0802a50a */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 0802a50c */ LDRB R0, [R2] \n\
/* 0802a50e */ LSLS R0, R0, 0x1C \n\
/* 0802a510 */ LSRS R0, R0, 0x1C \n\
/* 0802a512 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0802a514 */ BHI branch_0802a55e \n\
/* 0802a516 */ LSLS R0, R0, 0x2 \n\
/* 0802a518 */ LDR R1, =jtbl_0802a528 \n\
/* 0802a51a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a51c */ LDR R0, [R0] \n\
/* 0802a51e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0802a528: \n\
.word branch_0802a55e \n\
.word jump_0802a540 \n\
.word branch_0802a55e \n\
.word jump_0802a548 \n\
.word jump_0802a550 \n\
.word jump_0802a558 \n\
\n\
jump_0802a540: \n\
/* 0802a540 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802a542 */ BL func_08029fe8 \n\
/* 0802a546 */ B branch_0802a55e \n\
\n\
jump_0802a548: \n\
/* 0802a548 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802a54a */ BL func_0802a26c \n\
/* 0802a54e */ B branch_0802a55e \n\
\n\
jump_0802a550: \n\
/* 0802a550 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802a552 */ BL func_0802a300 \n\
/* 0802a556 */ B branch_0802a55e \n\
\n\
jump_0802a558: \n\
/* 0802a558 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802a55a */ BL func_0802a32c \n\
 \n\
branch_0802a55e: \n\
/* 0802a55e */ POP {R0} \n\
/* 0802a560 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
