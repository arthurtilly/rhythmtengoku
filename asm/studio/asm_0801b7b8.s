asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b7b8 \n\
/* 0801b7b8 */ PUSH {R4-R6, LR} \n\
/* 0801b7ba */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801b7bc */ PUSH {R6} \n\
/* 0801b7be */ LDR R0, =scene_studio \n\
/* 0801b7c0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801b7c2 */ BL func_080005e0 \n\
/* 0801b7c6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801b7c8 */ BL func_080006f0 \n\
/* 0801b7cc */ LDR R5, =gCurrentSceneData \n\
/* 0801b7ce */ LDR R0, [R5] \n\
/* 0801b7d0 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b7d2 */ LSLS R1, R1, 0x2 \n\
/* 0801b7d4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b7d6 */ LDR R0, [R0] \n\
/* 0801b7d8 */ BL func_0800b118 \n\
/* 0801b7dc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801b7de */ LDR R0, [R5] \n\
/* 0801b7e0 */ MOVS R1, 0xDA @ Set R1 to 0xDA \n\
/* 0801b7e2 */ LSLS R1, R1, 0x2 \n\
/* 0801b7e4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b7e6 */ LDR R0, [R0] \n\
/* 0801b7e8 */ BL func_0800b118 \n\
/* 0801b7ec */ BL func_0801c510 \n\
/* 0801b7f0 */ LDR R4, =D_089d49d4 \n\
/* 0801b7f2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801b7f4 */ BL func_08000584 \n\
/* 0801b7f8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801b7fa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801b7fc */ BL func_080006b0 \n\
/* 0801b800 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801b802 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801b804 */ BL func_080006d0 \n\
/* 0801b808 */ LDR R0, =D_089d853c \n\
/* 0801b80a */ BL func_0801d968 \n\
/* 0801b80e */ LDR R0, [R5] \n\
/* 0801b810 */ MOVS R1, 0xD6 @ Set R1 to 0xD6 \n\
/* 0801b812 */ LSLS R1, R1, 0x2 \n\
/* 0801b814 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b816 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801b818 */ STR R1, [R0] \n\
/* 0801b81a */ POP {R3} \n\
/* 0801b81c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801b81e */ POP {R4-R6} \n\
/* 0801b820 */ POP {R0} \n\
/* 0801b822 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
