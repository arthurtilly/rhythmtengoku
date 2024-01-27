

/* MIDI LIBRARY ASSEMBLY - READ PCM (ACCURATE RESAMPLE) */


@ Read PCM Samples - Accurate Resample
@ This function is called when a different samplerate to the base SampleData is desired.
@ Of the two resampling functions, this is the more accurate one, interpolating between
@ the two closest samples to the current stream position. This method is slower, as the
@ number of samples read is doubled, and due to extra logic needed for interpolation.
    @ R0: Batch Size (in 32-bit Words)
    @ R1: SampleStream Pointer
unaligned_thumb_func_start midi_asm_read_pcm_accurate
    orrs    r0, r0
    bne     branch_080483be
    bx      lr

branch_080483be:
    push    {r4, r5, r6, r7, lr}
    mov     r4, r8
    mov     r5, r9
    mov     r6, r10
    mov     r7, r11
    push    {r4, r5, r6, r7}
    mov     r4, r12
    push    {r4}
    adds    r5, r0, #0
    push    {r1}
    ldr     r6, _0804874c   @ gMidiSampleScratch
    ldr     r6, [r6, #0]
    ldr     r7, [r1, #4]
    ldr     r0, [r1, #20]
    mov     r8, r0
    movs    r0, #3
    ldrsb   r2, [r1, r0]
    movs    r0, #2
    ldrsb   r3, [r1, r0]
    ldrb    r0, [r1, #1]
    ldr     r4, _08048750   @ gMidiSamplerGain
    ldrh    r4, [r4, #0]
    adds    r0, r0, r4
    muls    r2, r0
    asrs    r2, r2, #7
    muls    r3, r0
    asrs    r3, r3, #7
    mov     r9, r2
    mov     r10, r3
    ldr     r0, [r1, #12]
    mov     r11, r0
    ldr     r0, [r1, #24]
    lsls    r0, r0, #10
    orrs    r0, r5
    mov     r12, r0
    mov     r0, r8
    ldr     r4, [r1, #16]
    subs    r4, r4, r0
    movs    r0, #FUNC_INDEX_READ_PCM_ACCURATE
    bl      midi_asm_read_pcm_accurate_call_arm
    pop     {r1}
    ldrb    r2, [r1, #0]
    movs    r3, #1
    bics    r2, r3
    orrs    r2, r0
    strb    r2, [r1, #0]
    mov     r0, r11
    str     r0, [r1, #12]
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


@ Read PCM Samples - Accurate Resample (ARM Stereo)
arm_func_start midi_arm_stereo_read_pcm_accurate
    str     lr, _080485c0
    str     r4, _080485c4
branch_0804843c:
    add     r0, r11, r12, lsr #8
    cmp     r0, r8
    bcs     branch_08048510
    ldm     r6, {r0, r1, r2, r3}
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r2, r4, r9, r2
    mla     r3, r4, r10, r3
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1, r2, r3}
    ldm     r6, {r0, r1, r2, r3}
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r2, r4, r9, r2
    mla     r3, r4, r10, r3
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1, r2, r3}
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     branch_0804843c
    mov     r0, #1
    ldr     lr, _080485c0
    bx      lr

branch_08048510:
    ldr     r2, _080485c4
    cmp     r2, #0
    beq     branch_0804857c
    mov     r3, #4
branch_08048520:
    ldm     r6, {r0, r1}
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1}
branch_08048550:
    cmp     r11, r8
    addcs   r11, r11, r2
    bcs     branch_08048550
    subs    r3, r3, #1
    bne     branch_08048520
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     branch_0804843c
    mov     r0, #1
    ldr     lr, _080485c0
    bx      lr

branch_0804857c:
    ldm     r6, {r0, r1}
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1}
    cmp     r11, r8
    bcc     branch_0804857c
    mov     r0, #0
    ldr     lr, _080485c0
    bx      lr

.balign 4, 0
_080485c0: .word 0
_080485c4: .word 0

glabel midi_arm_stereo_read_pcm_accurate_end


@ Read PCM Samples - Accurate Resample (ARM Mono)
arm_func_start midi_arm_mono_read_pcm_accurate
    str     lr, _0804873c
    str     r4, _08048740
branch_080485d0:
    add     r0, r11, r12, lsr #8
    cmp     r0, r8
    bcs     branch_0804868c
    ldm     r6, {r0, r1, r2, r3}
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    add     r11, r11, r12, lsr #10
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r1, r4, r9, r1
    add     r11, r11, r12, lsr #10
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r2, r4, r9, r2
    add     r11, r11, r12, lsr #10
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r3, r4, r9, r3
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1, r2, r3}
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     branch_080485d0
    mov     r0, #1
    ldr     lr, _0804873c
    bx      lr

branch_0804868c:
    ldr     r2, _08048740
    cmp     r2, #0
    beq     branch_080486f8
    mov     r3, #4
branch_0804869c:
    ldr     r0, [r6]
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    str     r0, [r6], #4
branch_080486cc:
    cmp     r11, r8
    addcs   r11, r11, r2
    bcs     branch_080486cc
    subs    r3, r3, #1
    bne     branch_0804869c
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     branch_080485d0
    mov     r0, #1
    ldr     lr, _0804873c
    bx      lr

branch_080486f8:
    ldr     r0, [r6]
    add     lr, r7, r11, lsr #14
    ldrsb   r4, [lr], #1
    ldrsb   r5, [lr]
    sub     r5, r5, r4
    and     lr, r11, #0x3FC0
    mul     r5, lr, r5
    add     r4, r4, r5, asr #14
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    str     r0, [r6], #4
    cmp     r11, r8
    bcc     branch_080486f8
    mov     r0, #0
    ldr     lr, _0804873c
    bx      lr

.balign 4, 0
_0804873c: .word 0
_08048740: .word 0

glabel midi_arm_mono_read_pcm_accurate_end


@ Read PCM Samples - Accurate Resample
    @ Align THUMB Function Call
unaligned_thumb_func_start midi_asm_read_pcm_accurate_call_arm
    ldr     r1, _08048754   @ midi_asm_call_arm_func_id
    adds    r1, #1
    bx      r1

.balign 4, 0
_0804874c: .word gMidiSampleScratch
_08048750: .word gMidiSamplerGain
_08048754: .word midi_asm_call_arm_func_id
