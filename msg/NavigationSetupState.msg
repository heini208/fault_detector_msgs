uint8 STATE_UNSPECIFIED=0
uint8 STATE_READY=1
uint8 STATE_QUEUED=2
uint8 STATE_RUNNING=3
uint8 STATE_SUCCEEDED=4
uint8 STATE_FAILED=5
uint8 STATE_CANCELLED=6

uint8 MODE_NONE=0
uint8 MODE_MAPPING=1
uint8 MODE_LOCALIZATION=2

std_msgs/Header header
string request_id
string client_id
string context_id
uint32 revision
uint8 operation
uint8 state
string detail
string active_map
uint8 mode
string[] map_names
string[] waypoint_names
string[] landmark_names
