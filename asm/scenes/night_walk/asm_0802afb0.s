asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802afb0 \n\
/* 0802afb0 */ PUSH {R4-R7, LR} \n\
/* 0802afb2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802afb4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802afb6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802afb8 */ PUSH {R5-R7} \n\
/* 0802afba */ SUB SP, 0x4 \n\
/* 0802afbc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802afbe */ LSLS R1, R1, 0x10 \n\
/* 0802afc0 */ LSRS R1, R1, 0x10 \n\
/* 0802afc2 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0802afc4 */ LSLS R2, R2, 0x10 \n\
/* 0802afc6 */ LSRS R2, R2, 0x10 \n\
/* 0802afc8 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0802afca */ LSLS R3, R3, 0x10 \n\
/* 0802afcc */ LSRS R2, R3, 0x10 \n\
/* 0802afce */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802afd0 */ LDR R0, [R5, 0x20] \n\
/* 0802afd2 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0802afd4 */ ANDS R6, R0 @ Set R6 to R6 & R0 \n\
/* 0802afd6 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0802afd8 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0802afda */ LDR R0, =D_03001568 \n\
/* 0802afdc */ LDR R0, [R0] \n\
/* 0802afde */ MOVS R3, 0xCE @ Set R3 to 0xCE \n\
/* 0802afe0 */ LSLS R3, R3, 0x2 \n\
/* 0802afe2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802afe4 */ LDRH R7, [R0] \n\
/* 0802afe6 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802afe8 */ BEQ branch_0802aff0 \n\
/* 0802afea */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802afec */ BL func_0802ad38 \n\
 \n\
branch_0802aff0: \n\
/* 0802aff0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802aff2 */ BEQ branch_0802b000 \n\
/* 0802aff4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802aff6 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0802aff8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802affa */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802affc */ BL func_0802ade0 \n\
 \n\
branch_0802b000: \n\
/* 0802b000 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802b002 */ BNE branch_0802b01a \n\
/* 0802b004 */ LSLS R0, R7, 0x10 \n\
/* 0802b006 */ ASRS R1, R0, 0x10 \n\
/* 0802b008 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802b00a */ BLT branch_0802b01a \n\
/* 0802b00c */ LDR R0, =D_03005380 \n\
/* 0802b00e */ LDR R0, [R0] \n\
/* 0802b010 */ STR R6, [SP] \n\
/* 0802b012 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802b014 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802b016 */ BL func_0804dae0 \n\
 \n\
branch_0802b01a: \n\
/* 0802b01a */ LDR R0, [R5, 0x24] \n\
/* 0802b01c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b01e */ BEQ branch_0802b024 \n\
/* 0802b020 */ BL _call_via_r0 \n\
 \n\
branch_0802b024: \n\
/* 0802b024 */ ADD SP, 0x4 \n\
/* 0802b026 */ POP {R3-R5} \n\
/* 0802b028 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802b02a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802b02c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802b02e */ POP {R4-R7} \n\
/* 0802b030 */ POP {R0} \n\
/* 0802b032 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
