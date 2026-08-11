uint8 OPERATION_UNSPECIFIED=0
uint8 OPERATION_MOVE_SAFE_APPROACH=1
uint8 OPERATION_MOVE_ALIGNED_PREAPPROACH=2
uint8 OPERATION_ADJUST_SAFE_APPROACH=3
uint8 OPERATION_ADJUST_ALIGNED_PREAPPROACH=4

uint8 FRAME_UNSPECIFIED=0
uint8 FRAME_SENSOR=1
uint8 FRAME_HAND=2
uint8 FRAME_TAG=3
uint8 FRAME_BODY=4
uint8 FRAME_MAP=5

uint8 operation
uint8 frame
geometry_msgs/Vector3 translation
float64 pitch_rad
float64 yaw_rad
float64 position_tolerance_m
float64 orientation_tolerance_rad
