asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080122a8 \n\
/* 080122a8 */ PUSH {R4-R6, LR} \n\
/* 080122aa */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080122ac */ BL func_080123e0 \n\
/* 080122b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080122b2 */ BEQ branch_080122ea \n\
/* 080122b4 */ LDR R0, =D_030053b8 \n\
/* 080122b6 */ LDRH R1, [R0] \n\
/* 080122b8 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 080122ba */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080122bc */ LSLS R0, R0, 0x10 \n\
/* 080122be */ LSRS R0, R0, 0x10 \n\
/* 080122c0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080122c2 */ ASRS R4, R0, 0x1F \n\
/* 080122c4 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080122c6 */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 080122c8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080122ca */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080122cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080122ce */ BEQ branch_080122d2 \n\
/* 080122d0 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_080122d2: \n\
/* 080122d2 */ LDR R0, =D_03004afc \n\
/* 080122d4 */ LDRH R1, [R0] \n\
/* 080122d6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080122d8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080122da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080122dc */ BEQ branch_080122e0 \n\
/* 080122de */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_080122e0: \n\
/* 080122e0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080122e2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080122e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080122e6 */ BEQ branch_080122ea \n\
/* 080122e8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_080122ea: \n\
/* 080122ea */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 080122ec */ BEQ branch_08012390 \n\
/* 080122ee */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 080122f0 */ BHI branch_08012300 \n\
/* 080122f2 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 080122f4 */ BEQ branch_0801230a \n\
/* 080122f6 */ B branch_080123c4 \n\
\n\
.ltorg \n\
 \n\
branch_08012300: \n\
/* 08012300 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08012302 */ BEQ branch_080123a0 \n\
/* 08012304 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 08012306 */ BEQ branch_080123b0 \n\
/* 08012308 */ B branch_080123c4 \n\
 \n\
branch_0801230a: \n\
/* 0801230a */ LDR R0, =D_030046a8 \n\
/* 0801230c */ LDR R4, [R0] \n\
/* 0801230e */ LDR R6, =D_030046a4 \n\
/* 08012310 */ LDR R0, [R6] \n\
/* 08012312 */ LDR R0, [R0, 0x4] \n\
/* 08012314 */ BL func_0800b118 \n\
/* 08012318 */ LDR R1, =0x27b \n\
/* 0801231a */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 0801231c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0801231e */ LDRB R0, [R4] \n\
/* 08012320 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012322 */ BNE branch_0801233c \n\
/* 08012324 */ LDR R0, =s_menu_error_seqData \n\
/* 08012326 */ BL func_08002634 \n\
/* 0801232a */ B branch_080123c4 \n\
\n\
.ltorg \n\
 \n\
branch_0801233c: \n\
/* 0801233c */ LDR R5, =D_089cdc24 \n\
/* 0801233e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012340 */ BL func_080005e0 \n\
/* 08012344 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08012346 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012348 */ BL func_080005f4 \n\
/* 0801234c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801234e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012350 */ BL func_080006f0 \n\
/* 08012354 */ LDR R4, =D_089d80d0 \n\
/* 08012356 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012358 */ BL func_08000584 \n\
/* 0801235c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801235e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08012360 */ BL func_080006b0 \n\
/* 08012364 */ LDR R0, [R6] \n\
/* 08012366 */ LDR R0, [R0, 0x4] \n\
/* 08012368 */ BL func_0800b118 \n\
/* 0801236c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801236e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012370 */ BL func_080006d0 \n\
/* 08012374 */ LDR R0, =s_menu_kettei2_seqData \n\
/* 08012376 */ BL func_08002634 \n\
/* 0801237a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801237c */ BL func_0800bd04 \n\
/* 08012380 */ LDR R1, [R6] \n\
/* 08012382 */ B branch_080123c0 \n\
\n\
.ltorg \n\
 \n\
branch_08012390: \n\
/* 08012390 */ LDR R0, =D_030046a4 \n\
/* 08012392 */ LDR R0, [R0] \n\
/* 08012394 */ LDR R0, [R0, 0x4] \n\
/* 08012396 */ BL func_0800b140 \n\
/* 0801239a */ B branch_080123c4 \n\
\n\
.ltorg \n\
 \n\
branch_080123a0: \n\
/* 080123a0 */ LDR R0, =D_030046a4 \n\
/* 080123a2 */ LDR R0, [R0] \n\
/* 080123a4 */ LDR R0, [R0, 0x4] \n\
/* 080123a6 */ BL func_0800b21c \n\
/* 080123aa */ B branch_080123c4 \n\
\n\
.ltorg \n\
 \n\
branch_080123b0: \n\
/* 080123b0 */ LDR R0, =s_menu_cancel3_seqData \n\
/* 080123b2 */ BL func_08002634 \n\
/* 080123b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080123b8 */ BL func_0800bd04 \n\
/* 080123bc */ LDR R0, =D_030046a4 \n\
/* 080123be */ LDR R1, [R0] \n\
 \n\
branch_080123c0: \n\
/* 080123c0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080123c2 */ STR R0, [R1] \n\
 \n\
branch_080123c4: \n\
/* 080123c4 */ LDR R0,=D_030046a4 \n\
/* 080123c6 */ LDR R0, [R0] \n\
/* 080123c8 */ LDR R0, [R0, 0x4] \n\
/* 080123ca */ BL func_0800b074 \n\
/* 080123ce */ BL func_08012218 \n\
/* 080123d2 */ POP {R4-R6} \n\
/* 080123d4 */ POP {R0} \n\
/* 080123d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
