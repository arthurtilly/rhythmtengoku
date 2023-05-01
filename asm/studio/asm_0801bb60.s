asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801bb60 \n\
/* 0801bb60 */ PUSH {R4-R6, LR} \n\
/* 0801bb62 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801bb64 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801bb66 */ PUSH {R5, R6} \n\
/* 0801bb68 */ LDR R6, =scene_studio \n\
/* 0801bb6a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801bb6c */ BL func_080005e0 \n\
/* 0801bb70 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801bb72 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0801bb74 */ BL func_080006f0 \n\
/* 0801bb78 */ LDR R0, =gCurrentSceneData \n\
/* 0801bb7a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801bb7c */ LDR R0, [R0] \n\
/* 0801bb7e */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801bb80 */ LSLS R1, R1, 0x2 \n\
/* 0801bb82 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bb84 */ LDR R0, [R0] \n\
/* 0801bb86 */ BL func_0800b118 \n\
/* 0801bb8a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801bb8c */ LDR R4, =D_089d4ba4 \n\
/* 0801bb8e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801bb90 */ BL func_08000584 \n\
/* 0801bb94 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801bb96 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801bb98 */ BL func_080006b0 \n\
/* 0801bb9c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801bb9e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801bba0 */ BL func_080006d0 \n\
/* 0801bba4 */ LDR R0, =D_089d853c \n\
/* 0801bba6 */ BL func_0801d968 \n\
/* 0801bbaa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801bbac */ LDR R0, [R1] \n\
/* 0801bbae */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 0801bbb0 */ LSLS R1, R1, 0x2 \n\
/* 0801bbb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bbb4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801bbb6 */ STR R1, [R0] \n\
/* 0801bbb8 */ POP {R3, R4} \n\
/* 0801bbba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801bbbc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801bbbe */ POP {R4-R6} \n\
/* 0801bbc0 */ POP {R0} \n\
/* 0801bbc2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
