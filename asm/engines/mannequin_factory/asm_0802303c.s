asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_engine_update \n\
/* 0802303c */ PUSH {R4, R5, LR} \n\
/* 0802303e */ BL func_08022fb8 \n\
/* 08023042 */ BL func_08022ca0 \n\
/* 08023046 */ BL func_080226a0 \n\
/* 0802304a */ BL func_080223ac \n\
/* 0802304e */ BL update_drumtech \n\
/* 08023052 */ LDR R5, =gCurrentEngineData \n\
/* 08023054 */ LDR R0, [R5] \n\
/* 08023056 */ LDR R4, =0x414 \n\
/* 08023058 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802305a */ LDRB R0, [R0] \n\
/* 0802305c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802305e */ BEQ branch_0802307a \n\
/* 08023060 */ LDR R0, =D_03004afc \n\
/* 08023062 */ LDRH R1, [R0] \n\
/* 08023064 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08023066 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08023068 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802306a */ BEQ branch_0802307a \n\
/* 0802306c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802306e */ BL set_pause_beatscript_scene \n\
/* 08023072 */ LDR R0, [R5] \n\
/* 08023074 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08023076 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08023078 */ STRB R1, [R0] \n\
 \n\
branch_0802307a: \n\
/* 0802307a */ POP {R4, R5} \n\
/* 0802307c */ POP {R0} \n\
/* 0802307e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
