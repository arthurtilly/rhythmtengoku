asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e0bc \n\
/* 0803e0bc */ PUSH {R4-R6, LR} \n\
/* 0803e0be */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803e0c0 */ BL beatscript_enable_loops \n\
/* 0803e0c4 */ BL get_current_mem_id \n\
/* 0803e0c8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803e0ca */ LSLS R4, R4, 0x10 \n\
/* 0803e0cc */ LSRS R4, R4, 0x10 \n\
/* 0803e0ce */ LDR R5, =func_0803e08c \n\
/* 0803e0d0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803e0d2 */ BL ticks_to_frames \n\
/* 0803e0d6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803e0d8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803e0da */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803e0dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e0de */ BL schedule_function_call \n\
/* 0803e0e2 */ LDR R0, =gCurrentEngineData \n\
/* 0803e0e4 */ LDR R1, [R0] \n\
/* 0803e0e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803e0e8 */ STRB R0, [R1, 0x1E] \n\
/* 0803e0ea */ POP {R4-R6} \n\
/* 0803e0ec */ POP {R0} \n\
/* 0803e0ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
