

/* MIDI LIBRARY ASSEMBLY - READ PCM (FAST RESAMPLE) */


@ Read PCM Samples - Fast Resample
@ This function is called when a different samplerate to the base SampleData is desired.
@ Unlike the standard, accurate method of resampling, this function does not interpolate
@ between the two closest samples for the current stream position, instead only reading
@ the earlier of the two. This results in faster speeds at the cost of diminished low
@ frequencies.
    @ R0: Batch Size (in 32-bit Words)
    @ R1: SampleStream Pointer
unaligned_thumb_func_start midi_asm_read_pcm_fast
    orrs    r0, r0
    bne     branch_08048d5e
    bx      lr

branch_08048d5e:
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
    ldr     r6, _08048fb4   @ gMidiSampleScratch
    ldr     r6, [r6, #0]
    ldr     r7, [r1, #4]
    ldr     r0, [r1, #20]
    mov     r8, r0
    movs    r0, #3
    ldrsb   r2, [r1, r0]
    movs    r0, #2
    ldrsb   r3, [r1, r0]
    ldrb    r0, [r1, #1]
    ldr     r4, _08048fb8   @ gMidiSamplerGain
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
    ldr     r5, [r1, #16]
    subs    r5, r5, r0
    movs    r0, #FUNC_INDEX_READ_PCM_FAST
    bl      midi_asm_read_pcm_fast_call_arm
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


@ Read PCM Samples - Fast Resample (ARM Stereo)
arm_func_start midi_arm_stereo_read_pcm_fast
    add     r0, r11, r12, lsr #8
    cmp     r0, r8
    bcs     branch_08048e54
    ldm     r6, {r0, r1, r2, r3}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r2, r4, r9, r2
    mla     r3, r4, r10, r3
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1, r2, r3}
    ldm     r6, {r0, r1, r2, r3}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r2, r4, r9, r2
    mla     r3, r4, r10, r3
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1, r2, r3}
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     midi_arm_stereo_read_pcm_fast
    mov     r0, #1
    bx      lr

branch_08048e54:
    cmp     r5, #0
    beq     branch_08048ea4
    mov     r3, #4
branch_08048e60:
    ldm     r6, {r0, r1}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1}
branch_08048e7c:
    cmp     r11, r8
    addcs   r11, r11, r5
    bcs     branch_08048e7c
    subs    r3, r3, #1
    bne     branch_08048e60
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     midi_arm_stereo_read_pcm_fast
    mov     r0, #1
    bx      lr

branch_08048ea4:
    ldm     r6, {r0, r1}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    mla     r1, r4, r10, r1
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1}
    cmp     r11, r8
    bcc     branch_08048ea4
    mov     r0, #0
    bx      lr

glabel midi_arm_stereo_read_pcm_fast_end


@ Read PCM Samples - Fast Resample (ARM Mono)
arm_func_start midi_arm_mono_read_pcm_fast
    add     r0, r11, r12, lsr #8
    cmp     r0, r8
    bcs     branch_08048f38
    ldm     r6, {r0, r1, r2, r3}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    add     r11, r11, r12, lsr #10
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r1, r4, r9, r2
    add     r11, r11, r12, lsr #10
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r2, r4, r9, r2
    add     r11, r11, r12, lsr #10
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r3, r4, r9, r2
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0, r1, r2, r3}
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     midi_arm_mono_read_pcm_fast
    mov     r0, #1
    bx      lr

branch_08048f38:
    cmp     r5, #0
    beq     branch_08048f84
    mov     r3, #4
branch_08048f44:
    ldm     r6, {r0}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0}
branch_08048f5c:
    cmp     r11, r8
    addcs   r11, r11, r5
    bcs     branch_08048f5c
    subs    r3, r3, #1
    bne     branch_08048f44
    sub     r12, r12, #1
    ands    r0, r12, #0xFF
    bne     midi_arm_mono_read_pcm_fast
    mov     r0, #1
    bx      lr

branch_08048f84:
    ldm     r6, {r0}
    add     r4, r7, r11, lsr #14
    ldrsb   r4, [r4]
    mla     r0, r4, r9, r0
    add     r11, r11, r12, lsr #10
    stmia   r6!, {r0}
    cmp     r11, r8
    bcc     branch_08048f84
    mov     r0, #0
    bx      lr

glabel midi_arm_mono_read_pcm_fast_end


@ Read PCM Samples - Fast Resample
    @ Align THUMB Function Call
unaligned_thumb_func_start midi_asm_read_pcm_fast_call_arm
    ldr     r1, _08048fbc   @ midi_asm_call_arm_func_id
    adds    r1, #1
    bx      r1

.balign 4, 0
_08048fb4: .word gMidiSampleScratch
_08048fb8: .word gMidiSamplerGain
_08048fbc: .word midi_asm_call_arm_func_id
