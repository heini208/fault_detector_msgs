uint8 STATE_UNSPECIFIED=0
uint8 STATE_QUEUED=1
uint8 STATE_DISPATCHED=2
uint8 STATE_RUNNING=3
uint8 STATE_SUCCEEDED=4
uint8 STATE_FAILED=5
uint8 STATE_CANCELLED=6

std_msgs/Header header
string request_id
string client_id
string context_id
uint8 intent
uint8 state
string detail
uint32 buffered_command_count
