asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_input_event \n\
/* 080317c8 */ PUSH {LR} \n\
/* 080317ca */ LDR R0, =gCurrentEngineData \n\
/* 080317cc */ LDR R0, [R0] \n\
/* 080317ce */ MOVS R1, 0xE9 @ Set R1 to 0xE9 \n\
/* 080317d0 */ LSLS R1, R1, 0x1 \n\
/* 080317d2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080317d4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080317d6 */ LDRSH R0, [R0, R1] \n\
/* 080317d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080317da */ BNE branch_080317e2 \n\
/* 080317dc */ LDR R0, =s_furi_seqData \n\
/* 080317de */ BL play_sound \n\
 \n\
branch_080317e2: \n\
/* 080317e2 */ BL func_080317f4 \n\
/* 080317e6 */ POP {R0} \n\
/* 080317e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
