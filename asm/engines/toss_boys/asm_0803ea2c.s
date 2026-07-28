asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_init_gfx2 \n\
/* 0803ea2c */ PUSH {LR} \n\
/* 0803ea2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ea30 */ BL func_0800c604 \n\
/* 0803ea34 */ BL get_current_mem_id \n\
/* 0803ea38 */ LSLS R0, R0, 0x10 \n\
/* 0803ea3a */ LSRS R0, R0, 0x10 \n\
/* 0803ea3c */ LDR R2, =toss_boys_gfx_tables \n\
/* 0803ea3e */ LDR R1, =gCurrentEngineData \n\
/* 0803ea40 */ LDR R1, [R1] \n\
/* 0803ea42 */ LDRB R1, [R1] \n\
/* 0803ea44 */ LSLS R1, R1, 0x2 \n\
/* 0803ea46 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ea48 */ LDR R1, [R1] \n\
/* 0803ea4a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803ea4c */ LSLS R2, R2, 0x6 \n\
/* 0803ea4e */ BL func_08002ee0 \n\
/* 0803ea52 */ LDR R1, =toss_boys_init_gfx3 \n\
/* 0803ea54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ea56 */ BL run_func_after_task \n\
/* 0803ea5a */ POP {R0} \n\
/* 0803ea5c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
