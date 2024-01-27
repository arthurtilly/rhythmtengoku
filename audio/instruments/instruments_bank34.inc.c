extern struct SampleData sample_371_data;
struct InstrumentPCM instrument_pcm_0679 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_371_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x01A433,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x0F6A90,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_0680 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_229_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00FC1F,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_372_data;
struct InstrumentPCM instrument_pcm_0681 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_372_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x055552,
};

extern struct SampleData sample_262_data;
struct InstrumentPCM instrument_pcm_0682 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_262_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x335029,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00FC1F,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_015_data;
struct InstrumentPCM instrument_pcm_0683 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_015_data,
    /* ADSR Init */ 0x000000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x307C1F,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_018_data;
struct InstrumentPCM instrument_pcm_0684 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_018_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x00A814,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern union Instrument inst_bank_48[];
struct InstrumentSubRhythm instrument_rhy_0685 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_48
};

extern union Instrument inst_bank_47[];
struct InstrumentSubRhythm instrument_rhy_0686 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_47
};
