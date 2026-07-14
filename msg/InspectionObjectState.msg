std_msgs/Header header

uint8 LIVE=0
uint8 REMEMBERED=1
uint8 UNAVAILABLE=2
uint8 INVALID=3

string object_id
int32 tag_id
uint8 state

bool has_selected_pose
geometry_msgs/PoseStamped selected_pose

bool has_remembered_pose
geometry_msgs/PoseStamped remembered_pose

bool has_live_pose
geometry_msgs/PoseStamped live_pose

string message