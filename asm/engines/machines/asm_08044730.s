asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044730 \n\
/* 08044730 */ PUSH {R4, LR} \n\
/* 08044732 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08044734 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08044736 */ BL beats_to_ticks \n\
/* 0804473a */ SUBS R0, 0x2 @ Subtract 0x2 from R0 \n\
/* 0804473c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804473e */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08044740 */ BL clamp_int32 \n\
/* 08044744 */ LDR R1, =D_030055d0 \n\
/* 08044746 */ LDR R1, [R1] \n\
/* 08044748 */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 0804474a */ LSLS R2, R2, 0x2 \n\
/* 0804474c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804474e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08044750 */ STRB R0, [R1] \n\
/* 08044752 */ POP {R4} \n\
/* 08044754 */ POP {R0} \n\
/* 08044756 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
