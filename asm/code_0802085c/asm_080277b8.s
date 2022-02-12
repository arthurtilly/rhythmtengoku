asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080277b8 \n\
/* 080277b8 */ PUSH {R4-R6, LR} \n\
/* 080277ba */ SUB SP, 0x8 \n\
/* 080277bc */ LDR R6, =D_030055d0 \n\
/* 080277be */ LDR R1, [R6] \n\
/* 080277c0 */ LDR R2, =0x00000425 \n\
/* 080277c2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080277c4 */ LDRB R5, [R0] \n\
/* 080277c6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080277c8 */ BNE branch_08027848 \n\
/* 080277ca */ LDR R4, =0x00000424 \n\
/* 080277cc */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 080277ce */ LDRB R0, [R0] \n\
/* 080277d0 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080277d2 */ BL func_08027f4c \n\
/* 080277d6 */ LDR R0, [R6] \n\
/* 080277d8 */ MOVS R1, 0x8B @ Set R1 to 0x8B \n\
/* 080277da */ LSLS R1, R1, 0x3 \n\
/* 080277dc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080277de */ STRB R5, [R0] \n\
/* 080277e0 */ LDR R0, [R6] \n\
/* 080277e2 */ ADDS R4, R0, R4 @ Set R4 to R0 + R4 \n\
/* 080277e4 */ LDRB R2, [R4] \n\
/* 080277e6 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 080277e8 */ BLS branch_08027814 \n\
/* 080277ea */ LDR R2, =0x00000427 \n\
/* 080277ec */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 080277ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080277f0 */ STRB R0, [R1] \n\
/* 080277f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080277f4 */ BL func_08019324 \n\
/* 080277f8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080277fa */ BL func_08027c90 \n\
/* 080277fe */ BL func_0800bce4 \n\
/* 08027802 */ B branch_08027852 \n\
\n\
.ltorg \n\
 \n\
branch_08027814: \n\
/* 08027814 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08027816 */ BLS branch_08027826 \n\
/* 08027818 */ MOVS R1, 0x85 @ Set R1 to 0x85 \n\
/* 0802781a */ LSLS R1, R1, 0x3 \n\
/* 0802781c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802781e */ LDR R0, [R0] \n\
/* 08027820 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08027822 */ BL func_0800a7fc \n\
 \n\
branch_08027826: \n\
/* 08027826 */ LDR R1, [R6] \n\
/* 08027828 */ LDR R2, =0x00000426 \n\
/* 0802782a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802782c */ LDRB R0, [R1] \n\
/* 0802782e */ ADDS R0, 0xA @ Add 0xA to R0 \n\
/* 08027830 */ STRB R0, [R1] \n\
/* 08027832 */ LDR R0, [R6] \n\
/* 08027834 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08027836 */ LDRB R0, [R1] \n\
/* 08027838 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 0802783a */ BLS branch_08027852 \n\
/* 0802783c */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0802783e */ STRB R0, [R1] \n\
/* 08027840 */ B branch_08027852 \n\
\n\
.ltorg \n\
 \n\
branch_08027848: \n\
/* 08027848 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802784a */ BL func_08027f4c \n\
/* 0802784e */ BL func_080192a4 \n\
 \n\
branch_08027852: \n\
/* 08027852 */ ADD R4, SP, 0x4 \n\
/* 08027854 */ MOV R0, SP @ Set R0 to SP \n\
/* 08027856 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08027858 */ BL func_08018124 \n\
/* 0802785c */ B branch_0802787a \n\
 \n\
branch_0802785e: \n\
/* 0802785e */ LDR R2, [SP, 0x4] \n\
/* 08027860 */ LDR R0, [R2] \n\
/* 08027862 */ LSLS R0, R0, 0x1A \n\
/* 08027864 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027866 */ BGE branch_08027870 \n\
/* 08027868 */ LDRB R0, [R2] \n\
/* 0802786a */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802786c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802786e */ STRB R0, [R2] \n\
 \n\
branch_08027870: \n\
/* 08027870 */ LDR R0, [SP] \n\
/* 08027872 */ MOV R1, SP @ Set R1 to SP \n\
/* 08027874 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08027876 */ BL func_08018138 \n\
 \n\
branch_0802787a: \n\
/* 0802787a */ LDR R0, [SP] \n\
/* 0802787c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802787e */ BNE branch_0802785e \n\
/* 08027880 */ ADD SP, 0x8 \n\
/* 08027882 */ POP {R4-R6} \n\
/* 08027884 */ POP {R0} \n\
/* 08027886 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
