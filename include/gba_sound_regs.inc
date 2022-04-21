@ Sound Controls



@ Sweep controls (Sound 1 only)

.set SOUNDCNT1_SWEEP_NUM_SHIFTS_MASK, (0x7 << 0) @ Number of sweep shifts. The wave's new period is T = T +/- T/(2^n)
.set SOUNDCNT1_SWEEP_DECREASE,        (1 << 3)   @ 0 for sweep increase, 1 for sweep decrease
.set SOUNDCNT1_SWEEP_DELAY_MASK,      (0x7 << 4) @ Delay between sweep shifts. Delay = n * 7.8ms, or if n is 0 sweeps are disabled.



@ Length, wave duty and envelope control

.set SOUNDCNTX_WAVE_DUTY_12_5_PERCENT, 0 @ 12.5%
.set SOUNDCNTX_WAVE_DUTY_25_PERCENT,   1 @ 25%
.set SOUNDCNTX_WAVE_DUTY_50_PERCENT,   2 @ 50%
.set SOUNDCNTX_WAVE_DUTY_75_PERCENT,   3 @ 75%

.set SOUNDCNTX_SOUND_LENGTH_MASK,  (0x3F << 0) @ Sound length, calculated by length = (64 - n)*(1/256) seconds. Write only
.set SOUNDCNTX_WAVE_DUTY_MASK,     (0x3 << 6)  @ Controls percentage of the ON state of the square wave. Sounds 1 and 2 only
.set SOUNDCNTX_ENV_STEP_TIME_MASK, (0x7 << 8)  @ Delay between successive envelope increase or decrease, delay = n * (1/64) seconds.
.set SOUNDCNTX_ENV_MODE_INCREASE,  (1 << 11)   @ 0 - envelope decreases over time, 1 - envelope increases over time
.set SOUNDCNTX_ENV_VALUE_MASK,     (0xF << 12) @ Initial envelope value, 15 is max volume, 0 mutes the sound



@ Frequency, noise parameters, reset and loop control

.set SOUNDCNTX_TIMED_SOUND,    (1 << 14)    @ When 0 sound is played continuously, when 1 sound resets after sound length
.set SOUNDCNTX_SOUND_RESET,    (1 << 15)    @ When set, sound resets and restarts at specified frequency. Write only

@ Sounds 1-3 only
.set SOUNDCNTX_FREQUENCY_MASK, (0x7FF << 0) @ Frequency = 4194304/(32*(2048-n)) Hz, ranges from 64Hz to 131KHz. Write only

@ Sound 4 only
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_2,   0 @ f * 2 (f = 4.194304 Mhz/8)
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1,   1 @ Unchanged
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1_2, 2 @ f/2
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1_3, 3 @ f/3
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1_4, 4 @ f/4
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1_5, 5 @ f/5
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1_6, 6 @ f/6
.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_1_7, 7 @ f/7

.set SOUNDCNT4_CLOCK_DIVIDE_FREQ_MASK, (0x7 << 0) @ Clock divider frequency.
.set SOUNDCNT4_COUNTER_STAGES,         (1 << 3)   @ 0 = 15 stages, 1 = 7 stages. Counter period = (2^n) - 1 where n is number of stages
.set SOUNDCNT4_PRESTEPPER_FREQ_MASK,   (0xF << 4) @ Frequency = Q / (2^(n+1)) where Q is output frequency of the clock divider.



@ Enable and wave ram bank control (Sound 3 only)

.set SOUNDCNT3_BANK_MODE,     (1 << 5) @ 0 - 2 32-sample banks, 1 - 1 64-sample bank
.set SOUNDCNT3_BANK_SELECT,   (1 << 6) @ Controls if bank 0 or 1 is active for playing / reloading.
.set SOUNDCNT3_OUTPUT_ENABLE, (1 << 7) @ Enable output from sound channel 3.



@ Sound length and output level control (Sound 3 only)

.set SOUNDCNT3_VOLUME_MUTE, 0
.set SOUNDCNT3_VOLUME_100,  1
.set SOUNDCNT3_VOLUME_50,   2
.set SOUNDCNT3_VOLUME_25,   3
.set SOUNDCNT3_VOLUME_75,   4

.set SOUNDCNT3_SOUND_LENGTH_MASK,  (0xFF << 0) @ Note length = n / 256 seconds. Requires sound reset to change
.set SOUNDCNT3_OUTPUT_VOLUME_MASK, (0x7 << 13) @ Output volume ratio


.set REG_SOUND1CNT,     IORAMBase + 0x60
.set REG_SOUND1CNT_L,   IORAMBase + 0x60 @ Sound 1 sweep controls
.set REG_SOUND1CNT_H,   IORAMBase + 0x62 @ Sound 1 length, wave duty and envelope controls
.set REG_SOUND1CNT_X,   IORAMBase + 0x64 @ Sound 1 frequency, reset and loop controls
.set REG_SOUND2CNT_L,   IORAMBase + 0x68 @ Sound 2 length, wave duty and envelope controls
.set REG_SOUND2CNT_H,   IORAMBase + 0x6C @ Sound 2 frequency, reset and loop controls
.set REG_SOUND3CNT,     IORAMBase + 0x70
.set REG_SOUND3CNT_L, 	IORAMBase + 0x70 @ Sound 3 enable and wave ram bank controls
.set REG_SOUND3CNT_H,   IORAMBase + 0x72 @ Sound 3 sound length and output level controls
.set REG_SOUND3CNT_X,   IORAMBase + 0x74 @ Sound 3 frequency, reset and loop controls
.set REG_SOUND4CNT_L,   IORAMBase + 0x78 @ Sound 4 length, output level and envelope controls (No wave duty)
.set REG_SOUND4CNT_H,  	IORAMBase + 0x7C @ Sound 4 noise parameters, reset and loop controls



@ Sound 1-4 output level and stereo control

.set SOUNDCNT_DMG_LEFT_VOLUME_MASK,    (0x7 << 0)
.set SOUNDCNT_VIN_LEFT_ENABLE,         (1 << 3) @ Allowed original GameBoy paks to provide their own sound source. Unknown whether it works on a GBA
.set SOUNDCNT_DMG_RIGHT_VOLUME_MASK,   (0x7 << 4)
.set SOUNDCNT_VIN_RIGHT_ENABLE,        (1 << 7)
.set SOUNDCNT_DMG_SOUND1_LEFT_ENABLE,  (1 << 8)
.set SOUNDCNT_DMG_SOUND2_LEFT_ENABLE,  (1 << 9)
.set SOUNDCNT_DMG_SOUND3_LEFT_ENABLE,  (1 << 10)
.set SOUNDCNT_DMG_SOUND4_LEFT_ENABLE,  (1 << 11)
.set SOUNDCNT_DMG_SOUND1_RIGHT_ENABLE, (1 << 12)
.set SOUNDCNT_DMG_SOUND2_RIGHT_ENABLE, (1 << 13)
.set SOUNDCNT_DMG_SOUND3_RIGHT_ENABLE, (1 << 14)
.set SOUNDCNT_DMG_SOUND4_RIGHT_ENABLE, (1 << 15)

.set REG_SOUNDCNT,      IORAMBase + 0x80
.set REG_SOUNDCNT_L,   	IORAMBase + 0x80

@ Direct sound control and sound 1-4 output ratio

.set SOUNDCNT_OUTPUT_RATIO_25,  0
.set SOUNDCNT_OUTPUT_RATIO_50,  1
.set SOUNDCNT_OUTPUT_RATIO_100, 2

.set SOUNDCNT_OUTPUT_RATIO_MASK,             (0x3 << 0) @ Output ratio for channels 1 - 4.
.set SOUNDCNT_DIRECT_SOUND_A_OUTPUT_RATIO,   (1 << 2)   @ 0 - 50%, 1 - 100%
.set SOUNDCNT_DIRECT_SOUND_B_OUTPUT_RATIO,   (1 << 3)   @ 0 - 50%, 1 - 100%
.set SOUNDCNT_DIRECT_SOUND_A_RIGHT_ENABLE,   (1 << 8)
.set SOUNDCNT_DIRECT_SOUND_A_LEFT_ENABLE,    (1 << 9)
.set SOUNDCNT_DIRECT_SOUND_A_SAMPLING_TIMER, (1 << 10)  @ Sets whether timer 0 or 1 controls playback frequency
.set SOUNDCNT_DIRECT_SOUND_A_FIFO_RESET,     (1 << 11)  @ Write only
.set SOUNDCNT_DIRECT_SOUND_B_RIGHT_ENABLE,   (1 << 12)
.set SOUNDCNT_DIRECT_SOUND_B_LEFT_ENABLE,    (1 << 13)
.set SOUNDCNT_DIRECT_SOUND_B_SAMPLING_TIMER, (1 << 14)  @ Sets whether timer 0 or 1 controls playback frequency
.set SOUNDCNT_DIRECT_SOUND_B_FIFO_RESET,     (1 << 15)  @ Write only

.set REG_SOUNDCNT_H,    IORAMBase + 0x82



@ Master sound enable and sound 1-4 play status

.set SOUNDCNT_DMG_SOUND1_PLAYING,   (1 << 0) @ Read only
.set SOUNDCNT_DMG_SOUND2_PLAYING,   (1 << 1) @ Read only
.set SOUNDCNT_DMG_SOUND3_PLAYING,   (1 << 2) @ Read only
.set SOUNDCNT_DMG_SOUND4_PLAYING,   (1 << 3) @ Read only
.set SOUNDCNT_SOUND_CIRCUIT_ENABLE, (1 << 7) @ Saves battery when disabled

.set REG_SOUNDCNT_X,  	IORAMBase + 0x84



@ Sound bias and amplitude resolution control

.set AMP_RESOLUTION_9BIT_32KHZ,  0
.set AMP_RESOLUTION_8BIT_65KHZ,  1
.set AMP_RESOLUTION_7BIT_131KHZ, 2
.set AMP_RESOLUTION_6BIT_262KHZ, 3

.set SOUNDBIAS_PWN_BIAS_MASK, (0x1FF << 1) @ PWN bias value, controlled by the BIOS
.set SOUNDBIAS_AMP_RESOLUTION_MASK, (0x3 << 14) @ Amplitude resolutions

.set REG_SOUNDBIAS,     IORAMBase + 0x88



@ Each of these registers contain 4 4-bit wave RAM samples for sound channel 3

.set REG_SGWR0,      	IORAMBase + 0x90
.set REG_SGWR0_L,    	IORAMBase + 0x90 @ Sound 3 samples 0-3
.set REG_SGWR0_H,    	IORAMBase + 0x92 @ Sound 3 samples 4-7
.set REG_SGWR1,      	IORAMBase + 0x94
.set REG_SGWR1_L,    	IORAMBase + 0x94 @ Sound 3 samples 8-11
.set REG_SGWR1_H,    	IORAMBase + 0x96 @ Sound 3 samples 12-15
.set REG_SGWR2,      	IORAMBase + 0x98
.set REG_SGWR2_L,    	IORAMBase + 0x98 @ Sound 3 samples 16-19
.set REG_SGWR2_H,    	IORAMBase + 0x9A @ Sound 3 samples 20-23
.set REG_SGWR3,      	IORAMBase + 0x9C
.set REG_SGWR3_L,    	IORAMBase + 0x9C @ Sound 3 samples 23-27
.set REG_SGWR3_H,    	IORAMBase + 0x9E @ Sound 3 samples 28-31



@ Locations of Direct Sound 8-bit FIFO samples, usually automatically refilled using DMA or timer interrupts. Write only

.set REG_SGFIFOA,    	IORAMBase + 0xA0
.set REG_SGFIFOA_L,  	IORAMBase + 0xA0 @ Direct Sound A samples 0-1
.set REG_SGFIFOA_H,  	IORAMBase + 0xA2 @ Direct Sound A samples 2-3
.set REG_SGFIFOB,    	IORAMBase + 0xA4
.set REG_SGFIFOB_L,  	IORAMBase + 0xA4 @ Direct Sound B samples 0-1
.set REG_SGFIFOB_H,  	IORAMBase + 0xA6 @ Direct Sound B samples 2-3
