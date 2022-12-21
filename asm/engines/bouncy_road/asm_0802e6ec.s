asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_cue_miss \n\
/* 0802e6ec */ PUSH {R4, LR} \n\
/* 0802e6ee */ LDRH R0, [R1] \n\
/* 0802e6f0 */ BL func_0802df08 \n\
/* 0802e6f4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e6f6 */ BL beatscript_enable_loops \n\
/* 0802e6fa */ LDRB R0, [R4, 0x4] \n\
/* 0802e6fc */ LSLS R0, R0, 0x19 \n\
/* 0802e6fe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e700 */ BLT branch_0802e708 \n\
/* 0802e702 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e704 */ BL func_0802df44 \n\
 \n\
branch_0802e708: \n\
/* 0802e708 */ LDRB R0, [R4, 0x4] \n\
/* 0802e70a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802e70c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802e70e */ STRB R0, [R4, 0x4] \n\
/* 0802e710 */ POP {R4} \n\
/* 0802e712 */ POP {R0} \n\
/* 0802e714 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
