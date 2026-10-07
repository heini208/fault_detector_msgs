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
# Offset from nominal standing height, in metres. Used only by change_body_height.
float64 body_height_m

# Ordered intermediate targets before offset, for move_to_tag only.
geometry_msgs/PoseStamped[] pre_approach_offsets

# Fraction of configured arm speed, in (0, 1].
float64 arm_speed_scale 1.0

# Maximum achieved probe-tip position error for move-to-tag, in metres.
float64 tag_position_tolerance_m 0.01

float64[] pre_approach_tolerances_m

float64[] pre_approach_speed_scales

# Additional attempts after confirmed stop and successful recovery.
uint32 retries

# Ignore sensed occupancy for this command; existing execution guards still apply.
bool ignore_environment_collisions false
