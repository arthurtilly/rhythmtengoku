asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010a28 \n\
/* 08010a28 */ LDR R0, =gCurrentSceneData \n\
/* 08010a2a */ LDR R1, [R0] \n\
/* 08010a2c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010a2e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010a30 */ STRH R0, [R1, 0xA] \n\
/* 08010a32 */ STRB R2, [R1, 0xC] \n\
/* 08010a34 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
