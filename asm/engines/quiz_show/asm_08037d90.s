asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037d90 \n\
/* 08037d90 */ PUSH {R4, LR} \n\
/* 08037d92 */ LDR R4, =gCurrentEngineData \n\
/* 08037d94 */ LDR R1, [R4] \n\
/* 08037d96 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 08037d98 */ LDRH R1, [R1] \n\
/* 08037d9a */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08037d9c */ LSRS R0, R0, 0x8 \n\
/* 08037d9e */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 08037da0 */ LSLS R2, R2, 0x1 \n\
/* 08037da2 */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 08037da4 */ BL clamp_int32 \n\
/* 08037da8 */ LDR R1, [R4] \n\
/* 08037daa */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08037dac */ ADDS R2, 0x44 @ Add 0x44 to R2 \n\
/* 08037dae */ STRH R0, [R2] \n\
/* 08037db0 */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 08037db2 */ LDRB R0, [R1] \n\
/* 08037db4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08037db6 */ BEQ branch_08037dbe \n\
/* 08037db8 */ LDRH R0, [R2] \n\
/* 08037dba */ BL set_beatscript_tempo \n\
 \n\
branch_08037dbe: \n\
/* 08037dbe */ POP {R4} \n\
/* 08037dc0 */ POP {R0} \n\
/* 08037dc2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
