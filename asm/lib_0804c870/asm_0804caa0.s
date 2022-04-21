asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804caa0 \n\
/* 0804caa0 */ PUSH {R4-R7, LR} \n\
/* 0804caa2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804caa4 */ PUSH {R7} \n\
/* 0804caa6 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804caa8 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0804caaa */ LSLS R0, R0, 0x10 \n\
/* 0804caac */ LSRS R5, R0, 0x10 \n\
/* 0804caae */ LSLS R2, R2, 0x10 \n\
/* 0804cab0 */ LSRS R7, R2, 0x10 \n\
/* 0804cab2 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804cab4 */ BEQ branch_0804cac8 \n\
/* 0804cab6 */ LDR R0, =D_03004434 \n\
/* 0804cab8 */ LDR R2, [R0] \n\
/* 0804caba */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804cabc */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 0804cabe */ BL _call_via_r2 \n\
/* 0804cac2 */ B branch_0804cad2 \n\
\n\
.ltorg \n\
 \n\
branch_0804cac8: \n\
/* 0804cac8 */ LDR R0, =D_0300442c \n\
/* 0804caca */ LDR R1, [R0] \n\
/* 0804cacc */ MOVS R0, 0x28 @ Set R0 to 0x28 \n\
/* 0804cace */ BL _call_via_r1 \n\
 \n\
branch_0804cad2: \n\
/* 0804cad2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804cad4 */ STRH R5, [R4] \n\
/* 0804cad6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804cad8 */ STR R0, [R4, 0x4] \n\
/* 0804cada */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804cadc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804cade */ LSRS R0, R5, 0x3 \n\
/* 0804cae0 */ LSLS R2, R7, 0x4 \n\
/* 0804cae2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804cae4 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804cae6 */ BCS branch_0804cb02 \n\
/* 0804cae8 */ LDR R2, =0x22222222 \n\
 \n\
branch_0804caea: \n\
/* 0804caea */ STR R2, [R1, 0x1C] \n\
/* 0804caec */ STR R2, [R1, 0x18] \n\
/* 0804caee */ STR R2, [R1, 0x14] \n\
/* 0804caf0 */ STR R2, [R1, 0x10] \n\
/* 0804caf2 */ STR R2, [R1, 0xC] \n\
/* 0804caf4 */ STR R2, [R1, 0x8] \n\
/* 0804caf6 */ STR R2, [R1, 0x4] \n\
/* 0804caf8 */ STR R2, [R1] \n\
/* 0804cafa */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 0804cafc */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804cafe */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0804cb00 */ BCC branch_0804caea \n\
 \n\
branch_0804cb02: \n\
/* 0804cb02 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804cb04 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0804cb06 */ ANDS R2, R5 @ Set R2 to R2 & R5 \n\
/* 0804cb08 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804cb0a */ BCS branch_0804cb16 \n\
/* 0804cb0c */ LDR R0, =0x22222222 \n\
 \n\
branch_0804cb0e: \n\
/* 0804cb0e */ STMIA R1!, {R0} \n\
/* 0804cb10 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804cb12 */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804cb14 */ BCC branch_0804cb0e \n\
 \n\
branch_0804cb16: \n\
/* 0804cb16 */ STRH R7, [R4, 0x2] \n\
/* 0804cb18 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804cb1a */ SUBS R0, R1, R7 @ Set R0 to R1 - R7 \n\
/* 0804cb1c */ LSLS R3, R0, 0x2 \n\
/* 0804cb1e */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804cb20 */ BEQ branch_0804cb3c \n\
/* 0804cb22 */ LDR R0, =D_03004434 \n\
/* 0804cb24 */ LDR R2, [R0] \n\
/* 0804cb26 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804cb28 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804cb2a */ BL _call_via_r2 \n\
/* 0804cb2e */ B branch_0804cb46 \n\
\n\
.ltorg \n\
 \n\
branch_0804cb3c: \n\
/* 0804cb3c */ LDR R0, =D_0300442c \n\
/* 0804cb3e */ LDR R1, [R0] \n\
/* 0804cb40 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804cb42 */ BL _call_via_r1 \n\
 \n\
branch_0804cb46: \n\
/* 0804cb46 */ STR R0, [R4, 0x8] \n\
/* 0804cb48 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804cb4a */ BL func_0804cbcc \n\
/* 0804cb4e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804cb50 */ POP {R3} \n\
/* 0804cb52 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804cb54 */ POP {R4-R7} \n\
/* 0804cb56 */ POP {R1} \n\
/* 0804cb58 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
