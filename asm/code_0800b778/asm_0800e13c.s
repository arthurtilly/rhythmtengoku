asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start scene_set_obj_mosaic_size \n\
/* 0800e13c */ PUSH {R4, LR} \n\
/* 0800e13e */ LSLS R1, R1, 0x10 \n\
/* 0800e140 */ LSRS R4, R1, 0x10 \n\
/* 0800e142 */ LSLS R0, R0, 0x10 \n\
/* 0800e144 */ ASRS R3, R0, 0x10 \n\
/* 0800e146 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800e148 */ BLT branch_0800e15a \n\
/* 0800e14a */ LDR R2, =D_03004b10 \n\
/* 0800e14c */ ADDS R2, 0x48 @ Add 0x48 to R2 \n\
/* 0800e14e */ LDRH R1, [R2] \n\
/* 0800e150 */ LDR R0, =0xf0ff \n\
/* 0800e152 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e154 */ LSLS R1, R3, 0x8 \n\
/* 0800e156 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800e158 */ STRH R0, [R2] \n\
 \n\
branch_0800e15a: \n\
/* 0800e15a */ LSLS R0, R4, 0x10 \n\
/* 0800e15c */ ASRS R3, R0, 0x10 \n\
/* 0800e15e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800e160 */ BLT branch_0800e172 \n\
/* 0800e162 */ LDR R2, =D_03004b10 \n\
/* 0800e164 */ ADDS R2, 0x48 @ Add 0x48 to R2 \n\
/* 0800e166 */ LDRH R1, [R2] \n\
/* 0800e168 */ LDR R0, =0xfff \n\
/* 0800e16a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800e16c */ LSLS R1, R3, 0xC \n\
/* 0800e16e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800e170 */ STRH R0, [R2] \n\
 \n\
branch_0800e172: \n\
/* 0800e172 */ POP {R4} \n\
/* 0800e174 */ POP {R0} \n\
/* 0800e176 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
