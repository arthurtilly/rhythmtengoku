asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080102f4 \n\
/* 080102f4 */ PUSH {R4-R7, LR} \n\
/* 080102f6 */ LDR R0, =D_030046a8 \n\
/* 080102f8 */ LDR R3, [R0] \n\
/* 080102fa */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 080102fc */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080102fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010300 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08010302 */ STRB R1, [R3, 0x10] \n\
/* 08010304 */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 08010306 */ STRB R0, [R4, 0x1] \n\
/* 08010308 */ STRB R1, [R4, 0x2] \n\
/* 0801030a */ STRB R0, [R4, 0x3] \n\
/* 0801030c */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0801030e */ STRB R0, [R4, 0x4] \n\
/* 08010310 */ STRB R2, [R4, 0x5] \n\
/* 08010312 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08010314 */ ADDS R0, 0xBE @ Add 0xBE to R0 \n\
/* 08010316 */ STRH R2, [R0] \n\
/* 08010318 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0801031a */ STRH R2, [R0] \n\
/* 0801031c */ LDR R0, =0xffff \n\
/* 0801031e */ STRH R0, [R4, 0x3E] \n\
/* 08010320 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 08010322 */ ADDS R5, 0x16 @ Add 0x16 to R5 \n\
/* 08010324 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08010326 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08010328 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801032a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801032c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801032e */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
 \n\
branch_08010330: \n\
/* 08010330 */ ADDS R0, R5, R2 @ Set R0 to R5 + R2 \n\
/* 08010332 */ STRB R7, [R0] \n\
/* 08010334 */ LDRH R0, [R1] \n\
/* 08010336 */ ORRS R0, R6 @ Set R0 to R0 | R6 \n\
/* 08010338 */ STRH R0, [R1] \n\
/* 0801033a */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0801033c */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801033e */ CMP R2, 0x36 @ Compare R2 and 0x36 \n\
/* 08010340 */ BLS branch_08010330 \n\
/* 08010342 */ BL func_0801ad9c \n\
/* 08010346 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010348 */ ADDS R7, R4, 0x0 @ Set R7 to R4 + 0x0 \n\
/* 0801034a */ ADDS R7, 0x2F @ Add 0x2F to R7 \n\
/* 0801034c */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 0801034e */ LSLS R1, R1, 0x1 \n\
/* 08010350 */ ADDS R6, R4, R1 @ Set R6 to R4 + R1 \n\
/* 08010352 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08010354 */ LDR R3, =0x1c7 \n\
/* 08010356 */ ADDS R5, R4, R3 @ Set R5 to R4 + R3 \n\
/* 08010358 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0801035a */ LSLS R0, R0, 0x1 \n\
/* 0801035c */ ADDS R3, R4, R0 @ Set R3 to R4 + R0 \n\
 \n\
branch_0801035e: \n\
/* 0801035e */ ADDS R0, R6, R2 @ Set R0 to R6 + R2 \n\
/* 08010360 */ STRB R1, [R0] \n\
/* 08010362 */ ADDS R0, R5, R2 @ Set R0 to R5 + R2 \n\
/* 08010364 */ STRB R1, [R0] \n\
/* 08010366 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 08010368 */ STRB R1, [R0] \n\
/* 0801036a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801036c */ CMP R2, 0x36 @ Compare R2 and 0x36 \n\
/* 0801036e */ BLS branch_0801035e \n\
/* 08010370 */ MOVS R1, 0xB5 @ Set R1 to 0xB5 \n\
/* 08010372 */ LSLS R1, R1, 0x2 \n\
/* 08010374 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08010376 */ BL reset_all_replay_save_data \n\
/* 0801037a */ LDR R2, =0x235 \n\
/* 0801037c */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 0801037e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010380 */ STRB R0, [R1] \n\
/* 08010382 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010384 */ LDR R3, =0x236 \n\
/* 08010386 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 08010388 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0801038a: \n\
/* 0801038a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801038c */ STRB R3, [R0] \n\
/* 0801038e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08010390 */ CMP R2, 0x2F @ Compare R2 and 0x2F \n\
/* 08010392 */ BLS branch_0801038a \n\
/* 08010394 */ LDR R0, =0x266 \n\
/* 08010396 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 08010398 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801039a */ STRB R0, [R1] \n\
/* 0801039c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801039e */ LDR R5, =D_030046a8 \n\
/* 080103a0 */ LDR R3, =0x26b \n\
/* 080103a2 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 080103a4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_080103a6: \n\
/* 080103a6 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080103a8 */ STRB R3, [R0] \n\
/* 080103aa */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080103ac */ CMP R2, 0x13 @ Compare R2 and 0x13 \n\
/* 080103ae */ BLS branch_080103a6 \n\
/* 080103b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080103b2 */ LDR R0, =0x27f \n\
/* 080103b4 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 080103b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_080103b8: \n\
/* 080103b8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080103ba */ STRB R3, [R0] \n\
/* 080103bc */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080103be */ CMP R2, 0xE @ Compare R2 and 0xE \n\
/* 080103c0 */ BLS branch_080103b8 \n\
/* 080103c2 */ LDR R1, =0x28e \n\
/* 080103c4 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 080103c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080103c8 */ STRB R2, [R0] \n\
/* 080103ca */ LDR R3, =0x28f \n\
/* 080103cc */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 080103ce */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080103d0 */ STRB R0, [R1] \n\
/* 080103d2 */ MOVS R0, 0xA4 @ Set R0 to 0xA4 \n\
/* 080103d4 */ LSLS R0, R0, 0x2 \n\
/* 080103d6 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 080103d8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080103da */ STRB R0, [R1] \n\
/* 080103dc */ LDR R1, =0x291 \n\
/* 080103de */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 080103e0 */ STRB R2, [R0] \n\
/* 080103e2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080103e4 */ ADDS R3, 0x5 @ Add 0x5 to R3 \n\
/* 080103e6 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
 \n\
branch_080103e8: \n\
/* 080103e8 */ STMIA R0!, {R1} \n\
/* 080103ea */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080103ec */ CMP R2, 0xF @ Compare R2 and 0xF \n\
/* 080103ee */ BLS branch_080103e8 \n\
/* 080103f0 */ LDR R2, [R5] \n\
/* 080103f2 */ MOVS R0, 0xA9 @ Set R0 to 0xA9 \n\
/* 080103f4 */ LSLS R0, R0, 0x2 \n\
/* 080103f6 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 080103f8 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080103fa */ STR R0, [R1] \n\
/* 080103fc */ MOVS R3, 0xAA @ Set R3 to 0xAA \n\
/* 080103fe */ LSLS R3, R3, 0x2 \n\
/* 08010400 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08010402 */ MOVS R0, 0x32 @ Set R0 to 0x32 \n\
/* 08010404 */ STR R0, [R1] \n\
/* 08010406 */ MOVS R0, 0xAB @ Set R0 to 0xAB \n\
/* 08010408 */ LSLS R0, R0, 0x2 \n\
/* 0801040a */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801040c */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0801040e */ STR R0, [R1] \n\
/* 08010410 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 08010412 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08010414 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08010416 */ STR R0, [R1] \n\
/* 08010418 */ MOVS R0, 0xB1 @ Set R0 to 0xB1 \n\
/* 0801041a */ LSLS R0, R0, 0x2 \n\
/* 0801041c */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0801041e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010420 */ STR R0, [R1] \n\
/* 08010422 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08010424 */ STRB R0, [R4, 0x6] \n\
/* 08010426 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08010428 */ STRB R0, [R4, 0x8] \n\
/* 0801042a */ STRB R0, [R4, 0x18] \n\
/* 0801042c */ STRB R0, [R4, 0xE] \n\
/* 0801042e */ STRB R0, [R4, 0x1C] \n\
/* 08010430 */ STRB R0, [R7] \n\
/* 08010432 */ LDR R1, =0x27f \n\
/* 08010434 */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08010436 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08010438 */ STRB R1, [R0] \n\
/* 0801043a */ LDR R2, =0x26b \n\
/* 0801043c */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 0801043e */ STRB R1, [R0] \n\
/* 08010440 */ SUBS R3, 0x44 @ Subtract 0x44 from R3 \n\
/* 08010442 */ ADDS R0, R4, R3 @ Set R0 to R4 + R3 \n\
/* 08010444 */ STRB R1, [R0] \n\
/* 08010446 */ POP {R4-R7} \n\
/* 08010448 */ POP {R0} \n\
/* 0801044a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
