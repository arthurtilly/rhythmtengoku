asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b668 \n\
/* 0801b668 */ PUSH {R4, R5, LR} \n\
/* 0801b66a */ SUB SP, 0x10 \n\
/* 0801b66c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801b66e */ CMP R4, 0xE @ Compare R4 and 0xE \n\
/* 0801b670 */ BLS branch_0801b676 \n\
/* 0801b672 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801b674 */ B branch_0801b6ec \n\
 \n\
branch_0801b676: \n\
/* 0801b676 */ ADDS R1, R4, 0x1 @ Set R1 to R4 + 0x1 \n\
/* 0801b678 */ MOV R0, SP @ Set R0 to SP \n\
/* 0801b67a */ BL strint \n\
/* 0801b67e */ LDR R5, =D_030046a4 \n\
/* 0801b680 */ LDR R1, [R5] \n\
/* 0801b682 */ MOVS R2, 0xE3 @ Set R2 to 0xE3 \n\
/* 0801b684 */ LSLS R2, R2, 0x2 \n\
/* 0801b686 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b688 */ LDR R0, =text_studio_kit_default \n\
/* 0801b68a */ LDRB R0, [R0] \n\
/* 0801b68c */ STRB R0, [R1] \n\
/* 0801b68e */ LDR R0, [R5] \n\
/* 0801b690 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b692 */ LDR R1, =text_studio_kit_pad_8px \n\
/* 0801b694 */ BL strcat \n\
/* 0801b698 */ LDR R0, =D_030046a8 \n\
/* 0801b69a */ LDR R0, [R0] \n\
/* 0801b69c */ LDR R1, =0x28f \n\
/* 0801b69e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b6a0 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801b6a2 */ LDRB R0, [R0] \n\
/* 0801b6a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b6a6 */ BEQ branch_0801b6d4 \n\
/* 0801b6a8 */ LDR R0, [R5] \n\
/* 0801b6aa */ ADDS R1, 0xFD @ Add 0xFD to R1 \n\
/* 0801b6ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b6ae */ LDR R2, =studio_drum_kit_names \n\
/* 0801b6b0 */ LSLS R1, R4, 0x2 \n\
/* 0801b6b2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b6b4 */ LDR R1, [R1] \n\
/* 0801b6b6 */ BL strcat \n\
/* 0801b6ba */ B branch_0801b6e2 \n\
\n\
.ltorg \n\
 \n\
branch_0801b6d4: \n\
/* 0801b6d4 */ LDR R0, [R5] \n\
/* 0801b6d6 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 0801b6d8 */ LSLS R1, R1, 0x2 \n\
/* 0801b6da */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b6dc */ LDR R1, =text_studio_kit_not_unlocked \n\
/* 0801b6de */ BL strcat \n\
 \n\
branch_0801b6e2: \n\
/* 0801b6e2 */ LDR R0, =D_030046a4 \n\
/* 0801b6e4 */ LDR R0, [R0] \n\
/* 0801b6e6 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 0801b6e8 */ LSLS R1, R1, 0x2 \n\
/* 0801b6ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
 \n\
branch_0801b6ec: \n\
/* 0801b6ec */ ADD SP, 0x10 \n\
/* 0801b6ee */ POP {R4, R5} \n\
/* 0801b6f0 */ POP {R1} \n\
/* 0801b6f2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
