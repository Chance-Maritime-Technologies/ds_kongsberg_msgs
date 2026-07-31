# struct EMdgmMRZ_txSectorInfo_def
# {
#   uint8_t txSectorNumb;
#   uint8_t txArrNumber;
#   uint8_t txSubArray;
#   uint8_t padding0;
#   float sectorTransmitDelay_sec;
#   float tiltAngleReTx_deg;
#   float txNominalSourceLevel_dB;
#   float txFocusRange_m;
#   float centreFreq_Hz;
#   float signalBandWidth_Hz;
#   float totalSignalLength_sec;
#   uint8_t pulseShading;
#   uint8_t signalWaveForm;
#   uint16_t padding1;
# };

uint8 tx_sector_numb
uint8 tx_arr_number
uint8 tx_sub_array
float32 sector_transmit_delay_sec
float32 tilt_angle_re_tx_deg
float32 tx_nominal_source_level_db
float32 tx_focus_range_m
float32 centre_freq_hz
float32 signal_band_width_hz
float32 total_signal_length_sec
uint8 pulse_shading
uint8 signal_wave_form
