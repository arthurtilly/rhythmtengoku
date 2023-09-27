// Timer registers

#define TIMER_FREQUENCY_1_PULSE     0 // Default
#define TIMER_FREQUENCY_64_PULSES   1
#define TIMER_FREQUENCY_256_PULSES  2
#define TIMER_FREQUENCY_1024_PULSES 3

#define TIMER_FREQUENCY_MASK (0x3 << 0) // Frequency at which the timer updates
#define TIMER_CASCADE        (1 << 2)   // Instead of using frequency, increment when the timer below overflows (Unused for timer 0)
#define TIMER_IRQ            (1 << 6)   // Generate an interrupt on overflow
#define TIMER_ENABLE         (1 << 7)   // Enable the timer

#define REG_TM0    *(volatile u32 *)(IORAMBase + 0x100)
#define REG_TM0D   *(volatile u16 *)(IORAMBase + 0x100)
#define REG_TM0CNT *(volatile u16 *)(IORAMBase + 0x102)
#define REG_TM1    *(volatile u32 *)(IORAMBase + 0x104)
#define REG_TM1D   *(volatile u16 *)(IORAMBase + 0x104)
#define REG_TM1CNT *(volatile u16 *)(IORAMBase + 0x106)
#define REG_TM2    *(volatile u32 *)(IORAMBase + 0x108)
#define REG_TM2D   *(volatile u16 *)(IORAMBase + 0x108)
#define REG_TM2CNT *(volatile u16 *)(IORAMBase + 0x10A)
#define REG_TM3    *(volatile u32 *)(IORAMBase + 0x10C)
#define REG_TM3D   *(volatile u16 *)(IORAMBase + 0x10C)
#define REG_TM3CNT *(volatile u16 *)(IORAMBase + 0x10E)
