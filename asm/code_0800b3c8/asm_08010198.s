asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010198 \n\
/* 08010198 */ PUSH {LR} \n\
/* 0801019a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801019c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801019e */ BEQ branch_080101b0 \n\
/* 080101a0 */ LDR R0, =D_03005380 \n\
/* 080101a2 */ LDR R0, [R0] \n\
/* 080101a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080101a6 */ LDRSH R1, [R1, R2] \n\
/* 080101a8 */ BL func_0804d6cc \n\
/* 080101ac */ LSLS R0, R0, 0x18 \n\
/* 080101ae */ ASRS R0, R0, 0x18 \n\
 \n\
branch_080101b0: \n\
/* 080101b0 */ POP {R1} \n\
/* 080101b2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
