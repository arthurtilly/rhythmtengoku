asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080123fc \n\
/* 080123fc */ PUSH {R4, R5, LR} \n\
/* 080123fe */ LDR R4, =gCurrentSceneData \n\
/* 08012400 */ LDR R0, [R4] \n\
/* 08012402 */ LDR R0, [R0, 0x4] \n\
/* 08012404 */ BL func_0800b118 \n\
/* 08012408 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801240a */ LDR R0, [R4] \n\
/* 0801240c */ LDR R0, [R0, 0x4] \n\
/* 0801240e */ BL func_0800b12c \n\
/* 08012412 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08012414 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012416 */ BL func_08012200 \n\
/* 0801241a */ BL func_08008628 \n\
/* 0801241e */ BL func_08004058 \n\
/* 08012422 */ POP {R4, R5} \n\
/* 08012424 */ POP {R0} \n\
/* 08012426 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
