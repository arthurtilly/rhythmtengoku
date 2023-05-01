asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ad44 \n\
/* 0801ad44 */ PUSH {R4, LR} \n\
/* 0801ad46 */ LDR R4, =gCurrentSceneData \n\
/* 0801ad48 */ LDR R0, [R4] \n\
/* 0801ad4a */ LDR R1, =0x4b4 \n\
/* 0801ad4c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ad4e */ LDR R0, [R0] \n\
/* 0801ad50 */ BL text_printer_clear \n\
/* 0801ad54 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ad56 */ BL scene_hide_bg_layer \n\
/* 0801ad5a */ LDR R0, =D_03005380 \n\
/* 0801ad5c */ LDR R0, [R0] \n\
/* 0801ad5e */ LDR R1, [R4] \n\
/* 0801ad60 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801ad62 */ LSLS R2, R2, 0x3 \n\
/* 0801ad64 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ad66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ad68 */ LDRSH R1, [R1, R2] \n\
/* 0801ad6a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ad6c */ BL func_0804d770 \n\
/* 0801ad70 */ LDR R0, [R4] \n\
/* 0801ad72 */ MOVS R1, 0x94 @ Set R1 to 0x94 \n\
/* 0801ad74 */ LSLS R1, R1, 0x3 \n\
/* 0801ad76 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ad78 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801ad7a */ STRB R1, [R0] \n\
/* 0801ad7c */ LDR R0, [R4] \n\
/* 0801ad7e */ LDR R2, =0x4a1 \n\
/* 0801ad80 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801ad82 */ STRB R1, [R0] \n\
/* 0801ad84 */ POP {R4} \n\
/* 0801ad86 */ POP {R0} \n\
/* 0801ad88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
