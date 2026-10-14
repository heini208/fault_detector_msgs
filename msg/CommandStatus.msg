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

# Execution explicitly confirmed that this failure permits a fresh attempt.
# False for cancellation, unconfirmed stopping, and failed recovery.
bool retry_safe

# Failure has completed required stopping/recovery and permits skipping onward.
bool continuation_safe
