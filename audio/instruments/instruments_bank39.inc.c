extern struct SampleData sample_400_data;
struct InstrumentPCM instrument_pcm_0783 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_400_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x015029,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x13E350,
};

extern struct SampleData sample_398_data;
struct InstrumentPCM instrument_pcm_0784 = {
    /* Type      */ INSTRUMENT_PCM_FIXED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_398_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x015029,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x0F6A90,
};

extern struct SampleData sample_235_data;
struct InstrumentPCM instrument_pcm_0785 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_235_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_401_data;
struct InstrumentPCM instrument_pcm_0786 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_401_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_260_data;
struct InstrumentPCM instrument_pcm_0787 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_260_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_399_data;
struct InstrumentPCM instrument_pcm_0788 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_399_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x024C48,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern union Instrument inst_bank_48[];
struct InstrumentSubRhythm instrument_rhy_0789 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_48
};

extern union Instrument inst_bank_51[];
struct InstrumentSubRhythm instrument_rhy_0790 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_51
};

extern union Instrument inst_bank_47[];
struct InstrumentSubRhythm instrument_rhy_0791 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_47
};
