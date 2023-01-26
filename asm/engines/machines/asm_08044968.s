asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rhythm_toy_cue_update \n\
/* 08044968 */ PUSH {R4, LR} \n\
/* 0804496a */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0804496c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0804496e */ BL beats_to_ticks \n\
/* 08044972 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08044974 */ BHI branch_0804497a \n\
/* 08044976 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08044978 */ B branch_0804497c \n\
 \n\
branch_0804497a: \n\
/* 0804497a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0804497c: \n\
/* 0804497c */ POP {R4} \n\
/* 0804497e */ POP {R1} \n\
/* 08044980 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
