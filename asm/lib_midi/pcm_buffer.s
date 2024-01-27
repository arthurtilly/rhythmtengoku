

/* MIDI LIBRARY ASSEMBLY - BUFFER READ & WRITE */


@ Prepare Processing Scratch with Reverb
    @ R0: Batch Size (in 32-bit Words)
unaligned_thumb_func_start midi_asm_update_scratch
    orrs    r0, r0
    bne     branch_0804875e
    bx      lr

branch_0804875e:
    push    {r4, r5, r6, r7, lr}
    mov     r4, r8
    mov     r5, r9
    mov     r6, r10
    mov     r7, r11
    push    {r4, r5, r6, r7}
    mov     r4, r12
    push    {r4}
    adds    r4, r0, #0
    ldr     r5, _08048b48   @ gMidiSampleScratch
    ldr     r5, [r5, #0]
    ldr     r0, _08048b4c   @ gMidiPCMBufWritePos
    ldr     r0, [r0, #0]
    lsls    r0, r0, #2
    ldr     r6, _08048b50   @ gMidiPCMBufR
    ldr     r6, [r6, #0]
    ldr     r7, _08048b54   @ gMidiPCMBufL
    ldr     r7, [r7, #0]
    adds    r6, r6, r0
    ldr     r1, _08048b58   @ gMidiReverb2Phase
    ldr     r1, [r1, #0]
    lsls    r1, r1, #2
    adds    r0, r0, r1
    ldr     r1, _08048b5c   @ gMidiPCMBufSize32
    ldr     r1, [r1, #0]
    lsls    r1, r1, #2
    cmp     r0, r1
    bcc     branch_08048798
    subs    r0, r0, r1
branch_08048798:
    adds    r7, r7, r0
    ldr     r0, _08048b60   @ gMidiReverb1Wet
    ldr     r0, [r0, #0]
    ldr     r2, _08048b64   @ gMidiReverb4LowCut
    ldr     r2, [r2, #0]
    ldr     r3, _08048b68   @ gMidiReverb3Decay
    ldr     r3, [r3, #0]
    lsrs    r0, r3
    mov     r8, r0
    ldr     r0, _08048b6c   @ gMidiPCMBufSize32
    ldr     r0, [r0, #0]
    lsls    r0, r0, #2
    mov     r9, r0
    ldr     r1, _08048b70   @ gMidiPCMBufR
    ldr     r1, [r1, #0]
    mov     r10, r1
    ldr     r1, _08048b74   @ gMidiPCMBufL
    ldr     r1, [r1, #0]
    mov     r11, r1
    eors    r0, r0          @ FUNC_INDEX_UPDATE_SCRATCH
    bl      midi_asm_update_buffer_call_arm
    pop     {r4}
    mov     r12, r4
    pop     {r4, r5, r6, r7}
    mov     r8, r4
    mov     r9, r5
    mov     r10, r6
    mov     r11, r7
    pop     {r4, r5, r6, r7}
    pop     {r0}
    bx      r0


@ Prepare Processing Scratch with Reverb (ARM Stereo)
arm_func_start midi_arm_stereo_update_scratch
    str     lr, _08048938
    str     r10, _0804893c
    str     r11, _08048940
    add     r10, r9, r10
    add     r11, r9, r11
    mov     r9, r2
    mov     lr, r3
    mov     r1, r4
    ldr     r0, _08048944   @ gMidiReverbScratch
    ldr     r2, [r0], #4
    ldr     r3, [r0], #4
    ldr     r12, [r0], #4
    ldr     r4, [r0]
branch_0804880c:
    str     r1, _08048948
    ldrsb   r0, [r6], #1
    sub     r2, r2, r2, asr r9
    add     r2, r0, r2
    sub     r0, r0, r2, asr r9
    sub     r3, r3, r3, asr lr
    add     r3, r0, r3
    mul     r0, r8, r3
    ldrsb   r1, [r7], #1
    sub     r12, r12, r12, asr r9
    add     r12, r1, r12
    sub     r1, r1, r12, asr r9
    sub     r4, r4, r4, asr lr
    add     r4, r1, r4
    mul     r1, r8, r4
    stmia   r5!, {r0, r1}
    ldrsb   r0, [r6], #1
    sub     r2, r2, r2, asr r9
    add     r2, r0, r2
    sub     r0, r0, r2, asr r9
    sub     r3, r3, r3, asr lr
    add     r3, r0, r3
    mul     r0, r8, r3
    ldrsb   r1, [r7], #1
    sub     r12, r12, r12, asr r9
    add     r12, r1, r12
    sub     r1, r1, r12, asr r9
    sub     r4, r4, r4, asr lr
    add     r4, r1, r4
    mul     r1, r8, r4
    stmia   r5!, {r0, r1}
    ldrsb   r0, [r6], #1
    sub     r2, r2, r2, asr r9
    add     r2, r0, r2
    sub     r0, r0, r2, asr r9
    sub     r3, r3, r3, asr lr
    add     r3, r0, r3
    mul     r0, r8, r3
    ldrsb   r1, [r7], #1
    sub     r12, r12, r12, asr r9
    add     r12, r1, r12
    sub     r1, r1, r12, asr r9
    sub     r4, r4, r4, asr lr
    add     r4, r1, r4
    mul     r1, r8, r4
    stmia   r5!, {r0, r1}
    ldrsb   r0, [r6], #1
    sub     r2, r2, r2, asr r9
    add     r2, r0, r2
    sub     r0, r0, r2, asr r9
    sub     r3, r3, r3, asr lr
    add     r3, r0, r3
    mul     r0, r8, r3
    ldrsb   r1, [r7], #1
    sub     r12, r12, r12, asr r9
    add     r12, r1, r12
    sub     r1, r1, r12, asr r9
    sub     r4, r4, r4, asr lr
    add     r4, r1, r4
    mul     r1, r8, r4
    stmia   r5!, {r0, r1}
    cmp     r6, r10
    ldrcs   r6, _0804893c
    cmp     r7, r11
    ldrcs   r7, _08048940
    ldr     r1, _08048948
    subs    r1, r1, #1
    bne     branch_0804880c

    ldr     r0, _08048944   @ gMidiReverbScratch
    str     r2, [r0], #4
    str     r3, [r0], #4
    str     r12, [r0], #4
    str     r4, [r0]
    ldr     lr, _08048938
    bx      lr

.balign 4, 0
_08048938: .word 0
_0804893c: .word 0
_08048940: .word 0
_08048944: .word gMidiReverbScratch
_08048948: .word 0

glabel midi_arm_stereo_update_scratch_end


@ Prepare Processing Scratch with Reverb (ARM Mono)
arm_func_start midi_arm_mono_update_scratch
    mov     r7, r2
    mov     r11, r3
    ldr     r0, _080489fc   @ gMidiReverbScratch
    ldr     r2, [r0], #4
    ldr     r3, [r0], #4
    add     r10, r9, r10
branch_08048964:
    ldrsb   r0, [r6], #1
    sub     r2, r2, r2, asr r7
    add     r2, r0, r2
    sub     r0, r0, r2, asr r7
    sub     r3, r3, r3, asr r11
    add     r3, r0, r3
    mul     r0, r8, r3
    ldrsb   r1, [r6], #1
    sub     r2, r2, r2, asr r7
    add     r2, r1, r2
    sub     r1, r1, r2, asr r7
    sub     r3, r3, r3, asr r11
    add     r3, r1, r3
    mul     r1, r8, r3
    stmia   r5!, {r0, r1}
    ldrsb   r0, [r6], #1
    sub     r2, r2, r2, asr r7
    add     r2, r0, r2
    sub     r0, r0, r2, asr r7
    sub     r3, r3, r3, asr r11
    add     r3, r0, r3
    mul     r0, r8, r3
    ldrsb   r1, [r6], #1
    sub     r2, r2, r2, asr r7
    add     r2, r1, r2
    sub     r1, r1, r2, asr r7
    sub     r3, r3, r3, asr r11
    add     r3, r1, r3
    mul     r1, r8, r3
    stmia   r5!, {r0, r1}
    cmp     r6, r10
    subcs   r6, r6, r9
    subs    r4, r4, #1
    bne     branch_08048964
    ldr     r0, _080489fc   @ gMidiReverbScratch
    str     r2, [r0], #4
    str     r3, [r0], #4
    bx      lr

.balign 4, 0
_080489fc: .word gMidiReverbScratch

glabel midi_arm_mono_update_scratch_end


@ Write Processed Samples to PCM Buffer
    @ R0: Batch Size (in 32-bit Words)
unaligned_thumb_func_start midi_asm_update_buffer
    orrs    r0, r0
    bne     branch_08048a06
    bx      lr

branch_08048a06:
    push    {r4, r5, r6, r7, lr}
    mov     r4, r8
    mov     r5, r9
    mov     r6, r10
    mov     r7, r11
    push    {r4, r5, r6, r7}
    mov     r4, r12
    push    {r4}
    adds    r6, r0, #0
    ldr     r7, _08048b78   @ gMidiSampleScratch
    ldr     r7, [r7, #0]
    ldr     r0, _08048b7c   @ gMidiPCMBufWritePos
    ldr     r0, [r0, #0]
    lsls    r0, r0, #2
    ldr     r1, _08048b80   @ gMidiPCMBufR
    ldr     r1, [r1, #0]
    adds    r4, r1, #0
    ldr     r2, _08048b84   @ gMidiPCMBufL
    ldr     r2, [r2, #0]
    adds    r5, r2, #0
    adds    r1, r1, r0
    adds    r2, r2, r0
    mov     r8, r1
    mov     r9, r2
    ldr     r0, _08048b88   @ gMidiPCMBufSize32
    ldr     r0, [r0, #0]
    lsls    r0, r0, #2
    ldr     r1, _08048b8c   @ gMidiPCMBufR
    ldr     r1, [r1, #0]
    adds    r0, r0, r1
    mov     r10, r0
    ldr     r0, _08048b90   @ gMidiSampleTable
    mov     r11, r0
    ldr     r0, _08048b94   @ 0x3FF
    mov     r12, r0
    movs    r0, #FUNC_INDEX_UPDATE_BUFFER
    bl      midi_asm_update_buffer_call_arm
    pop     {r4}
    mov     r12, r4
    pop     {r4, r5, r6, r7}
    mov     r8, r4
    mov     r9, r5
    mov     r10, r6
    mov     r11, r7
    pop     {r4, r5, r6, r7}
    pop     {r0}
    bx      r0


@ Write Processed Samples to PCM Buffer (ARM Stereo)
arm_func_start midi_arm_stereo_update_buffer
    str     r4, _08048af0
    str     r5, _08048af4
branch_08048a70:
    ldm     r7!, {r0, r1, r2, r3}
    and     r0, r12, r0, lsr #7
    and     r1, r12, r1, lsr #7
    and     r2, r12, r2, lsr #7
    and     r3, r12, r3, lsr #7
    ldrb    r0, [r11, r0]
    ldrb    r1, [r11, r1]
    ldrb    r2, [r11, r2]
    ldrb    r3, [r11, r3]
    orr     r4, r0, r2, lsl #8
    orr     r5, r1, r3, lsl #8
    ldm     r7!, {r0, r1, r2, r3}
    and     r0, r12, r0, lsr #7
    and     r1, r12, r1, lsr #7
    and     r2, r12, r2, lsr #7
    and     r3, r12, r3, lsr #7
    ldrb    r0, [r11, r0]
    ldrb    r1, [r11, r1]
    ldrb    r2, [r11, r2]
    ldrb    r3, [r11, r3]
    orr     r4, r4, r0, lsl #16
    orr     r4, r4, r2, lsl #24
    orr     r5, r5, r1, lsl #16
    orr     r5, r5, r3, lsl #24
    str     r4, [r8], #4
    str     r5, [r9], #4
    cmp     r8, r10
    ldrcs   r8, _08048af0
    ldrcs   r9, _08048af4
    subs    r6, r6, #1
    bne     branch_08048a70
    bx      lr

.balign 4, 0
_08048af0: .word 0
_08048af4: .word 0

glabel midi_arm_stereo_update_buffer_end


@ Write Processed Samples to PCM Buffer (ARM Mono)
arm_func_start midi_arm_mono_update_buffer
    ldm     r7!, {r0, r1, r2, r3}
    and     r0, r12, r0, lsr #7
    and     r1, r12, r1, lsr #7
    and     r2, r12, r2, lsr #7
    and     r3, r12, r3, lsr #7
    ldrb    r0, [r11, r0]
    ldrb    r1, [r11, r1]
    ldrb    r2, [r11, r2]
    ldrb    r3, [r11, r3]
    orr     r0, r0, r1, lsl #8
    orr     r0, r0, r2, lsl #16
    orr     r0, r0, r3, lsl #24
    str     r0, [r8], #4
    cmp     r8, r10
    movcs   r8, r4
    subs    r6, r6, #1
    bne     midi_arm_mono_update_buffer
    bx      lr

glabel midi_arm_mono_update_buffer_end


@ Write Processed Samples to PCM Buffer
    @ Align THUMB Function Call
unaligned_thumb_func_start midi_asm_update_buffer_call_arm
    ldr     r1, _08048b98   @ midi_asm_call_arm_func_id
    adds    r1, #1
    bx      r1

.balign 4, 0
_08048b48: .word gMidiSampleScratch
_08048b4c: .word gMidiPCMBufWritePos
_08048b50: .word gMidiPCMBufR
_08048b54: .word gMidiPCMBufL
_08048b58: .word gMidiReverb2Phase
_08048b5c: .word gMidiPCMBufSize32
_08048b60: .word gMidiReverb1Wet
_08048b64: .word gMidiReverb4LowCut
_08048b68: .word gMidiReverb3Decay
_08048b6c: .word gMidiPCMBufSize32
_08048b70: .word gMidiPCMBufR
_08048b74: .word gMidiPCMBufL
_08048b78: .word gMidiSampleScratch
_08048b7c: .word gMidiPCMBufWritePos
_08048b80: .word gMidiPCMBufR
_08048b84: .word gMidiPCMBufL
_08048b88: .word gMidiPCMBufSize32
_08048b8c: .word gMidiPCMBufR
_08048b90: .word gMidiSampleTable
_08048b94: .word 0x3FF
_08048b98: .word midi_asm_call_arm_func_id
