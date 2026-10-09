uint8 OPERATION_UNSPECIFIED=0
uint8 OPERATION_OPEN=1
uint8 OPERATION_REFRESH=2
uint8 OPERATION_SELECT_ROUTINE=3
uint8 OPERATION_CREATE_OBJECT=4
uint8 OPERATION_DELETE_OBJECT=5
uint8 OPERATION_CREATE_ROUTINE=6
uint8 OPERATION_DELETE_ROUTINE=7
uint8 OPERATION_SELECT_REFERENCE_PIXEL=8
uint8 OPERATION_CLEAR_REFERENCE_PIXEL=9
uint8 OPERATION_UPDATE_GEOMETRY=10
uint8 OPERATION_APPROVE_SAFE_POSE=11
uint8 OPERATION_APPROVE_ALIGNED_POSE=12
uint8 OPERATION_SELECT_OBJECT=15
uint8 OPERATION_BEGIN_REFINEMENT=16
uint8 OPERATION_END_REFINEMENT=17
uint8 OPERATION_DELETE_PROBE_POINT=18
uint8 OPERATION_SAVE_BASE_POSITION=19
uint8 OPERATION_SAVE_ROUTINE_SAFE_APPROACH_POSE=20

uint8 OPERATION_ADD_PATHING_POINT=21
uint8 OPERATION_REORDER_PATHING_POINT=22
uint8 OPERATION_DELETE_PATHING_POINT=23

string pathing_point_name
int32 pathing_point_index
int8 pathing_point_direction

uint8 operation
string object_id
string object_display_name
int32 reference_tag_id
string reference_tag_family
string routine_id
string routine_display_name
string probe_point_id
string reference_view_id
int32 pixel_u
int32 pixel_v
string approach_mode
float64 target_surface_distance_m
float64 aligned_preapproach_distance_m

float64 position_tolerance_m 0.01

uint8 OPERATION_APPROVE_CUSTOM_PROBE=24
bool fully_custom false
# Path/candidate stage: alignment or probe (custom mode only).
string path_stage "alignment"
float64 arm_speed_scale 1.0

uint8 OPERATION_SET_PATHING_POINT_SPEED=25

# Saved stationary body-height offset for OPERATION_SAVE_BASE_POSITION, in metres.
# Zero keeps nominal walking height after moving to the saved base position.
float64 body_height_m
