asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start midi_directsound_init \n\
/* 08049490 */ PUSH {R4-R7, LR} \n\
/* 08049492 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08049494 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08049496 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08049498 */ PUSH {R5-R7} \n\
/* 0804949a */ SUB SP, 0x4 \n\
/* 0804949c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804949e */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080494a0 */ LDR R4, [SP, 0x24] \n\
/* 080494a2 */ LDR R6, [SP, 0x28] \n\
/* 080494a4 */ LDR R0, [SP, 0x2C] \n\
/* 080494a6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080494a8 */ LDR R7, [SP, 0x30] \n\
/* 080494aa */ LDR R0, =gMidiSoundMode \n\
/* 080494ac */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080494ae */ STR R1, [R0] \n\
/* 080494b0 */ LDR R0, =gMidiDMASampleRate \n\
/* 080494b2 */ STR R5, [R0] \n\
/* 080494b4 */ LDR R1, =gMidiPCMBufSize32 \n\
/* 080494b6 */ LSRS R2, R2, 0x2 \n\
/* 080494b8 */ STR R2, [R1] \n\
/* 080494ba */ LDR R0, =gMidiPCMBufR \n\
/* 080494bc */ STR R3, [R0] \n\
/* 080494be */ LDR R2, =gMidiPCMBufL \n\
/* 080494c0 */ LDR R0, [R1] \n\
/* 080494c2 */ LSLS R0, R0, 0x2 \n\
/* 080494c4 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080494c6 */ STR R3, [R2] \n\
/* 080494c8 */ LDR R0, =gMidiScratchSize \n\
/* 080494ca */ STR R4, [R0] \n\
/* 080494cc */ LDR R0, =gMidiSampleScratch \n\
/* 080494ce */ STR R6, [R0] \n\
/* 080494d0 */ LDR R0, =gMidiSamplerCount \n\
/* 080494d2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080494d4 */ STRH R2, [R0] \n\
/* 080494d6 */ LDR R0, =gMidiSamplerPool \n\
/* 080494d8 */ STR R7, [R0] \n\
/* 080494da */ LDR R4, =gMidiSamplesPerFrame \n\
/* 080494dc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080494de */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 080494e0 */ BL __udivsi3 \n\
/* 080494e4 */ STR R0, [R4] \n\
/* 080494e6 */ LDR R4, =gMidiTM0Rate \n\
/* 080494e8 */ LDR R0, =0x00fffed9 \n\
/* 080494ea */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080494ec */ BL __udivsi3 \n\
/* 080494f0 */ STR R0, [R4] \n\
/* 080494f2 */ LDR R1, =gMidiReverb1Wet \n\
/* 080494f4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080494f6 */ STR R0, [R1] \n\
/* 080494f8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080494fa */ LDR R2, =gMidiReverb2Phase \n\
/* 080494fc */ LDR R3, =gMidiReverb4LowCut \n\
/* 080494fe */ LDR R5, =gMidiReverb3Decay \n\
/* 08049500 */ LDR R7, =gMidiEQPrevPos \n\
/* 08049502 */ LDR R0, =gMidiEQHighGain \n\
/* 08049504 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08049506 */ LDR R1, =gMidiEQIsGlobal \n\
/* 08049508 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0804950a */ LDR R0, =gMidiPCMBufReadPos \n\
/* 0804950c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0804950e */ LDR R6, =gMidiPCMBufWritePos \n\
/* 08049510 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049512 */ LDR R1, =gMidiReverbScratch \n\
 \n\
branch_08049514: \n\
/* 08049514 */ STMIA R1!, {R0} \n\
/* 08049516 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049518 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0804951a */ BLS branch_08049514 \n\
/* 0804951c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804951e */ STR R0, [R2] \n\
/* 08049520 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08049522 */ STR R0, [R3] \n\
/* 08049524 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08049526 */ STR R0, [R5] \n\
/* 08049528 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804952a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804952c */ LDR R1, =gMidiEQArea \n\
 \n\
branch_0804952e: \n\
/* 0804952e */ STMIA R1!, {R0} \n\
/* 08049530 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049532 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08049534 */ BLS branch_0804952e \n\
/* 08049536 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08049538 */ STRB R1, [R7] \n\
/* 0804953a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804953c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804953e */ STRB R0, [R2] \n\
/* 08049540 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08049542 */ STRB R1, [R3] \n\
/* 08049544 */ LDR R0, =0x040000c6 @ !Hardware REG_DMA1CNT_H\n\
/* 08049546 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08049548 */ STRH R1, [R0] \n\
/* 0804954a */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0804954c */ STRH R1, [R0] \n\
/* 0804954e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049550 */ STR R0, [R6] \n\
/* 08049552 */ LDR R0, [R6] \n\
/* 08049554 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08049556 */ STR R0, [R1] \n\
/* 08049558 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804955a */ LDR R2, =midi_asm_init_mode \n\
/* 0804955c */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0804955e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08049560 */ BL _call_via_r1 \n\
/* 08049564 */ LDR R5, =gMidiSampleTable \n\
/* 08049566 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049568 */ LDR R3, =0x000001ff \n\
/* 0804956a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
 \n\
branch_0804956c: \n\
/* 0804956c */ CMP R4, R3 @ Check R4 - R3 \n\
/* 0804956e */ BHI branch_080495e4 \n\
/* 08049570 */ CMP R4, 0x7F @ Compare R4 and 0x7F \n\
/* 08049572 */ BLS branch_080495f0 \n\
/* 08049574 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08049576 */ B branch_080495fe \n\
\n\
.ltorg \n\
 \n\
branch_080495e4: \n\
/* 080495e4 */ LDR R0, =0xfffffc00 \n\
/* 080495e6 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 080495e8 */ MOVS R0, 0x81 @ Set R0 to 0x81 \n\
/* 080495ea */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080495ec */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080495ee */ BLS branch_080495f8 \n\
 \n\
branch_080495f0: \n\
/* 080495f0 */ STRB R4, [R2] \n\
/* 080495f2 */ B branch_08049600 \n\
\n\
.ltorg \n\
 \n\
branch_080495f8: \n\
/* 080495f8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080495fa */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080495fc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_080495fe: \n\
/* 080495fe */ STRB R0, [R2] \n\
 \n\
branch_08049600: \n\
/* 08049600 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08049602 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049604 */ LDR R1, =0x000003ff \n\
/* 08049606 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 08049608 */ BLS branch_0804956c \n\
/* 0804960a */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0804960c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804960e */ STRB R0, [R1] \n\
/* 08049610 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049612 */ LDR R7, =gMidiSamplerCount \n\
/* 08049614 */ LDR R2, =gMidiPCMBufSize32 \n\
/* 08049616 */ MOV R12, R2 @ Set R12 to R2 \n\
/* 08049618 */ LDR R3, =gMidiDirectSoundEnabled \n\
/* 0804961a */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0804961c */ LDRH R0, [R7] \n\
/* 0804961e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049620 */ BCS branch_0804964a \n\
/* 08049622 */ LDR R6, =gMidiSamplerPool \n\
/* 08049624 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08049626 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08049628 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804962a */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
 \n\
branch_0804962c: \n\
/* 0804962c */ LDR R1, [R6] \n\
/* 0804962e */ LSLS R2, R4, 0x5 \n\
/* 08049630 */ ADDS R1, R2, R1 @ Set R1 to R2 + R1 \n\
/* 08049632 */ LDRB R3, [R1] \n\
/* 08049634 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08049636 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08049638 */ STRB R0, [R1] \n\
/* 0804963a */ LDR R0, [R6] \n\
/* 0804963c */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804963e */ STRB R5, [R2, 0x3] \n\
/* 08049640 */ STRB R5, [R2, 0x2] \n\
/* 08049642 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049644 */ LDRH R2, [R7] \n\
/* 08049646 */ CMP R4, R2 @ Check R4 - R2 \n\
/* 08049648 */ BCC branch_0804962c \n\
 \n\
branch_0804964a: \n\
/* 0804964a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804964c */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0804964e */ LDR R0, [R3] \n\
/* 08049650 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049652 */ BCS branch_08049672 \n\
/* 08049654 */ LDR R7, =gMidiPCMBufR \n\
/* 08049656 */ LDR R6, =gMidiPCMBufL \n\
/* 08049658 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0804965a: \n\
/* 0804965a */ LDR R2, [R7] \n\
/* 0804965c */ LSLS R1, R4, 0x2 \n\
/* 0804965e */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 08049660 */ LDR R0, [R6] \n\
/* 08049662 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08049664 */ STR R5, [R1] \n\
/* 08049666 */ LDR R0, [R1] \n\
/* 08049668 */ STR R0, [R2] \n\
/* 0804966a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804966c */ LDR R0, [R3] \n\
/* 0804966e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049670 */ BCC branch_0804965a \n\
 \n\
branch_08049672: \n\
/* 08049672 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08049674 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08049676 */ STRH R0, [R3] \n\
/* 08049678 */ BL midi_directsound_update \n\
/* 0804967c */ LDR R1, =0x04000084 @ !Hardware REG_SOUNDCNT_X \n\
/* 0804967e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08049680 */ STRB R0, [R1] \n\
/* 08049682 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08049684 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08049686 */ BEQ branch_0804970c \n\
/* 08049688 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804968a */ BCC branch_080496b4 \n\
/* 0804968c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0804968e */ BEQ branch_08049758 \n\
/* 08049690 */ B branch_0804979a \n\
\n\
.ltorg \n\
 \n\
branch_080496b4: \n\
/* 080496b4 */ LDR R1, =0x04000082 @ !Hardware REG_SOUNDCNT_H \n\
/* 080496b6 */ LDR R2, =0x0000a90e \n\
/* 080496b8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080496ba */ STRH R0, [R1] \n\
/* 080496bc */ LDR R4, =0x040000a0 @ !Hardware REG_SGFIFOA \n\
/* 080496be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080496c0 */ STR R2, [R4] \n\
/* 080496c2 */ LDR R3, =0x040000a4 @ !Hardware REG_SGFIFOB \n\
/* 080496c4 */ STR R2, [R3] \n\
/* 080496c6 */ ADDS R1, 0x3A @ Add 0x3A to R1 \n\
/* 080496c8 */ LDR R0, =gMidiPCMBufR \n\
/* 080496ca */ LDR R0, [R0] \n\
/* 080496cc */ STR R0, [R1] \n\
/* 080496ce */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 080496d0 */ LDR R0, =gMidiPCMBufL \n\
/* 080496d2 */ LDR R0, [R0] \n\
/* 080496d4 */ STR R0, [R1] \n\
/* 080496d6 */ LDR R0, =0x040000c0 @ !Hardware REG_DMA1DAD \n\
/* 080496d8 */ STR R4, [R0] \n\
/* 080496da */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 080496dc */ STR R3, [R0] \n\
/* 080496de */ SUBS R1, 0x2 @ Subtract 0x2 from R1 \n\
/* 080496e0 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 080496e2 */ LSLS R3, R3, 0x8 \n\
/* 080496e4 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080496e6 */ STRH R0, [R1] \n\
/* 080496e8 */ STR R2, [SP] \n\
/* 080496ea */ STR R2, [SP] \n\
/* 080496ec */ B branch_0804972a \n\
\n\
.ltorg \n\
 \n\
branch_0804970c: \n\
/* 0804970c */ LDR R1, =0x04000082 @ !Hardware REG_SOUNDCNT_H \n\
/* 0804970e */ LDR R2, =0x0000b80e \n\
/* 08049710 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049712 */ STRH R0, [R1] \n\
/* 08049714 */ LDR R0, =0x040000a0 @ !Hardware REG_SGFIFOA \n\
/* 08049716 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08049718 */ STR R2, [R0] \n\
/* 0804971a */ LDR R3, =0x040000a4 @ !Hardware REG_SGFIFOB \n\
/* 0804971c */ STR R2, [R3] \n\
/* 0804971e */ ADDS R1, 0x46 @ Add 0x46 to R1 \n\
/* 08049720 */ LDR R0, =gMidiPCMBufR \n\
/* 08049722 */ LDR R0, [R0] \n\
/* 08049724 */ STR R0, [R1] \n\
/* 08049726 */ LDR R0, =0x040000cc @ !Hardware REG_DMA2DAD \n\
/* 08049728 */ STR R3, [R0] \n\
 \n\
branch_0804972a: \n\
/* 0804972a */ LDR R1, =0x040000d2 @ !Hardware REG_DMA2CNT_H\n\
/* 0804972c */ MOVS R3, 0xF6 @ Set R3 to 0xF6 \n\
/* 0804972e */ LSLS R3, R3, 0x8 \n\
/* 08049730 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08049732 */ STRH R0, [R1] \n\
/* 08049734 */ STR R2, [SP] \n\
/* 08049736 */ STR R2, [SP] \n\
/* 08049738 */ B branch_0804979a \n\
\n\
.ltorg \n\
 \n\
branch_08049758: \n\
/* 08049758 */ LDR R1, =0x04000082 @ !Hardware REG_SOUNDCNT_H \n\
/* 0804975a */ LDR R2, =0x0000bb0e \n\
/* 0804975c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804975e */ STRH R0, [R1] \n\
/* 08049760 */ LDR R5, =0x040000a0 @ !Hardware REG_SGFIFOA \n\
/* 08049762 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08049764 */ STR R3, [R5] \n\
/* 08049766 */ LDR R4, =0x040000a4 @ !Hardware REG_SGFIFOB \n\
/* 08049768 */ STR R3, [R4] \n\
/* 0804976a */ LDR R2, =0x040000bc @ !Hardware REG_DMA1SAD\n\
/* 0804976c */ LDR R0, =gMidiPCMBufR \n\
/* 0804976e */ LDR R1, [R0] \n\
/* 08049770 */ STR R1, [R2] \n\
/* 08049772 */ LDR R0, =0x040000c8 @ !Hardware REG_DMA2SAD\n\
/* 08049774 */ STR R1, [R0] \n\
/* 08049776 */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 08049778 */ STR R5, [R0] \n\
/* 0804977a */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0804977c */ STR R4, [R0] \n\
/* 0804977e */ LDR R1, =0x040000c6 @ !Hardware REG_DMA1CNT_H\n\
/* 08049780 */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 08049782 */ LSLS R2, R2, 0x8 \n\
/* 08049784 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049786 */ STRH R0, [R1] \n\
/* 08049788 */ STR R3, [SP] \n\
/* 0804978a */ STR R3, [SP] \n\
/* 0804978c */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0804978e */ MOVS R2, 0xF6 @ Set R2 to 0xF6 \n\
/* 08049790 */ LSLS R2, R2, 0x8 \n\
/* 08049792 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049794 */ STRH R0, [R1] \n\
/* 08049796 */ STR R3, [SP] \n\
/* 08049798 */ STR R3, [SP] \n\
 \n\
branch_0804979a: \n\
/* 0804979a */ LDR R1, =0x04000080 @ !Hardware REG_SOUNDCNT \n\
/* 0804979c */ LDR R3, =0x0000bb77 \n\
/* 0804979e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080497a0 */ STRH R0, [R1] \n\
/* 080497a2 */ LDR R2, =0x04000102 @ !Hardware REG_TM0CNT \n\
/* 080497a4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080497a6 */ STRH R0, [R2] \n\
/* 080497a8 */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 080497aa */ LDR R0, =gMidiTM0Rate \n\
/* 080497ac */ LDR R0, [R0] \n\
/* 080497ae */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080497b0 */ STRH R0, [R1] \n\
/* 080497b2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080497b4 */ STRH R0, [R2] \n\
/* 080497b6 */ ADD SP, 0x4 \n\
/* 080497b8 */ POP {R3-R5} \n\
/* 080497ba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080497bc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080497be */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080497c0 */ POP {R4-R7} \n\
/* 080497c2 */ POP {R0} \n\
/* 080497c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
