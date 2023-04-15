asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011694 \n\
/* 08011694 */ PUSH {R4, R5, LR} \n\
/* 08011696 */ BL func_08011728 \n\
/* 0801169a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801169c */ BEQ branch_08011714 \n\
/* 0801169e */ LDR R4, =D_030046a4 \n\
/* 080116a0 */ LDR R2, [R4] \n\
/* 080116a2 */ MOVS R0, 0x22 @ Set R0 to 0x22 \n\
/* 080116a4 */ LDRSH R5, [R2, R0] \n\
/* 080116a6 */ LDR R3, =D_030053b8 \n\
/* 080116a8 */ LDRH R1, [R3] \n\
/* 080116aa */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080116ac */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080116ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080116b0 */ BEQ branch_080116b8 \n\
/* 080116b2 */ LDRH R0, [R2, 0x22] \n\
/* 080116b4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080116b6 */ STRH R0, [R2, 0x22] \n\
 \n\
branch_080116b8: \n\
/* 080116b8 */ LDRH R1, [R3] \n\
/* 080116ba */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080116bc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080116be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080116c0 */ BEQ branch_080116ca \n\
/* 080116c2 */ LDR R1, [R4] \n\
/* 080116c4 */ LDRH R0, [R1, 0x22] \n\
/* 080116c6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080116c8 */ STRH R0, [R1, 0x22] \n\
 \n\
branch_080116ca: \n\
/* 080116ca */ LDR R1, [R4] \n\
/* 080116cc */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 080116ce */ LDRSH R0, [R1, R2] \n\
/* 080116d0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080116d2 */ BGE branch_080116da \n\
/* 080116d4 */ LDRH R0, [R1, 0x20] \n\
/* 080116d6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080116d8 */ STRH R0, [R1, 0x22] \n\
 \n\
branch_080116da: \n\
/* 080116da */ LDR R2, [R4] \n\
/* 080116dc */ MOVS R3, 0x22 @ Set R3 to 0x22 \n\
/* 080116de */ LDRSH R1, [R2, R3] \n\
/* 080116e0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080116e2 */ LDRSH R0, [R2, R3] \n\
/* 080116e4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080116e6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080116e8 */ BLE branch_080116ee \n\
/* 080116ea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080116ec */ STRH R0, [R2, 0x22] \n\
 \n\
branch_080116ee: \n\
/* 080116ee */ LDR R0, [R4] \n\
/* 080116f0 */ MOVS R1, 0x22 @ Set R1 to 0x22 \n\
/* 080116f2 */ LDRSH R0, [R0, R1] \n\
/* 080116f4 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 080116f6 */ BEQ branch_080116fc \n\
/* 080116f8 */ BL func_08011820 \n\
 \n\
branch_080116fc: \n\
/* 080116fc */ LDR R0, =D_03004afc \n\
/* 080116fe */ LDRH R1, [R0] \n\
/* 08011700 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08011702 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08011704 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011706 */ BEQ branch_08011714 \n\
/* 08011708 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801170a */ BL set_pause_beatscript_scene \n\
/* 0801170e */ LDR R1, [R4] \n\
/* 08011710 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011712 */ STR R0, [R1, 0x8] \n\
 \n\
branch_08011714: \n\
/* 08011714 */ POP {R4, R5} \n\
/* 08011716 */ POP {R0} \n\
/* 08011718 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
