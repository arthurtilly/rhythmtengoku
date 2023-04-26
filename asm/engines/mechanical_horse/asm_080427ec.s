asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mechanical_horse_cue_hit \n\
/* 080427ec */ PUSH {LR} \n\
/* 080427ee */ LDR R0, =gCurrentEngineData \n\
/* 080427f0 */ LDR R1, [R0] \n\
/* 080427f2 */ LDR R2, =0x2e9 \n\
/* 080427f4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080427f6 */ LDRB R0, [R0] \n\
/* 080427f8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080427fa */ BNE branch_0804280c \n\
/* 080427fc */ BL gameplay_ignore_this_cue_result \n\
/* 08042800 */ B branch_0804281c \n\
\n\
.ltorg \n\
 \n\
branch_0804280c: \n\
/* 0804280c */ LDRB R0, [R1, 0x6] \n\
/* 0804280e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08042810 */ BNE branch_08042818 \n\
/* 08042812 */ BL func_08041c98 \n\
/* 08042816 */ B branch_0804281c \n\
 \n\
branch_08042818: \n\
/* 08042818 */ BL func_08041ddc \n\
 \n\
branch_0804281c: \n\
/* 0804281c */ POP {R0} \n\
/* 0804281e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
