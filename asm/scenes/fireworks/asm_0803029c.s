asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803029c \n\
/* 0803029c */ PUSH {R4-R6, LR} \n\
/* 0803029e */ SUB SP, 0xC \n\
/* 080302a0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080302a2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080302a4 */ BNE branch_080302c4 \n\
/* 080302a6 */ LDR R0, =D_03005380 \n\
/* 080302a8 */ LDR R0, [R0] \n\
/* 080302aa */ LDR R1, =D_030055d0 \n\
/* 080302ac */ LDR R1, [R1] \n\
/* 080302ae */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080302b0 */ LDRSH R1, [R1, R2] \n\
/* 080302b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080302b4 */ BL func_0804d770 \n\
/* 080302b8 */ B branch_0803030a \n\
\n\
.ltorg \n\
 \n\
branch_080302c4: \n\
/* 080302c4 */ LDR R4, =D_030055d0 \n\
/* 080302c6 */ LDR R0, [R4] \n\
/* 080302c8 */ LDR R0, [R0, 0x4] \n\
/* 080302ca */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080302cc */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 080302ce */ BL func_08004b98 \n\
/* 080302d2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080302d4 */ LDR R1, [R4] \n\
/* 080302d6 */ LDR R0, [R1, 0x4] \n\
/* 080302d8 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080302da */ LDRSH R1, [R1, R2] \n\
/* 080302dc */ BL func_08007b04 \n\
/* 080302e0 */ LDR R5, =D_03005380 \n\
/* 080302e2 */ LDR R0, [R5] \n\
/* 080302e4 */ LDR R1, [R4] \n\
/* 080302e6 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080302e8 */ LDRSH R1, [R1, R2] \n\
/* 080302ea */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080302ec */ STR R2, [SP] \n\
/* 080302ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080302f0 */ STR R2, [SP, 0x4] \n\
/* 080302f2 */ STR R2, [SP, 0x8] \n\
/* 080302f4 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080302f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080302f8 */ BL func_0804d8f8 \n\
/* 080302fc */ LDR R0, [R5] \n\
/* 080302fe */ LDR R1, [R4] \n\
/* 08030300 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08030302 */ LDRSH R1, [R1, R2] \n\
/* 08030304 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08030306 */ BL func_0804d770 \n\
 \n\
branch_0803030a: \n\
/* 0803030a */ ADD SP, 0xC \n\
/* 0803030c */ POP {R4-R6} \n\
/* 0803030e */ POP {R0} \n\
/* 08030310 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
