asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start power_calligraphy_cue_hit \n\
/* 080337c4 */ PUSH {LR} \n\
/* 080337c6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080337c8 */ LDRSB R0, [R1, R0] \n\
/* 080337ca */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080337cc */ BL func_080336a0 \n\
/* 080337d0 */ POP {R0} \n\
/* 080337d2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
