std_msgs/Header header

uint8 LIVE=0
uint8 UNAVAILABLE=1
uint8 INVALID=2

string object_id
int32 tag_id
uint8 state

string execution_frame
builtin_interfaces/Time observation_timestamp
float64 observation_age_sec
string observation_source

bool has_object_pose
geometry_msgs/PoseStamped object_pose

string error_message
