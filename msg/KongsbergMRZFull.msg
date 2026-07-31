# struct EMdgmMRZ_def
# {
#   struct EMdgmHeader_def header;
#   struct EMdgmMpartition_def partition;
#   struct EMdgmMbody_def cmnPart;
#   struct EMdgmMRZ_pingInfo_def pingInfo;
#   struct EMdgmMRZ_txSectorInfo_def sectorInfo[MAX_NUM_TX_PULSES];
#   struct EMdgmMRZ_rxInfo_def rxInfo;
#   struct EMdgmMRZ_extraDetClassInfo_def extraDetClassInfo[MAX_EXTRA_DET_CLASSES];

#   struct EMdgmMRZ_sounding_def sounding[MAX_NUM_BEAMS + MAX_EXTRA_DET];
#   int16_t SIsample_desidB[MAX_SIDESCAN_SAMP];
# };


# struct EMdgmHeader_def
# {
#   uint32_t numBytesDgm;
#   uint8_t dgmType[4];
#   uint8_t dgmVersion;
#   uint8_t systemID;
#   uint16_t echoSounderID;
#   uint32_t time_sec;
#   uint32_t time_nanosec;
# };
# header

std_msgs/Header header

uint32 dgm_version
uint8  system_id
uint16 echo_sounder_id


# struct EMdgmMpartition_def
# {
#   uint16_t numOfDgms;
#   uint16_t dgmNum;
# };
# partition

uint16 num_of_dgms
uint16 dgm_num

# struct EMdgmMbody_def
# {
#   uint16_t numBytesCmnPart;
#   uint16_t pingCnt;
#   uint8_t rxFansPerPing;
#   uint8_t rxFanIndex;
#   uint8_t swathsPerPing;
#   uint8_t swathAlongPosition;
#   uint8_t txTransducerInd;
#   uint8_t rxTransducerInd;
#   uint8_t numRxTransducers;
#   uint8_t algorithmType;
# };
# cmnPart

uint16 ping_cnt
uint8  rx_fans_per_ping
uint8  rx_fan_index
uint8  swaths_per_ping
uint8  swath_along_position
uint8  tx_transducer_ind
uint8  rx_transducer_ind
uint8  num_rx_transducers
uint8  algorithm_type

# struct EMdgmMRZ_pingInfo_def
# {
#   uint16_t numBytesInfoData;
#   uint16_t padding0;
#   float pingRate_Hz;
#   uint8_t beamSpacing;
#   uint8_t depthMode;
#   uint8_t subDepthMode;
#   uint8_t distanceBtwSwath;
#   uint8_t detectionMode;
#   uint8_t pulseForm;
#   uint16_t padding1;

#   float frequencyMode_Hz;
#   float freqRangeLowLim_Hz;
#   float freqRangeHighLim_Hz;
#   float maxTotalTxPulseLength_sec;
#   float maxEffTxPulseLength_sec;
#   float maxEffTxBandWidth_Hz;
#   float absCoeff_dBPerkm;
#   float portSectorEdge_deg;
#   float starbSectorEdge_deg;
#   float portMeanCov_deg;
#   float starbMeanCov_deg;
#   int16_t portMeanCov_m;
#   int16_t starbMeanCov_m;
#   uint8_t modeAndStabilisation;
#   uint8_t runtimeFilter1;
#   uint16_t runtimeFilter2;
#   uint32_t pipeTrackingStatus;
#   float transmitArraySizeUsed_deg;
#   float receiveArraySizeUsed_deg;
#   float transmitPower_dB;
#   uint16_t SLrampUpTimeRemaining;
#   uint16_t padding2;
#   float yawAngle_deg;
#   uint16_t numTxSectors;
#   uint16_t numBytesPerTxSector;
#   float headingVessel_deg;
#   float soundSpeedAtTxDepth_mPerSec;
#   float txTransducerDepth_m;
#   float z_waterLevelReRefPoint_m;
#   float x_kmallToall_m;
#   float y_kmallToall_m;
#   uint8_t latLongInfo;
#   uint8_t posSensorStatus;
#   uint8_t attitudeSensorStatus;
#   uint8_t padding3;
#   double latitude_deg;
#   double longitude_deg;
#   float ellipsoidHeightReRefPoint_m;
# };
# pingInfo

float32 ping_rate_hz
uint8  beam_spacing
uint8  depth_mode
uint8  sub_depth_mode
uint8  distance_btw_swath
uint8  detection_mode
uint8  pulse_form

float32 frequency_mode_hz
float32 freq_range_low_lim_hz
float32 freq_range_high_lim_hz
float32 max_total_tx_pulse_length_sec
float32 max_eff_tx_pulse_length_sec
float32 max_eff_tx_band_width_hz
float32 abs_coeff_db_per_km
float32 port_sector_edge_deg
float32 starb_sector_edge_deg
float32 port_mean_cov_deg
float32 starb_mean_cov_deg
int16 port_mean_cov_m
int16 starb_mean_cov_m
uint8 mode_and_stabilisation
uint8 runtime_filter1
uint16 runtime_filter2
uint32 pipe_tracking_status
float32 transmit_array_size_used_deg
float32 receive_array_size_used_deg
float32 transmit_power_db
uint16 sl_ramp_up_time_remaining

float32 yaw_angle_deg
uint16 num_tx_sectors
uint16 num_bytes_per_tx_sector
float32 heading_vessel_deg
float32 sound_speed_at_tx_depth_m_per_sec
float32 tx_transducer_depth_m
float32 z_water_level_re_ref_point_m
float32 x_kmall_to_all_m
float32 y_kmall_to_all_m
uint8 lat_long_info
uint8 pos_sensor_status
uint8 attitude_sensor_status
float64 latitude_deg
float64 longitude_deg
float32 ellipsoid_height_re_ref_point_m

KongsbergMRZtxSectorInfo[] sector_info

# struct EMdgmMRZ_rxInfo_def
# {
#   uint16_t numBytesRxInfo;
#   uint16_t numSoundingsMaxMain;
#   uint16_t numSoundingsValidMain;
#   uint16_t numBytesPerSounding;
#   float WCSampleRate;
#   float seabedImageSampleRate;
#   float BSnormal_dB;
#   float BSoblique_dB;
#   uint16_t extraDetectionAlarmFlag;
#   uint16_t numExtraDetections;
#   uint16_t numExtraDetectionClasses;
#   uint16_t numBytesPerClass;
# };
# rxInfo

uint16 num_bytes_rx_info
uint16 num_soundings_max_main
uint16 num_soundings_valid_main
uint16 num_bytes_per_sounding
float32 wc_sample_rate
float32 seabed_image_sample_rate
float32 bs_normal_db
float32 bs_oblique_db
uint16 extra_detection_alarm_flag
uint16 num_extra_detections
uint16 num_extra_detection_classes
uint16 num_bytes_per_class

# struct EMdgmMRZ_extraDetClassInfo_def
# {
#   uint16_t numExtraDetInClass;
#   int8_t padding;
#   uint8_t alarmFlag;
# };
# extraDetClassInfo[MAX_EXTRA_DET_CLASSES];


# uint16 num_extra_det_in_class
# uint8 alarm_flag

#   struct EMdgmMRZ_sounding_def sounding[MAX_NUM_BEAMS + MAX_EXTRA_DET];
KongsbergMRZsounding[] soundings

#   int16_t SIsample_desidB[MAX_SIDESCAN_SAMP];
int16[] si_sample_desi_db
