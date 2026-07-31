# struct EMdgmMRZ_sounding_def
# {
#   uint16_t soundingIndex;
#   uint8_t txSectorNumb;
#   uint8_t detectionType;
#   uint8_t detectionMethod;
#   uint8_t rejectionInfo1;
#   uint8_t rejectionInfo2;
#   uint8_t postProcessingInfo;
#   uint8_t detectionClass;
#   uint8_t detectionConfidenceLevel;
#   uint16_t padding;
#   float rangeFactor;
#   float qualityFactor;
#   float detectionUncertaintyVer_m;
#   float detectionUncertaintyHor_m;
#   float detectionWindowLength_sec;
#   float echoLength_sec;
#   uint16_t WCBeamNumb;
#   uint16_t WCrange_samples;
#   float WCNomBeamAngleAcross_deg;
#   float meanAbsCoeff_dBPerkm;
#   float reflectivity1_dB;
#   float reflectivity2_dB;
#   float receiverSensitivityApplied_dB;
#   float sourceLevelApplied_dB;
#   float BScalibration_dB;
#   float TVG_dB;
#   float beamAngleReRx_deg;
#   float beamAngleCorrection_deg;
#   float twoWayTravelTime_sec;
#   float twoWayTravelTimeCorrection_sec;
#   float deltaLatitude_deg;
#   float deltaLongitude_deg;
#   float z_reRefPoint_m;
#   float y_reRefPoint_m;
#   float x_reRefPoint_m;
#   float beamIncAngleAdj_deg;
#   uint16_t realTimeCleanInfo;
#   uint16_t SIstartRange_samples;
#   uint16_t SIcentreSample;
#   uint16_t SInumSamples;
# };

uint16 sounding_index
uint8 tx_sector_numb

# 0 = normal detection
# 1 = extra detection
# 2 = rejected detection In case 2, the estimated range has been used to fill in amplitude samples in the seabed image datagram.
uint8 DETECTION_TYPE_NORMAL = 0
uint8 DETECTION_TYPE_EXTRA_DETECTION = 1
uint8 DETECTION_TYPE_REJECTED = 2
uint8 detection_type

# 0 = no valid detection
# 1 = amplitude detection
# 2 = phase detection
# 3-15 for future use.
uint8 DETECTION_METHOD_NO_VALID = 0
uint8 DETECTION_METHOD_AMPLITUDE = 1
uint8 DETECTION_METHOD_PHASE = 2

uint8 detection_method

uint8 rejection_info1
uint8 rejection_info2
uint8 post_processing_info
uint8 detection_class
uint8 detection_confidence_level
float32 range_factor

# Estimated standard deviation as % of the detected depth. Quality Factor (QF) is calculated from IFREMER Quality Factor (IFQ):
# QF=Est(dz)/z=100*10^-IQF
float32 quality_factor

float32 detection_uncertainty_ver_m
float32 detection_uncertainty_hor_m
float32 detection_window_length_sec
float32 echo_length_sec
uint16 wc_beam_numb
uint16 wc_range_samples
float32 wc_nom_beam_angle_across_deg
float32 mean_abs_coeff_db_per_km
float32 reflectivity1_db
float32 reflectivity2_db
float32 receiver_sensitivity_applied_db
float32 source_level_applied_db
float32 bs_calibration_db
float32 tvg_db
float32 beam_angle_re_rx_deg
float32 beam_angle_correction_deg
float32 two_way_travel_time_sec
float32 two_way_travel_time_correction_sec
float32 delta_latitude_deg
float32 delta_longitude_deg
float32 z_re_ref_point_m
float32 y_re_ref_point_m
float32 x_re_ref_point_m
float32 beam_inc_angle_adj_deg
uint16 real_time_clean_info
uint16 si_start_range_samples
uint16 si_centre_sample
uint16 si_num_samples
