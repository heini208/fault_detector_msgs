uint8 STATE_IDLE=0
uint8 STATE_RUNNING=1
uint8 STATE_SUCCEEDED=2
uint8 STATE_FAILED=3
uint8 STATE_CANCELLED=4
uint8 STATE_UNKNOWN=5
uint8 STATE_STOP_REQUESTED=6
uint8 STATE_STOP_CONFIRMED=7
uint8 STATE_STOP_UNCONFIRMED=8

std_msgs/Header header
string request_id
string execution_instance_id
# Monotonic sequence within this owner incarnation; ROS header time is diagnostic.
uint64 status_sequence
string command_id
uint8 state
string detail
uint32 buffered_command_count
# The execution owner confirms this request can no longer execute. Required
# for terminal feedback; receipt, cancellation acceptance and silence are not proof.
bool execution_idle

# Execution explicitly confirmed that this failure permits a fresh attempt.
# False for cancellation, unconfirmed stopping, and failed recovery.
bool retry_safe

# Failure has completed required stopping/recovery and permits skipping onward.
bool continuation_safe

# Optional replacement for the next attempt; valid only on failure.
# Does not itself grant retry/continuation safety.
bool has_retry_command
CommandPayload retry_command
