asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040d90 \n\
/* 08040d90 */ PUSH {LR} \n\
/* 08040d92 */ BL get_current_mem_id \n\
/* 08040d96 */ LSLS R0, R0, 0x10 \n\
/* 08040d98 */ LSRS R0, R0, 0x10 \n\
/* 08040d9a */ LDR R2, =mechanical_horse_backgrounds \n\
/* 08040d9c */ LDR R1, =gCurrentEngineData \n\
/* 08040d9e */ LDR R1, [R1] \n\
/* 08040da0 */ LDR R3, =0x2ff \n\
/* 08040da2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08040da4 */ LDRB R1, [R1] \n\
/* 08040da6 */ LSLS R1, R1, 0x18 \n\
/* 08040da8 */ ASRS R1, R1, 0x18 \n\
/* 08040daa */ LSLS R1, R1, 0x3 \n\
/* 08040dac */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 08040dae */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08040db0 */ LDR R1, [R1] \n\
/* 08040db2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08040db4 */ LSLS R2, R2, 0x6 \n\
/* 08040db6 */ BL func_08002ee0 \n\
/* 08040dba */ LDR R1, =func_08040d10 \n\
/* 08040dbc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040dbe */ BL run_func_after_task \n\
/* 08040dc2 */ POP {R0} \n\
/* 08040dc4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
