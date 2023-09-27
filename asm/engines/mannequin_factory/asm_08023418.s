asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_cue_update \n\
/* 08023418 */ PUSH {R4, LR} \n\
/* 0802341a */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802341c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0802341e */ BL ticks_to_frames \n\
/* 08023422 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08023424 */ BHI branch_0802342a \n\
/* 08023426 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023428 */ B branch_0802342c \n\
 \n\
branch_0802342a: \n\
/* 0802342a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802342c: \n\
/* 0802342c */ POP {R4} \n\
/* 0802342e */ POP {R1} \n\
/* 08023430 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
