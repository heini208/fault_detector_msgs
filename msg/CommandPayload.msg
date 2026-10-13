string command_id
bool has_tag
TagElement tag
geometry_msgs/PoseStamped offset
string orientation_mode
float32 wait_time
float64 target_surface_distance_m
float64 surface_tolerance_m
float64 aligned_preapproach_distance_m
string map_name
string waypoint_name
string object_id
string routine_id
string probe_point_id
string motion_sensor_id
# Empty uses configured defaults; otherwise normal or precision.
string walking_profile
# Offset from nominal standing height, in metres, for change_body_height.
# A nonzero value also requests a height change after move_base_to_tag succeeds.
float64 body_height_m

# Ordered intermediate targets before offset, for move_to_tag only.
geometry_msgs/PoseStamped[] pre_approach_offsets

# Fraction of configured arm speed, in (0, 1].
float64 arm_speed_scale 1.0

# Maximum achieved probe-tip position error for move-to-tag or precision arm goals, in metres.
float64 tag_position_tolerance_m 0.01

# Opt in to settled endpoint verification and bounded precision corrections.
bool precision_mode false
float64 precision_orientation_tolerance_rad 0.03490658503988659

float64[] pre_approach_tolerances_m

float64[] pre_approach_speed_scales
bool[] pre_approach_precision_modes

# Additional attempts after confirmed stop and successful recovery.
uint32 retries

# Bypass environmental occupancy for this motion; other collision guards remain active.
bool ignore_environment_collisions false
