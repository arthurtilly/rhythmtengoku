asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_cue_miss \n\
/* 08023500 */ PUSH {R4, LR} \n\
/* 08023502 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08023504 */ LDR R0, =gCurrentEngineData \n\
/* 08023506 */ LDR R0, [R0] \n\
/* 08023508 */ LDR R1, =0x0000040c \n\
/* 0802350a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802350c */ LDRB R0, [R0] \n\
/* 0802350e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023510 */ BNE branch_08023522 \n\
/* 08023512 */ LDR R0, [R4] \n\
/* 08023514 */ BL func_080229f0 \n\
/* 08023518 */ LDRB R0, [R4, 0x4] \n\
/* 0802351a */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0802351c */ BNE branch_08023522 \n\
/* 0802351e */ BL gameplay_ignore_this_cue_result \n\
 \n\
branch_08023522: \n\
/* 08023522 */ POP {R4} \n\
/* 08023524 */ POP {R0} \n\
/* 08023526 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
