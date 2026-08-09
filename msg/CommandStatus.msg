uint8 STATE_IDLE=0
uint8 STATE_RUNNING=1
uint8 STATE_SUCCEEDED=2
uint8 STATE_FAILED=3
uint8 STATE_CANCELLED=4

std_msgs/Header header
string request_id
string command_id
uint8 state
string detail
uint32 buffered_command_count
