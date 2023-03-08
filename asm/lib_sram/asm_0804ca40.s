asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start write_and_verify_sram_fast \n\
/* 0804ca40 */ PUSH {R4-R7, LR} \n\
/* 0804ca42 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804ca44 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804ca46 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0804ca48 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0804ca4a */ B branch_0804ca52 \n\
 \n\
branch_0804ca4c: \n\
/* 0804ca4c */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 0804ca4e */ LSLS R0, R0, 0x18 \n\
/* 0804ca50 */ LSRS R7, R0, 0x18 \n\
 \n\
branch_0804ca52: \n\
/* 0804ca52 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0804ca54 */ BHI branch_0804ca74 \n\
/* 0804ca56 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804ca58 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804ca5a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0804ca5c */ BL write_sram_fast \n\
/* 0804ca60 */ LDR R0, =verify_sram_fast \n\
/* 0804ca62 */ LDR R3, [R0] \n\
/* 0804ca64 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804ca66 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804ca68 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0804ca6a */ BL _call_via_r3 \n\
/* 0804ca6e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804ca70 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804ca72 */ BNE branch_0804ca4c \n\
 \n\
branch_0804ca74: \n\
/* 0804ca74 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804ca76 */ POP {R4-R7} \n\
/* 0804ca78 */ POP {R1} \n\
/* 0804ca7a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
