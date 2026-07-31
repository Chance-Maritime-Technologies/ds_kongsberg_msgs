# The standard 2-part DsHeader block
# This allows both a standard ROS header and DS-specific header blocks
# See HEADERS.md in ds_core_msgs for details
std_msgs/Header header
ds_core_msgs/DsHeader ds_header

float64 NAVAILABLE_LATITUDE = 200.0
float64 NAVAILABLE_LONGITUDE = 200.0


# Latitude (decimal degrees) of vessel reference point at time of midpoint of first tx pulse. Negative on southern hemisphere. Parameter is set to # define UNAVAILABLE_LATITUDE if not available.
float64 latitude_deg
# Longitude (decimal degrees) of vessel reference point at time of midpoint of first tx pulse. Negative on western hemisphere. Parameter is set to # define UNAVAILABLE_LONGITUDE if not available.
float64 longitude_deg

# Height of vessel reference point above the ellipsoid, derived from active GGA sensor. ellipsoid_height_re_ref_point_m is GGA height corrected for motion and installation offsets of the position sensor.
float32 ellipsoid_height_re_ref_point_m

# Heading of vessel at time of midpoint of first tx pulse. From active heading sensor.
float32 heading_vessel_deg

# Distance between water line and vessel reference point in meters. At time of midpoint of first tx pulse. Measured in the surface coordinate system (SCS).Use this to move depth point (XYZ) from vessel reference point to waterline.
float32 z_water_level_re_ref_point_m
