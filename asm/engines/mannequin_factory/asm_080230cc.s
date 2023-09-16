asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080230cc \n\
/* 080230cc */ PUSH {R4-R7, LR} \n\
/* 080230ce */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080230d0 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 080230d2 */ LSLS R1, R1, 0x8 \n\
/* 080230d4 */ ORRS R6, R1 @ Set R6 to R6 | R1 \n\
/* 080230d6 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080230d8 */ BEQ branch_08023100 \n\
/* 080230da */ BL get_current_mem_id \n\
/* 080230de */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080230e0 */ LSLS R4, R4, 0x10 \n\
/* 080230e2 */ LSRS R4, R4, 0x10 \n\
/* 080230e4 */ LDR R5, =func_0802308c \n\
/* 080230e6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080230e8 */ BL ticks_to_frames \n\
/* 080230ec */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080230ee */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080230f0 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080230f2 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080230f4 */ BL schedule_function_call \n\
/* 080230f8 */ B branch_08023106 \n\
\n\
.ltorg \n\
 \n\
branch_08023100: \n\
/* 08023100 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08023102 */ BL func_0802308c \n\
 \n\
branch_08023106: \n\
/* 08023106 */ POP {R4-R7} \n\
/* 08023108 */ POP {R0} \n\
/* 0802310a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
