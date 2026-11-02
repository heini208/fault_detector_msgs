# Application-owned aggregate of physical-owner and acquisition stop evidence.
# This software function is separate from the robot safety E-stop.
std_msgs/Header header
string request_id
bool latched
bool stop_confirmed
string detail
uint64 status_sequence
