asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804475c \n\
/* 0804475c */ PUSH {R4-R6, LR} \n\
/* 0804475e */ SUB SP, 0xC \n\
/* 08044760 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08044762 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08044764 */ BLT branch_080447d6 \n\
/* 08044766 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08044768 */ BGT branch_0804477c \n\
/* 0804476a */ LDR R0, =D_030055d0 \n\
/* 0804476c */ LDR R0, [R0] \n\
/* 0804476e */ MOVS R1, 0xD5 @ Set R1 to 0xD5 \n\
/* 08044770 */ LSLS R1, R1, 0x2 \n\
/* 08044772 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044774 */ B branch_08044784 \n\
\n\
.ltorg \n\
 \n\
branch_0804477c: \n\
/* 0804477c */ LDR R0, =D_030055d0 \n\
/* 0804477e */ LDR R0, [R0] \n\
/* 08044780 */ LDR R2, =0x356 \n\
/* 08044782 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
 \n\
branch_08044784: \n\
/* 08044784 */ LDRH R5, [R0] \n\
/* 08044786 */ LDR R0, =rhythm_toy_machine_anim_ids \n\
/* 08044788 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0804478a */ LDRB R0, [R0] \n\
/* 0804478c */ BL func_08044208 \n\
/* 08044790 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08044792 */ LDR R4, =D_03005380 \n\
/* 08044794 */ LDR R0, [R4] \n\
/* 08044796 */ LSLS R1, R5, 0x10 \n\
/* 08044798 */ ASRS R1, R1, 0x10 \n\
/* 0804479a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0804479c */ STR R3, [SP] \n\
/* 0804479e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080447a0 */ STR R3, [SP, 0x4] \n\
/* 080447a2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080447a4 */ STR R3, [SP, 0x8] \n\
/* 080447a6 */ BL func_0804d8f8 \n\
/* 080447aa */ LDR R0, [R4] \n\
/* 080447ac */ LDR R4, =D_030055d0 \n\
/* 080447ae */ LDR R1, [R4] \n\
/* 080447b0 */ LSLS R2, R6, 0x1 \n\
/* 080447b2 */ MOVS R3, 0xDB @ Set R3 to 0xDB \n\
/* 080447b4 */ LSLS R3, R3, 0x2 \n\
/* 080447b6 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080447b8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080447ba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080447bc */ LDRSH R1, [R1, R2] \n\
/* 080447be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080447c0 */ BL func_0804cebc \n\
/* 080447c4 */ LDR R1, =rhythm_toy_play_func_table \n\
/* 080447c6 */ LDR R0, [R4] \n\
/* 080447c8 */ LDRB R0, [R0] \n\
/* 080447ca */ LSLS R0, R0, 0x2 \n\
/* 080447cc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080447ce */ LDR R1, [R0] \n\
/* 080447d0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080447d2 */ BL _call_via_r1 \n\
 \n\
branch_080447d6: \n\
/* 080447d6 */ ADD SP, 0xC \n\
/* 080447d8 */ POP {R4-R6} \n\
/* 080447da */ POP {R0} \n\
/* 080447dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
