asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_cue_update \n\
/* 0802e5fc */ PUSH {R4-R6, LR} \n\
/* 0802e5fe */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0802e600 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0802e602 */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 0802e604 */ LDRH R0, [R6] \n\
/* 0802e606 */ BL func_0802df08 \n\
/* 0802e60a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802e60c */ LSLS R0, R4, 0x1 \n\
/* 0802e60e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802e610 */ LSLS R0, R0, 0x2 \n\
/* 0802e612 */ LSRS R0, R0, 0x4 \n\
/* 0802e614 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802e616 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0802e618 */ BLS branch_0802e638 \n\
/* 0802e61a */ LDRB R0, [R1, 0x4] \n\
/* 0802e61c */ LSLS R0, R0, 0x1F \n\
/* 0802e61e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e620 */ BEQ branch_0802e62e \n\
/* 0802e622 */ LDRB R0, [R6, 0x3] \n\
/* 0802e624 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e626 */ BNE branch_0802e62e \n\
/* 0802e628 */ LDR R0, =s_f_even_splash_seqData \n\
/* 0802e62a */ BL play_sound \n\
 \n\
branch_0802e62e: \n\
/* 0802e62e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e630 */ B branch_0802e63a \n\
\n\
.ltorg \n\
 \n\
branch_0802e638: \n\
/* 0802e638 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0802e63a: \n\
/* 0802e63a */ POP {R4-R6} \n\
/* 0802e63c */ POP {R1} \n\
/* 0802e63e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
