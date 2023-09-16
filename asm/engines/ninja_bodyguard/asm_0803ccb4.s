asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ccb4 \n\
/* 0803ccb4 */ PUSH {R4-R6, LR} \n\
/* 0803ccb6 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803ccb8 */ BL get_current_mem_id \n\
/* 0803ccbc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803ccbe */ LSLS R4, R4, 0x10 \n\
/* 0803ccc0 */ LSRS R4, R4, 0x10 \n\
/* 0803ccc2 */ LDR R5, =scene_stop_music \n\
/* 0803ccc4 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803ccc6 */ BL ticks_to_frames \n\
/* 0803ccca */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803cccc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ccce */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803ccd0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ccd2 */ BL schedule_function_call \n\
/* 0803ccd6 */ POP {R4-R6} \n\
/* 0803ccd8 */ POP {R0} \n\
/* 0803ccda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
